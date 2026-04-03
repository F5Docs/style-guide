---
title: configure vs. set up
category: terminology
aliases: [setup, set up, configure]
applies-to: [all F5 docs]
source-authority: F5 Technical Style Guide
last-reviewed: 2026-04-02
---

# configure vs. set up

## Guidance

Use "set up" in most cases. Use "configure" only when describing a
multi-step procedure that results in a specific product configuration —
particularly when that term appears in the product UI or API.

## Examples

**Do:**
> Set up the virtual server before adding pool members.

> Use the Configuration utility to configure the BIG-IP LTM system.

**Don't:**
> Configure your email client to use port 587.

> Set up the BIG-IP LTM system using the Configuration utility.

## Notes

"Configure" is appropriate when the user is populating multiple settings
for an entire feature, not just entering a single value. If the user is
specifying one value in one field, use "set up" or a more specific verb
like "enter" or "select."

The NGINX style guide permits "configure" specifically when describing
NGINX product configuration (installation, NGINX Agent setup, and similar).

## Related

- [ensure vs. make sure](ensure-vs-make-sure.md)
- [Modern Voice](../voice-and-tone/modern-voice.md)
- [Word list](word-list.md)