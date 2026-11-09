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

Not every product has a formal end-of-life policy. Use language that reflects reality:

- For products with a defined EOL schedule (for example, NGINX Plus), say "a supported release."
- For products without one (for example, NGINX Open Source), say "a current release." "Supported" overstates what the vendor actually guarantees.

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
