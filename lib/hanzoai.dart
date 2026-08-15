/// The Dart client for the Hanzo Cloud API at `api.hanzo.ai`.
///
/// Everything the generator writes lives in `api.dart` and is re-exported here,
/// so one import reaches the whole surface:
///
/// ```dart
/// import 'package:hanzoai/hanzoai.dart';
///
/// final models = ModelsApi(hanzo());
/// ```
library;

import 'api.dart';

export 'api.dart';

/// The Hanzo Cloud origin. Every generated API class defaults to it.
const String origin = 'https://api.hanzo.ai';

/// An [ApiClient] that sends [token] as the bearer credential on every call.
///
/// [token] is an access token minted by Hanzo IAM or an API key — `pk-`
/// publishable, `sk-` secret. Leave it out for the routes the document declares
/// open, such as `GET /v1/models`.
///
/// Point [base] elsewhere to reach another deployment.
ApiClient hanzo({String? token, String base = origin}) {
  if (token == null) {
    return ApiClient(basePath: base);
  }
  return ApiClient(basePath: base, authentication: HttpBearerAuth()..accessToken = token);
}
