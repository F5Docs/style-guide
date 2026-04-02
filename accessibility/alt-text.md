---
title: Alt text
category: accessibility
aliases: [alt text, alt attribute, image description, alternative text]
applies-to: [all F5 docs]
source-authority: F5 NGINX Style Guide, F5 Technical Style Guide
last-reviewed: 2026-04-02
---

# Alt text

## Guidance

Write alt text for every image. Alt text should describe what the image
shows and why it's there — not just what it looks like. A user who
can't see the image should get the same information from the alt text
as a sighted user gets from the image.

## Examples

**Do:**
> "Area chart titled 'NGINX Active Connections' showing connections
> over time for the current date. The x-axis represents time of day,
> the y-axis represents connections ranging from 0 to 10,000."

> "Diagram showing the BIG-IP system between the client and server,
> with traffic flowing through the virtual server to the pool."

**Don't:**
> "Image of a chart."

> "Screenshot."

> "Diagram showing the architecture."

## Notes

Alt text length depends on image complexity. A simple icon needs a
short description; a detailed architecture diagram needs more.

For purely decorative images that add no information, use an empty alt
attribute (`alt=""`). Don't skip the attribute entirely.

Don't start alt text with "Image of" or "Picture of" — screen readers
already announce that it's an image.

Don't use the image file name as alt text.

For diagrams and architecture images, describe the relationships and
flow shown, not just the elements present. The goal is equivalent
information, not a visual transcript.

For screenshots, describe the relevant UI state and what the user
should notice, not every element on screen.

## Related

- [accessibility/link-text.md](link-text.md)
- [formatting/tables.md](../formatting/tables.md)