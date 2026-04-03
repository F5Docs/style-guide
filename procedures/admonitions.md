---
title: Admonitions
category: procedures
aliases: [admonitions, notes, warnings, cautions, tips, important]
applies-to: [all F5 docs]
source-authority: F5 Technical Style Guide, F5 NGINX Style Guide
last-reviewed: 2026-04-02
---

# Admonitions

## Guidance

Use admonitions sparingly. Every note or warning you add trains readers
to skip them. Reserve each type for its specific purpose and don't
use them as a catch-all for extra information.

## Admonition types

| Type | When to use |
|------|-------------|
| Note | Supplementary information the user might find helpful but could skip |
| Important | Information the user must know to avoid an unexpected result |
| Tip | An optional shortcut or best practice |
| Warning | Risk of data loss or sustained service outage |
| Caution | Risk of downtime or service interruption (less severe than Warning) |

## Examples

**Do:**
> **Note:** BIG-IP Next Central Manager manages BIG-IP Next instances
> only. It does not manage classic BIG-IP devices.

> **Warning:** Restarting the service drops all active connections.
> Use reload instead to apply configuration changes without downtime.

**Don't:**
> **Note:** This is a very important step that you should not skip
> because it is required for the configuration to work correctly.

## Notes

Use only these five types: Note, Important, Tip, Warning, Caution.
Do not use Notice or Attention except in hardware documentation.

Caution is less severe than Warning:
- Caution: risk of damage, downtime, or service interruption
- Warning: risk of data loss or sustained outage, or hazard to personnel

If you find yourself adding a Note to every procedure, consider whether
that information belongs in the main content instead.

Do not use admonitions as a substitute for clear writing. If the
information is important enough to call out, consider whether it
should be part of the main text.

## Related

- [Bold](../formatting/bold.md)
- [Cross-references](cross-references.md)
- [Step formatting](step-formatting.md)