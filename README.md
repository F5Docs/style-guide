# F5 Technical Writing Style Guide

A consolidated reference for F5 technical writers covering voice and tone, formatting, punctuation, procedures, terminology, and accessibility.

## Purpose

This guide consolidates F5's previously siloed style guides into a single, authoritative reference. Those guides are Modern Voice, Brand, NGINX, and the F5 Technical Style Guide. This guide also serves as a knowledge base for the F5 Style GPT agent.

## How to use this guide

Each guideline lives in its own file, organized by category. See [TOC.md](TOC.md) for the full list of topics.

When this guide doesn't cover a topic, consult the fallback guides in this order:

1. [Microsoft Style Guide](https://learn.microsoft.com/en-us/style-guide/welcome/)
2. [Chicago Manual of Style](https://www.chicagomanualofstyle.org/)
3. [American Heritage Dictionary](https://ahdictionary.com/) (spelling reference)

## Language and spelling

This guide follows **American English** spelling and conventions throughout. Use the American Heritage Dictionary as the spelling reference when in doubt.

Examples of American English preferences:
- organize, not organise
- color, not colour
- license (noun and verb), not licence
- canceled, not cancelled

## Date and time formats

Follow American date format conventions. See [Dates and times](formatting/dates-and-times.md) for full guidance.

- Dates: June 17, 2026 (not 17 June 2026)
- Times: 10 a.m. PT (not 10AM or 10:00 AM)
- Availability: 24x7 (not 24/7)

## Add this guide as a submodule

Add this guide to your documentation repository as a submodule named `.style-guide`.

1. Create a branch, add the submodule, and commit it:

   ```bash
   git checkout -b docs/add-style-guide-submodule
   git submodule add https://github.com/F5Docs/style-guide.git .style-guide
   git add .gitmodules .style-guide
   git commit -m "docs: Add F5 style guide as submodule"
   git push -u origin docs/add-style-guide-submodule
   ```

2. Open a pull request as usual.

### Clone a repository that includes this submodule

To clone a repository for the first time, include its submodules:

```bash
git clone --recurse-submodules <REPO_URL>
```

If you already cloned the repository, initialize the submodule:

```bash
git submodule update --init --recursive
```

### Reference guidelines in your documentation

From your documentation repository, reference guidelines with relative paths to the `.style-guide` submodule:

```markdown
See [Capitalization guidance](./.style-guide/formatting/capitalization.md)
```

### Set up AI coding assistants

The F5 Tech Writer Agent instructions live at `.style-guide/agent-instructions/f5-tech-writer-agent.md`. This file defines the following:

- The assistant's role
- The review, copy edit, and draft from notes workflows
- North stars and mandatory rules
- The citation format

For a repository that doesn't have any of these files yet, run the setup script from a local clone of this repository:

```bash
scripts/deploy-writer-agent.sh /path/to/your-docs-repo
```

The script adds the `.style-guide` submodule if it's missing, then creates `AGENTS.md`, `.github/copilot-instructions.md`, `CLAUDE.md`, and `opencode.json`. It runs as a dry run by default. Pass `--apply` to write the files.

The script never overwrites an existing file. It also refuses to run when `.github/copilot-instructions.md` already has content, because moving that content into `AGENTS.md` needs a person.

When a file already exists, the script checks whether it references the agent instructions. Files that don't are marked `ACTION` with the edit they need, and the script exits with status 2. Every run writes `deploy-writer-agent.log` to the repository root, ending with the list of files to fix. Delete the log before you commit.

The sections below describe each file, for repositories the script can't set up and for anyone who wants to know what it wrote.

Each assistant reads a different file. Set up the ones your team uses.

| Assistant | Reads | Expands file references |
|---|---|---|
| GitHub Copilot | `AGENTS.md` in VS Code, `.github/copilot-instructions.md` elsewhere | No |
| Claude Code | `CLAUDE.md` only | Yes, with `@path` syntax |
| opencode | `AGENTS.md`, falls back to `CLAUDE.md` | No, use `opencode.json` |

Put your repository-specific context in `AGENTS.md`, then point the other files at it.

#### Create AGENTS.md

Copilot and opencode both read `AGENTS.md`.

1. Create `AGENTS.md` in your repository root.

2. Add a directive to load the agent instructions, then add your repository-specific context below it:

   ```markdown
   # <YOUR_REPO_NAME>

   Before responding to any request in this repo, read
   `.style-guide/agent-instructions/f5-tech-writer-agent.md` in full. It
   defines your role, workflows, north stars, mandatory rules, and citation
   format. Treat it as your primary instructions for this repo.

   ## Repo-specific context

   <BUILD_COMMANDS_CONTENT_STRUCTURE_LINTING_RULES>
   ```

   Keep repository-specific context in its own section. Don't mix it into the agent instructions reference.

#### Point .github/copilot-instructions.md at AGENTS.md

VS Code reads `AGENTS.md`, so this file is redundant there. Other Copilot surfaces, such as copilot.com, the Copilot coding agent, and the JetBrains and Xcode plugins, are unverified. Keep the file as a pointer so those surfaces reach the same instructions.

1. Replace the contents of `.github/copilot-instructions.md` with a pointer:

   ```markdown
   # <YOUR_REPO_NAME>

   Read `AGENTS.md` in the repository root in full before responding to any
   request in this repo. It is the authoritative instruction file for this
   repository.
   ```

2. Keep all repository-specific content in `AGENTS.md`. Two files with the same guidance drift apart.

#### Create CLAUDE.md

Claude Code doesn't read `AGENTS.md`.

1. Create `CLAUDE.md` in your repository root.

2. Import both files:

   ```markdown
   @AGENTS.md
   @.style-guide/agent-instructions/f5-tech-writer-agent.md
   ```

   Claude Code expands both files at the start of every session.

3. If your repository already has a `CLAUDE.md` with repository-specific content, move that content to `AGENTS.md`. Reduce `CLAUDE.md` to the two import lines.

   When `AGENTS.md` exists, opencode ignores `CLAUDE.md`. Content left only in `CLAUDE.md` is invisible to opencode users.

#### Create opencode.json

opencode doesn't expand `@` references or Markdown links. Use `opencode.json` to load the agent instructions at the start of every session. The `instructions` array adds to `AGENTS.md` rather than replacing it.

1. Create `opencode.json` in your repository root, next to `AGENTS.md`:

   ```json
   {
     "$schema": "https://opencode.ai/config.json",
     "instructions": [".style-guide/agent-instructions/f5-tech-writer-agent.md"]
   }
   ```

   Paths in `instructions` resolve relative to the config file.

2. Commit the file so everyone who clones the repository gets the same setup.

Every repository needs its own `opencode.json`. A downstream repository doesn't read the `opencode.json` inside `.style-guide/`.

#### Verify the setup

Verify each assistant your team uses.

1. Start a fresh session.

2. Ask a question that only the agent instructions can answer:

   > What are the north stars for F5 documentation?

3. Check the response. The assistant names `sentence-length`, `active-voice`, `reading-level`, and `global-audience`.

4. Repeat these steps for each assistant your team uses.

After you configure an assistant, contributors can ask it to do the following:

- **Review a file.** The assistant flags style issues, cites the guideline each one violates, and suggests fixes.

  > Review this file for F5 style: `content/path/to/your-file.md`

- **Copy edit a file.** The assistant revises the file in place, then lists every change with the guideline it applies.

  > Copy edit this file: `content/path/to/your-file.md`

- **Draft from notes.** The assistant turns raw notes into a structured draft. It identifies the content type, such as how-to, concept, reference, or tutorial. It then loads the matching template from `.style-guide/templates/` and follows that template's section structure.

  > Write a draft from the following notes:
  > - explain what an upstream block is in NGINX
  > - defines a group of backend servers that NGINX can proxy requests to
  > - can include multiple servers with optional weight, max_fails, fail_timeout
  > - used with proxy_pass in a server or location block
  > - audience: developers new to NGINX

The [nginx/documentation](https://github.com/nginx/documentation) repository includes this submodule and configures these files. Check its repository root for a working example.

### Update the submodule

To get the latest updates from the style guide repository:

1. Create a branch, update the submodule, and commit the change:

   ```bash
   git checkout -b chore/sync-style-guide
   git submodule update --remote .style-guide
   git add .style-guide
   git commit -m "chore: Update F5 style guide submodule"
   git push -u origin chore/sync-style-guide
   ```

2. Open a pull request as usual.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidance on adding or updating guidelines. Use the template in [templates/guideline-template.md](templates/guideline-template.md) for all new files.
