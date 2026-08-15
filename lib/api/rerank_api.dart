//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class RerankApi {
  RerankApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Implements POST /v1/rerank (Cohere/Jina-compatible).
  ///
  /// Implements POST /v1/rerank (Cohere/Jina-compatible).  Body: {\"model\": \"...\", \"query\": \"...\", \"documents\": [\"...\", ...]|[{\"text\":\"...\"}],   \"top_n\"?: int, \"return_documents\"?: bool}  Response: {\"object\":\"list\",\"model\":...,\"results\":[{\"index\",\"relevance_score\",\"document\"?}],\"usage\":{...}}  Backend selection is provider-driven (one endpoint, one contract):   - If the model routes to a native rerank provider (Jina/Cohere/Voyage) the     request is proxied to that provider's /rerank endpoint.   - Otherwise scores are computed as a real bi-encoder ranking: embed the     query and documents through the resolved embedding model and rank by     cosine similarity. No rerank-specific key required.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postRerankWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/rerank';

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

  /// Implements POST /v1/rerank (Cohere/Jina-compatible).
  ///
  /// Implements POST /v1/rerank (Cohere/Jina-compatible).  Body: {\"model\": \"...\", \"query\": \"...\", \"documents\": [\"...\", ...]|[{\"text\":\"...\"}],   \"top_n\"?: int, \"return_documents\"?: bool}  Response: {\"object\":\"list\",\"model\":...,\"results\":[{\"index\",\"relevance_score\",\"document\"?}],\"usage\":{...}}  Backend selection is provider-driven (one endpoint, one contract):   - If the model routes to a native rerank provider (Jina/Cohere/Voyage) the     request is proxied to that provider's /rerank endpoint.   - Otherwise scores are computed as a real bi-encoder ranking: embed the     query and documents through the resolved embedding model and rank by     cosine similarity. No rerank-specific key required.
  Future<void> postRerank() async {
    final response = await postRerankWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
