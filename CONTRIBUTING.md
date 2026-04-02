# Contributing to the F5 Technical Writing Style Guide

This guide is a living document. Contributions from writers, editors,
and subject matter experts are welcome.

## Before you contribute

- Read the [README.md](README.md) for an overview of the guide's
  purpose, fallback style guides, and language conventions.
- All content must follow **American English** spelling and
  conventions. Use the American Heritage Dictionary as the spelling
  reference when in doubt.
- Check the [TOC.md](TOC.md) to see if a guideline already exists
  before adding a new one.

## How to add or update a guideline

1. Create a branch from `main` using the naming convention
   `feat/your-topic-name`.
2. Use the template in
   [templates/guideline-template.md](templates/guideline-template.md)
   for all new files.
3. Place your file in the appropriate category folder:
   - `voice-and-tone/` — tone, style, and language principles
   - `formatting/` — visual and structural formatting rules
   - `punctuation/` — punctuation usage
   - `procedures/` — rules for writing tasks and instructions
   - `terminology/` — word choice and specific term guidance
   - `accessibility/` — accessibility standards
4. Update [TOC.md](TOC.md) to include your new file in alphabetical
   order within its section.
5. Update the `Related` section of any existing files that are
   relevant to your new guideline.
6. Link your MR to a Jira ticket. For minor fixes and typos, use
   the [catch-all housekeeping ticket](https://jira.f5net.com/browse/TECHDOCS-4373).
7. All MRs require at least one reviewer approval before merging
   into `main`.

## Guideline file standards

- One file = one guideline or term. If you can't describe the file's
  scope in a single sentence, it's probably two files.
- Complete all frontmatter fields. Do not leave `title` or
  `category` blank.
- Set `last-reviewed` to the date you created or last updated the
  file (YYYY-MM-DD format).
- The Guidance section should be two to three sentences maximum.
  Lead with the rule, not the exception.
- Examples are required. Every guideline needs at least one Do and
  one Don't.
- The Notes section is optional. Omit it if there's nothing to add
  — an empty section is worse than no section.

## Style decisions and conflicts

If you identify a conflict between this guide and a fallback guide
(Microsoft Style Guide, Chicago Manual of Style), document the
conflict in the Notes section and note which authority this guide
follows and why.

If you identify a conflict between this guide and a product-specific
style convention, raise it for discussion before merging. Governance
for style decisions sits at the content strategy level.

## Questions

Open an issue in this repo or post in #doc-reviews on Slack.