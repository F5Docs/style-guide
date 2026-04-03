---
title: If vs. Whether
category: terminology
aliases: [if, whether, conditional, alternatives]
applies-to: [all F5 docs]
source-authority: F5 Technical Style Guide
supersedes:
last-reviewed: 2026-04-03
---

# If vs. Whether

## Guidance

Use "if" for a condition of uncertainty — when something may or may
not happen. Use "whether" when presenting two or more alternatives.
Never use "whether or not" — "whether" alone is sufficient.

## Examples

**Do:**
> If the pool member is unavailable, the system marks it down.

> The system works whether you use reload or restart.

> Check whether the configuration file is valid before applying
> changes.

**Don't:**
> Whether the pool member is unavailable, the system marks it down.

> Check if the configuration file is valid or not.

> Check whether or not the configuration file is valid.

## Notes

A simple test: if you can substitute "regardless of whether," use
"whether." If you can substitute "in the event that," use "if."

- "Check whether the file is valid" = check regardless of which
  outcome — use "whether."
- "If the file is invalid, the system will fail" = in the event that
  this condition is true — use "if."

Never use "whether or not" — the "or not" is always redundant:
- Don't: Check whether or not the service is running.
- Do: Check whether the service is running.

## See also

[Browse all guidelines](../TOC.md)
