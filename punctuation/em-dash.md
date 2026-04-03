---
title: Em dash
category: punctuation
aliases: [—, em-dash, dash]
applies-to: [all F5 docs]
source-authority: F5 NGINX Style Guide
last-reviewed: 2026-04-02
---

# Em dash

## Guidance

Avoid em dashes in technical documentation. They don't translate well
for global audiences and machine translation engines. Use a comma,
period, colon, or parentheses instead. Em dashes are permitted in
brand and marketing content where a conversational tone is the goal.

## Examples

**Do:**
> The system restarts automatically — this takes about 30 seconds.
> → The system restarts automatically. This takes about 30 seconds.

> Use the reload command — not restart — to apply configuration changes.
> → Use the reload command (not restart) to apply configuration changes.

**Don't:**
> The process completes — then the system logs the result.

## Notes

If an em dash appears unavoidable for readability, prefer two hyphens
(`--`) in source files so it converts correctly in rendered output.

## See also

[Browse all guidelines](../TOC.md)
