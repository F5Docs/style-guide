---
title: UI terms
category: terminology
aliases: [UI, user interface, screen, field, dialog, drop-down, GUI, button, checkbox, tab, radio button, toggle]
applies-to: [all F5 docs]
source-authority: F5 Technical Style Guide, F5 NGINX Style Guide, Microsoft Style Guide
supersedes:
last-reviewed: 2026-04-06
---

# UI terms

## Guidance

This guide covers the correct terms for common UI elements. Most of the time, avoid referring to UI elements. Instead, describe what the user needs to do. When you do refer to UI elements, use the terms in this guide.

Use "select" for all UI interactions — buttons, checkboxes, tabs, list items, and icons. See [Click vs. Select](click-vs-select.md) for more detail.

## Quick reference

| Use               | Don't use                  | Guidance                                                                                  |
|-------------------|----------------------------|-------------------------------------------------------------------------------------------|
| box               | field                      | Use "box" for input areas.                                                                |
| button            |                            | Refer to the label directly.                                                              |
| checkbox          |                            | Refer to the label directly, or use "checkbox" as a noun. Use "select" to select, "clear" to deselect. |
| drop-down (adj)   | drop-down (noun)           | Refer to the label directly, or use as an adjective before "list" or "menu." Never use as a noun. |
| go to             | navigate to                |                                                                                           |
| page              | screen                     | Use "console screen" for hardware only.                                                   |
| panel             | drawer                     | "Drawer" is a developer term.                                                             |
| pop-up window     | dialog box                 | Use "popup screen" in TechComm content.                                                   |
| radio button      |                            | Refer to the label directly. If you need a descriptor, use "option."                      |
| tab (UI)          |                            | Use as a noun with the label: "On the **View** tab."                                      |
| Tab key           |                            | Use "Tab key" when referring to the keyboard key.                                         |
| toggle (noun/adj) | toggle (verb)              | Use "turn on" and "turn off" with the label. Include "toggle" only if it adds clarity.    |
| unavailable       | grayed out                 |                                                                                           |
| user interface    | GUI, WebGUI                |                                                                                           |

## Details

### Box

**Do:**
> Enter a value in the **IP Address** box.

**Don't:**
> Enter a value in the **IP Address** field.

### Button

**Do:**
> Select **Submit**.

**Don't:**
> Select the **Submit** button.

### Checkbox

Use "select" to select a checkbox and "clear" to deselect it.

**Do:**
> Select **Require client certificate**.

> Clear **Require client certificate**.

> Select the **Require client certificate** checkbox.

**Don't:**
> Check **Require client certificate**.

> Uncheck **Require client certificate**.

> Turn on **Require client certificate**.

### Drop-down

Don't use "drop-down" as a noun. As an adjective before "list" or "menu" it's acceptable when needed.

**Do:**
> Under **Policy**, select **APM**.

> From the **Policy** list, select **APM**.

**Acceptable:**
> From the **Policy** drop-down list, select **APM**.

**Don't:**
> From the **Policy** drop-down, select **APM**.

### Radio button

Refer to a radio button by its label. If you must provide a descriptor, use "option." Don't capitalize "option." Use "radio button" only in developer content where the API includes the term.

**Do:**
> Select **Yes**.

> Select the **Yes** option.

**Don't:**
> Select the **Yes** radio button.

### Screen

**Do:**
> The Overview page displays a summary of your configuration.

**Don't:**
> The Overview screen displays a summary of your configuration.

### Tab

Don't use "tab" as a verb. Use it as a noun with the label when referring to a UI tab. When referring to the keyboard key, use "Tab key."

**Do:**
> On the **View** tab, select **Enable**.

> Use the Tab key to move through a dialog box.

**Don't:**
> Tab to the **Advanced** section.

### Toggle

Don't use "toggle" as a verb. Use "turn on" and "turn off" with the label name. In most cases, just refer to the label directly — you don't need to name the element type at all. Don't use "enable" or "disable" — see [Enable and disable](enable-disable.md).

**Do:**
> Turn on **High contrast**.

> Turn on the **Pass all filters** toggle.

**Don't:**
> Toggle the **Pass all filters** switch.

> Enable **High contrast**.

## Related

- [Bold](../formatting/bold.md)
- [Click vs. Select](click-vs-select.md)
- [Enable and disable](enable-disable.md)
- [UI element names](../procedures/ui-element-names.md)

## See also

[Browse all guidelines](../TOC.md)