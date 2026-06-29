---
title: Step numbers in headings
category: procedures
aliases: [step prefix, step X, numbered headings, step labels in headings]
applies-to: [all F5 docs]
source-authority: F5 Technical Writing Style Guide
last-reviewed: 2026-06-09
---

# Step numbers in headings

## Guidance

Don't use "Step X:" prefixes in headings. Use a task-based heading without a number, and let the numbered list below it provide sequence. Step numbers in headings create a maintenance burden. Any time a step is added, removed, or reordered, you must renumber every subsequent heading.

## Examples

**Do:**
> ### Create a data plane key
> 1. Go to **Security** > **Data Plane Keys**.
> 2. Select **Create**.
> 3. Enter a name for the key.

**Don't:**
> ### Step 1: Create a data plane key
> 1. Go to **Security** > **Data Plane Keys**.
> 2. Select **Create**.
> 3. Enter a name for the key.
>
> ### Step 2: Assign the key to a policy
> 1. Go to **Policies**.
> 2. Select the policy you want to update.
> 3. Under **Data Plane Keys**, select the key you created.
>
> ### Step 3: Test the configuration
> 1. Send a test request to the endpoint.
> 2. Confirm the response returns a 200 status.

**Do** (multi-phase procedure):
> ## Plan your deployment
> ## Configure the instance
> ## Validate the connection

**Don't** (multi-phase procedure):
> ## Step 1: Plan your deployment
> ## Step 2: Configure the instance
> ## Step 3: Validate the connection

## Notes

If a procedure has multiple major phases that are not simple sequential steps (for example, planning, configuring, and validating), it may be appropriate to use descriptive H2 or H3 headings to separate them. These headings should still describe the task, not label it with a number.

## Related

- [Headings](../formatting/headings.md)
- [Lists](../formatting/lists.md)
- [Step formatting](step-formatting.md)

## See also

[Browse all guidelines](../TOC.md)