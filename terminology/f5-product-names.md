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

1. **First mention:** Use the name listed in the "First mention" column of the reference table.
2. **Subsequent mention, listed:** If the table lists a subsequent mention, use it.
3. **Subsequent mention, none listed:** If the table doesn't list a subsequent mention, repeat the full first-mention name. Don't invent a shortened form.

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

### Product name reference

The following table lists every product this guide covers, in alphabetical order by first mention. If a product's name hasn't changed, its "Former name" cell is blank.

| Current name/First mention | Subsequent mention | Former name |
|---|---|---|
| F5 Advanced Firewall Manager for BIG-IP | F5 AFM for BIG-IP | F5 BIG-IP Advanced Firewall Manager |
| F5 AI Assistant | F5 AI Assistant | -- |
| F5 AI Guardrails | F5 AI Guardrails | -- |
| F5 AI Red Team | F5 AI Red Team | -- |
| F5 AI Security Platform | F5 AI Security Platform | -- |
| F5 API Gateway | F5 API Gateway | -- |
| F5 API Security for Distributed Cloud Services | -- | F5 Distributed Cloud API Security |
| F5 API Security Local Edition | -- | -- |
| F5 Application Delivery Service for AWS | F5 ADS for AWS | -- |
| F5 Application Delivery Service for Azure | F5 ADS for Azure | NGINXaaS for Azure |
| F5 Application Delivery Service for Google Cloud | F5 ADS for Google Cloud | NGINXaaS for Google Cloud |
| F5 Aspen Mesh | F5 Aspen Mesh | -- |
| F5 BIG-IP Automation Toolchain | -- | -- |
| F5 BIG-IP Cloud-Native Edition | -- | -- |
| F5 BIG-IP Connector for Bot Defense | -- | -- |
| F5 BIG-IP Diameter Traffic Manager | -- | -- |
| F5 BIG-IP DNS | F5 BIG-IP DNS | -- |
| F5 BIG-IP eBPF Observability | -- | -- |
| F5 BIG-IP Next for Kubernetes | -- | -- |
| F5 BIG-IP TMOS | F5 BIG-IP TMOS | -- |
| F5 BIG-IP Virtual Edition | -- | -- |
| F5 BIG-IQ Centralized Management | -- | -- |
| F5 Centos | F5 Centos | -- |
| F5 CGNAT for BIG-IP | F5 CGNAT for BIG-IP | F5 BIG-IP CGNAT |
| F5 Console for NGINX Enterprise | F5 Console for NGINX Enterprise | NGINX One Console |
| F5 Console for NGINX Enterprise Local Edition | F5 Console for NGINX Enterprise - LE | NGINX Instance Manager |
| F5 Container Ingress Controller for BIG-IP | F5 CIC for BIG-IP | F5 BIG-IP Container Ingress Services |
| F5 Data Loss Prevention for BIG-IP | F5 DLP for BIG-IP | -- |
| F5 DDoS Hybrid Defender for BIG-IP | -- | F5 BIG-IP DDoS Hybrid Defender |
| F5 Distributed Cloud Aggregator Management | -- | -- |
| F5 Distributed Cloud App Connect | -- | -- |
| F5 Distributed Cloud App Stack | -- | -- |
| F5 Distributed Cloud Bot Defense | -- | -- |
| F5 Distributed Cloud CDN | -- | -- |
| F5 Distributed Cloud Client-Side Defense | -- | -- |
| F5 Distributed Cloud Console | -- | -- |
| F5 Distributed Cloud Customer Edge | -- | -- |
| F5 Distributed Cloud Data Intelligence | -- | -- |
| F5 Distributed Cloud DDoS Mitigation | -- | -- |
| F5 Distributed Cloud DNS | -- | -- |
| F5 Distributed Cloud DNS Load Balancer | -- | -- |
| F5 Distributed Cloud Global Network | -- | -- |
| F5 Distributed Cloud Managed Services | -- | -- |
| F5 Distributed Cloud Mobile App Shield | -- | -- |
| F5 Distributed Cloud Network Connect | -- | -- |
| F5 Distributed Cloud SaaS Connector | -- | -- |
| F5 Distributed Cloud Synthetic Monitoring | -- | -- |
| F5 Distributed Cloud WAF | -- | -- |
| F5 Distributed Cloud Web App Scanning | -- | -- |
| F5 DoS for NGINX | F5 DoS for NGINX | NGINX App Protect DoS |
| F5 Gateway Fabric for NGINX Enterprise | F5 GF for NGINX Enterprise | NGINX Gateway Fabric |
| F5 Global Traffic Manager for BIG-IP | F5 GTM for BIG-IP | F5 BIG-IP Domain Name Server |
| F5 Ingress Controller for NGINX Enterprise | F5 IC for NGINX Enterprise | NGINX Ingress Controller |
| F5 Insight for ADSP | F5 Insight for ADSP | -- |
| F5 IP Intelligence | -- | -- |
| F5 iSeries | F5 iSeries | -- |
| F5 Local Traffic Manager for BIG-IP | F5 LTM for BIG-IP | F5 BIG-IP Local Traffic Manager |
| F5 NGINX Enterprise Edition | F5 NGINX EE | NGINX Plus |
| F5 PEM for BIG-IP | F5 PEM for BIG-IP | F5 BIG-IP PEM |
| F5 Policy Enforcer for BIG-IP | -- | F5 BIG-IP Policy Enforcer |
| F5 rSeries | F5 rSeries | -- |
| F5 Secure Web Gateway Services | -- | -- |
| F5 SSL Orchestrator for BIG-IP | F5 SSLO for BIG-IP | F5 BIG-IP SSL Orchestrator |
| F5 Threat Campaigns | -- | -- |
| F5 VELOS | F5 VELOS | -- |
| F5 VIPRION | F5 VIPRION | -- |
| F5 WAF for BIG-IP | F5 WAF for BIG-IP | F5 BIG-IP Advanced WAF |
| F5 WAF for Envoy | F5 WAF for Envoy | -- |
| F5 WAF for NGINX | F5 WAF for NGINX | NGINX App Protect WAF |
| F5 Workforce AI Security | F5 Workforce AI Security | -- |
| F5 Zero Trust Access for BIG-IP | F5 ZTA for BIG-IP | F5 BIG-IP Access Policy Manager |
| F5 Zero Trust Access for Distributed Cloud | -- | -- |

F5 Console for NGINX Enterprise and F5 Console for NGINX Enterprise Local Edition share the same base name. The "Local Edition" suffix distinguishes the two. Don't drop the suffix from either mention.

## Related

- [Acronyms](acronyms.md)
- [Capitalization](../formatting/capitalization.md)
- [Possessives](../punctuation/possessives.md)
- [Tables](../formatting/tables.md)

## See also

[Browse all guidelines](../TOC.md)
