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

Use "select" for all UI interactions — buttons, checkboxes, tabs,
list items, and icons. See [Click vs. Select](click-vs-select.md)
for more detail.

Required replacements:

| Avoid            | Use instead                                   | Notes                                                         |
|------------------|-----------------------------------------------|---------------------------------------------------------------|
| button           | refer to the label directly                   | "Select the **Submit** button" → "Select **Submit**"          |
| checkbox         | refer to the label directly                   | "Select the **Enable** checkbox" → "Select **Enable**"        |
| dialog box       | pop-up window (MyF5), popup screen (TechComm) |                                                               |
| drawer           | panel                                         | "Drawer" is a developer term                                  |
| drop-down (noun) | refer to the label directly, list, menu       | See [Drop-down usage](#drop-down-usage) below.                |
| field            | box                                           |                                                               |
| grayed out       | unavailable                                   |                                                               |
| GUI, WebGUI      | user interface                                |                                                               |
| navigate to      | go to                                         |                                                               |
| radio button     | refer to the label directly                   | "Select the **Yes** radio button" → "Select **Yes**"          |
| screen           | page                                          | Use "console screen" for hardware only                        |
| tab              | refer to the label directly                   | "Select the **Advanced** tab" → "Select **Advanced**"         |

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