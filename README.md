# @hanzo dart-sdk

Landing page for the **Hanzo Dart/Flutter SDKs**. This is the thin wrapper in the
Hanzo umbrella org — the real code lives in its language org.

**The API client → [hanzo-dart/sdk](https://github.com/hanzo-dart/sdk)**
`hanzoai` — the whole Hanzo Cloud API, 2479 operations over 1814 paths,
generated from the document the platform emits. Bearer auth: a Hanzo IAM access
token or an API key. Start here.

**Base → [hanzo-dart/base](https://github.com/hanzo-dart/base)**
Dart client for Hanzo Base (reactive backend, Hanzo IAM-native auth). A
different API, not part of the client above.

**Hand-written platform client → [hanzo-dart/hanzoai](https://github.com/hanzo-dart/hanzoai)**
Agents, sessions and machines, written by hand and narrower. Every route it
covers is in `hanzo-dart/sdk` too.

Nothing is published from this repository. Open issues and pull requests against
the language-org repo that owns the code.
