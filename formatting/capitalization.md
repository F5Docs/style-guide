---
title: Capitalization
category: formatting
aliases: [capitalization, sentence case, title case, caps]
applies-to: [all F5 docs]
source-authority: F5 Technical Style Guide, F5 NGINX Style Guide
supersedes:
last-reviewed: 2026-04-16
---

# Capitalization

## Guidance

Use sentence case everywhere except proper nouns and official product names. Never capitalize for emphasis.

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
- Official feature names when used as proper names: BIG-IP LTM, Client SSL
- Third-party product names: Kubernetes, Linux, VMware
- Protocol and standard names follow industry convention and use title case: Network Address Translation, Transmission Control Protocol, Virtual Local Area Network

### Acronyms
Acronyms are written in all caps, but their source words are not capitalized unless they are proper nouns or industry-standard protocol and standard names:
- Do: single sign-on (SSO)
- Do: denial-of-service (DoS)
- Do: Network Address Translation (NAT)
- Do: Transmission Control Protocol (TCP)
- Don't: Single Sign-On (SSO)
- Don't: Denial-Of-Service (DoS)

### Never capitalize for emphasis
Use bold for emphasis instead. All caps is never acceptable for emphasis:
- Don't: Make sure you SAVE the file before closing.
- Do: Make sure you save the file before closing.

### Features vs. common terms

Capitalize official feature names. Don't capitalize common terms that happen to describe a feature.

An **official feature name** is a named, licensable capability -- a SKUed product or module you can purchase or enable separately.

If a feature is labeled in the UI using title case, capitalize it when referring to that specific UI element or feature. Use lowercase when referring to the concept generally.

- Do: Deploy NGINX App Protect in front of your upstream servers. *(licensed module)*
- Do: Configure the managed public endpoint for your deployment. *(configuration option, not a licensed feature)*
- Don't: Configure the Managed Public Endpoint for your deployment.
- Don't: Allow messages from VIPs, even if Notifications are paused. *(not a licensed feature)*

If you're unsure whether something is an official feature name, check whether it appears as a separate line item in a product's licensing or SKU documentation. When in doubt, use lowercase.

### Services and daemons
Service names are lowercase unless a word is a proper adjective such as a company or feature name:
- Do: F5 installer service
- Do: machine certificate checker service
- Do: DNS relay proxy service

Daemons that end in "d" should be referred to as processes, not daemons, since the "d" already stands for daemon:
- Do: the alertd process
- Don't: the alertd daemon

Daemons that don't end in "d" are referred to as daemons:
- Do: the websso daemon

## Related

- [Acronyms](../terminology/acronyms.md)
- [F5 product names](../terminology/f5-product-names.md)
- [Headings](../formatting/headings.md)
- [UI element names](../procedures/ui-element-names.md)

## See also

[Browse all guidelines](../TOC.md)