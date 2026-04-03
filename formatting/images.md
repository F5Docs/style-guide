---
title: Images
category: formatting
aliases: [images, screenshots, figures, diagrams, graphics]
applies-to: [all F5 docs]
source-authority: F5 NGINX Style Guide, F5 Technical Style Guide
last-reviewed: 2026-04-02
---

# Images

## Guidance

Only use images when they add information that prose or a table can't
convey as clearly. Screenshots go out of date quickly — if clear
written instructions can do the job, skip the screenshot.

## Examples

**Good uses for images:**
- Architecture diagrams showing relationships between components
- Network topology diagrams
- Workflow diagrams with multiple decision points
- Before/after comparisons of UI states

**Poor uses for images:**
- Screenshots of simple UI navigation steps
- Images that duplicate information already in the text
- Decorative images with no informational value

## Notes

### File format and size
- Use PNG format for screenshots and diagrams.
- Use SVG for diagrams where possible — SVG scales without quality loss
  and is easier to maintain.
- Set width to 800 pixels for full-width screenshots.
- Use 72 dpi resolution.
- Use a transparent background to support light and dark modes.

### File naming
- Use lowercase words separated by hyphens.
- Be descriptive: `nginx-active-connections-chart.png` not `image1.png`.
- Don't use spaces or underscores in file names.

### Placement and captions
- Never use a colon to introduce an image.
- Include a caption that describes the action or process shown.
- Don't include "illustration of" or "diagram of" in captions —
  just describe what it shows.
- Avoid using trademarks in diagrams. Call out the product name in
  the surrounding text instead.

### Annotations
- Use simple arrows and rectangles to highlight important items.
- Use high-contrast colors so annotations stand out.
- Don't capture the cursor in screenshots.
- Crop screenshots to include only relevant content — avoid
  unnecessary whitespace.
- Don't add a border — let the publishing system handle that via CSS.

### Accessibility
- Always include alt text. See
  [Alt text](../accessibility/alt-text.md) for
  guidance on writing effective alt text.

## Related

- [Alt text](../accessibility/alt-text.md)
- [Color](../accessibility/color.md)
- [Sensitive information](../terminology/sensitive-information.md)

## See also

[Browse all guidelines](../TOC.md)
