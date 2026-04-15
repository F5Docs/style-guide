---
title: Published error messages
category: error-messages
aliases: [error log, error table, error reference, published errors, log messages, BIG-IP log messages]
applies-to: [BIG-IP docs]
source-authority: F5 Technical Style Guide
supersedes:
last-reviewed: 2026-04-06
---

# Published error messages

## Guidance

The BIG-IP Log Messages Reference is a published reference of system-generated log messages organized by ID number. Each entry must include enough detail for users to identify the cause, understand the impact, and take action without contacting support.

For the full BIG-IP log messages reference, see [Log Messages Reference](https://techdocs.f5.com/kb/en-us/products/big-ip_ltm/releasenotes/related/log-messages.html).

## Examples

**Do:**
> The account could not be deleted because the account name could not
> be found. Check the account name and try again. If the issue
> persists, review the logs and consult the troubleshooting guide.
> For further assistance, contact F5 Support.

**Don't:**
> The API accepts the symbolic name, but the value sent does not
> resolve to a valid property in the target object.

## Notes

### Required fields
Every published error message entry must include the following fields:

| Field | Description |
|-------|-------------|
| Severity | The level of impact: informational, warning, error, or critical |
| Type | The category or subsystem that generated the error |
| Message | The error message text shown to the user |
| Arguments | Variable values substituted into the message, if any |
| Cause/Condition | What triggered the error |
| Impact | What the user cannot do or what is affected as a result |
| Workaround/Recommended action | Steps the user should take to resolve the error |

### Message text
Write the message field following the guidance in [Writing error messages](writing-error-messages.md). Keep the message meaningful without exposing internal system details.

### Arguments
When a message contains variable content, use placeholders to indicate where values are substituted:

> Self IP %s / %s: this network is defined on two VLANs (%s and %s).

Document each argument in the Arguments field so users understand what each placeholder represents.

### Severity levels
Use these severity levels consistently:

| Severity | When to use |
|----------|-------------|
| Informational | The system completed an action and is providing status |
| Warning | The system detected a condition that may cause problems |
| Error | The system could not complete an action |
| Critical | The system is in a state that requires immediate attention |

## Related

- [Log Messages Reference](https://techdocs.f5.com/kb/en-us/products/big-ip_ltm/releasenotes/related/log-messages.html)
- [Writing error messages](writing-error-messages.md)

## See also

[Browse all guidelines](../TOC.md)