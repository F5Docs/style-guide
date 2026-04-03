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
> Under **Policy**, select **APM**.

> Enter a value in the **IP Address** box.

> Go to **Local Traffic** > **Virtual Servers**.

> Select the **Enable** option.

**Don't:**
> From the **Policy** drop-down, select APM.

> Enter a value in the **IP Address** field.

> Navigate to **Local Traffic** > **Virtual Servers**.

> Select the **Enable** radio button.

## Notes

Required replacements:

| Avoid | Use instead | Notes |
|-------|-------------|-------|
| drop-down (noun) | list, menu | Use "drop-down" only as an adjective: "drop-down list," "drop-down menu" |
| field | box | |
| screen | page | Use "console screen" for hardware only |
| GUI, WebGUI | user interface | |
| dialog box | pop-up window (MyF5), popup screen (TechComm) | |
| navigate to | go to | |
| grayed out | unavailable | |
| radio button | button, or refer to the label directly | |

### Drop-down: noun vs. adjective

Don't use "drop-down" as a noun. As an adjective before "list" or
"menu," it's acceptable when needed. The preferred form is to refer
to the UI label directly without naming the element type.

In order of preference:
1. Under **Policy**, select **APM**. (preferred)
2. From the **Policy** list, select **APM**. (acceptable)
3. From the **Policy** drop-down list, select **APM**. (acceptable)
4. From the **Policy** drop-down menu, select **APM**. (acceptable)
5. From the **Policy** drop-down, select **APM**. (don't use)

## Related

- [Bold](../formatting/bold.md)
- [Click vs. Select](click-vs-select.md)
- [UI element names](../procedures/ui-element-names.md)

## See also

[Browse all guidelines](../TOC.md)