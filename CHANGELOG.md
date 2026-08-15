# Changelog

## 0.1.0

First release. The whole Hanzo Cloud API as Dart: 2479 operations over 1814
paths, 192 API classes and 2460 models, generated from hanzoai/cloud's
`openapi.yaml` at the commit `.spec-lock` names.

- `hanzo()` builds an `ApiClient` for `api.hanzo.ai`, with or without a bearer
  credential.
- Serialization is plain Dart over `package:http` — no build step.
