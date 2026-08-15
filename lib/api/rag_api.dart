//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class RagApi {
  RagApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Return every stored chunk of one file_id (full document context).
  ///
  /// Return every stored chunk of one file_id (full document context). Consolidates the retired chat-rag-api GET /documents/{id}/context.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getRagContextWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/rag/context';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Return every stored chunk of one file_id (full document context).
  ///
  /// Return every stored chunk of one file_id (full document context). Consolidates the retired chat-rag-api GET /documents/{id}/context.
  Future<void> getRagContext() async {
    final response = await getRagContextWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete all chunks of one or more uploaded files (by file_id) from the owner's Search+Vector index.
  ///
  /// Delete all chunks of one or more uploaded files (by file_id) from the owner's Search+Vector index. Consolidates the retired chat-rag-api DELETE /documents.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postRagDeleteWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/rag/delete';

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

  /// Delete all chunks of one or more uploaded files (by file_id) from the owner's Search+Vector index.
  ///
  /// Delete all chunks of one or more uploaded files (by file_id) from the owner's Search+Vector index. Consolidates the retired chat-rag-api DELETE /documents.
  Future<void> postRagDelete() async {
    final response = await postRagDeleteWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Parse, chunk, and embed one uploaded file under its file_id into the unified Search+Vector index, scoped to the authenticated owner.
  ///
  /// Parse, chunk, and embed one uploaded file under its file_id into the unified Search+Vector index, scoped to the authenticated owner. Provide inline `content` or a `url` to fetch+parse (PDF/CSV/XLSX/PPTX/…). Re-embedding the same file_id replaces its chunks. Consolidates the retired chat-rag-api POST /embed and /local/embed.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postRagEmbedWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/rag/embed';

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

  /// Parse, chunk, and embed one uploaded file under its file_id into the unified Search+Vector index, scoped to the authenticated owner.
  ///
  /// Parse, chunk, and embed one uploaded file under its file_id into the unified Search+Vector index, scoped to the authenticated owner. Provide inline `content` or a `url` to fetch+parse (PDF/CSV/XLSX/PPTX/…). Re-embedding the same file_id replaces its chunks. Consolidates the retired chat-rag-api POST /embed and /local/embed.
  Future<void> postRagEmbed() async {
    final response = await postRagEmbedWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve the top-K chunks relevant to a query, scoped to a single uploaded file (`file_id`).
  ///
  /// Retrieve the top-K chunks relevant to a query, scoped to a single uploaded file (`file_id`). Hybrid keyword+vector retrieval over the same index. Consolidates the retired chat-rag-api POST /query.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postRagQueryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/rag/query';

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

  /// Retrieve the top-K chunks relevant to a query, scoped to a single uploaded file (`file_id`).
  ///
  /// Retrieve the top-K chunks relevant to a query, scoped to a single uploaded file (`file_id`). Hybrid keyword+vector retrieval over the same index. Consolidates the retired chat-rag-api POST /query.
  Future<void> postRagQuery() async {
    final response = await postRagQueryWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve the top-K chunks relevant to a query, scoped to a SET of uploaded files (`file_ids`).
  ///
  /// Retrieve the top-K chunks relevant to a query, scoped to a SET of uploaded files (`file_ids`). Consolidates the retired chat-rag-api POST /query_multiple. Shares one retrieval path with /rag/query.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postRagQueryMultipleWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/rag/query-multiple';

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

  /// Retrieve the top-K chunks relevant to a query, scoped to a SET of uploaded files (`file_ids`).
  ///
  /// Retrieve the top-K chunks relevant to a query, scoped to a SET of uploaded files (`file_ids`). Consolidates the retired chat-rag-api POST /query_multiple. Shares one retrieval path with /rag/query.
  Future<void> postRagQueryMultiple() async {
    final response = await postRagQueryMultipleWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
