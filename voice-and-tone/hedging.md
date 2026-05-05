---
title: Hedging
category: voice-and-tone
aliases: [hedging, uncertainty, qualifiers, seems, probably, it appears, weasel words, vague verbs, nominalizations, double negatives]
applies-to: [all F5 docs]
source-authority: F5 Technical Writing Style Guide
last-reviewed: 2026-05-05
---

# Hedging

## Guidance

Avoid hedging. Hedged language undermines authority, obscures facts, and leaves readers unable to act. It also invites LLM hallucinations: when source content is vague or qualified, AI tools fill the gaps with plausible-sounding fabrications. State verified facts directly, and when genuine uncertainty exists, name it explicitly and tell the reader what to do next.

## Examples

**Do:**
> The connector populated the missing data for October. To confirm it is working, monitor real-time ingestion for 24 hours.

> BIG-IP logs all requests to the access log.

> This setting reduces load time by 40% in testing.

**Don't:**
> It seems the connector is working and probably filled in the missing data.

> BIG-IP should log most requests to the access log.

> This setting may improve performance.

## Notes

When uncertainty is real and relevant, state it directly and follow up with a concrete action:
> The fix may not resolve the root cause. Monitor the service after deployment and open a support case if the issue recurs.

Avoid these hedging phrases:

| Avoid | Use instead |
|---|---|
| it seems, it appears | state the fact, or say what is confirmed |
| probably, likely | will (if known), or state the condition |
| it could be argued | state the position directly |
| it is possible that | may (if appropriate) or rewrite as a condition |
| tend to, generally | rewrite with the specific condition or scope |

**Passive constructions are a hedging pattern.** "It is recommended that you update the firmware" hedges by hiding who is recommending. Write "Update the firmware" instead. See [Active voice](active-voice.md).

**Weak or vague verbs have the same effect.** Nominalizations ("perform a service restart") and vague verbs ("make," "do," "provide") distance the reader from the action. Use domain-specific verbs that name the action precisely: configure, deploy, validate, restart, monitor.

**Be specific, not general.** Replace vague claims with measurable or scoped statements. "This setting may improve performance" says nothing actionable; "This setting reduces load time by 40% in testing" does.

**Double negatives obscure meaning.** Replace "not unlike" with "similar to" and "not uncommon" with "common."

"May" and "might" have legitimate technical uses — see [May, Can, and Might](../grammar/may-can-might.md).

Overclaiming is the opposite problem. Avoid "always," "never," "all," and "every" unless they are factually correct.

## Related

- [Active voice](active-voice.md)
- [May, Can, and Might](../grammar/may-can-might.md)
- [Modern Voice](modern-voice.md)
- [Reading level](reading-level.md)
- [Word list](../terminology/word-list.md)

## See also

[Browse all guidelines](../TOC.md)
