//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class DocsApi {
  DocsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Unified RAG ingest: parse + chunk + embed documents and pipe them to BOTH Hanzo Vector (semantic) AND Hanzo Search (keyword) under the tenant index {owner}-{store}-docs — the same index /v1/chat retrieval reads.
  ///
  /// Unified RAG ingest: parse + chunk + embed documents and pipe them to BOTH Hanzo Vector (semantic) AND Hanzo Search (keyword) under the tenant index {owner}-{store}-docs — the same index /v1/chat retrieval reads. The source is pluggable: \"upload\" (inline files/documents), \"github\" (index a repo), \"crawl\" (web), or \"s3\" (the store's object-storage space). The owner is bound to the authenticated principal; the client-supplied owner is never trusted.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postDocsIngestWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/docs/ingest';

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

  /// Unified RAG ingest: parse + chunk + embed documents and pipe them to BOTH Hanzo Vector (semantic) AND Hanzo Search (keyword) under the tenant index {owner}-{store}-docs — the same index /v1/chat retrieval reads.
  ///
  /// Unified RAG ingest: parse + chunk + embed documents and pipe them to BOTH Hanzo Vector (semantic) AND Hanzo Search (keyword) under the tenant index {owner}-{store}-docs — the same index /v1/chat retrieval reads. The source is pluggable: \"upload\" (inline files/documents), \"github\" (index a repo), \"crawl\" (web), or \"s3\" (the store's object-storage space). The owner is bound to the authenticated principal; the client-supplied owner is never trusted.
  Future<void> postDocsIngest() async {
    final response = await postDocsIngestWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
