#!/usr/bin/env python3
"""Update category, topic, and template inventories in the F5 Tech Writer Agent instructions file."""

import argparse
import os
import sys

SKIP_DIRS = {"templates", "scripts", "agent-instructions"}

CATEGORY_START_MARKER = "from this repo. Topics are organized into subdirectories by category:"
CATEGORY_END_MARKER = "Each topic is a single .md file named after the slug (for example,"

TOPICS_START_MARKER = "Valid topics:"
TOPICS_END_MARKER = "## Technical accuracy"

TEMPLATES_START_MARKER = "One template per content type:"
TEMPLATES_END_MARKER = "## How to respond"


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


def get_templates(style_guide_dir):
    """Return a dict of {content_type: [template-*.md, ...]} sorted by content type.

    Scoped to templates/ only, and filtered to template-*.md so example-*.md
    and guide-*.md files in the same directories aren't listed as templates.
    """
    templates_dir = os.path.join(style_guide_dir, "templates")
    templates = {}
    if not os.path.isdir(templates_dir):
        return templates
    for entry in sorted(os.listdir(templates_dir)):
        if entry.startswith("."):
            continue
        full_path = os.path.join(templates_dir, entry)
        if not os.path.isdir(full_path):
            continue
        files = sorted(
            f for f in os.listdir(full_path)
            if f.startswith("template-") and f.endswith(".md")
        )
        if files:
            templates[entry] = files
    return templates


def build_inventory_block(groups):
    """Build inventory lines, one per group label, wrapping long lists.

    groups: dict of {label: [display_string, ...]}. Shared by the
    category/slug inventory and the template/filename inventory.
    """
    base_indent = "    "
    col_width = max(len(label) + 1 for label in groups) + 4  # "label/" + padding
    cont_indent = base_indent + " " * col_width
    max_width = 79 - len(base_indent) - col_width
    lines = ["\n"]
    for label, entries in sorted(groups.items()):
        prefix_label = label + "/"
        segments = []
        current = []
        current_len = 0
        for entry in entries:
            if not current:
                current = [entry]
                current_len = len(entry)
            else:
                addition = 2 + len(entry)  # ", " + entry
                if current_len + addition > max_width:
                    segments.append(", ".join(current))
                    current = [entry]
                    current_len = len(entry)
                else:
                    current.append(entry)
                    current_len += addition
        if current:
            segments.append(", ".join(current))
        for i, seg in enumerate(segments):
            suffix = "," if i < len(segments) - 1 else ""
            line_prefix = f"{base_indent}{prefix_label:<{col_width}}" if i == 0 else cont_indent
            lines.append(f"{line_prefix}{seg}{suffix}\n")
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
        description="Update category, topic, and template inventories in the F5 Tech Writer Agent instructions file."
    )
    parser.add_argument(
        "--style-guide",
        required=True,
        help="Path to the style guide directory",
    )
    parser.add_argument(
        "--instructions",
        required=True,
        help="Path to the agent instructions file to update",
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
    templates = get_templates(style_guide_dir)
    total_slugs = sum(len(slugs) for slugs in categories.values())
    total_templates = sum(len(files) for files in templates.values())

    category_block = build_inventory_block(categories)
    topics_list = build_topics_list(categories)
    template_block = build_inventory_block(templates)

    with open(instructions_path, "r", encoding="utf-8") as f:
        lines = f.readlines()

    lines, cat_changed = update_section(
        lines, CATEGORY_START_MARKER, CATEGORY_END_MARKER, category_block
    )
    lines, topics_changed = update_section(
        lines, TOPICS_START_MARKER, TOPICS_END_MARKER, topics_list
    )
    lines, templates_changed = update_section(
        lines, TEMPLATES_START_MARKER, TEMPLATES_END_MARKER, template_block
    )

    changed = cat_changed or topics_changed or templates_changed
    if changed:
        with open(instructions_path, "w", encoding="utf-8") as f:
            f.writelines(lines)

    print(f"Category directories found: {len(categories)}")
    print(f"Total slugs processed:      {total_slugs}")
    print(f"Template types found:       {len(templates)}")
    print(f"Total templates processed:  {total_templates}")
    print(
        f"{os.path.basename(instructions_path)}:    {'updated' if changed else 'already up to date'}"
    )


if __name__ == "__main__":
    main()