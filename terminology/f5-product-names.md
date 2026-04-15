---
title: F5 product names
category: terminology
aliases: [product names, BIG-IP, NGINX, branding, trademarks]
applies-to: [all F5 docs]
source-authority: F5 Technical Style Guide, F5 NGINX Style Guide, F5 Brand Style Guide
last-reviewed: 2026-04-15
---

# F5 product names

## Guidance

Use full product names consistently across all F5 documentation. On first mention, include the "F5" prefix. On subsequent mentions, drop "F5" unless the product requires it. Never use acronyms in place of full product names. Never use trademark symbols in documentation. Do not use articles ("the," "a") before standalone product names. Do not use possessive constructions with product names. Do not use code names for product versions or releases in customer-facing documentation.

## Examples

### First and subsequent mentions

**Do:**
> F5 NGINX Plus provides advanced load balancing features. NGINX Plus also supports dynamic reconfiguration without restarting the service.

> F5 WAF for NGINX protects your applications from web threats. F5 WAF also supports Envoy-based deployments.

> F5 NGINXaaS for Azure provides cloud-native load balancing. NGINXaaS also integrates natively with Azure networking services.

> Install F5 WAF for NGINX using F5 NGINX Instance Manager.

> The BIG-IP system receives all inbound traffic on port 443.

> Use BIG-IP LTM to manage local traffic policies.

**Don't:**
> The F5 NGINX Plus's configuration file is located at `/etc/nginx/`.

> F5 WAF for NGINX protects your applications. WAF for NGINX also supports Envoy-based deployments.

> Configure the BIG-IP to route traffic to the pool.

> BIG-IPs in the cluster share a synchronized configuration.

### Articles with product names

**Do:**
> NGINX Agent reports metrics to the management plane.

> Edit the NGINX Agent configuration file.

**Don't:**
> The NGINX Agent reports metrics to the management plane.

### Possessives with product names

**Do:**
> Edit the NGINX Agent configuration file.

> The BIG-IP system's configuration is backed up automatically.

**Don't:**
> BIG-IQ Cloud's internal VLAN is configured separately.

> The BIG-IP's tendency to cache responses can be adjusted.

## Notes

### First and subsequent mentions

On first mention, use the full product name including the "F5" prefix. 

On subsequent mentions, drop "F5" unless the product name requires it.

Each product requires the "F5" prefix on its own first mention, independently of other products in the same document. Exception: always retain "F5" in "F5 WAF" on all mentions.

| First mention              | Subsequent mentions |
|----------------------------|---------------------|
| F5 BIG-IP                  | BIG-IP              |
| F5 NGINX Plus              | NGINX Plus          |
| F5 NGINXaaS for [platform] | NGINXaaS            |
| F5 WAF for [platform]      | F5 WAF              |

F5 WAF and F5 NGINXaaS run on multiple platforms. On first mention, use the full platform-specific name: "F5 WAF for NGINX," "F5 WAF for Envoy," or "F5 NGINXaaS for Azure." On subsequent mentions, use "F5 WAF" or "NGINXaaS."

### General rules

- Never use trademark symbols (™, ®) in documentation.
- Never use articles before standalone product names.
- An article is acceptable when the product name qualifies another noun.
- Never use possessive constructions with product names.
- Never use acronyms in place of full product names. For example, use "NGINX Instance Manager" not "NIM," and "BIG-IP Next for Kubernetes" not "BNK."

### NGINX products

#### Open source products (never use F5 prefix)

- NGINX Unit
- NGINX Agent

Always include the "NGINX" brand name. Never use "F5 NGINX Unit" or "F5 NGINX Agent."

#### General NGINX rules

- Don't include "F5" in document titles.

### BIG-IP products

#### Core naming rules

- Always refer to "BIG-IP system," never just "BIG-IP."
- Use "BIG-IP device" when referring to discrete hardware.
- Never make BIG-IP plural: use "BIG-IP systems," not "BIG-IPs."
- Never use BIG-IP in possessive form.
- Never use "the" before BIG-IP product names.
- Always prefix module names with BIG-IP:
  - Do: BIG-IP LTM, BIG-IP ASM, BIG-IP DNS
  - Don't: LTM, ASM, DNS (standalone)
- Always all caps with a hyphen: BIG-IP. Never Big-IP, Big-ip, or bigip.

## Related

- [Acronyms](acronyms.md)
- [Capitalization](../formatting/capitalization.md)
- [Possessives](../punctuation/possessives.md)

## See also

[Browse all guidelines](../TOC.md)