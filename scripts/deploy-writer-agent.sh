#!/usr/bin/env bash
#
# Set up or audit the F5 Tech Writer Agent in a documentation repository.
#
# Adds the .style-guide submodule if it is missing, then creates the four
# instruction files each AI assistant reads.
#
# The script never changes a file that already exists. It checks each one for a
# reference to the agent instructions and reports the ones that need a hand
# edit, so it works on a new repository and on one that already has some of the
# files.
#
# Usage:
#   deploy-writer-agent.sh [PATH] [--apply] [--log-file FILE] [--help]
#
# PATH is the documentation repository to set up. Defaults to the current
# directory. --repo PATH also works.
#
# Runs as a dry run by default. Pass --apply to write files.
#
# Writes a log to deploy-writer-agent.log in the current directory. The log
# records every file the script created or skipped, and every file that needs a
# hand edit. Use --log-file to write somewhere else.

set -euo pipefail

SUBMODULE_URL="https://github.com/F5Docs/style-guide.git"
SUBMODULE_PATH=".style-guide"
AGENT_INSTRUCTIONS="${SUBMODULE_PATH}/agent-instructions/f5-tech-writer-agent.md"

REPO="."
APPLY=false
INVOKE_DIR="$PWD"
LOG_FILE=""
LOG_NAME="deploy-writer-agent.log"

# Counters for the summary.
created=0
skipped=0
needs_attention=0

# Tab-separated "path<TAB>fix" lines, one per file that needs a hand edit.
actions=""

usage() {
    # Print the header comment block, minus the shebang and the leading "# ".
    sed -n '2,/^$/p' "$0" | sed 's/^#\{1,\} \{0,1\}//;s/^#$//'
    exit 0
}

# Everything printed to the terminal also goes to the log. LOG_FILE is empty
# until the repository root is known, so early errors print to stderr only.
log()  {
    printf '%s\n' "$*"
    [ -n "$LOG_FILE" ] && printf '%s\n' "$*" >> "$LOG_FILE"
    return 0
}

ok()   { log "$(printf '  created  %s' "$1")"; created=$((created + 1)); }
skip() { log "$(printf '  ok       %s (%s)' "$1" "$2")"; skipped=$((skipped + 1)); }
plan() { log "$(printf '  would create  %s' "$1")"; created=$((created + 1)); }
warn() {
    log "$(printf '  ACTION   %s: %s' "$1" "$2")"
    needs_attention=$((needs_attention + 1))
    actions="${actions}${1}\t${2}\n"
}

die() {
    printf 'Error: %s\n' "$1" >&2
    exit 1
}

repo_set=false

while [ $# -gt 0 ]; do
    case "$1" in
        --repo) REPO="${2:-}"; [ -n "$REPO" ] || die "--repo needs a path"; repo_set=true; shift 2 ;;
        --apply) APPLY=true; shift ;;
        --log-file) LOG_FILE="${2:-}"; [ -n "$LOG_FILE" ] || die "--log-file needs a path"; shift 2 ;;
        --help|-h) usage ;;
        -*) die "Unknown option: $1. Run with --help." ;;
        *)
            [ "$repo_set" = false ] || die "Repository path given twice: $REPO and $1"
            REPO="$1"; repo_set=true; shift
            ;;
    esac
done

[ -d "$REPO" ] || die "Not a directory: $REPO"
cd "$REPO"

# Preconditions.

git rev-parse --git-dir >/dev/null 2>&1 || die "Not a Git repository: $(pwd)"

REPO_ROOT="$(git rev-parse --show-toplevel)"
cd "$REPO_ROOT"

REPO_NAME="$(basename "$REPO_ROOT")"

if [ "$APPLY" = true ] && [ -n "$(git status --porcelain)" ]; then
    die "Working tree is not clean. Commit or stash your changes first."
fi

# git branch --show-current works in a repository with no commits, where
# rev-parse HEAD does not. A repository with no commits has nothing to protect,
# so the branch check only applies once there is history.
BRANCH="$(git branch --show-current)"
[ -n "$BRANCH" ] || BRANCH="(detached HEAD)"

if [ "$APPLY" = true ] && git rev-parse --verify --quiet HEAD >/dev/null; then
    if [ "$BRANCH" = "main" ] || [ "$BRANCH" = "master" ]; then
        die "On branch $BRANCH. Create a feature branch first."
    fi
fi

COPILOT_FILE=".github/copilot-instructions.md"

