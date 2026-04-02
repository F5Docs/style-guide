---
title: Capitalization
category: formatting
aliases: [capitalization, sentence case, title case, caps]
applies-to: [all F5 docs]
source-authority: F5 Technical Style Guide, F5 NGINX Style Guide
last-reviewed: 2026-04-02
---

# Capitalization

## Guidance

Use sentence case everywhere except proper nouns and official product
names. Never capitalize for emphasis.

## Examples

**Do:**
> Set up a virtual server for your application.

> The BIG-IP system receives all inbound traffic.

> single sign-on (SSO)

**Don't:**
> Set Up A Virtual Server For Your Application.

> The big-ip System receives all Inbound Traffic.

> Single Sign-On (SSO)

## Notes

### Sentence case
Capitalize only the first word and proper nouns. This applies to:
- Headings and titles
- UI labels (use capitalization as shown in the UI)
- Table headers
- List items (capitalize the first word only)
- Captions

### Proper nouns and product names
Always capitalize:
- F5 product names: BIG-IP, NGINX Plus, BIG-IQ
- Official feature names when used as proper names: BIG-IP LTM,
  Client SSL
- Third-party product names: Kubernetes, Linux, VMware

### Acronyms
Acronyms are written in all caps, but their source words are not
capitalized unless they are proper nouns:
- Do: single sign-on (SSO)
- Do: denial-of-service (DoS)
- Don't: Single Sign-On (SSO)
- Don't: Denial-Of-Service (DoS)

### Never capitalize for emphasis
Use bold for emphasis instead. All caps is never acceptable for
emphasis.
- Don't: Make sure you SAVE the file before closing.
- Do: Make sure you save the file before closing.

### Features vs. common terms
Capitalize official feature names. Don't capitalize common terms
that happen to describe a feature:
- Do: Enable SSL Forward Proxy for both profiles.
- Don't: The forward proxy feature is enabled by default.
  (forward proxy here is a common term, not a feature name)

### Services and daemons
Service names are lowercase unless a word is a proper adjective:
- Do: F5 installer service
- Do: DNS relay proxy service

## Related

- [formatting/headings.md](headings.md)
- [terminology/acronyms.md](../terminology/acronyms.md)
- [terminology/f5-product-names.md](../terminology/f5-product-names.md)
- [procedures/ui-element-names.md](../procedures/ui-element-names.md)