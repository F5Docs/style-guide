---
title: Placeholders
category: formatting
aliases: [placeholder, variable, placeholder text, curly braces, angle brackets, path variable]
applies-to: [all F5 docs]
source-authority: Microsoft Style Guide, F5 NGINX Style Guide
supersedes:
last-reviewed: 2026-04-07
---

# Placeholders

## Guidance

Use placeholders to show where users must substitute their own values. The format depends on context. Use curly braces for API path parameters, written in lowercase with underscores. Use angle brackets for all other placeholders, written in all caps with underscores.

## Examples

**Do:**
> `/api/v2/{user_id}`

> `nginx -s reload -c <PATH/TO/NGINX.CONF>`

> `curl -X GET https://example.com/api/v2/{tenant_id}/policies`

> `curl https://<NIM_FQDN>/install/nginx-agent | sudo sh`

> `docker pull repo.f5.com/images/<CONTAINER_IMAGE_FILENAME>:<CONTAINER_IMAGE_VERSION>`

> ```
> kubectl apply -f far-pull-secret.yaml \
> --namespace <NAMESPACE_NAME>
> ```

> Copy `<PATH/TO/NGINX_REPO.CRT>` to `/etc/ssl/certs/`.

**Don't:**
> `/api/v2/<user_id>`

> `nginx -s reload -c {path/to/nginx.conf}`

> `Copy <path/to/nginx-repo.crt> to /etc/ssl/certs/.`

> `docker pull repo.f5.com/images/<containerImageFilename>:<containerImageVersion>`

> `curl https://<nim-fqdn>/install/nginx-agent | sudo sh`

## Notes

### API path parameters: curly braces
Use curly braces for path parameters in API URL paths only. This follows the OpenAPI/Swagger convention:

> `curl -X GET https://example.com/api/v2/{tenant_id}/policies`

Don't use curly braces for hostnames, domains, or other parts of a command. Use angle brackets instead:

> `curl https://<NIM_FQDN>/install/nginx-agent | sudo sh`

A single command can use both, depending on what's being substituted:

> `curl -X GET https://<NIM_FQDN>/api/v2/{tenant_id}/policies`

### All other placeholders: angle brackets
Use angle brackets for placeholders in commands, configuration files, and prose. Write placeholder names in all caps with underscores. All caps makes it unambiguous that the value must be replaced. Make the name descriptive enough that the user knows what to substitute:

> `cp <PATH/TO/NGINX_REPO.CRT> /etc/ssl/certs/`

> `ssh <USERNAME>@<HOSTNAME>`

> Replace `<LICENSE_KEY>` with the key from your F5 account.

### Tell the user what to substitute
Always introduce a placeholder with a brief explanation of what value the user should supply, either in the step text or in a preceding note:

> Replace `<TENANT_ID>` with your F5 Distributed Cloud tenant ID.

> Where `{user_id}` is the unique identifier for the user account.

### Formatting
Always format placeholders as inline code. In Markdown, wrap them in backticks:

> \`<HOSTNAME>\`

> \`{user_id}\`

## Related

- [Code blocks](code-blocks.md)
- [Cross-references](../procedures/cross-references.md)
- [Step formatting](../procedures/step-formatting.md)

## See also

[Browse all guidelines](../TOC.md)