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

Use placeholders to show where users must substitute their own values.
The format depends on context. Use curly braces for API path
parameters and angle brackets for all other placeholders.

## Examples

**Do:**
> `/api/v2/{user_id}`

> `nginx -s reload -c <path/to/nginx.conf>`

> `curl -X GET https://example.com/api/v2/{tenant_id}/policies`

> `curl https://<nim-fqdn>/install/nginx-agent | sudo sh`

> `docker pull repo.f5.com/images/<container-image-filename>:<container-image-version>`

> ```
> kubectl apply -f far-pull-secret.yaml \
> --namespace <namespace-name>
> ```

> Copy `<path/to/nginx-repo.crt>` to `/etc/ssl/certs/`.

**Don't:**
> `/api/v2/<user_id>`

> `nginx -s reload -c {path/to/nginx.conf}`

> `Copy <PATH_TO_NGINX_REPO_CRT> to /etc/ssl/certs/.`

> `docker pull repo.f5.com/images/<containerImageFilename>:<containerImageVersion>`

> `curl https://<NIM-FQDN>/install/nginx-agent | sudo sh`

## Notes

### API path parameters: curly braces
Use curly braces for path parameters in API URL paths only. This
follows the OpenAPI/Swagger convention:

> `curl -X GET https://example.com/api/v2/{tenant_id}/policies`

Don't use curly braces for hostnames, domains, or other parts of a
command. Use angle brackets instead:

> `curl https://<nim-fqdn>/install/nginx-agent | sudo sh`

A single command can use both, depending on what's being substituted:

> `curl -X GET https://<nim-fqdn>/api/v2/{tenant_id}/policies`

### All other placeholders: angle brackets
Use angle brackets for placeholders in commands, configuration files,
and prose. Write placeholder names in lowercase, using hyphens or
slashes to separate words. Make the name descriptive enough that the
user knows what to substitute:

> `cp <path/to/nginx-repo.crt> /etc/ssl/certs/`

> `ssh <username>@<hostname>`

> Replace `<license-key>` with the key from your F5 account.

### Why not all caps
All-caps placeholders (`<PATH_TO_NGINX_REPO_CRT>`) are not the
preferred form. The Microsoft Style Guide recommends lowercase for
placeholder names.

### Tell the user what to substitute
Always introduce a placeholder with a brief explanation of what value
the user should supply, either in the step text or in a preceding
note:

> Replace `<tenant-id>` with your F5 Distributed Cloud tenant ID.

> Where `{user_id}` is the unique identifier for the user account.

### Formatting
Always format placeholders as inline code. In Markdown, wrap them
in backticks:

> \`<hostname>\`

> \`{user_id}\`

## Related

- [Code blocks](code-blocks.md)
- [Cross-references](../procedures/cross-references.md)
- [Step formatting](../procedures/step-formatting.md)

## See also

[Browse all guidelines](../TOC.md)