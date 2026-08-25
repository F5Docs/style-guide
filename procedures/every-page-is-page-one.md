---
title: Every Page is Page One
category: procedures
aliases: [EPPO, self-contained topics, topic-based authoring]
applies-to: [all F5 docs]
source-authority: F5 Technical Writing Style Guide
supersedes: 
last-reviewed: 2024-12-19
---

# Every Page is Page One

## Guidance

Write each topic as a self-contained unit that readers can understand without following a prescribed reading sequence. Provide essential context at the beginning of each page, link to prerequisites rather than assuming prior knowledge, and avoid language that references other pages sequentially. This approach accommodates how users actually navigate documentation—through search engines, direct links, and non-linear browsing.

## Examples

### ❌ Don't

> **Deploy guardrails**
>
> Now that you've created your remediation package, you can deploy it to your projects.

**Problem:** Assumes the reader arrived from a specific previous page.

### ✅ Do

> **Deploy guardrails from a remediation package**
>
> After AI Security identifies vulnerabilities, you can deploy the recommended guardrails to protect your applications.
>
> **Prerequisites**
> - A remediation package with guardrails. For details, see your product documentation on creating remediation packages.
> - Access to the projects where you want to deploy guardrails.

**Why it works:** Provides context about what the page covers, when to use it, and links to prerequisites.

---

### ❌ Don't

> As we discussed in the previous section, API keys provide authentication for...

**Problem:** References content the reader may not have seen.

### ✅ Do

> API keys provide authentication for programmatic access to F5 Distributed Cloud. For information about other authentication methods, see your product documentation on authentication options.

**Why it works:** Defines the concept independently and links to related information.

---

### ❌ Don't

> **Step 3: Configure the scanner**
>
> In the configuration file you created earlier, add the following parameters...

**Problem:** Assumes completion of previous steps in sequence.

### ✅ Do

> **Configure scanner parameters**
>
> Configure scanner parameters in the scanner configuration file to control how the scanner processes prompts.
>
> **Before you begin**
> - Create a scanner configuration file. See your product documentation on creating scanner configurations.
> 
> **To configure scanner parameters:**
> 1. Open your scanner configuration file.
> 2. Add the following parameters...

**Why it works:** Stands alone as a complete task with clear prerequisites.

---

### ❌ Don't

Page title: "Step 3: Deploy"

**Problem:** Title assumes a sequence and doesn't describe what's being deployed.

### ✅ Do

Page title: "Deploy the remediation package"

**Why it works:** Descriptive title that makes sense in search results and bookmarks.

## Notes

Every Page is Page One doesn't mean repeating the same information on every page. Instead:

- **Provide just enough context** to orient the reader—a sentence or two explaining what the page covers
- **Link liberally** to prerequisites, related concepts, and additional information
- **Use clear page titles** that describe the content without requiring surrounding context
- **Group related tasks** when appropriate, but ensure each grouping is self-contained

This approach conflicts with traditional sequential documentation models where chapters build on each other. When documenting a complex workflow that naturally has dependencies, use Prerequisites sections and cross-references rather than narrative transitions like "next" or "previously."

For conceptual topics, provide enough definition and context that the page makes sense on its own, but link to foundational concepts rather than re-explaining them in full.

## Related

- [Cross-references](cross-references.md)
- [Doc titles](../formatting/doc-titles.md)
- [Prerequisites](prerequisites.md)
- [Step formatting](step-formatting.md)

## See also

[Browse all guidelines](../TOC.md)

