---
title: Lists
category: formatting
aliases: [lists, bullet points, numbered lists, bulleted lists, vertical lists]
applies-to: [all F5 docs]
source-authority: F5 Technical Style Guide, ASD-STE100
last-reviewed: 2026-08-07
---

# Lists

## Guidance

Use numbered lists for sequential steps. Use bulleted lists for non-sequential items. Use parallel structure within any list -- all items should follow the same grammatical pattern.

## Examples

**Do (numbered -- sequential):**
> 1. Select **Local Traffic** > **Virtual Servers**.
> 2. Select **Create**.
> 3. Enter a name for the virtual server.

**Do (bulleted -- non-sequential):**
> Before you begin, verify that you have:
> - A valid license
> - At least one pool configured
> - Network access to the management interface

**Don't:**
> - First, select Local Traffic.
> - Then you should select Virtual Servers.
> - Creating the virtual server is the next step.

## Notes

Start each bulleted item with the same part of speech -- either all nouns, all verbs, or all phrases. Don't mix.

Start each numbered step with an imperative verb: "Select," "Enter," "Configure."

Avoid nested lists more than two levels deep. If you need more than two levels, consider restructuring the content.

### Vertical list punctuation

- End the sentence that introduces the list with a colon.
- Capitalize the first word of every item.
- Put a period at the end of an item only when the item is a complete sentence. Don't add a period to a sentence fragment.
- Never end a list item with a comma or a semicolon.
- Put a period at the end of the last item in the list.

In a Warning or Caution that uses a vertical list, repeat "Do not" in each item that needs it, rather than stating it once before the list. This keeps every item unambiguous on its own, since a reader can land on any single item without reading the ones above it.

> **Note:** ASD-STE100's vertical-list guidance shows single-level lists only -- an item that would otherwise need its own sub-list is folded into a parenthetical aside on the parent item instead (for example, "The upstream block (which includes the primary server and the backup server)" rather than a nested bullet). That's stricter than this file's current two-level allowance. Flagging the conflict rather than resolving it here -- keeping two levels unless you decide otherwise.

## Related

- [Admonitions](../procedures/admonitions.md)
- [Sentence length](../voice-and-tone/sentence-length.md)
- [Step formatting](../procedures/step-formatting.md)
- [Step numbers in headings](../procedures/step-numbers-in-headings.md)

## See also

[Browse all guidelines](../TOC.md)