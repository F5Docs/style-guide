---
title: F5 product names
category: terminology
aliases: [product names, BIG-IP, NGINX, branding, trademarks, product renaming]
applies-to: [all F5 docs]
source-authority: F5 Technical Style Guide, F5 NGINX Style Guide, F5 Brand Style Guide, F5 Distributed Cloud Style Guide
supersedes:
last-reviewed: 2026-09-28
---

# F5 product names

## Guidance

### Choose the right name

Apply these rules in order for every product mention:

1. **First mention:** Use the name listed in the "First mention" column of the reference table.
    - **Titles and headings don't count as first mention:** A product name in a page's title, H1 heading, or frontmatter isn't a first mention. The first mention is the first time the name appears in body text.
2. **Subsequent mention, in the table:** Use the name listed in the "Subsequent mention" column.
3. **Product not in the table:** Don't invent a name or shortened form. Open [an issue](https://github.com/F5Docs/style-guide/issues) in this repository. Ask the style guide owner to add the product.



### Format product names

- **Open source products** (NGINX Agent, NGINX Amplify, NGINX Open Source, NGINX Unit) never use the "F5" prefix on any mention. These products aren't part of the current renaming effort.
- **BIG-IP platform references:** When referring to the platform itself, use "BIG-IP system," not just "BIG-IP." Use "BIG-IP device" for discrete hardware. Never make BIG-IP plural: use "BIG-IP systems," not "BIG-IPs."
- **Articles:** Never use "the" or "a" before a standalone product name. An article is acceptable when the product name qualifies another noun (for example, "the NGINX Agent configuration file").
- **Possessives:** Never use possessive constructions with product names.
- **Trademark symbols:** Never use ™ or ® in documentation.
- **Code names:** Never use code names for product versions or releases in customer-facing documentation.

## Examples

### BIG-IP platform references

**Do:**
> The BIG-IP system receives all inbound traffic on port 443.

(Uses "BIG-IP system," not bare "BIG-IP.")

> BIG-IP systems in the cluster share a synchronized configuration.

(Uses "BIG-IP systems," not "BIG-IPs.")

**Don't:**
> Configure the BIG-IP to route traffic to the pool.

(Drops "system.")

> BIG-IPs in the cluster share a synchronized configuration.

(Pluralizes "BIG-IP" directly instead of using "BIG-IP systems.")

### Articles with product names

**Do:**
> NGINX Plus provides advanced load balancing features.

(No article before the standalone product name.)

> Edit the NGINX Agent configuration file.

("The" is fine here because it qualifies "configuration file," not the product name itself.)

**Don't:**
> The NGINX Plus provides advanced load balancing features.

(Adds "the" before a standalone product name.)

### Possessives with product names

**Do:**
> Edit the NGINX Agent configuration file.

(Rewrites around the product name instead of using a possessive.)

**Don't:**
> NGINX Plus's configuration file is located at `/etc/nginx/`.

(Uses an apostrophe-s possessive with a product name.)

### Generic references to the console

**Do:**
> F5 NGINX One Console manages your on-premises fleet. After you sign in, the console displays your instance list.

