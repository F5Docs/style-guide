---
title: Tense
category: voice-and-tone
aliases: [tense, present tense, future tense, past tense]
applies-to: [all F5 docs]
source-authority: F5 Technical Style Guide
last-reviewed: 2026-04-02
---

# Tense

## Guidance

Use simple present tense. Avoid future tense for describing system
behavior — the system does things, it doesn't "will do" things.

## Examples

**Do:**
> The system logs all requests.

> When the health monitor detects a failed pool member, it marks
> the member as unavailable.

> Select **Save**. The configuration updates immediately.

**Don't:**
> The system will log all requests.

> When the health monitor detects a failed pool member, it will mark
> the member as unavailable.

> Select **Save**. The configuration will update immediately.

## Notes

Use simple verb tenses: past, present, and future. Avoid progressive
and perfect tenses where simple tenses work:
- Don't: The system is receiving the request.
- Do: The system receives the request.

Future tense is acceptable when describing something that genuinely
happens later as a consequence:
> After you restart the service, the new configuration takes effect.

Use present tense even when describing older product versions — some
users are still using those versions in the present:
- Don't: The feature was introduced in BIG-IP 10.x.
- Do: The feature is available in BIG-IP 10.x and later.

## Related

- [voice-and-tone/active-voice.md](active-voice.md)
- [voice-and-tone/modern-voice.md](modern-voice.md)
- [terminology/f5-product-names.md](../terminology/f5-product-names.md)