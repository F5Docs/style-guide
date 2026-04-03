---
title: Click vs. Select
category: terminology
aliases: [click, select, tap, choose, UI interaction]
applies-to: [all F5 docs]
source-authority: F5 Technical Style Guide, F5 NGINX Style Guide
last-reviewed: 2026-04-02
---

# Click vs. Select

## Guidance

Always use "select" for UI interactions. Never use "click." "Select"
is device-agnostic and works for mouse, keyboard, touchscreen, and
any future input method.

## Examples

**Do:**
> Select **Save** to apply your changes.

> Select the checkbox next to the virtual server you want to modify.

**Don't:**
> Click Save to apply your changes.

> Click the checkbox next to the virtual server you want to modify.

## Notes

This applies to all UI interactions regardless of element type:
buttons, checkboxes, tabs, list items, menu items, and icons.

Other interaction verbs to use in the right context:
- "enter" — for typing data into a box
- "type" — for command-line input
- "clear" — for deselecting a checkbox
- "hover over" — for tooltip or reveal interactions

Do not use: click, hit, press (except for physical keyboard keys),
check, uncheck, unselect, deselect, choose.

"Press" is reserved for physical keys only:
> Press **Enter** to confirm.

> Press **Esc** to cancel.

## Related

- [Login vs. Log in](login-vs-log-in.md)
- [Step formatting](../procedures/step-formatting.md)
- [UI element names](../procedures/ui-element-names.md)

## See also

[Browse all guidelines](../TOC.md)