# A repository that already carries the agent instructions in
# .github/copilot-instructions.md is a migration, not a new setup. Detect it so
# the report can name the extra step, moving that content into AGENTS.md.
MIGRATION=false
if [ -f "$COPILOT_FILE" ] && [ ! -f "AGENTS.md" ]; then
    copilot_lines="$(wc -l < "$COPILOT_FILE" | tr -d ' ')"
    [ "$copilot_lines" -le 10 ] || MIGRATION=true
fi

# Start the log now that the repository root is known. Default to the repo
# root so the log sits next to the files the script reports on.
[ -n "$LOG_FILE" ] || LOG_FILE="${INVOKE_DIR}/${LOG_NAME}"

log_dir="$(dirname "$LOG_FILE")"
[ -d "$log_dir" ] || die "Log directory does not exist: $log_dir"
: > "$LOG_FILE" 2>/dev/null || die "Cannot write to log file: $LOG_FILE"

{
    printf 'F5 Tech Writer Agent setup\n'
    printf 'Run at:     %s\n' "$(date '+%Y-%m-%d %H:%M:%S %Z')"
    printf 'Script:     %s\n' "$0"
    printf '\n'
} >> "$LOG_FILE"

log "Repository: $REPO_ROOT"
if git rev-parse --verify --quiet HEAD >/dev/null; then
    log "Branch:     $BRANCH"
else
    log "Branch:     $BRANCH (no commits yet)"
fi
if [ "$APPLY" = false ]; then
    log "Mode:       dry run. Pass --apply to write files."
else
    log "Mode:       apply"
fi
log "Log:        $LOG_FILE"
if [ "$MIGRATION" = true ]; then
    log ""
    log "$COPILOT_FILE carries $copilot_lines lines of instructions and there is"
    log "no AGENTS.md. This repository needs a migration, not a new setup."
fi
log ""

# Step 1: the submodule.

log "Submodule"
if [ -f "$AGENT_INSTRUCTIONS" ]; then
    skip "$SUBMODULE_PATH" "already present"
elif [ -d "$SUBMODULE_PATH" ] && [ ! -f "$AGENT_INSTRUCTIONS" ]; then
    if [ "$APPLY" = true ]; then
        git submodule update --init --recursive "$SUBMODULE_PATH"
        [ -f "$AGENT_INSTRUCTIONS" ] || die "Initialized $SUBMODULE_PATH but $AGENT_INSTRUCTIONS is missing"
        ok "$SUBMODULE_PATH (initialized)"
    else
        plan "$SUBMODULE_PATH (initialize existing submodule)"
    fi
else
    if [ "$APPLY" = true ]; then
        git submodule add "$SUBMODULE_URL" "$SUBMODULE_PATH"
        [ -f "$AGENT_INSTRUCTIONS" ] || die "Added $SUBMODULE_PATH but $AGENT_INSTRUCTIONS is missing"
        ok "$SUBMODULE_PATH"
    else
        plan "$SUBMODULE_PATH (add submodule)"
    fi
fi
log ""

# Step 2: the instruction files.

write_file() {
    # write_file PATH CONTENT [MARKER] [FIX]
    #
    # Creates PATH with CONTENT when the file is missing. When the file already
    # exists, checks it for MARKER. Reports the file as fine when the marker is
    # there, and prints FIX when it is not.
    #
    # The script never edits an existing file. These files are hand-maintained,
    # and appending to one would produce duplicate or contradictory
    # instructions that are worse than a clear message.
    local path="$1" content="$2" marker="${3:-}" fix="${4:-}"

    if [ -e "$path" ]; then
        if [ -z "$marker" ]; then
            skip "$path" "already exists"
        elif grep -qF "$marker" "$path" 2>/dev/null; then
            skip "$path" "already references the agent instructions"
        else
            warn "$path" "$fix"
        fi
        return
    fi

    if [ "$APPLY" = false ]; then
        plan "$path"
        return
    fi

    mkdir -p "$(dirname "$path")"
    printf '%s' "$content" > "$path"
    ok "$path"
}

log "Instruction files"

# In a migration the content for AGENTS.md already exists in the Copilot file.
# Creating a stub here would leave two competing instruction files, so report
# the move instead and let the person decide what carries over.
if [ "$MIGRATION" = true ] && [ ! -f "AGENTS.md" ]; then
    warn "AGENTS.md" "create it by renaming $COPILOT_FILE, which has $copilot_lines lines of instructions: git mv $COPILOT_FILE AGENTS.md"
else

write_file "AGENTS.md" "# ${REPO_NAME}

