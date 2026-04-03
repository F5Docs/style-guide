---
title: Code blocks
category: formatting
aliases: [code, code blocks, inline code, commands, code formatting]
applies-to: [all F5 docs]
source-authority: F5 Technical Style Guide, F5 NGINX Style Guide
last-reviewed: 2026-04-02
---

# Code blocks

## Guidance

Use code blocks for multi-line commands, configuration examples, and
command output. Use inline code formatting for single commands, file
paths, parameter names, and configuration values referenced in prose.
Always specify the language identifier for syntax highlighting.

## Examples

**Do (code block):**
> Before reloading NGINX, check your configuration syntax:
> ```shell
> sudo nginx -t
> ```

**Do (code block — config file):**
> ```nginx
> worker_processes auto;
> events {
>     worker_connections 1024;
> }
> ```

**Do (inline):**
> Set the `worker_processes` directive to match the number of CPU cores.

**Don't:**
> Run sudo nginx -t to check your configuration syntax.

> Set the worker_processes directive to match the number of CPU cores.

## Notes

Always specify the language identifier after the opening fence for
syntax highlighting. Use `shell` for most command-line examples unless
the command requires bash-specific syntax, in which case use `bash`.

Common identifiers:

| Language / context | Identifier |
|--------------------|------------|
| Shell commands (default) | `shell` |
| Bash-specific syntax | `bash` |
| NGINX configuration | `nginx` |
| YAML | `yaml` |
| JSON | `json` |
| Python | `python` |
| JavaScript | `javascript` |
| Plain output / logs | `text` |

Always test commands and configuration examples before publishing.

Include necessary context in commands: sudo, file paths, required flags.

Do not use code style within a paragraph for running prose — only for
literal strings the user must type, copy, or identify exactly.

Bold command names when referenced in prose outside of a code block.
Use code formatting for the command itself in procedures.

File path conventions:
- File names: bold when the user interacts with them in a procedure
- File extensions: lowercase with dot prefix (`.conf`, `.yaml`)
- File types: uppercase, no dot (`YAML`, `JSON`)

## Related

- [Sensitive information](../terminology/sensitive-information.md)
- [Step formatting](../procedures/step-formatting.md)
- [UI element names](../procedures/ui-element-names.md)

## See also

[Browse all guidelines](../TOC.md)
