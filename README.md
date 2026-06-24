# F5 Technical Writing Style Guide

A consolidated reference for F5 technical writers covering voice and tone, formatting, punctuation, procedures, terminology, and accessibility.

## Purpose

This guide consolidates F5's previously siloed style guides — Modern Voice, Brand, NGINX, and the F5 Technical Style Guide — into a single, authoritative reference. It is also configured as a knowledge base for the F5 Style GPT agent.

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

Follow American date format conventions. See [Dates and times](punctuation/dates-and-times.md) for full guidance.

- Dates: June 17, 2026 (not 17 June 2026)
- Times: 10 a.m. PT (not 10AM or 10:00 AM)
- Availability: 24x7 (not 24/7)

## Using as a submodule

To add this guide as a submodule to your documentation repository with the directory name `.style-guide`:

```bash
git checkout -b docs/add-style-guide-submodule
git submodule add https://github.com/F5Docs/style-guide.git .style-guide
git add .gitmodules .style-guide
git commit -m "docs: Add F5 style guide as submodule"
git push -u origin docs/add-style-guide-submodule
```

Then open a PR as usual.

### Cloning a repo that includes this submodule

If you're cloning a repo for the first time, include submodules:

```bash
git clone --recurse-submodules <repo-url>
```

If you already have the repo cloned, initialize the submodule:

```bash
git submodule update --init
```

### Referencing guidelines in your documentation

From your documentation repo, reference guidelines using relative paths to the `.style-guide` submodule:

```markdown
See [Capitalization guidance](./.style-guide/formatting/capitalization.md)
```

### Using with AI coding assistants

If your team uses Claude Code or GitHub Copilot, point your `CLAUDE.md` or `.github/copilot-instructions.md` file at the `.style-guide/` directory so the assistant can read style guidance and templates directly when reviewing or drafting content.

Once configured, contributors can ask the assistant to:

- **Review a file** -- flag style issues, cite the specific guideline each one violates, and suggest fixes.

  > Review this file for F5 style: `content/path/to/your-file.md`

- **Copy edit a file** -- revise the file in place and list every change made, with the guideline it applies.

  > Copy edit this file: `content/path/to/your-file.md`

- **Draft from notes** -- turn raw notes into a structured draft. The assistant identifies the content type (how-to, concept, reference, tutorial, etc.), loads the matching template from `.style-guide/templates/`, and follows its section structure.

  > Write a draft from the following notes:
  > - explain what an upstream block is in NGINX
  > - defines a group of backend servers that NGINX can proxy requests to
  > - can include multiple servers with optional weight, max_fails, fail_timeout
  > - used with proxy_pass in a server or location block
  > - audience: developers new to NGINX

See the `CLAUDE.md` or `copilot-instructions.md` files in [nginx/documentation](https://github.com/nginx/documentation) for a working example of how to configure this.

### Updating the submodule

To fetch the latest updates from the style guide repository:

```bash
git checkout -b chore/sync-style-guide
git submodule update --remote .style-guide
git add .style-guide
git commit -m "chore: Update F5 style guide submodule"
git push -u origin chore/sync-style-guide
```

Then open a PR as usual.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidance on adding or updating guidelines. Use the template in [templates/guideline-template.md](templates/guideline-template.md) for all new files.