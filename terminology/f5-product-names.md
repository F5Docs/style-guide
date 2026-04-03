---
title: F5 product names
category: terminology
aliases: [product names, BIG-IP, NGINX, branding, trademarks]
applies-to: [all F5 docs]
source-authority: F5 Technical Style Guide, F5 NGINX Style Guide, F5 Brand Style Guide
last-reviewed: 2026-04-02
---

# F5 product names

## Guidance

Use full product names consistently. Follow the rules below for first
and subsequent mentions. Never use acronyms in place of full product
names, and never use trademark symbols in documentation.

## NGINX products

### Enterprise products (F5 prefix required on first mention)

| First mention | Subsequent mentions |
|---------------|-------------------|
| F5 NGINX Plus | NGINX Plus |
| F5 WAF for NGINX | WAF for NGINX |
| F5 NGINX Instance Manager | NGINX Instance Manager |

When naming multiple enterprise products in one document, include "F5"
only once, on the first product mentioned.

### Open source products (never use F5 prefix)

- NGINX Unit
- NGINX Agent

Always include the "NGINX" brand name. Never use "F5 NGINX Unit" or
"F5 NGINX Agent."

### General NGINX rules

- Never use acronyms instead of full product names.
- Don't use trademark symbols (™, ®) in documentation.
- Don't use articles ("the", "a") before standalone product names:
  - Do: NGINX Agent
  - Don't: the NGINX Agent
- An article is acceptable when the product name qualifies another noun:
  - Do: Edit the NGINX Agent configuration file.
- Don't include "F5" in document titles.
- Always use the full brand name in meta descriptions.

## BIG-IP products

### Core naming rules

- Always refer to "BIG-IP system," never just "BIG-IP."
- Use "BIG-IP device" when referring to discrete hardware.
- Never make BIG-IP plural: use "BIG-IP systems," not "BIG-IPs."
- Never use BIG-IP in possessive form.
- Never use "the" before BIG-IP product names.
- Always prefix module names with BIG-IP:
  - Do: BIG-IP LTM, BIG-IP ASM, BIG-IP DNS
  - Don't: LTM, ASM, DNS (standalone)
- Always all caps with a hyphen: BIG-IP. Never Big-IP, Big-ip, or bigip.

### BIG-IP Next

- Always use the full name: BIG-IP Next Central Manager.
- Never abbreviate to "CM" or "BIG-IP Next CM" in external documents.
- Use "BIG-IP Next system" per CSUG.
- Do not refer to BIG-IP Next HA instances as a "cluster" — that term
  is reserved for BIG-IP classic only.

### BIG-IP version references

- Format as "BIG-IP 13.x" not "BIG-IP version 13.x."
- Use "earlier" and "later" for version comparisons, not
  "before/after," "greater," "lower," "higher."
- Use "from X through Y" for inclusive ranges in prose.

## BIG-IQ products

- You do not need to specify "the BIG-IQ system" — BIG-IQ alone is
  acceptable.
- Use "BIG-IQ VE" not just "VE." Never group as "BIG-IP and BIG-IQ VE."

## General product naming rules

- Never use code names for product versions or releases in
  customer-facing documentation.
- Do not use possessive constructions with product names:
  - Don't: BIG-IQ Cloud's internal VLAN
  - Don't: the BIG-IP's tendency
  - Do: the BIG-IP system's configuration
- Do not use articles before standalone product names.
- Do not use trademark symbols (™, ®) in documentation.
- Use "F5 Support" not "F5 Technical Support."
- Use "F5 recommends" not "we recommend" or "it is recommended."

## Examples

**Do:**
> F5 NGINX Plus provides advanced load balancing features. NGINX Plus
> also supports dynamic reconfiguration without restarting the service.

> The BIG-IP system receives all inbound traffic on port 443.

> Use BIG-IP LTM to manage local traffic policies.

**Don't:**
> The F5 NGINX Plus's configuration file is located at /etc/nginx/.

> Configure the BIG-IP to route traffic to the pool.

> BIG-IPs in the cluster share a synchronized configuration.

## Related

- [Acronyms](acronyms.md)
- [Capitalization](../formatting/capitalization.md)
- [Dates and times](../punctuation/dates-and-times.md)
- [Possessives](possessives.md)
- [UI terms](ui-terms.md)