(Uses the full product name on first mention, then a lowercase, generic "the console" once the product is established and the reference isn't naming it formally.)

**Don't:**
> Log in to the Console to view traffic statistics.

(Capitalizes "Console" as if it were shorthand for the product name.)

## Notes

### Product name reference

The following table lists every product this guide covers, in alphabetical order by first mention. Use the exact text in the "Subsequent mention" column for every mention after the first.

| First mention | Subsequent mention |
|---|---|
| F5 AI Assistant | F5 AI Assistant |
| F5 AI Guardrails | F5 AI Guardrails |
| F5 AI Red Team | F5 AI Red Team |
| F5 AI Security Platform | F5 AI Security Platform |
| F5 API Gateway | F5 API Gateway |
| F5 API Security Local Edition | F5 API Security Local Edition |
| F5 Application Delivery Service for AWS | F5 ADS for AWS |
| F5 Application Delivery Service for Google Cloud | F5 ADS for Google Cloud |
| F5 Aspen Mesh | F5 Aspen Mesh |
| F5 BIG-IP Access Policy Manager | BIG-IP APM |
| F5 BIG-IP Advanced Firewall Manager | BIG-IP Advanced Firewall Manager |
| F5 BIG-IP Advanced WAF | BIG-IP Advanced WAF |
| F5 BIG-IP Automation Toolchain | F5 BIG-IP Automation Toolchain |
| F5 BIG-IP Carrier-Grade Network Address Translation | BIG-IP CGNAT |
| F5 BIG-IP Cloud-Native Edition | CNE |
| F5 BIG-IP Connector for Bot Defense | F5 BIG-IP Connector for Bot Defense |
| F5 BIG-IP Container Ingress Services | BIG-IP Container Ingress Services |
| F5 BIG-IP DDoS Hybrid Defender | BIG-IP DDoS Hybrid Defender |
| F5 BIG-IP Diameter Traffic Manager | F5 BIG-IP Diameter Traffic Manager |
| F5 BIG-IP DNS | F5 BIG-IP DNS |
| F5 BIG-IP Domain Name Server | BIG-IP DNS |
| F5 BIG-IP eBPF Observability | F5 BIG-IP eBPF Observability |
| F5 BIG-IP Local Traffic Manager | BIG-IP LTM |
| F5 BIG-IP Next for Kubernetes | BNK |
| F5 BIG-IP Policy Enforcement Manager | BIG-IP PEM |
| F5 BIG-IP Policy Enforcer | BIG-IP Policy Enforcer |
| F5 BIG-IP SSL Orchestrator | BIG-IP SSL Orchestrator |
| F5 BIG-IP TMOS | F5 BIG-IP TMOS |
| F5 BIG-IP Virtual Edition | F5 BIG-IP Virtual Edition |
| F5 BIG-IQ Centralized Management | F5 BIG-IQ Centralized Management |
| F5 Centos | F5 Centos |
| F5 Data Loss Prevention for BIG-IP | F5 DLP for BIG-IP |
| F5 Distributed Cloud API Security | F5 Distributed Cloud API Security |
| F5 Distributed Cloud App Stack | App Stack |
| F5 Distributed Cloud Bot Defense | Bot Defense |
| F5 Distributed Cloud CDN | CDN |
| F5 Distributed Cloud Client-Side Defense | CSD |
| F5 Distributed Cloud Console | Console (console when generic) |
| F5 Distributed Cloud Customer Edge | CE |
| F5 Distributed Cloud Data Intelligence | Data Intelligence |
| F5 Distributed Cloud DDoS Mitigation | DDoS Mitigation |
| F5 Distributed Cloud DNS | Distributed Cloud DNS |
| F5 Distributed Cloud DNS Load Balancer | DNS load balancer |
| F5 Distributed Cloud Global Network | Global Network |
| F5 Distributed Cloud Managed Services | Managed Services |
| F5 Distributed Cloud Mobile App Shield | Mobile App Shield |
| F5 Distributed Cloud Multi-Cloud App Connect | Multi-Cloud App Connect |
| F5 Distributed Cloud Network Connect | Multi-Cloud Network Connect |
| F5 Distributed Cloud Synthetic Monitoring | Synthetic Monitoring |
| F5 Distributed Cloud WAF | WAF |
| F5 Distributed Cloud Web App Scanning | Distributed Cloud Web App Scanning |
| F5 DoS for NGINX | F5 DoS for NGINX |
| F5 Insight for ADSP | F5 Insight for ADSP |
| F5 IP Intelligence | F5 IP Intelligence |
| F5 iSeries | F5 iSeries |
| F5 NGINX Gateway Fabric | NGINX Gateway Fabric |
| F5 NGINX Ingress Controller | NGINX Ingress Controller |
| F5 NGINX Instance Manager | NGINX Instance Manager |
| F5 NGINX One Console | NGINX One Console (console when generic) |
| F5 NGINX Plus | NGINX Plus |
| F5 NGINXaaS for Azure | NGINXaaS |
| F5 rSeries | F5 rSeries |
| F5 Secure Web Gateway Services | F5 Secure Web Gateway Services |
| F5 Threat Campaigns | F5 Threat Campaigns |
| F5 VELOS | F5 VELOS |
| F5 VIPRION | F5 VIPRION |
| F5 WAF for Envoy | F5 WAF for Envoy |
| F5 WAF for NGINX | F5 WAF for NGINX |
| F5 Workforce AI Security | F5 Workforce AI Security |
| F5 Zero Trust Access for Distributed Cloud | F5 ZTA for Distributed Cloud |

After the first mention establishes which console you mean, you can refer to it generically as "the console," lowercase. Use this form only when you're not naming the product formally.

## Related

- [Acronyms](acronyms.md)
- [Capitalization](../formatting/capitalization.md)
- [Possessives](../punctuation/possessives.md)
- [Tables](../formatting/tables.md)

## See also

[Browse all guidelines](../TOC.md)
