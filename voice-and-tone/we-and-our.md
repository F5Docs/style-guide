---
title: We and our
category: voice-and-tone
aliases: [we, our, first person plural, F5 recommends]
applies-to: [all F5 docs]
source-authority: F5 Technical Style Guide, F5 Modern Voice
supersedes:
last-reviewed: 2026-04-03
---

# We and our

## Guidance

Avoid "we" and "our" in technical documentation. They're ambiguous —
the reader can't tell if "we" means F5, the development team, or the
user and F5 together. Write from the user's perspective using "you"
instead, or name F5 explicitly.

## Examples

**Do:**
> F5 recommends setting up a health monitor for each pool.

> NGINX Plus supports dynamic reconfiguration without restarting
> the service.

> You can configure rate limiting to protect your application.

**Don't:**
> We recommend setting up a health monitor for each pool.

> We support dynamic reconfiguration without restarting the service.

> We need to configure rate limiting to protect our application.

## Notes

"We" is ambiguous in technical docs because it can mean:
- F5 as a company
- The development team
- The writer
- The user and F5 together

None of these are useful to the reader. Replace "we" with the
specific actor:
- "We recommend" → "F5 recommends"
- "We support" → "NGINX Plus supports"
- "We need to configure" → "You need to configure"

"Our" has the same problem:
- "Our documentation" → "F5 documentation" or "this guide"
- "Our products" → "F5 products"
- "Our recommendation" → "F5's recommendation"

Exception: "we" is acceptable in conversational UI text, release
announcements, and blog posts where F5 is speaking directly to
customers as a company. It is not appropriate in technical
procedures, reference documentation, or conceptual content.

## Related

- [Active voice](active-voice.md)
- [Anthropomorphism](anthropomorphism.md)
- [Second person](second-person.md)