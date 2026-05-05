# Copilot instructions for the F5 Technical Writing Style Guide

This repo is a collection of authoring guidelines for F5 technical writers. Each guideline is a standalone Markdown file. These instructions help you author and edit guidelines correctly.

## Repo structure

Guidelines live in category folders at the repo root. One file = one guideline or term.

| Folder | Contents |
|---|---|
| `accessibility/` | Accessibility standards (alt text, color, link text) |
| `error-messages/` | Writing and publishing error messages |
| `formatting/` | Visual and structural formatting rules |
| `grammar/` | Grammar rules and usage |
| `procedures/` | Writing tasks, steps, and instructions |
| `punctuation/` | Punctuation usage |
| `terminology/` | Word choice and specific term guidance |
| `voice-and-tone/` | Tone, style, and language principles |
| `templates/` | Document type templates (how-to, concept, etc.) — not guideline files |

`TOC.md` is the authoritative list of all guidelines, organized by category in alphabetical order. `README.md` covers the guide's purpose and fallback authorities.

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

- **`title`** — The display name for the guideline. Required.
- **`category`** — The folder name (e.g., `formatting`, `terminology`). Required.
- **`aliases`** — Alternative terms a writer might search for. Use a YAML list.
- **`applies-to`** — Default is `[all F5 docs]` unless the rule is scoped.
- **`source-authority`** — Which F5 style guide(s) this rule originates from (e.g., `F5 Technical Style Guide`, `F5 Modern Voice`, `F5 NGINX Style Guide`, `F5 Brand Style Guide`). Omit `supersedes` if unused.
- **`last-reviewed`** — ISO 8601 date (`YYYY-MM-DD`) of the last update.

## Content conventions

### Guidance section
- Lead with the rule, not the exception or caveat.
- Two to three sentences maximum.
- Write prescriptively: tell writers what to do.

### Examples section
- Every guideline requires at least one **Do** and one **Don't**.
- Use blockquotes (`>`) for example text.
- Examples should be minimal and realistic — prefer F5 product context over generic filler.

### Notes section
- Optional. Omit entirely if there's nothing meaningful to add — an empty `## Notes` heading is worse than no section.
- Use for edge cases, exceptions, and conflicts with fallback guides.
- If this guide diverges from the Microsoft Style Guide or Chicago Manual of Style, explain which authority this guide follows and why.

### Related section
- Link to the two to five most closely related guidelines using relative paths.
- Cross-folder links use `../category/file.md`; same-folder links use `file.md`.

### See also
- Always ends with the standard line: `[Browse all guidelines](../TOC.md)`

## File naming

- Lowercase, hyphen-separated, no spaces: `click-vs-select.md`, `oxford-comma.md`.
- Name the file after the term or concept, not the rule.
- The `## [Term or guideline name]` H1 heading matches the `title` frontmatter field exactly.

## Language

- American English throughout. Spelling reference: American Heritage Dictionary.
- Write guidelines in second person and active voice, consistent with the content they govern.

## When adding a new guideline

1. Check `TOC.md` first — a guideline may already exist.
2. Copy `templates/guideline-template.md` and complete every required frontmatter field.
3. Place the file in the correct category folder.
4. Add an entry to `TOC.md` in alphabetical order within the correct section.
5. Update the `Related` section of any existing guidelines that are closely related to the new one.
