---
title: Version references
category: terminology
aliases: [version references, release references, EOL, end of life, supported release, legacy version, version callout]
applies-to: [all F5 docs]
source-authority: F5 Technical Writing Style Guide
supersedes:
last-reviewed: 2026-11-09
---

# Version references

## Guidance

Don't cite a specific release number for a feature that's standard across every currently supported release. Only mention a version when it's a real, current constraint. Drop the mention once the release that introduced the feature reaches end of life (EOL).

## Examples

**Do:**
> NGINX Plus supports gRPC health checks.

> A supported release of NGINX Plus.

> A current release of NGINX Open Source.

**Don't:**
> NGINX Plus R23 supports gRPC health checks.

> NGINX Plus R7 or later.

## Notes

### Default: no version needed

If a capability works the same way on every release a reader could realistically be running, describe it without a version number. A version number that was once useful context becomes noise once it's no longer a meaningful constraint for anyone reading the page today.

### When a version mention is still appropriate

Cite a version only when it represents a constraint the reader might actually hit. That means a minimum version they might not have, where the minimum is at or above the product's current EOL boundary. If every currently supported release already meets the minimum, the mention serves no purpose.

### The sunset rule

Once the release that introduced a feature reaches EOL, remove "introduced in" and "available since" framing from how-to, concept, and reference content. Describe the feature as standard, present-tense behavior instead.

### Match the phrasing to the product's support model

Not every product has a formal end-of-life policy. Before you cite a version as a prerequisite, check whether the product publishes explicit EOL dates for its releases:

- If it does (for example, [NGINX Plus](https://docs.nginx.com/nginx/releases/), F5's commercially supported product with a published release-support schedule), say "a supported release."
- If it doesn't (for example, [NGINX Open Source](https://nginx.org/en/download.html), a community-maintained open source project with no vendor support contract), say "a current release" instead. "Supported" would overstate what the vendor guarantees.

**Do:**
> Before you begin, make sure you have:
> - A supported release of NGINX Plus
> - A current release of NGINX Open Source

**Don't:**
> Before you begin, make sure you have:
> - NGINX Plus R23 or later
> - A supported release of NGINX Open Source

NGINX Plus R23 shipped in December 2020 and is long past end of life. Citing it as a minimum tells today's reader nothing useful, because every supported release already exceeds it.

### Where version history belongs regardless of age

Some content exists specifically to document version history and should keep it intact no matter how old:

- Changelogs and release notes
- Compatibility and version-support matrices
- Tech-specs and reference pages built around a version-to-feature mapping

Don't apply the sunset rule to these. Removing a historical entry from a changelog isn't simplification. It's deleting the record.

## Related

- [F5 product names](f5-product-names.md)
- [Numbers](../formatting/numbers.md)
- [Prerequisites](../procedures/prerequisites.md)
- [Tense](../grammar/tense.md)
- [Update vs. Upgrade](update-vs-upgrade.md)

## See also

[Browse all guidelines](../TOC.md)
