---
title: UI terms
category: terminology
aliases: [UI, user interface, screen, field, dialog, drop-down, GUI]
applies-to: [all F5 docs]
source-authority: F5 Technical Style Guide, F5 NGINX Style Guide, Microsoft Style Guide
supersedes:
last-reviewed: 2026-04-03
---

# UI terms

## Guidance

Use specific, plain terms for UI elements. Avoid legacy or ambiguous
terms that don't translate well or don't match how the interface
actually works. When possible, avoid referring to UI elements at all —
describe what the user needs to do instead.

## Examples

**Do:**
> From the **Policy** list, select **APM**.

> Pick from the options in the **Policy** drop-down list.

> Enter a value in the **IP Address** box.

**Don't:**
> From the **Policy** drop-down, select **APM**.

> Enter a value in the **IP Address** field.

## Notes

Required replacements:

| Avoid | Use instead | Notes |
|-------|-------------|-------|
| drop-down (noun) | list, menu | "Select from the Policy drop-down" → "From the Policy list, select APM" |
| drop-down (adjective) | drop-down list, drop-down menu | Acceptable when "list" or "menu" alone feels ambiguous |
| field | box | |
| screen | page | Use "console screen" for hardware only |
| GUI, WebGUI | user interface | |
| dialog box | pop-up window (MyF5), popup screen (TechComm) | |
| navigate to | go to | |
| grayed out | unavailable | |
| radio button | button, or refer to the label directly | |

### Drop-down: noun vs. adjective

"Drop-down" as a standalone noun is not acceptable. "Drop-down" as
an adjective modifying "list" or "menu" is acceptable when context
requires it. "List" or "menu" alone is always the preferred form.

In order of preference:
1. From the **Policy** list, select **APM**. (preferred)
2. From the **Policy** drop-down list, select **APM**. (acceptable)
3. From the **Policy** drop-down menu, select **APM**. (acceptable)
4. From the **Policy** drop-down, select **APM**. (don't use)

## Related

- [Bold](../formatting/bold.md)
- [Click vs. Select](click-vs-select.md)
- [UI element names](../procedures/ui-element-names.md)

## See also

[Browse all guidelines](../TOC.md)