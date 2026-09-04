---
title: F5 product names
category: terminology
aliases: [product names, BIG-IP, NGINX, branding, trademarks, product renaming]
applies-to: [all F5 docs]
source-authority: F5 Technical Style Guide, F5 NGINX Style Guide, F5 Brand Style Guide, F5 Distributed Cloud Style Guide
supersedes:
last-reviewed: 2026-09-04
---

# F5 product names

## Guidance

### Choosing the right name

Apply these rules in order for every product mention:

1. **No new name:** If the reference tables mark a product "TBD," use the old product name. Don't invent a new name.
2. **First mention:** If the reference tables list a new name, use the complete new name.
3. **Subsequent mention, listed:** If the table lists a second mention, use it. Don't use an old acronym (for example, "BIG-IP LTM") for a product with a new second-mention form (for example, "F5 LTM for BIG-IP").
4. **Subsequent mention, none listed:** If the table doesn't list a second mention, repeat the full first-mention name. Don't invent a shortened form.

- **Open source products** (NGINX Agent, NGINX Amplify, NGINX Open Source, NGINX Unit) never use the "F5" prefix on any mention. These products aren't part of the current renaming effort.
- **BIG-IP platform references:** Refer to "BIG-IP system," never just "BIG-IP," when talking about the platform itself. Use "BIG-IP device" for discrete hardware. Never make BIG-IP plural: use "BIG-IP systems," not "BIG-IPs."

### Formatting product names

- **Articles:** Never use "the" or "a" before a standalone product name. An article is acceptable when the product name qualifies another noun (for example, "the NGINX Agent configuration file").
- **Possessives:** Never use possessive constructions with product names.
- **Trademark symbols:** Never use ™ or ® in documentation.
- **Code names:** Never use code names for product versions or releases in customer-facing documentation.

## Examples

### First and subsequent mentions

**Do:**
> F5 NGINX Enterprise Edition provides advanced load balancing features. F5 NGINX EE also supports dynamic reconfiguration without restarting the service.

> F5 WAF for NGINX protects your applications from web threats. F5 WAF for NGINX also supports Envoy-based deployments.

> F5 Application Delivery Service for Azure provides cloud-native load balancing. F5 ADS for Azure also integrates natively with Azure networking services.

> Configure F5 LTM for BIG-IP to manage local traffic policies.

> The BIG-IP system receives all inbound traffic on port 443.

**Don't:**
> The F5 NGINX Enterprise Edition's configuration file is located at `/etc/nginx/`.

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
> F5 LTM for BIG-IP's internal VLAN is configured separately.

> The BIG-IP's tendency to cache responses can be adjusted.

## Notes

### Naming rollout in progress

This rename affects a large set of NGINX, BIG-IP, and Distributed Cloud products. Brand doesn't yet have final second-mention conventions for every product. The tables below reflect only what Brand confirmed. See "Choosing the right name" above for how to apply a table row that's missing a subsequent-mention value.

New names generally follow a `F5 <FUNCTION> for <PLATFORM>` pattern (for example, "F5 Local Traffic Manager for BIG-IP") rather than the old `F5 <PLATFORM> <FUNCTION>` pattern (for example, "F5 BIG-IP Local Traffic Manager"). Apply this new pattern only to products listed in the tables below as renamed. A product marked TBD keeps its old naming pattern until this guide adds a confirmed name.

### NGINX products

| Old name                  | First mention                                    | Subsequent mention                   |
|---------------------------|---------------------------------------------------|--------------------------------------|
| NGINX Plus                | F5 NGINX Enterprise Edition                      | F5 NGINX EE                          |
| NGINX Ingress Controller  | F5 Ingress Controller for NGINX Enterprise       | F5 IC for NGINX Enterprise           |
| NGINX Gateway Fabric      | F5 Gateway Fabric for NGINX Enterprise           | F5 GF for NGINX Enterprise           |
| NGINX One Console         | F5 Console for NGINX Enterprise                  | F5 Console for NGINX Enterprise      |
| NGINX Instance Manager    | F5 Console for NGINX Enterprise Local Edition    | F5 Console for NGINX Enterprise - LE |
| NGINXaaS for Azure        | F5 Application Delivery Service for Azure        | F5 ADS for Azure                     |
| NGINXaaS for Google Cloud | F5 Application Delivery Service for Google Cloud | F5 ADS for Google Cloud              |
| (new product)             | F5 Application Delivery Service for AWS          | F5 ADS for AWS                       |
| NGINX App Protect WAF     | F5 WAF for NGINX                                 | F5 WAF for NGINX                     |
| NGINX App Protect DoS     | F5 DoS for NGINX                                 | F5 DoS for NGINX                     |

The products formerly known as NGINX Instance Manager and NGINX One Console both use the "F5 Console for NGINX Enterprise" for the new base name. The "Local Edition" suffix distinguishes NGINX Instance Manager from NGINX One Console. Don't drop the suffix from NGINX Instance Manager mentions.

**Open source products.** These products aren't part of the current rename. Never use the "F5" prefix on any mention.

| Product           |
|-------------------|
| NGINX Agent       |
| NGINX Amplify     |
| NGINX Open Source |
| NGINX Unit        |

