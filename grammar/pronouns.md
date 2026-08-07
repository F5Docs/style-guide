---
title: Pronouns
category: grammar
aliases: [pronoun, pronouns, it, this, they, ambiguous reference]
applies-to: [all F5 docs]
source-authority: ASD-STE100
supersedes:
last-reviewed: 2026-08-07
---

# Pronouns

## Guidance

If a pronoun could refer to more than one noun in the sentence or the sentence before it, replace the pronoun with the noun itself. Don't make the reader guess what "it," "this," or "they" refers to.

## Examples

**Do:**
> If you configure the primary server and the backup server
> incorrectly, the backup server can drop connections.

> Do not reuse a wildcard certificate across multiple domains. A
> shared wildcard certificate makes revocation difficult if one
> domain is compromised.

**Don't:**
> If you configure the primary server and the backup server
> incorrectly, they can drop connections.
> (Does the primary server drop connections, or the backup server?)

> Do not reuse a wildcard certificate across multiple domains. If
> you do this, revocation becomes difficult if one domain is
> compromised.
> (Does "this" mean reusing the certificate, or something about the
> domains?)

## Notes

"This" is the most common offender. When "this" could point to more than one idea in the surrounding text, restate what it refers to instead of leaving the reader to infer it:
- Don't: "Do not reuse a wildcard certificate across multiple domains. If you do this, revocation becomes difficult."
- Do: "Do not reuse a wildcard certificate across multiple domains. A shared wildcard certificate makes revocation difficult if one domain is compromised."

This matters more than it looks like it should, because ambiguous pronouns are one of the hardest things to machine-translate correctly -- the translated pronoun's gender, number, or case depends on which noun it refers to, and a translation engine can't resolve that ambiguity any better than a human reader can.

Replacing a pronoun with its noun usually makes a sentence longer. If the sentence now exceeds the word limit, split it into two rather than shortening it back down with a vague pronoun. See [Sentence length](../voice-and-tone/sentence-length.md).

## Related

- [Global audience](../voice-and-tone/global-audience.md)
- [Second person](../voice-and-tone/second-person.md)
- [Sentence length](../voice-and-tone/sentence-length.md)
- [That vs. Which](that-vs-which.md)

## See also

[Browse all guidelines](../TOC.md)