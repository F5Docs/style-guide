# Metadata reference

This page lists every front matter metadata key used across F5 documentation, its purpose, and whether it's required. It's a consolidated reference — the `guide-<type>.md` file for each content type explains which of these keys are relevant to that type and how to fill them in.

Each repository has its own set of required metadata fields. Check the documentation for the specific product repository to confirm which fields are required there and which are optional. The table below reflects the general schema used across F5 doc repositories.

Keys prefixed with `f5-` are defined in-house to provide metadata or features not covered by Hugo. Keys without the prefix are Hugo's own front matter keys.

## Front matter formatting

Metadata must be valid YAML. Quote a value with single (`'`) or double (`"`) quotes when:

- The string contains special characters, such as `:`, `#`, `{}`, `[]`, `,`, `&`, `*`, `!`, `%`, `@`, `|`, `>`. Example: `title: "Coffee: The beautiful drink"`
- The string starts with a reserved YAML character, such as `-`, `?`, `:`, `#`, or `@`. Example: `title: "- My title starts with a dash"`
- A numeric- or boolean-looking value must be treated as text. Examples: `version: "123"`, `enabled: "true"`
- The value is an empty string. Example: `title: ""`
- The value has leading or trailing spaces. Example: `title: " My spacious title "`

## General metadata keys

| Key | Value(s) | Purpose | Required | Notes |
|---|---|---|---|---|
| `title` | string | Descriptive | Required | The document's main heading (H1); the title for the doc. |
| `weight` | integer | Structural | Required | Determines ordering in site navigation. |
| `toc` | `true`/`false` | Structural | Optional (default `false`) | Controls visibility of the in-doc table of contents. |
| `description` | string | Descriptive | Required | A short summary used for search, SEO, and content indexing. Doesn't appear in the rendered document. |
| `f5-product` | string | Descriptive | Required | Identifies the related product. Can take more than one value as a YAML list. Use `Miscellaneous` for use-case docs that don't belong to a specific product. |
| `f5-content-type` | string: `concept`, `tech-specs`, `how-to`, `reference`, `tutorial`, `release-notes`, `installation-guide`, `landing-page`, `redoc`, `redirect` | Descriptive | Required | Defines the content archetype. Release notes are a type of `reference`; getting-started and installation guides are a type of `tutorial`. `landing-page` pages also require `f5-landing-page: true`. `redirect` pages have no content — they exist only to create a navigation entry that redirects elsewhere. |
| `f5-review-priority` | string: `high`, `medium`, `low` | Administrative | Optional (default `medium`) | Sets the review cadence: high = 3 months, medium = 6 months, low = 12 months. |
| `f5-docs` | `DOCS-nnn` | Administrative | Required | Internal documentation ID, created using Watchdocs. |
| `f5-files` | array of paths | Administrative | Required (include-only key) | Used only in include files, to list every location where the include is reused. List at least two paths — if an include is used in only one place, inline the content instead. |
| `f5-resource` | string (URL) | Administrative | Optional | Link to the source of an artifact used in the doc (for example, a diagramming tool file), so others can update it later. |
| `url` | string (URL path) | Structural | Required for index pages | Defines a custom URL path for the page. Leaf pages derive their URL path implicitly from their file path and don't need this key; index pages (`_index.md`) do. Example: `url: /nginx-app-protect-waf/v5/admin-guide/` |
| `canonical` | string (URL path) | Structural | Required | The URL path of the authoritative version of this content. Every document must set this field — never leave it as an unresolved placeholder; ask the contributor if the value isn't clear. Example: `canonical: /nginx-app-protect-waf/v5/admin-guide/` |
| `cascade` | array | Structural | Optional | Hugo feature for applying metadata to child pages, for example EOL banners. |
| `draft` | `true`/`false` | Administrative | Optional | Controls whether the page is published. |
| `headless` | `true`/`false` | Structural | Optional | Indicates the page shouldn't appear in site navigation. |
| `layout` / `type` | string | Structural | Optional | Defines which Hugo template/layout to use, for example for EOL banners (`nms-eos-list`, `acm-eos`). |
| `noindex` | `true`/`false` | Structural | Optional | Prevents search engines from indexing the page. |
| `f5-personas` | array of strings | Descriptive | Optional (needs refinement) | User personas the content is for, for example `["devops", "netops", "secops", "support"]`. |

## Metadata for AI agent consumption

These keys aren't rendered in the product UI, but they're consumed by AI systems, search indexes, and docs-as-code tooling.

| Key | Value(s) | Purpose | Required | Notes |
|---|---|---|---|---|
| `f5-keywords` | comma-separated strings | AI guidance | Required | Terms a reader might type to find this page: product names, feature names, CLI commands, file paths, common misspellings or alternative phrasings. |
| `f5-summary` | string | AI guidance | Required | Two to three sentences expanding on `description`, used by AI assistants generating answers that cite this page. Cover: what the reader will do or learn, why it matters, and any scope limits. |
| `f5-audience` | string | AI guidance | Required | Who the doc is for. Accepted values: `developer`, `operator`, `admin`, `architect`, `any`. |

## Why canonical matters

A canonical URL is the version of a page that search engines choose to index and rank. When duplicate or near-duplicate content exists at more than one URL, search engines pick one canonical version. The `canonical` front matter key tells search engines which URL is authoritative for a given piece of content.

Canonical values matter because they:

- Keep duplicate pages out of search results and avoid keyword cannibalization, where multiple pages compete for the same search terms.
- Consolidate link equity on the authoritative page, even when external links point to a different version.
- Simplify analytics: attribute traffic and conversions to one URL instead of several duplicate URLs.
- Reduce wasted crawl budget on large sites.

Set a self-referencing `canonical` value on every page, even when no duplicate exists. This practice removes ambiguity and makes search engine indexing more predictable.

For deeper background, see Semrush's [Canonical URLs guide](https://www.semrush.com/blog/canonical-url-guide/).

## Example

```yaml
---
title: Technical Specifications
weight: 100
toc: true
description: "Detailed specifications for NGINX Instance Manager, including system requirements and performance benchmarks."
f5-product: F5 NGINX Instance Manager
canonical: /nginx-instance-manager/tech-specs/
f5-review-priority: high
f5-content-type: tech-specs
f5-docs: DOCS-001
f5-keywords: "NIM, technical specifications, system requirements, performance limits, compatibility, networking, ports, protocols, supported platforms"
f5-summary: >
  This page covers the technical specifications for the F5 NGINX Instance Manager.
  Use this page to verify hardware requirements, confirm platform compatibility, and look up
  performance limits and networking requirements before deployment.
  These specifications apply to NGINX Instance Manager 3.x running on supported platforms.
f5-audience: operator
---
```
