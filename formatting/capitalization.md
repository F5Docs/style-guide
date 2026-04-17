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

An **official feature name** is a licensable capability or a feature with a distinct, established identity -- not just any feature or setting. If you can replace the name with a generic description and lose no meaning, it's not a proper noun. If you're unsure whether a feature name is official, contact the content strategy team before capitalizing.

If a feature is labeled in the UI using title case, capitalize it when referring to that specific UI element or feature. Use lowercase when referring to the concept generally.

When documenting features from a third-party product, follow that product's capitalization conventions.

- Do: Use Security Monitoring to track F5 WAF activity on your NGINX instances. *(named feature)*
- Do: Configure the managed public endpoint for your deployment. *(configuration option, not a named feature)*
- Do: A Pod is the smallest deployable unit in Kubernetes. *(follows Kubernetes documentation conventions)*
- Don't: Configure the Managed Public Endpoint for your deployment. *(configuration option, not a named feature)*
- Don't: Allow Notifications even in do not disturb mode. *(not a named feature)*

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