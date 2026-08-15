//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class ImagesApi {
  ImagesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Implements POST /v1/images/generations (OpenAI-compatible).
  ///
  /// Implements POST /v1/images/generations (OpenAI-compatible).  Body: {\"model\": \"...\", \"prompt\": \"...\", \"n\"?: int, \"size\"?: \"1024x1024\",   \"response_format\"?: \"url\"|\"b64_json\"}  It authenticates the caller, resolves the model to its upstream provider via the shared routing table (zen3-image* → do-ai fal diffusion), reserves the per-image budget, generates the image(s) through the do-ai async image client, records usage for billing, and returns the OpenAI images response.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postImagesGenerationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/images/generations';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Implements POST /v1/images/generations (OpenAI-compatible).
  ///
  /// Implements POST /v1/images/generations (OpenAI-compatible).  Body: {\"model\": \"...\", \"prompt\": \"...\", \"n\"?: int, \"size\"?: \"1024x1024\",   \"response_format\"?: \"url\"|\"b64_json\"}  It authenticates the caller, resolves the model to its upstream provider via the shared routing table (zen3-image* → do-ai fal diffusion), reserves the per-image budget, generates the image(s) through the do-ai async image client, records usage for billing, and returns the OpenAI images response.
  Future<void> postImagesGenerations() async {
    final response = await postImagesGenerationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
