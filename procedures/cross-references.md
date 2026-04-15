---
title: Cross-references
category: procedures
aliases: [cross-references, links, see also, above, below]
applies-to: [all F5 docs]
source-authority: F5 Technical Style Guide, F5 NGINX Style Guide
last-reviewed: 2026-04-02
---

# Cross-references

## Guidance

Refer to specific section names, table numbers, or figure titles instead of relative position words like "above" or "below." Relative position changes when content is reformatted or reordered.

## Examples

**Do:**
> For installation steps, see [Install NGINX Plus](link).

> For the full list of supported platforms, see
> [System requirements](link).

**Don't:**
> See the table above for the full list.

> Refer to the steps below to complete the installation.

> As mentioned earlier, the system restarts automatically.

## Notes

Avoid "above" and "below" entirely. Use the section name or a descriptive phrase instead:
- Don't: See the note above.
- Do: See the note in [Configure the virtual server](link).

Use "preceding" or "following" only when the reference is immediately adjacent and unambiguous.

In the same document, bold the exact section or procedure name when linking without an anchor:
> To do so, use the example from the **Setting up a virtual server**
> procedure.

Do not include individual cross-references within topics in TechComm content. Collect related links in a separate resources section at the end of the topic.

When linking to external F5 documentation, use the full URL rather than masking the destination.

## Related

- [Directional references](directional-references.md)
- [F5 product names](../terminology/f5-product-names.md)
- [Link text](../accessibility/link-text.md)
- [UI element names](ui-element-names.md)

## See also

[Browse all guidelines](../TOC.md)