Before responding to any request in this repo, read
\`${AGENT_INSTRUCTIONS}\` in full. It
defines your role, workflows, north stars, mandatory rules, and citation
format. Treat it as your primary instructions for this repo.

## Repo-specific context

<!-- TODO: Replace this section with context for this repository. Cover the
build commands, the content structure, linting rules, and anything else an
assistant needs that the style guide does not provide. -->
" \
    "$AGENT_INSTRUCTIONS" \
    "add a line telling the agent to read \`$AGENT_INSTRUCTIONS\` in full"

fi

if [ "$MIGRATION" = true ]; then
    copilot_fix="after moving the content to AGENTS.md, replace this file with a pointer at AGENTS.md"
else
    copilot_fix="point it at AGENTS.md, or leave it if it already carries the full instructions"
fi

write_file "$COPILOT_FILE" "# ${REPO_NAME}

Read \`AGENTS.md\` in the repository root in full before responding to any
request in this repo. It is the authoritative instruction file for this
repository.
" \
    "AGENTS.md" \
    "$copilot_fix"

# CLAUDE.md needs both imports, and nothing else. Two failures hide behind a
# file that imports the agent instructions correctly:
#
#   - No @AGENTS.md line, so Claude Code never sees the repo context.
#   - Repo content in the file itself. opencode ignores CLAUDE.md once
#     AGENTS.md exists, so that content disappears for opencode users.
if [ -f "CLAUDE.md" ] && grep -qF "@${AGENT_INSTRUCTIONS}" CLAUDE.md 2>/dev/null; then
    claude_problems=""
    grep -qF "@AGENTS.md" CLAUDE.md 2>/dev/null \
        || claude_problems="add the line \`@AGENTS.md\` so Claude Code loads the repo context"
    if [ "$(grep -cv '^@\|^[[:space:]]*$' CLAUDE.md)" -gt 0 ]; then
        [ -z "$claude_problems" ] || claude_problems="${claude_problems}; also "
        claude_problems="${claude_problems}move the repo content to AGENTS.md and reduce this file to the two import lines, because opencode ignores CLAUDE.md once AGENTS.md exists"
    fi

    if [ -n "$claude_problems" ]; then
        warn "CLAUDE.md" "$claude_problems"
    else
        skip "CLAUDE.md" "already references the agent instructions"
    fi
else

write_file "CLAUDE.md" "@AGENTS.md
@${AGENT_INSTRUCTIONS}
" \
    "@${AGENT_INSTRUCTIONS}" \
    "add the line \`@${AGENT_INSTRUCTIONS}\`"

fi

write_file "opencode.json" "{
  \"\$schema\": \"https://opencode.ai/config.json\",
  \"instructions\": [\"${AGENT_INSTRUCTIONS}\"]
}
" \
    "$AGENT_INSTRUCTIONS" \
    "add \"$AGENT_INSTRUCTIONS\" to the \"instructions\" array"

log ""

# Summary and next steps.

summary() {
    local verb="$1"
    log "$verb $created, $skipped already set up, $needs_attention need attention."
}

if [ "$needs_attention" -gt 0 ]; then
    log "Files marked ACTION already exist and don't reference the agent"
    log "instructions. Edit them by hand. This script doesn't change a file that"
    log "is already there, because appending would leave duplicate or"
    log "contradictory instructions."
    log ""

fi

# Repeat the actions at the end of the log, after the summary, so the list is
# the last thing in the file and can be pasted into a ticket.
append_actions_to_log() {
    [ "$needs_attention" -gt 0 ] || return 0
    {
        printf '\n'
        printf 'Files that need a hand edit\n'
        printf '\n'
        printf '%b' "$actions" | while IFS="$(printf '\t')" read -r path fix; do
            [ -n "$path" ] || continue
            printf '  %s\n' "$path"
            printf '      %s\n' "$fix"
        done
    } >> "$LOG_FILE"
}

if [ "$APPLY" = false ]; then
    summary "Dry run finished. Would create"
    log "Run again with --apply to write the files."
    append_actions_to_log
    [ "$needs_attention" -eq 0 ] || exit 2
    exit 0
fi

summary "Done. Created"
log ""

if [ -f "AGENTS.md" ] && grep -q "TODO: Replace this section" AGENTS.md 2>/dev/null; then
    log "Next steps"
    log ""
    log "1. Add your repo-specific context to AGENTS.md. The file is wired up,"
    log "   but the \"Repo-specific context\" section is still a placeholder."
    log ""
    log "2. Verify the setup. Start a fresh session in your assistant and ask:"
    log ""
    log "     What are the north stars for F5 documentation?"
    log ""
    log "   The assistant names sentence-length, active-voice, reading-level,"
    log "   and global-audience. Repeat for each assistant your team uses."
    log ""
    log "3. Commit the files and open a pull request. Leave $LOG_NAME out"
    log "   of the commit, or delete it once you are done."
fi

append_actions_to_log
[ "$needs_attention" -eq 0 ] || exit 2
