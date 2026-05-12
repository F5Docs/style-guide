---
title: Error message strings
category: error-messages
aliases: [error message variables, placeholders, concatenation, string formatting, %V, localization]
applies-to: [all F5 docs]
source-authority: F5 Technical Writing Style Guide
supersedes:
last-reviewed: 2026-05-12
---

# Error message strings

## Guidance

Write error messages as complete strings with placeholders, not as concatenated fragments. Fragmented strings may render incorrectly when translated because the target language may require a different word order. When a placeholder is the subject of the sentence, use a colon instead of a copula verb ("is," "are," "was") — the noun that replaces the placeholder may require different verb agreement in the target language, and neither human translators nor AI translation models can determine the correct form without knowing the substituted value. Enclose placeholder values in quotes when they represent a name or identifier.

## Examples

### Placeholder as subject
**Do:**
> `"zone_sync \"%V\": too small"`

**Don't:**
> `"zone_sync \"%V\" is too small"`

### Placeholder as object
**Do:**
> `"connection to \"%s\" failed"`

> `"could not write to \"%s\""`

### Placeholder as attribute
**Do:**
> `"invalid value for \"%s\": expected integer"`

> `"limit_req zone \"%V\": no space left"`

### Multiple placeholders
**Do:**
> `"connection to \"%s\" failed: %s"`

### Concatenation
**Don't:**
> `"connection to " + server_name + " failed: " + error_message`

> `"upstream " + name + " not found"`

## Notes

### Use placeholders, not concatenation
Build error strings as a single complete string with placeholders, not by joining fragments at runtime. Concatenated strings render correctly in English but break in other languages where word order differs.

- Don't: `"connection to " + server_name + " failed"`
- Do: `"connection to \"%s\" failed"`

Once concatenation is in the codebase it is difficult to remove. Translators cannot reorder fragments to match target language word order.

### Placeholder position and sentence structure
The position of a placeholder in the sentence determines how to write the string.

**Placeholder as subject — use a colon, avoid copula verbs**

Don't use "is," "are," "was," or other copula verbs when a placeholder is the subject. The variable's grammatical gender, number, or case may differ across languages, making verb agreement impossible to guarantee. Use a colon after the placeholder instead:

- Don't: `"zone_sync \"%V\" is too small"`
- Do: `"zone_sync \"%V\": too small"`

The colon is language-neutral and sidesteps agreement entirely.

**Placeholder as object**

When the placeholder is the object of a verb or preposition, normal sentence structure works:

> `"connection to \"%s\" failed"`

> `"could not write to \"%s\""`

**Placeholder as attribute or value**

When the placeholder identifies what has a problem, use a colon to separate the identifier from the description:

> `"invalid value for \"%s\": expected integer"`

> `"limit_req zone \"%V\": no space left"`

**Multiple placeholders**

When a string contains more than one placeholder, the first typically identifies the subject or context and the second provides detail:

> `"connection to \"%s\" failed: %s"`

### Common placeholder formats

| Format | Represents |
|--------|------------|
| `%s` | String |
| `%d` | Integer |
| `%f` | Float |
| `%V` | NGINX variable-length string |
| `%i` | Integer (NGINX) |

Always document what each placeholder represents in the code comment or error catalog entry so translators and technical writers know what value will be substituted.

### Punctuation around placeholders
Enclose placeholder values in quotes when they represent a name or identifier:

> `"zone_sync \"%V\": too small"`

> `"connection to \"%s\" failed: %s"`

## Related

- [Published error messages](published-error-messages.md)
- [Writing error messages](writing-error-messages.md)

## See also

[Browse all guidelines](../TOC.md)