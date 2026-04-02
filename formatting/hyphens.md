---
title: Hyphens
category: formatting
aliases: [hyphens, compound adjectives, hyphenation]
applies-to: [all F5 docs]
source-authority: F5 Technical Style Guide, F5 NGINX Style Guide
last-reviewed: 2026-04-02
---

# Hyphens

## Guidance

Hyphenate compound adjectives that appear before a noun. Don't
hyphenate the same compound when it appears after a noun or as a
predicate.

## Examples

**Do:**
> A well-known feature.

> A comma-separated values file.

> client-side configuration (adjective before noun)

> The configuration is client side. (predicate)

**Don't:**
> A feature well-known.

> The feature is well-known.

> client-side (when used as a noun)

## Notes

Common hyphenated compounds in F5 documentation:

| Hyphenated (adjective) | No hyphen (noun/predicate) |
|------------------------|---------------------------|
| client-side | client side |
| server-side | server side |
| real-time (adjective) | real time (noun) |
| command-line (adjective) | command line (noun) |
| comma-separated | — (always hyphenated) |
| rate-limiting (adjective) | rate limiting (noun) |

Do not hyphenate product names in compound constructions. Recast
the sentence instead:
- Don't: a BIG-IP-originated connection
- Do: a connection that originated from the BIG-IP system

Do not use hyphens with prefixes unless the result is ambiguous or
the base word is a proper noun:
- re-enable (hyphen prevents misreading as "reenable")
- non-secure
- pre-logon

Use an en dash (–) not a hyphen for ranges in titles and tables
when available. Use "through" in prose:
- Table: 10–15
- Prose: 10 through 15

## Related

- [formatting/capitalization.md](capitalization.md)
- [formatting/numbers.md](numbers.md)
- [punctuation/em-dash.md](../punctuation/em-dash.md)
- [punctuation/dates-and-times.md](../punctuation/dates-and-times.md)