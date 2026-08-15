//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class DocumentsApi {
  DocumentsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Handles DELETE /v1/documents — a JSON array of file_ids.
  ///
  /// Handles DELETE /v1/documents — a JSON array of file_ids.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteDocumentsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/documents';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Handles DELETE /v1/documents — a JSON array of file_ids.
  ///
  /// Handles DELETE /v1/documents — a JSON array of file_ids.
  Future<void> deleteDocuments() async {
    final response = await deleteDocumentsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Handles GET /v1/documents/:file_id/context — every chunk of a file, as LangChain Documents (used when RAG_USE_FULL_CONTEXT is on).
  ///
  /// Handles GET /v1/documents/:file_id/context — every chunk of a file, as LangChain Documents (used when RAG_USE_FULL_CONTEXT is on).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] fileId (required):
  Future<Response> getDocumentsByFileIdContextWithHttpInfo(String fileId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/documents/{file_id}/context'
      .replaceAll('{file_id}', fileId);

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

  /// Handles GET /v1/documents/:file_id/context — every chunk of a file, as LangChain Documents (used when RAG_USE_FULL_CONTEXT is on).
  ///
  /// Handles GET /v1/documents/:file_id/context — every chunk of a file, as LangChain Documents (used when RAG_USE_FULL_CONTEXT is on).
  ///
  /// Parameters:
  ///
  /// * [String] fileId (required):
  Future<void> getDocumentsByFileIdContext(String fileId,) async {
    final response = await getDocumentsByFileIdContextWithHttpInfo(fileId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
