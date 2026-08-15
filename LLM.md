# hanzo-dart/sdk

The Dart projection of the Hanzo Cloud API document. `lib/` is generator output;
five files are not.

## What is generated and what is not

| Path | Owner |
|---|---|
| `lib/api.dart`, `lib/api_client.dart`, `lib/api_helper.dart`, `lib/api_exception.dart`, `lib/auth/`, `lib/api/`, `lib/model/` | the generator — 2661 files, listed in `.generated` |
| `lib/hanzoai.dart` | hand-written: the front door, `hanzo()`, re-exports `api.dart` |
| `pubspec.yaml`, `analysis_options.yaml`, `hanzo.yml`, `scripts/`, `example/`, `test/`, `README.md` | the repo |

The driver owns the FILES IT WROTE, recorded in `.generated`, so a file it did
not write is never touched whatever directory it sits in. That is why
`lib/hanzoai.dart` can live beside 2661 generated files.

## Never hand-edit `lib/`

To change a name, a package, a serialization choice or a mustache, change the
`dart` row in hanzoai/openapi `sdks.yaml` (or `templates/dart/` beside it) and
regenerate. `./scripts/generate.sh --check` is what proves the committed tree is
still that row's output; the client lane runs it on every push.

```sh
OPENAPI=~/work/hanzo/openapi ./scripts/generate.sh          # rewrite lib/
OPENAPI=~/work/hanzo/openapi ./scripts/generate.sh --check  # non-zero on drift
```

## The document

`.spec-lock` names it: repo `hanzoai/cloud`, path `openapi.yaml`, a commit sha
and the sha256 of those exact bytes. Nobody edits the lock to choose a document
— a cloud release moves it, and the lane refuses bytes that hash differently.

## Why `dart` and not `dart-dio`

dart-dio annotates its models for `build_runner`: measured on this document,
2460 files each declaring `part '<name>.g.dart'` and none of those parts
emitted, so the package does not parse until a second code generator has run.
That output is not written by this driver, is not in `.generated`, and would be
a second mechanism. The `dart` generator serializes in plain Dart in one pass
and speaks `package:http`, which is what hanzo-dart/hanzoai and hanzo-dart/base
already use.

## What the generator gets wrong here

Two mustache overrides live in hanzoai/openapi `templates/dart/`, named by the
row's `templates:` key:

- `serialization/native/native_class.mustache` — the stock template decides a
  property is a generated class by asking whether it has a `complexType`, and
  `Object`, `Map` and `List` all answer yes. It then calls `listFromJson` /
  `mapFromJson` / `mapListFromJson` on them, which only a generated class
  carries. 52 compile errors on this document, 15 still present on generator
  7.24.0. The override asks one level lower and decodes containers by cast.
- `api_client.mustache` — `Response.fromStream` was returned unawaited from
  inside the try block that turns transport failures into `ApiException`, so a
  failure there was thrown past its own handler.

The name collisions the row corrects — `override`, `path`, `Exception`, `File`,
`Record`, `Stream`, `Symbol`, and the three legacy wire spellings — are each
argued in `sdks.yaml` with the measurement behind them.

## Gate

```sh
dart pub get && dart analyze && dart test
```

`dart analyze` treats warnings as fatal. Three informational findings remain,
all in generated code; four lint rules the generator's style trips wholesale are
switched off in `analysis_options.yaml` with the counts that justify each.

`example/models.dart` runs against `api.hanzo.ai` with no credential —
`GET /v1/models` is one of the routes the document declares open.

## Sibling packages

`hanzo-dart/hanzoai` is a hand-written client for agents, sessions and machines,
and every route it covers is in here too, from the document. `hanzo-dart/base`
is a different API — Hanzo Base, the reactive backend — and is unaffected.
