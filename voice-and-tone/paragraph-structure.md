---
title: Paragraph structure
category: voice-and-tone
aliases: [paragraph structure, topic sentences, connecting words, key words]
applies-to: [all F5 docs]
source-authority: ASD-STE100
supersedes:
last-reviewed: 2026-08-07
---

# Paragraph structure

## Guidance

Start every paragraph with a topic sentence that states what the paragraph is about. Give each paragraph exactly one topic. Connect the sentences that follow back to the topic sentence using repeated key words or a connecting word like "and," "but," "then," or "thus."

## Examples

**Do:**
> NGINX Plus uses active health checks to monitor the availability of
> upstream servers. These health checks send periodic requests to
> each server in the upstream group. If a server fails to respond
> correctly, NGINX Plus marks it as unavailable. And NGINX Plus stops
> sending traffic to that server until it passes a health check
> again.

**Don't:**
> During a traffic spike, the NGINX Plus load balancer distributes
> incoming requests across multiple upstream servers using a chosen
> algorithm. This distribution happens as part of the reverse proxy
> configuration, which is a core feature of NGINX Plus. This helps
> prevent any single server from becoming overloaded.
> (No topic sentence -- the reader has to piece the subject together
> from three different sentences.)

## Notes

The topic sentence is the most important sentence in the paragraph. If a reader read only the topic sentences of a document, they should get an accurate outline of its content.

Key words are the repeated nouns and phrases that tie a paragraph together -- reusing "NGINX Plus," "health check," or "server" across sentences signals to the reader that you're still developing the same idea. Don't swap in a synonym partway through a paragraph to avoid repetition; the repetition is what makes the connection visible. See [Word list](../terminology/word-list.md) for approved terminology to reuse consistently.

Connecting words ("and," "but," "then," "thus") and connecting phrases ("as a result," "at the same time") work like traffic signs -- they tell the reader whether the next sentence adds new information, contradicts what came before, or follows as a consequence.

If a paragraph covers more than one topic, split it at the point where the topic changes, even if both halves are short. See [Sentence length](sentence-length.md) for the six-sentence paragraph limit this works alongside.

## Related

- [Modern Voice](modern-voice.md)
- [Parallel structure](../grammar/parallel-structure.md)
- [Reading level](reading-level.md)
- [Sentence length](sentence-length.md)

## See also

[Browse all guidelines](../TOC.md)