---
title: Acronyms
category: terminology
aliases: [acronyms, initialisms, abbreviations, first use]
applies-to: [all F5 docs]
source-authority: F5 Technical Style Guide, F5 NGINX Style Guide, Microsoft Style Guide
supersedes:
last-reviewed: 2026-04-03
---

# Acronyms

## Guidance

Spell out acronyms on first use in body copy, even if used only once. Avoid acronyms in titles and headings. Make acronyms plural by adding a lowercase "s" — never an apostrophe.

## Examples

**Do:**
> The system uses single sign-on (SSO) to authenticate users. SSO
> reduces the number of login prompts users encounter.

> application delivery controllers (ADCs)

> an ISP, a URL, an API

**Don't:**
> The system uses SSO to authenticate users.

> ADC's

> a ISP, an URL

## Notes

### First use
Spell out the full term first, then put the acronym in parentheses:
> denial-of-service (DoS)

> single sign-on (SSO)

Acronym source words are not capitalized unless they are proper nouns:
> Do: single sign-on (SSO)
> Don't: Single Sign-On (SSO)

Do not use an acronym in a title or heading. Spell out the full term:
> Do: Configure single sign-on for your application
> Don't: Configure SSO for your application

If an acronym is used only once in a document, still spell it out on first use — do not introduce it and then never use the short form.

### a vs. an before acronyms
Use "a" or "an" based on how the acronym sounds when spoken, not how it is spelled. If the first sound is a vowel sound, use "an." If the first sound is a consonant sound, use "a."

| Acronym | First sound       | Article          |
|---------|-------------------|------------------|
| API     | "ay" (vowel)      | an API           |
| ANSI    | "an" (vowel)      | an ANSI standard |
| DLL     | "dee" (consonant) | a DLL            |
| ISP     | "eye" (vowel)     | an ISP           |
| SQL     | "ess" (vowel)     | an SQL database  |
| URL     | "you" (consonant) | a URL            |

### Plurals
Add a lowercase "s" to make an acronym plural — never an apostrophe:
> Do: ADCs, SSOs, VLANs, APIs
> Don't: ADC's, SSO's, VLAN's

If the acronym stands for a plural noun, don't add an "s":
> Microsoft Foundation Classes (MFC) — MFC is already plural

### Common acronyms you don't need to spell out
These acronyms are widely understood in the F5 technical audience and don't need to be spelled out:

| Acronym | Spelled out                          |
|---------|--------------------------------------|
| API     | Application Programming Interface    |
| CIDR    | Classless Inter-Domain Routing       |
| CPU     | Central Processing Unit              |
| CVE     | Common Vulnerabilities and Exposures |
| CVSS    | Common Vulnerability Scoring System  |
| DHCP    | Dynamic Host Configuration Protocol  |
| DNS     | Domain Name System                   |
| FQDN    | Fully Qualified Domain Name          |
| FTP     | File Transfer Protocol               |
| GPU     | Graphics Processing Unit             |
| gRPC    | gRPC Remote Procedure Call           |
| HTTP    | HyperText Transfer Protocol          |
| HTTPS   | HyperText Transfer Protocol Secure   |
| ID      | Identifier                           |
| IP      | Internet Protocol                    |
| JSON    | JavaScript Object Notation           |
| JWT     | JSON Web Token                       |
| NAT     | Network Address Translation          |
| PEM     | Privacy Enhanced Mail (file format)  |
| RAM     | Random Access Memory                 |
| REST    | Representational State Transfer      |
| SMTP    | Simple Mail Transfer Protocol        |
| SSH     | Secure Shell                         |
| SSL     | Secure Sockets Layer                 |
| TCP     | Transmission Control Protocol        |
| TLS     | Transport Layer Security             |
| UI      | User Interface                       |
| UDP     | User Datagram Protocol               |
| URL     | Uniform Resource Locator             |
| USB     | Universal Serial Bus                 |
| VLAN    | Virtual Local Area Network           |
| VPN     | Virtual Private Network              |
| WAF     | Web Application Firewall             |
| XML     | Extensible Markup Language           |
| YAML    | YAML Ain't Markup Language           |

### Common acronyms you do need to spell out

These acronyms are not widely understood and do need to be spelled out:

