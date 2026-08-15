//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class EmbeddingsApi {
  EmbeddingsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Implements POST /v1/embeddings (OpenAI-compatible).
  ///
  /// Implements POST /v1/embeddings (OpenAI-compatible).  Body: {\"model\": \"...\", \"input\": \"...\"|[\"...\", ...], \"encoding_format\"?, \"dimensions\"?} It authenticates the caller, resolves the model to its upstream provider via the shared routing table, rewrites the user-facing model name to the upstream id, and proxies the request to the provider's /embeddings endpoint verbatim.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postEmbeddingsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/embeddings';

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

  /// Implements POST /v1/embeddings (OpenAI-compatible).
  ///
  /// Implements POST /v1/embeddings (OpenAI-compatible).  Body: {\"model\": \"...\", \"input\": \"...\"|[\"...\", ...], \"encoding_format\"?, \"dimensions\"?} It authenticates the caller, resolves the model to its upstream provider via the shared routing table, rewrites the user-facing model name to the upstream id, and proxies the request to the provider's /embeddings endpoint verbatim.
  Future<void> postEmbeddings() async {
    final response = await postEmbeddingsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
