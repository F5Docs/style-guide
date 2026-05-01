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

- **First mention:** Use the full product name including the "F5" prefix.
- **Subsequent mentions:** Drop "F5" but always retain the full product name. Never shorten to just the noun — use "NGINX Instance Manager," not "Instance Manager."
- **Exceptions — always retain "F5":** "F5 WAF" and "F5 DoS" keep the "F5" prefix on every mention, not just the first.
- **Open source products** (NGINX Agent, NGINX Amplify, NGINX Open Source, NGINX Unit) never use the "F5" prefix on any mention.
- **Acronyms:** Never use abbreviations for NGINX product names. Use "NGINX Instance Manager," not "NIM." (BIG-IP module abbreviations such as LTM, ASM, and DNS are acceptable when prefixed with "BIG-IP." BIG-IP product abbreviations such as BNK are also acceptable.)
- **Trademark symbols:** Never use ™ or ® in documentation.
- **Articles:** Never use "the" or "a" before a standalone product name. An article is acceptable when the product name qualifies another noun (for example, "the NGINX Agent configuration file").
- **Possessives:** Never use possessive constructions with product names.
- **Code names:** Never use code names for product versions or releases in customer-facing documentation.

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

### Product name reference

**Managed products — use "F5" prefix on first mention, drop on subsequent mentions:**

| First mention                    | Subsequent mentions          |
|----------------------------------|------------------------------|
| F5 BIG-IP                        | BIG-IP                       |
| F5 NGINX Gateway Fabric          | NGINX Gateway Fabric         |
| F5 NGINX Ingress Controller      | NGINX Ingress Controller     |
| F5 NGINX Instance Manager        | NGINX Instance Manager       |
| F5 NGINX One Console             | NGINX One Console            |
| F5 NGINX Plus                    | NGINX Plus                   |
| F5 NGINXaaS for Azure            | NGINXaaS                     |
| F5 NGINXaaS for Google Cloud     | NGINXaaS                     |
| F5 WAF for NGINX                 | F5 WAF (retain "F5")         |
| F5 DoS for NGINX                 | F5 DoS (retain "F5")         |

**Open source products — never use "F5" prefix on any mention:**

| Product          |
|------------------|
| NGINX Agent      |
| NGINX Amplify    |
| NGINX Open Source|
| NGINX Unit       |

### NGINX products

- Never use abbreviations for NGINX product names (NIM, NGF, NIC, and similar).
- Never include "F5" in document titles.

### BIG-IP products

- Always refer to "BIG-IP system," never just "BIG-IP."
- Use "BIG-IP device" when referring to discrete hardware.
- Never make BIG-IP plural: use "BIG-IP systems," not "BIG-IPs."
- Always prefix module names with "BIG-IP": use "BIG-IP LTM," "BIG-IP ASM," "BIG-IP DNS" — never "LTM," "ASM," or "DNS" standalone.
- Always write BIG-IP in all caps with a hyphen. Never Big-IP, Big-ip, or bigip.

## Related

- [Acronyms](acronyms.md)
- [Capitalization](../formatting/capitalization.md)
- [Possessives](../punctuation/possessives.md)

## See also

[Browse all guidelines](../TOC.md)