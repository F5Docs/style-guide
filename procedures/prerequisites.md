---
title: Prerequisites
category: procedures
aliases: [prerequisites, before you begin, requirements]
applies-to: [all F5 docs]
source-authority: F5 Technical Style Guide
last-reviewed: 2026-04-02
---

# Prerequisites

## Guidance

State prerequisites as conditions the user must meet before starting,
not as restatements of prior steps. Keep the list short. If
prerequisites are extensive, consider a separate topic.

## Examples

**Do:**
> Before you begin, verify that you have:
> - A valid F5 license
> - At least one pool configured
> - Network access to the management interface

**Don't:**
> Prerequisites:
> 1. You must have completed the previous task.
> 2. The system must be set up.

## Notes

Do not list the previous task in a sequence as a prerequisite — if
the user is following a workflow, assume they completed the prior step.

Write prerequisites as conditions, not instructions. If the user needs
to take action to meet a prerequisite, that action belongs in its own
task.

Avoid restating the obvious. "You must have a BIG-IP system" is not
a useful prerequisite.

Frame prerequisites naturally in the intro sentence rather than as a
formal block when the list is only one or two items:
> Before you set up the virtual server, verify that you have at least
> one pool configured.

## See also

[Browse all guidelines](../TOC.md)
