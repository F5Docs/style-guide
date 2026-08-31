---
title: Videos
category: media
aliases: [video, videos, screencast, demo, walkthrough, captions, transcript, tutorial]
applies-to: [all F5 docs]
source-authority: F5 Modern Voice, F5 Technical Writing Style Guide
supersedes:
last-reviewed: 2026-07-28
---

# Videos

## Guidance

Ship a video only when it clears three bars: a job plain text can't do, a measurable definition of success, and a named owner. Video costs the most to produce and goes out of date the fastest. If no one will own the update, don't ship it.

## Examples

**Good uses for video:**
- Concepts that outlive the UI, such as how a request moves from a virtual server to a pool member. Concepts change more slowly than screens do, so they're the safest return on production time.
- Hardware tasks where the reader needs to see the physical action, such as installing or seating a component
- Tasks where readers get stuck at the same step, confirmed by support case volume or search data

**Poor uses for video:**
- UI navigation that numbered steps already cover
- Anything tied to a UI that changes each release
- Recordings made for another purpose, such as conference talks or launch presentations, republished as documentation
- Product overviews and "what is X" explainers, which belong to marketing rather than documentation

## Notes

### Before you propose a video

Answer all three questions in writing. A proposal that skips one isn't ready.

- **Purpose.** Name the specific thing the video does that a written topic can't. "It's easier to follow" is not a purpose.
- **Success.** State the measure, the target number, and the date you'll check. View count alone is weak. Prefer a support-deflection or task-completion signal tied to what TechComm is trying to move.
- **Owner.** Name a person, not a team. That person re-records or retires the video when the product changes.

### Ownership and review

- Set a review date when the video ships. Tie it to the product's release cycle, not the calendar.
- At each review, check the video against both its success measure and the shipping product. Retire it if it misses the measure. Re-record it if the UI no longer matches.
- Don't leave stale footage published with a note explaining what changed.

### Video and the written topic

- Text is the source of truth. Every video needs an equivalent written topic. Search, translation, and screen readers all work on text, not video.
- Don't use a colon to introduce a video. See [Colons](../punctuation/colons.md).
- Use descriptive link text, and include the run time so readers know what they're committing to. See [Link text](../accessibility/link-text.md).

### Accessibility

- Provide closed captions on every video. Auto-generated captions need a human review pass before you publish.
- Publish a transcript on the same page as the video.
- Narrate every action the viewer needs to follow. Don't rely on cursor movement, highlight boxes, or on-screen text alone.
- Don't use color as the only way to signal something on screen. See [Color](../accessibility/color.md).

### Production

- Keep it short. A long video is usually covering more than one question. Split it or write it up instead.
- Record a clean environment. Follow [Sensitive information](../security/sensitive-information.md) for hostnames, IP addresses, license keys, and account details.
- Avoid on-screen version numbers and dates where you can. They shorten the useful life of the recording.
- Follow [F5 product names](../terminology/f5-product-names.md) in narration and on-screen text.

## Related

- [Color](../accessibility/color.md)
- [Images](images.md)
- [Link text](../accessibility/link-text.md)
- [Sensitive information](../security/sensitive-information.md)

## See also

[Browse all guidelines](../TOC.md)