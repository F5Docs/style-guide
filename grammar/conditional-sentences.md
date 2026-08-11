---
title: Conditional sentences
category: grammar
aliases: [conditional sentences, if clauses, when clauses, condition first]
applies-to: [all F5 docs]
source-authority: ASD-STE100
supersedes:
last-reviewed: 2026-08-07
---

# Conditional sentences

## Guidance

When a step or a statement depends on a condition, state the condition first, mark the end of it with a comma, then give the instruction or the fact. Don't make the reader act first and find out the condition applied to them second.

## Examples

**Do:**
> When the configuration test fails, do not reload NGINX.

> If the upstream server does not respond within the timeout, NGINX
> Plus marks it as unavailable.

**Don't:**
> Do not reload NGINX when the configuration test fails.

> NGINX Plus marks the upstream server as unavailable, if it does
> not respond within the timeout.

## Notes

The comma matters, not just the order. Where you place it can change the meaning of the sentence:
> If the health check does not respond quickly, restart the worker process.
> If the health check does not respond, quickly restart the worker process.

The first sentence tells you the health check is responding too slowly. The second tells you it isn't responding at all, and instructs you to restart the worker process quickly. Read a conditional sentence back after you write it to make sure the comma is where you meant it.

This applies to both procedures and descriptive text. In a procedure, the condition still comes first even though the instruction that follows is in the imperative. See [Step formatting](../procedures/step-formatting.md).

## Related

- [If vs. Whether](if-vs-whether.md)
- [Sentence length](../voice-and-tone/sentence-length.md)
- [Step formatting](../procedures/step-formatting.md)
- [Tense](tense.md)

## See also

[Browse all guidelines](../TOC.md)