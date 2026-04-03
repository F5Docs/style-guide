---
title: May, Can, and Might
category: terminology
aliases: [may, can, might, should, modal verbs, permission, ability]
applies-to: [all F5 docs]
source-authority: F5 Technical Style Guide, F5 NGINX Style Guide
supersedes:
last-reviewed: 2026-04-03
---

# May, Can, and Might

## Guidance

Use "can" to indicate ability. Use "may" to indicate permission or
uncertainty. Use "might" for stronger uncertainty. Avoid "should" —
it's ambiguous and implies judgment.

## Examples

**Do:**
> You can configure rate limiting in NGINX Plus.

> You may add more pool members if needed.

> The system might restart depending on your configuration.

> To apply the changes, reload the service.

**Don't:**
> You should configure rate limiting in NGINX Plus.

> The system may restart depending on your configuration.

> You can add more pool members if you want to.

## Notes

Modal verb guide:

| Word | Meaning | Use for |
|------|---------|---------|
| can | able to | describing capability |
| may | permitted to, or possibly | permission or mild uncertainty |
| might | possibly (stronger uncertainty than may) | uncertain outcomes |
| must | required to | mandatory actions |
| should | ought to | avoid — implies judgment |

Avoid "should" in instructions. It's ambiguous — the reader can't
tell if the action is required or just recommended. Use "must" for
required actions and rewrite recommendations as direct statements:
- Don't: You should save your work before closing.
- Do: Save your work before closing.
- Don't: You should use reload instead of restart.
- Do: Use reload instead of restart to avoid downtime.

For clear optional actions, use "can" or "may":
- You can add a description to help identify the virtual server.
- You may skip this step if you don't need custom logging.

## Related

- [Active voice](../voice-and-tone/active-voice.md)
- [Step formatting](../procedures/step-formatting.md)
- [Word list](word-list.md)