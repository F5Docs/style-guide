---
title: Sensitive information
category: terminology
aliases: [sensitive information, PII, passwords, IP addresses, placeholders]
applies-to: [all F5 docs]
source-authority: F5 NGINX Style Guide
last-reviewed: 2026-04-02
---

# Sensitive information

## Guidance

Never include real sensitive or personally identifying information in
documentation or screenshots. Replace all sensitive data with generic
placeholders before publishing.

## Examples

**Do:**
> ```bash
> curl -u admin:your-password https://example.com/api/v1/status
> ```

> Replace `<your-api-key>` with your actual API key.

**Don't:**
> ```bash
> curl -u admin:P@ssw0rd123 https://192.168.1.45/api/v1/status
> ```

## Notes

### Personal information
Replace with generic placeholders:
- Names: use "Admin User," "User A," or a generic role name
- Email addresses: use user@example.com
- Phone numbers: use a clearly fictional number

### Sensitive technical data
Replace with clearly generic placeholders:
- IP addresses: use ranges from RFC 5737 (192.0.2.x, 198.51.100.x,
  203.0.113.x) or the documented F5 example address 165.160.15.20
- Passwords: use `your-password` or `<password>`
- API keys and OAuth tokens: OAuth 2 tokens start with `eY` — search
  for and replace any that appear in content or screenshots
- UUIDs: replace with `xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx`
- SSH keys: replace with `<your-ssh-key>`
- Domain names: use example.com, example.net, or example.org per
  RFC 2606

### Internal F5 information
Never publish in external documentation:
- Internal IP address ranges (172.25–172.32.x)
- Internal machine names or domain names (f5net.com, f5.net)
- Internal URLs or license server addresses
- Code names for product versions or releases

### Screenshots
Before publishing any screenshot:
- Remove or obscure any visible personal information
- Replace sensitive data with placeholders
- Check for UUIDs, OAuth tokens, and API keys in visible UI fields
- Look for sensitive words like "secret" in visible content

### External links
Limit links to external non-F5 sources. When necessary, link only
to reputable foundational sites. This reduces the risk of prompt
injection in AI-assisted documentation workflows.

## Related

- [Alt text](../accessibility/alt-text.md)
- [Code blocks](../formatting/code-blocks.md)
- [Images](../formatting/images.md)

## See also

[Browse all guidelines](../TOC.md)
