---
title: Sentence length
category: voice-and-tone
aliases: [sentence length, paragraph length, concise, brevity, word count]
applies-to: [all F5 docs]
source-authority: F5 Modern Voice, ASD-STE100
supersedes:
last-reviewed: 2026-08-07
---

# Sentence length

## Guidance

Keep sentences short. Task-oriented sentences: 20 words maximum. Conceptual sentences: 25 words maximum. Paragraphs: 6 sentences maximum. Noun clusters: 3 words maximum.

## Examples

**Do:**
> Select **Save** to apply your changes. The system restarts
> automatically. This takes about 30 seconds.

> The BIG-IP system uses a health monitor to check pool member
> availability.

**Don't:**
> After you have completed all of the required configuration steps
> and verified that all of the settings are correct, you can select
> the Save button in order to apply your changes to the system, which
> will then restart automatically.

## Notes

Read your writing aloud. If you run out of breath before finishing a sentence, it's too long.

Break long sentences at natural joints -- conjunctions, relative clauses, and prepositional phrases are good split points.

Limit noun clusters to three words. A noun cluster is a string of nouns used as modifiers:
- Don't: BIG-IP system configuration file location setting
- Do: The location setting for the BIG-IP configuration file

Short paragraphs aid scanning. If a paragraph exceeds six sentences, look for a natural break point or consider whether the content belongs in a list.

### How to count words toward the limit

Count each of these as one word, regardless of how many characters or symbols it contains: a number ("20"), a number with its unit ("30 seconds"), an abbreviation or acronym ("VPN," "a.m."), an alphanumeric identifier ("CVE-2024-7592"), a run of quoted or literal text (an exact UI string, a formula), and a hyphenated compound used as a modifier ("round-robin algorithm").
- "The timeout value is 30 seconds." counts as 5 words.
- "Patch the system for CVE-2024-7592." counts as 5 words.
- "Use the round-robin algorithm." counts as 4 words.

Text in parentheses counts as one word in its surrounding sentence. If the parenthetical is itself a full clause, it also counts on its own toward its own 20/25-word limit:
> Make sure the cache is enabled (the directive is present).
> ("Make sure the cache is enabled (the directive is present)" is 7 words. "The directive is present" is a separate 4-word unit.)

In a vertical list, the colon that introduces the list ends the sentence the same way a period does. Each item after the colon is its own sentence for word-count purposes and follows the same 20/25-word limit as the surrounding text.

## Related

- [Lists](../formatting/lists.md)
- [Modern Voice](modern-voice.md)
- [Reading level](reading-level.md)

## See also

[Browse all guidelines](../TOC.md)