| Acronym | Spelled out                          |
|---------|--------------------------------------|
| ACME    | Automatic Certificate Management Environment |
| ADC     | Application Delivery Controller              |
| ADN     | Application Delivery Networking              |
| ASN     | Autonomous System Number                     |
| AZ      | Availability Zone                            |
| BGP     | Border Gateway Protocol                      |
| CA      | Certificate Authority                        |
| CC      | Cloud Connector                              |
| CE      | Customer Edge                                |
| CDN     | Content Delivery Network                     |
| CRL     | Certificate Revocation List                  |
| DMZ     | Demilitarized Zone                           |
| DSA     | Digital Signature Algorithm                  |
| EA      | Early Access                                 |
| ECC     | Elliptic Curve Cryptography                  |
| ECDH    | Elliptic Curve Diffie-Hellman                |
| ECDSA   | Elliptic Curve Digital Signature Algorithm   |
| EULA    | End user license agreement                   |
| GCP     | Google Cloud Platform                        |
| GRE     | Generic Routing Encapsulation                |
| GUID    | Globally Unique Identifier                     |
| HA      | High Availability/Highly Available           |
| HSM     | Hardware Security Module                     |
| HSTS    | HTTP Strict Transport Security               |
| IAM     | Identity and Access Management               |
| ICMP    | Internet Control Message Protocol            |
| IdP     | Identity Provider                            |
| IETF    | Internet Engineering Task Force              |
| IPsec   | Internet Protocol Security                   |
| IPX     | Internetwork Packet Exchange                 |
| ISO     | International Organization for Standardization |
| ISP     | Internet Service Provider                    |
| JPEG/JPG | Joint Photographic Experts Group            |
| K8s     | Kubernetes                                   |
| KVM     | Kernel-based Virtual Machine                 |
| L3      | Layer 3                                      |
| L4      | Layer 4                                      |
| L7      | Layer 7                                      |
| RE      | Regional Edge                                |
| MAC     | Media Access Control                         |
| MCN     | Multi-Cloud Networking                       |
| mTLS    | Mutual TLS              |
| MTU     | Maximum Transmission Unit                    |
| NetOps  | Network Operations                           |
| NLP     | Natural Language Processing                  |
| NS      | Namespace                                    |
| OCI     | Oracle Cloud Infrastructure                  |
| OIDC    | OpenID Connect                               |
| PCI DSS | Payment Card Industry Data Security Standard |
| PDU     | Protocol Data Unit                           |
| PKI     | Public Key Infrastructure                    |
| PMTU    | Path Maximum Transmission Unit               |
| POC     | Proof of Concept                             |
| PoP     | Point of Presence                            |
| PVC     | Persistent Volume Claim                      |
| OCSP    | Online Certificate Status Protocol           |
| QoS     | Quality of Service                           |
| OSI     | Open Systems Interconnection                 |
| OVF     | Open Virtualization Format                   |
| QUIC    | Quick UDP Internet Connections               |
| RFC     | Request for Comments                          |
| RFE     | Request for Enhancement                      |
| RIB     | Routing Information Base                     |
| RBAC    | Role-Based Access Control                    |
| RPF     | Reverse Path Forwarding                      |
| RPM     | Red Hat Package Manager                      |
| RTT     | Round Trip Time                              |
| SaaS    | Software as a Service                        |
| SAML    | Security Assertion Markup Language           |
| SDN     | Software-Defined networking                  |
| SD-WAN  | Software-Defined Wide Area Network           |
| SecOps  | Security Operations                          |
| SIP     | Session Initiation Protocol                  |
| SLA     | Service Level Agreement                      |
| SMART   | Self-Monitoring Analysis and Reporting Technology |
| SMG     | Site Mesh Group                                   |
| SNAT    | Source Network Address Translation                |
| SNI     | Server Name Indication                            |
| SNMP    | Simple Network Management Protocol                |
| SP      | Service Provider                                  |
| SSD     | Solid-State Drive                                 |
| STP     | Spanning Tree Protocol                            |
| SQL     | Structured Query Language                         |
| SYN     | Synchronize                                       |
| TIFF    | Tagged Image File Format                          |
| TTL     | Time-to-Live                                      |
| UI      | User Interface                                    |
| VIP     | Virtual IP                                        |
| vK8s    | Virtual Kubernetes                                |
| VLAN    | Virtual local area network                        |
| VM      | Virtual Machine                                   |
| VNet    | Virtual Network                                   |
| VPN     | Virtual Private Network                           |
| VPC     | Virtual Private Cloud                             |
| VRF     | Virtual Routing and Forwarding                    |
| VRRP    | Virtual Router Redundancy Protocol                |
| vSite   | Virtual Site                                      |
| WAAP    | Web App & API Protection                          |
| ZTP     | Zero Touch Provisioning                           |

## Related

- [Capitalization](../formatting/capitalization.md)
- [F5 product names](f5-product-names.md)
- [Headings](../formatting/headings.md)

## See also

[Browse all guidelines](../TOC.md)
