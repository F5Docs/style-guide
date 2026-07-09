# Agent Instructions

This folder contains reusable agent instruction documents for F5 documentation workflows.

## Purpose

Use these files as shared source content for downstream `.github/copilot-instructions.md` files in other documentation repositories.

Keeping these instructions here provides one maintained source instead of duplicating the same guidance across multiple repos.

## Current file

- `f5-tech-writer-agent.md`: Core instruction set for the F5 Tech Writer agent, including style guide enforcement, template usage, review behavior, and citation rules.

## How to use downstream

1. Copy the relevant instruction content into the target repository's `.github/copilot-instructions.md`.
2. Keep repository-specific additions in the downstream file.
3. When shared guidance changes here, sync those updates downstream.

## Scope

These files define agent behavior and writing standards. They do not replace product-specific technical review or SME validation.

## Maintenance

- Update instruction files here first.
- Keep guidance aligned with the latest style guide topics in this repository.
- Prefer small, focused edits with clear commit messages.
