# Changelog

## 8.5.156

Joins the shared release line: the API and every client cut from it answer to
one number, so a reader holding 8.5.156 can name the release it came from. The
version jumps from 0.1.0 for that reason and not because anything was removed.

- First version that compiles. `Response` — the search result — shadowed
  `http.Response` across the whole library, because the generator emits one
  library and every API file is `part of` it, so 7,452 references to
  `statusCode` and `body` did not resolve. It is `Fusion` now, named for what
  it holds.
- The examples and the smoke test address operations that exist: `AiApi` for
  models, `AccountApi.getAccountKeys()` for keys.

## 0.1.0

First release. The whole Hanzo Cloud API as Dart: 2479 operations over 1814
paths, 192 API classes and 2460 models, generated from hanzoai/cloud's
`openapi.yaml` at the commit `.spec-lock` names.

- `hanzo()` builds an `ApiClient` for `api.hanzo.ai`, with or without a bearer
  credential.
- Serialization is plain Dart over `package:http` — no build step.
