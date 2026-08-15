// The model catalogue, with no credential.
//
//   dart run example/models.dart
//
// GET /v1/models is one of the routes the document declares open (`security:
// []`), so this runs end to end against api.hanzo.ai as written.
//
// It calls `getModelsWithHttpInfo` rather than `getModels` on purpose. The
// route publishes no response schema, so the generated typed method returns
// void — 716 of the API's 2479 operations are like that, and the WithHttpInfo
// variant every operation carries is how you read their bodies.
import 'dart:convert';

import 'package:hanzoai/hanzoai.dart';

Future<void> main() async {
  final api = ModelsApi(hanzo());

  final response = await api.getModelsWithHttpInfo();
  if (response.statusCode >= 400) {
    throw ApiException(response.statusCode, response.body);
  }

  final body = jsonDecode(response.body) as Map<String, dynamic>;
  final models = (body['data'] as List).cast<Map<String, dynamic>>();

  print('${models.length} models');
  for (final model in models.take(10)) {
    print('  ${model['id']}');
  }
}
