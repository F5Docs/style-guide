---
title: Doc titles
category: formatting
aliases: [title, page title, doc title, SEO title, meta title]
applies-to: [all F5 docs]
source-authority: Screaming Frog Page Title Guide, F5 NGINX Style Guide
supersedes:
last-reviewed: 2026-04-16
---

# Doc titles

## Guidance

Write doc titles that are descriptive, unique, and concise. Target 60 characters. Never exceed 70 characters. Titles longer than 60 characters may be truncated in search results. Don't include product names in titles -- the product name belongs in the doc description and is already visible in the breadcrumb path.

## Examples

**Do:**
> Install on bare metal
> Configure rate limiting
> Set up a health monitor

**Don't:**
> Install NGINX Instance Manager on bare metal
> Configure rate limiting in NGINX Plus
> How to set up a health monitor for BIG-IP

## Notes

### Length
Target 60 characters. Google truncates titles at around 580 pixels, which is approximately 60 characters. Titles up to 70 characters are acceptable when necessary, but anything beyond 70 risks truncation in search results. Front-load the most important words. If truncation occurs, the most relevant part of the title still appears.

### Product names
Don't include product names in titles. The product name appears in the breadcrumb path and should be covered in the doc description. Including the product name in the title uses up valuable characters and pushes the descriptive content further right where it may be truncated.

### Uniqueness
Every doc title must be unique. Duplicate titles make it harder for users and search engines to distinguish between pages.

### Format
Use sentence case. Start with the most important word — typically an imperative verb for tasks, or a noun for concepts and reference topics:

- Tasks: "Install on bare metal," "Configure rate limiting"
- Concepts: "Rate limiting overview," "Health monitor types"
- Reference: "API endpoints," "Configuration parameters"

## Related

- [Capitalization](../formatting/capitalization.md)
- [F5 product names](../terminology/f5-product-names.md)
- [Headings](headings.md)

## See also

[Browse all guidelines](../TOC.md)