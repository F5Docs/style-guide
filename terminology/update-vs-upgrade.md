---
title: Update vs. Upgrade
category: terminology
aliases: [update, upgrade, version, migration]
applies-to: [all F5 docs]
source-authority: F5 Technical Style Guide
supersedes:
last-reviewed: 2026-04-03
---

# Update vs. Upgrade

## Guidance

Use "update" when moving between minor versions. Use "upgrade" when moving between major versions.

## Examples

**Do:**
> Before updating your system from BIG-IP 13.1 to 13.2, read the
> release notes.

> When upgrading from BIG-IP 13.x to 14.0, make sure your license
> supports the new version.

**Don't:**
> Before upgrading your system from BIG-IP 13.1 to 13.2, read the
> release notes.

> When updating from BIG-IP 13.x to 14.0, make sure your license
> supports the new version.

## Notes

The distinction:
- **Update** — moving from one minor version to another within the same major version. For example, BIG-IP 13.1 to 13.2.
- **Upgrade** — moving from one major version to another. For example, BIG-IP 13.x to 14.0.

This distinction is F5-specific and matters for support and licensing reasons. Use the correct term so users understand the scope of the change they're making.

Do not use "upgrade" as a general synonym for "improve" or "enhance" in F5 technical documentation.

## Related

- [Dates and times](../punctuation/dates-and-times.md)
- [F5 product names](f5-product-names.md)
- [Numbers](../formatting/numbers.md)

## See also

[Browse all guidelines](../TOC.md)
