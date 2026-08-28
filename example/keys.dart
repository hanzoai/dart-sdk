// The credential's own API keys.
//
//   HANZO_API_KEY=sk-... dart run example/keys.dart
//
// GET /v1/keys needs a credential — without one it is a 401 — so this reads one
// from HANZO_API_KEY and falls back to the `apiKey` in ~/.hanzo/config.json.
// The key is handed to the client and never printed.
//
// It declares a response schema, so `getKeys()` returns a typed ApiKeyList and
// there is nothing to decode by hand. Compare example/models.dart, where the
// route publishes none.
import 'dart:convert';
import 'dart:io';

import 'package:hanzoai/hanzoai.dart';

String? credential() {
  final fromEnv = Platform.environment['HANZO_API_KEY'];
  if (fromEnv != null && fromEnv.isNotEmpty) {
    return fromEnv;
  }
  final config = File('${Platform.environment['HOME']}/.hanzo/config.json');
  if (!config.existsSync()) {
    return null;
  }
  return (jsonDecode(config.readAsStringSync()) as Map<String, dynamic>)['apiKey'] as String?;
}

Future<void> main() async {
  final token = credential();
  if (token == null) {
    stderr.writeln('no credential: set HANZO_API_KEY, or write apiKey into ~/.hanzo/config.json');
    exitCode = 1;
    return;
  }

  final keys = await AccountApi(hanzo(token: token)).getAccountKeys();
  for (final key in keys?.keys ?? const <ApiKey>[]) {
    print('${key.type}  ${key.prefix ?? ''}  created ${key.createdAt}');
  }
}
