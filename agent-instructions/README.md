# Agent Instructions

This folder contains reusable agent instruction documents for F5 documentation workflows.

## Purpose

Use these files as shared source content for downstream `.github/copilot-instructions.md` files in other documentation repositories.

Keeping these instructions here provides one maintained source instead of duplicating the same guidance across multiple repos.

## Current file

- `f5-tech-writer-agent.md`: Core instruction set for the F5 Tech Writer agent, including style guide enforcement, template usage, review behavior, and citation rules.

## How to use downstream

1. Add this repository to the downstream documentation repository as a `.style-guide` submodule.
2. Follow the submodule setup and update steps in the root [README](../README.md).
3. In the downstream `.github/copilot-instructions.md` file, reference `.style-guide/agent-instructions/f5-tech-writer-agent.md`.
4. Keep only downstream repository-specific additions in `.github/copilot-instructions.md`.

## Scope

These files define agent behavior and writing standards. They do not replace product-specific technical review or SME validation.

## Maintenance

- Update instruction files here first.
- Keep guidance aligned with the latest style guide topics in this repository.
- Prefer small, focused edits with clear commit messages.
