---
title: Reading level
category: voice-and-tone
aliases: [reading level, Flesch-Kincaid, grade level, readability]
applies-to: [all F5 docs]
source-authority: F5 Modern Voice, F5 Unified Style Guide, F5 NGINX Style Guide
last-reviewed: 2026-04-02
---

# Reading level

## Guidance

Write at an 8th–9th grade reading level as measured by the
Flesch-Kincaid Grade Level scale. This makes content accessible to
non-native English speakers, faster to read for everyone, and more
accurate when machine-translated.

## Examples

**Do:**
> If the system doesn't respond, restart the service and check the
> log file for errors.

**Don't:**
> In the event that the system fails to respond, it is recommended
> that you initiate a restart of the service and subsequently examine
> the log file to ascertain the cause of the failure.

## Notes

Use the [Flesch-Kincaid readability calculator](https://goodcalculators.com/flesch-kincaid-calculator/)
to check your writing when in doubt.

The main drivers of a high grade level score are:
- Long sentences — break them up
- Long words — replace with shorter alternatives
- Passive voice — rewrite as active
- Noun clusters — break them apart

A lower grade level doesn't mean dumbed-down content. Technical
terminology is fine — it's the surrounding prose that should be simple.
"The BIG-IP system forwards traffic to the pool member" scores well
because the sentence structure is clean, even though the terminology
is technical.

Target: Flesch-Kincaid Grade Level of 8–9. A score of 7 or lower is
acceptable. A score above 10 is a signal to revise.

## Related

- [voice-and-tone/global-audience.md](global-audience.md)
- [voice-and-tone/sentence-length.md](sentence-length.md)
- [voice-and-tone/modern-voice.md](modern-voice.md)