### BIG-IP products

| Old name                             | First mention                              | Subsequent mention                   |
|---------------------------------------|---------------------------------------------|---------------------------------------|
| F5 BIG-IP Container Ingress Services | F5 Container Ingress Controller for BIG-IP | F5 CIC for BIG-IP                     |
| F5 BIG-IP Local Traffic Manager      | F5 Local Traffic Manager for BIG-IP        | F5 LTM for BIG-IP                     |
| F5 BIG-IP Domain Name Server         | F5 Global Traffic Manager for BIG-IP       | F5 GTM for BIG-IP                     |
| F5 BIG-IP Advanced WAF               | F5 WAF for BIG-IP                          | F5 WAF for BIG-IP                     |
| F5 BIG-IP DDoS Hybrid Defender       | F5 DDoS Hybrid Defender for BIG-IP         | --                                    |
| F5 BIG-IP Advanced Firewall Manager  | F5 Advanced Firewall Manager for BIG-IP    | F5 AFM for BIG-IP                     |
| F5 BIG-IP Access Policy Manager      | F5 Zero Trust Access for BIG-IP            | F5 ZTA for BIG-IP                     |
| F5 BIG-IP Policy Enforcer            | F5 Policy Enforcer for BIG-IP              | --                                    |
| F5 BIG-IP SSL Orchestrator           | F5 SSL Orchestrator for BIG-IP             | F5 SSLO for BIG-IP                    |
| F5 BIG-IP CGNAT                      | F5 CGNAT for BIG-IP                        | F5 CGNAT for BIG-IP                   |
| F5 BIG-IP PEM                        | F5 PEM for BIG-IP                          | F5 PEM for BIG-IP                     |
| (new product)                        | F5 Insight for ADSP                        | F5 Insight for ADSP                   |
| (new product)                        | F5 Data Loss Prevention for BIG-IP         | F5 DLP for BIG-IP                     |
| F5 BIG-IP Next for Kubernetes        | TBD                                        | --                                    |
| F5 BIG-IP Connector for Bot Defense  | TBD                                        | --                                    |
| F5 BIG-IQ Centralized Management     | TBD                                        | --                                    |
| F5 BIG-IP Automation Toolchain       | TBD                                        | --                                    |
| F5 Secure Web Gateway Services       | TBD                                        | --                                    |
| F5 IP Intelligence                   | TBD                                        | --                                    |
| F5 Threat Campaigns                  | TBD                                        | --                                    |

### Distributed Cloud products

The following table lists every Distributed Cloud product in the rename tracker, including products whose name stays the same.

| Old name | First mention | Subsequent mention |
|---|---|---|
| F5 Distributed Cloud API Security | F5 API Security for Distributed Cloud Services | -- |
| (new product) | F5 API Security Local Edition | -- |
| F5 Distributed Cloud App Connect | F5 Distributed Cloud App Connect | -- |
| F5 Distributed Cloud App Stack | F5 Distributed Cloud App Stack | -- |
| F5 Distributed Cloud CDN | F5 Distributed Cloud CDN | -- |
| F5 Distributed Cloud Network Connect | F5 Distributed Cloud Network Connect | -- |
| F5 Distributed Cloud DNS | F5 Distributed Cloud DNS | -- |
| F5 Distributed Cloud DNS Load Balancer | F5 Distributed Cloud DNS Load Balancer | -- |
| F5 Distributed Cloud Console | F5 Distributed Cloud Console | -- |
| F5 Distributed Cloud WAF | F5 WAF for Distributed Cloud | -- |
| F5 Distributed Cloud DDoS Mitigation | F5 Distributed Cloud DDoS Mitigation | -- |
| F5 Distributed Cloud Bot Defense | F5 Distributed Cloud Bot Defense | -- |
| F5 Distributed Cloud Aggregator Management | F5 Distributed Cloud Aggregator Management | -- |
| F5 Distributed Cloud Data Intelligence | F5 Distributed Cloud Data Intelligence | -- |
| F5 Distributed Cloud Mobile App Shield | F5 Distributed Cloud Mobile App Shield | -- |
| F5 Distributed Cloud Client-Side Defense | F5 Distributed Cloud Client-Side Defense | -- |
| F5 Distributed Cloud Web App Scanning | F5 Distributed Cloud Web App Scanning | -- |
| F5 Distributed Cloud Synthetic Monitoring | F5 Distributed Cloud Synthetic Monitoring | -- |
| F5 Distributed Cloud Customer Edge | F5 Distributed Cloud Customer Edge | -- |
| F5 Distributed Cloud SaaS Connector | F5 Distributed Cloud SaaS Connector | -- |

Only F5 API Security for Distributed Cloud Services, F5 API Security Local Edition, and F5 WAF for Distributed Cloud involve an actual name change. The rest of the table confirms the existing name is still correct.

## Related

- [Acronyms](acronyms.md)
- [Capitalization](../formatting/capitalization.md)
- [Possessives](../punctuation/possessives.md)
- [Tables](../formatting/tables.md)

## See also

[Browse all guidelines](../TOC.md)
