---
title: Anthropomorphism
category: voice-and-tone
aliases: [anthropomorphism, personification, decides, knows, sees]
applies-to: [all F5 docs]
source-authority: F5 Technical Style Guide, F5 NGINX Style Guide
last-reviewed: 2026-04-02
---

# Anthropomorphism

## Guidance

Don't write about products and systems as though they have human
qualities. Products don't decide, know, see, hear, or want. Rewrite
to describe what the product actually does, or shift focus to the user.

## Examples

**Do:**
> The BIG-IP system forwards traffic to the pool member with the
> lowest number of connections.

> When the health monitor detects a failed pool member, it marks
> the member as unavailable.

**Don't:**
> The BIG-IP system decides which pool member to use based on
> the number of connections.

> The health monitor knows when a pool member has failed.

## Notes

Anthropomorphic words to avoid when describing products:
- decides, knows, sees, listens, hears, understands
- wants, thinks, believes, feels
- walks you through (use "guides you through")

"A wizard guides you through the steps" is acceptable — guides is a
functional description of what the wizard does, not a human quality.
"A wizard walks you through the steps" is not — walking is a human
action.

Avoid system-centric language that implies the product is doing the
user a favor:
- Don't: NGINX Plus allows you to configure rate limiting.
- Do: You can configure rate limiting in NGINX Plus.

The same applies to weak verbs like allows, lets, and enables when
used to describe what a product does for a user. These verbs are
acceptable when instructing the user to enable a setting.

## Related

- [Active voice](active-voice.md)
- [Inclusive language](inclusive-language.md)
- [Second person](second-person.md)
- [Word list](../terminology/word-list.md)