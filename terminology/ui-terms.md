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

Most of the time, avoid referring to UI elements. Instead, describe
what the user needs to do. When you do refer to UI elements, use the
terms in this guide.

## Examples

**Do:**
> Under **Policy**, select **APM**.

> Enter a value in the **IP Address** box.

> Go to **Local Traffic** > **Virtual Servers**.

> Select **Submit**.

**Don't:**
> From the **Policy** drop-down, select **APM**.

> Enter a value in the **IP Address** field.

> Navigate to **Local Traffic** > **Virtual Servers**.

> Select the **Submit** button.

## Notes

Required replacements:

| Avoid            | Use instead                                   | Notes                                          |
|------------------|-----------------------------------------------|------------------------------------------------|
| drop-down (noun) | UI label, list, menu                          | See [Drop-down usage](#drop-down-usage) below. |
| field            | box                                           |                                                |
| screen           | page                                          | Use "console screen" for hardware only         |
| GUI, WebGUI      | user interface                                |                                                |
| dialog box       | pop-up window (MyF5), popup screen (TechComm) |                                                |
| navigate to      | go to                                         |                                                |
| grayed out       | unavailable                                   |                                                |
| radio button     | button, or refer to the label directly        |                                                |

### Drop-down usage

If you must refer to a drop-down menu or list, it's OK to use
"drop-down" as an adjective. Don't use "drop-down" as a noun.

**Do:**
> Under **Policy**, select **APM**.

> From the **Policy** list, select **APM**.

**Acceptable:**
> From the **Policy** drop-down list, select **APM**.

**Don't:**
> From the **Policy** drop-down, select **APM**.

## Related

- [Bold](../formatting/bold.md)
- [Click vs. Select](click-vs-select.md)
- [UI element names](../procedures/ui-element-names.md)

## See also

[Browse all guidelines](../TOC.md)