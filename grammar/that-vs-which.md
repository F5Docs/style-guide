---
title: That vs. Which
category: grammar
aliases: [that, which, who, relative clauses, essential, non-essential]
applies-to: [all F5 docs]
source-authority: F5 Technical Style Guide, F5 NGINX Style Guide
supersedes:
last-reviewed: 2026-04-03
---

# That vs. Which

## Guidance

Use "that" for essential clauses — information the sentence needs to
make sense. Use "which" for non-essential clauses — extra information
that could be removed without changing the meaning. Use "who" for
people, not "that."

## Examples

**Do:**
> Restart the services that failed during the update.

> The log file, which records all system activity, can grow large
> over time.

> Contact the administrator who manages the virtual servers.

**Don't:**
> Restart the services which failed during the update.

> The log file that records all system activity can grow large
> over time.

> Contact the administrator that manages the virtual servers.

## Notes

A simple test: if you can remove the clause and the sentence still
makes sense, use "which" and set it off with commas. If removing
the clause changes the meaning, use "that."

- "Restart the services that failed" — removing "that failed" changes
  which services to restart. Essential — use "that."
- "The log file, which records all system activity" — removing "which
  records all system activity" doesn't change the meaning of the
  sentence. Non-essential — use "which."

"Which" clauses are always set off with commas. "That" clauses are
not.

Always use "who" when referring to people:
- Do: the administrator who manages the virtual servers
- Don't: the administrator that manages the virtual servers

## Related

- [If vs. Whether](if-vs-whether.md)
- [Inclusive language](../voice-and-tone/inclusive-language.md)
- [Second person](../voice-and-tone/second-person.md)

## See also

[Browse all guidelines](../TOC.md)
