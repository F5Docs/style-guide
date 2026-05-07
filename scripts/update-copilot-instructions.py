#!/usr/bin/env python3
"""Update category inventory and valid topics in copilot-instructions.md."""

import argparse
import os
import sys

SKIP_DIRS = {"templates", "scripts"}

CATEGORY_START_MARKER = "from that repo. Topics are organized into subdirectories by category:"
CATEGORY_END_MARKER = "Each topic is a single .md file named after the slug (for example,"

TOPICS_START_MARKER = "Valid topics:"
TOPICS_END_MARKER = "## Technical accuracy"


def get_categories(style_guide_dir):
    """Return a dict of {category: [slug, ...]} sorted by category name."""
    categories = {}
    for entry in sorted(os.listdir(style_guide_dir)):
        if entry in SKIP_DIRS or entry.startswith("."):
            continue
        full_path = os.path.join(style_guide_dir, entry)
        if not os.path.isdir(full_path):
            continue
        slugs = sorted(
            os.path.splitext(f)[0]
            for f in os.listdir(full_path)
            if f.endswith(".md")
        )
        if slugs:
            categories[entry] = slugs
    return categories


def build_category_block(categories):
    """Build the category inventory lines, one per category.

    Slug lists wrap onto continuation lines when they would exceed 79
    characters. Continuation lines are indented to align with the slug list
    on the first line.
    """
    col_width = max(len(cat) + 1 for cat in categories) + 4  # "cat/" + padding
    indent = " " * col_width
    max_slug_width = 79 - col_width
    lines = ["\n"]
    for cat, slugs in sorted(categories.items()):
        label = cat + "/"
        segments = []
        current = []
        current_len = 0
        for slug in slugs:
            if not current:
                current = [slug]
                current_len = len(slug)
            else:
                addition = 2 + len(slug)  # ", " + slug
                if current_len + addition > max_slug_width:
                    segments.append(", ".join(current))
                    current = [slug]
                    current_len = len(slug)
                else:
                    current.append(slug)
                    current_len += addition
        if current:
            segments.append(", ".join(current))
        for i, seg in enumerate(segments):
            suffix = "," if i < len(segments) - 1 else ""
            prefix = f"{label:<{col_width}}" if i == 0 else indent
            lines.append(f"{prefix}{seg}{suffix}\n")
    lines.append("\n")
    return lines


def build_topics_list(categories):
    """Build the flat alphabetically sorted valid topics line."""
    all_slugs = sorted(
        slug
        for slugs in categories.values()
        for slug in slugs
    )
    return [f"{', '.join(all_slugs)}\n", "\n"]


def update_section(lines, start_marker, end_marker, new_content_lines):
    """Replace lines between start_marker and end_marker with new_content_lines.

    Both markers are matched by substring. The markers themselves are preserved.
    Returns (updated_lines, was_changed).
    """
    start_idx = None
    end_idx = None

    for i, line in enumerate(lines):
        if start_idx is None and start_marker in line:
            start_idx = i
        elif start_idx is not None and end_idx is None and end_marker in line:
            end_idx = i
            break

    if start_idx is None or end_idx is None:
        return lines, False

    current_content = lines[start_idx + 1:end_idx]
    if current_content == new_content_lines:
        return lines, False

    updated = lines[:start_idx + 1] + new_content_lines + lines[end_idx:]
    return updated, True


def main():
    parser = argparse.ArgumentParser(
        description="Update category inventory and valid topics in copilot-instructions.md."
    )
    parser.add_argument(
        "--style-guide",
        required=True,
        help="Path to the style guide directory",
    )
    parser.add_argument(
        "--instructions",
        required=True,
        help="Path to the copilot-instructions.md file to update",
    )
    args = parser.parse_args()

    style_guide_dir = args.style_guide
    instructions_path = args.instructions

    if not os.path.isdir(style_guide_dir):
        print(f"Error: style guide directory not found: {style_guide_dir}", file=sys.stderr)
        sys.exit(1)

    if not os.path.isfile(instructions_path):
        print(f"Error: instructions file not found: {instructions_path}", file=sys.stderr)
        sys.exit(1)

    categories = get_categories(style_guide_dir)
    total_slugs = sum(len(slugs) for slugs in categories.values())

    category_block = build_category_block(categories)
    topics_list = build_topics_list(categories)

    with open(instructions_path, "r", encoding="utf-8") as f:
        lines = f.readlines()

    lines, cat_changed = update_section(
        lines, CATEGORY_START_MARKER, CATEGORY_END_MARKER, category_block
    )
    lines, topics_changed = update_section(
        lines, TOPICS_START_MARKER, TOPICS_END_MARKER, topics_list
    )

    changed = cat_changed or topics_changed
    if changed:
        with open(instructions_path, "w", encoding="utf-8") as f:
            f.writelines(lines)

    print(f"Category directories found: {len(categories)}")
    print(f"Total slugs processed:      {total_slugs}")
    print(
        f"copilot-instructions.md:    {'updated' if changed else 'already up to date'}"
    )


if __name__ == "__main__":
    main()
