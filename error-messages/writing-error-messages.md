---
title: Writing error messages
category: error-messages
aliases: [error messages, errors, error text, validation messages]
applies-to: [all F5 docs]
source-authority: F5 NGINX Style Guide, F5 Technical Style Guide, F5 Distributed Cloud Style Guide
supersedes:
last-reviewed: 2026-04-06
---

# Writing error messages

## Guidance

Error messages should be informative, empathetic, and actionable.
A good error message tells the user what the issue is, why it
happened, what the consequences are (if any), and what they can
do next to solve it.

Speak directly to the action the user was taking. Don't describe
what happened internally.

Read every error message out loud before publishing. If it sounds
like it was written for a machine, rewrite it.

## Examples

**Do:**
> Error logging in: the username does not exist. Check the username
> and try again.

> Error creating user: user limit reached. Remove one or more users,
> then try sending the request again.

> The account could not be deleted because the account name could not
> be found. Check the account name and try again.

**Don't:**
> You entered an invalid value.

> Catastrophic error: can't find the requested object.

> Name should match pattern
> "^[^A-Z\s\x00-\x1f\x60\x7f\;\*\"\[\]\{\}\\/]+$"

> Cannot rename. Specify another name.

## Notes

### Format
Follow this structure when writing error messages:

> Error [doing some action]: [why it happened]. [What the
> consequences are.] [How to solve the error.]

Not every error will have all four parts. Include what applies.

### Do
- Focus on the problem, not the user's actions
- Use plain language — describe the situation as you would to
  a colleague
- Be specific — give the user enough information to self-solve
- Provide a next step whenever possible

### Don't
- Blame the user
  - Don't: "You entered an invalid value."
  - Do: "The value must be an integer."
- Use negative or alarming words: wrong, bad, invalid, illegal,
  fatal, catastrophic
- Expose internal system details or technical jargon
  - Don't: "postgresql failed to write to disk."
  - Do: "Your changes could not be saved. Try again."
- Be vague without giving direction
  - Don't: "Cannot rename. Specify another name."
  - Do: "A workspace with that name already exists. Enter a
    unique name."

### Escalation path
When self-service options are exhausted, direct the user to the
next step:

> If you still have the same issue, review the logs for errors
> and consult the troubleshooting guide. If you need further
> assistance, contact F5 Support.

### Words to avoid
- bad, wrong, illegal, invalid
- fatal, catastrophic, critical (unless technically accurate
  and meaningful to the user)
- failed (use "could not" instead)

## Related

- [Active voice](../voice-and-tone/active-voice.md)
- [Global audience](../voice-and-tone/global-audience.md)
- [Modern Voice](../voice-and-tone/modern-voice.md)
- [Reading level](../voice-and-tone/reading-level.md)

## See also

[Browse all guidelines](../TOC.md)