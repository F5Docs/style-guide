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
- **`source-authority`** — The guide(s) this rule originates from. Use one or more of: `F5 Technical Style Guide`, `F5 Modern Voice`, `F5 NGINX Style Guide`, `F5 Brand Style Guide`, `Microsoft Style Guide`. If the rule is original to this guide with no prior source, use `F5 Technical Writing Style Guide`.
- **`supersedes`** — Only populate when this guideline explicitly overrides a rule in a source guide. Omit if unused.
- **`last-reviewed`** — Set to today's date in ISO 8601 format (`YYYY-MM-DD`) when creating or updating a file.

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
- Optional. If there is nothing meaningful to add, omit the `## Notes` heading entirely — an empty heading is worse than no section.
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

1. Check `TOC.md` first — a guideline may already exist.
2. Copy `templates/guideline-template.md` and complete every required frontmatter field.
3. Place the file in the correct category folder.
4. Add an entry to `TOC.md` in alphabetical order within the correct section.
5. Update the `Related` section of any existing guidelines that are closely related to the new one.