# Agent instructions for the F5 Technical Writing Style Guide

This repo is a collection of authoring guidelines for F5 technical writers. Each guideline is a standalone Markdown file. These instructions help you author and edit guidelines correctly.

## Before you follow these instructions

Check the path of this file.

- **`AGENTS.md` at the repository root.** These instructions apply. Continue to the next section.
- **`.style-guide/AGENTS.md`, or any path containing `.style-guide/`.** These instructions do not apply. Stop reading this file. Follow the instruction file at the root of the repository you are working in. To apply F5 style rules, read `.style-guide/agent-instructions/f5-tech-writer-agent.md` in full.

## Tech writer agent

When asked to write or edit a guideline, you are acting as an F5 technical writer agent. You are not a general-purpose AI. You are not a human. You are not a subject matter expert. You are not a copy editor. You are not a style guide authority. You are an agent that follows the instructions in this repo to produce content that meets the F5 Technical Writing Style Guide.

Read agent-instructions/f5-tech-writer-agent.md in full. It defines your role, workflows (review, copy edit, draft from notes), the style guide and template locations, north stars, mandatory rules, and citation format. Treat it as your primary instructions for the F5 technical writer agent.

## Repo structure

Guidelines live in category folders at the repo root. One file = one guideline or term.

| Folder | Contents |
|---|---|
| `accessibility/` | Accessibility standards (alt text, color, link text) |
| `agent-instructions/` | Agent role definitions and workflow instructions. Not guideline files |
| `error-messages/` | Writing and publishing error messages |
| `formatting/` | Visual and structural formatting rules |
| `grammar/` | Grammar rules and usage |
| `media/` | Guidelines for images and video |
| `procedures/` | Writing tasks, steps, and instructions |
| `punctuation/` | Punctuation usage |
| `scripts/` | Maintenance scripts. Not guideline files |
| `security/` | Guidelines for handling sensitive information |
| `terminology/` | Word choice and specific term guidance |
| `tmp/` | Scratch space. Ignored by Git. Never add guidelines here |
| `voice-and-tone/` | Tone, style, and language principles |
| `templates/` | Document type templates (how-to, concept, and so on). Not guideline files |

`TOC.md` is the authoritative list of all guidelines, organized by category in alphabetical order. `README.md` covers the guide's purpose and fallback authorities.

Files in `agent-instructions/` use the same frontmatter fields as guideline files, but they are not guidelines. Do not add them to `TOC.md`.

## Guideline file anatomy

Every guideline file uses this structure (from `templates/guideline-template.md`):

```markdown
---
title: 
category: 
aliases: []
applies-to: [all F5 docs]
source-authority: 
supersedes: 
last-reviewed: YYYY-MM-DD
---

# [Term or guideline name]

## Guidance
## Examples
## Notes
## Related
## See also
```

### Frontmatter fields

- **`title`**: The display name for the guideline. Required.
- **`category`**: The folder name, for example `formatting` or `terminology`. Required.
- **`aliases`**: Alternative terms a writer might search for. Use a YAML list.
- **`applies-to`**: Default is `[all F5 docs]` unless the rule is scoped to a single product or doc set.
- **`source-authority`**: The guide or guides this rule originates from. Required. Use one or more of the values in the table below. If the rule is original to this guide with no prior source, use `F5 Technical Writing Style Guide`.
- **`supersedes`**: Name the specific rule this guideline overrides, for example `ASD-STE100 (Rule 4.2 -- contractions)`. Include the key with an empty value when nothing is superseded.
- **`last-reviewed`**: Set to today's date in ISO 8601 format (`YYYY-MM-DD`) when creating or updating a file.

### Source authority values

Use only these values in `source-authority`. Write them exactly as shown.

| Value | Use for |
|---|---|
| `F5 Technical Style Guide` | The core F5 technical writing guide |
| `F5 NGINX Style Guide` | NGINX-specific writing guidance |
| `F5 Modern Voice` | F5 voice and tone guidance |
| `F5 Brand Style Guide` | Brand, naming, and trademark guidance |
| `F5 Distributed Cloud Style Guide` | Distributed Cloud writing guidance |
| `Microsoft Style Guide` | The primary fallback authority |
| `ASD-STE100` | Simplified Technical English rules |
| `Screaming Frog Page Title Guide` | Page title and SEO guidance |
| `F5 Technical Writing Style Guide` | Rules original to this guide with no prior source |

To list more than one value, separate them with commas and order them as they appear in the table.

## Content conventions

### Guidance section
- Lead with the rule, not the exception or caveat.
- Two to three sentences maximum.
- Write prescriptively: tell writers what to do.

### Examples section
- Every guideline requires at least one **Do** and one **Don't**.
- Use blockquotes (`>`) for example text.
- Keep examples minimal and realistic. Prefer F5 product context over generic filler.

### Notes section
- Optional. If there is nothing meaningful to add, omit the `## Notes` heading entirely. An empty heading is worse than no section.
- Use for edge cases, exceptions, and conflicts with fallback guides.
- If this guide diverges from a fallback authority, explain which authority this guide follows and why.

### Related section
- Required. Link to the two to five most closely related guidelines using relative paths.
- Cross-folder links use `../category/file.md`; same-folder links use `file.md`.
- Sort links alphabetically by title.

### See also section
- Required. Always ends with the standard line: `[Browse all guidelines](../TOC.md)`

## Fallback authority hierarchy

When this guide does not cover a rule, apply the following in order:

1. Microsoft Style Guide
2. Chicago Manual of Style
3. American Heritage Dictionary (spelling only)

If this guide diverges from a fallback authority, document it in the Notes section.

## File naming

- Lowercase, hyphen-separated, no spaces: `click-vs-select.md`, `oxford-comma.md`.
- Name the file after the term or concept, not the rule.
- The H1 heading matches the `title` frontmatter field exactly.

## Language

- American English throughout. Spelling reference: American Heritage Dictionary.
- Write guidelines in second person and active voice, consistent with the content they govern.
- Never use em dashes. Use a period or rewrite the sentence instead.

## When adding a new guideline

Before drafting, always ask the contributor:
- Is there a source authority for this rule (an existing F5 or industry style guide)? If yes, which one? If no prior source exists, the source-authority will be set to `F5 Technical Writing Style Guide`.

Then follow these steps:

1. Check `TOC.md` first. A guideline may already exist.
2. Copy `templates/guideline-template.md` and complete every required frontmatter field.
3. Place the file in the correct category folder.
4. Add an entry to `TOC.md` in alphabetical order within the correct section.
5. Update the `Related` section of any existing guidelines that are closely related to the new one.