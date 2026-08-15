# hanzoai

The Dart client for the [Hanzo Cloud](https://hanzo.ai) API at `api.hanzo.ai` —
all 2479 operations over 1814 paths, projected from the OpenAPI document the
platform emits from its own routers.

## Install

Not on pub.dev yet. Depend on it by git:

```yaml
dependencies:
  hanzoai:
    git:
      url: https://github.com/hanzo-dart/sdk.git
```

Or work on it directly:

```sh
git clone https://github.com/hanzo-dart/sdk.git
cd sdk
dart pub get
dart analyze
dart test
```

Dart 3.0 or newer. The only runtime dependencies are `http`, `collection`,
`intl` and `meta`.

## Quickstart

```dart
import 'package:hanzoai/hanzoai.dart';

Future<void> main() async {
  final client = hanzo(token: 'sk-...');

  final keys = await KeysApi(client).getKeys();
  for (final key in keys!.keys) {
    print('${key.type} created ${key.createdAt}');
  }
}
```

Each tag in the document is one API class — `KeysApi`, `ModelsApi`, `IamApi`,
`AgentsApi`, 192 of them — and each takes an `ApiClient`. Omit it and the class
uses `defaultApiClient`, which reaches `api.hanzo.ai` unauthenticated.

## Auth

One credential, sent as `Authorization: Bearer <token>`. It is either an access
token minted by [Hanzo IAM](https://hanzo.id) or an API key — `pk-` publishable,
`sk-` secret.

```dart
final client = hanzo(token: 'sk-...');            // authenticated
final open = hanzo();                             // no credential
final local = hanzo(token: t, base: 'http://localhost:3000');
```

Every operation requires it unless the document says otherwise; a handful are
open, and `GET /v1/models` is one — `example/models.dart` runs against the live
API with no credential at all.

## Two shapes of call

Every operation generates twice.

```dart
final keys = await KeysApi(client).getKeys();                  // typed
final res = await ModelsApi(client).getModelsWithHttpInfo();   // raw Response
```

The typed method is what you want. But 834 of the 2479 operations publish no
response body to type — 716 declare no response at all, another 118 declare a
2xx carrying no content — because the platform emits an address it can prove and
declines to invent a shape for it. Their typed method returns `void`, and the
`WithHttpInfo` variant is how you read the body. `example/models.dart` shows
that path; `example/keys.dart` shows the typed one.

Failures above 400 throw `ApiException`, carrying `code` and `message`.

## Examples

- [`example/quickstart.dart`](example/quickstart.dart) — the block above, as a
  file the analyzer keeps honest.
- [`example/models.dart`](example/models.dart) — the model catalogue, no
  credential, runs as written.
- [`example/keys.dart`](example/keys.dart) — the caller's own API keys, typed,
  reading the credential from `HANZO_API_KEY` or `~/.hanzo/config.json`.

## Where this comes from

`lib/` is generated and nothing in it is edited by hand. `.spec-lock` names the
hanzoai/cloud commit and the sha256 of the `openapi.yaml` this client is a
projection of; `scripts/generate.sh` rebuilds it from that document, and
`./scripts/generate.sh --check` fails if the committed tree has drifted from it.

`lib/hanzoai.dart` is the exception — the front door, written by hand, holding
`hanzo()` and re-exporting the rest.

To change a name in the output, change it in the `dart` row of
[hanzoai/openapi](https://github.com/hanzoai/openapi) `sdks.yaml` and
regenerate.

## The other two Dart packages

- [`hanzo-dart/hanzoai`](https://github.com/hanzo-dart/hanzoai) — a hand-written
  client for agents, sessions and machines. Its agent and session routes are all
  in the document, so they are all in here too, from the document rather than by
  hand. Its five `/v1/cloud/*-machine` calls are not: the document declares no
  path containing `machine`, so no projection of it reaches them and that client
  is still how you call them.
- [`hanzo-dart/base`](https://github.com/hanzo-dart/base) — a different API:
  [Hanzo Base](https://github.com/hanzoai/base), the reactive backend. Unrelated
  to this client and unaffected by it.

## License

MIT © Hanzo AI, Inc. See [LICENSE](LICENSE).
