//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class QueryApi {
  QueryApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Handles POST /v1/query — {file_id,query,k}.
  ///
  /// Handles POST /v1/query — {file_id,query,k}. Returns LangChain (document,score) tuples.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postQueryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/query';

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

  /// Handles POST /v1/query — {file_id,query,k}.
  ///
  /// Handles POST /v1/query — {file_id,query,k}. Returns LangChain (document,score) tuples.
  Future<void> postQuery() async {
    final response = await postQueryWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
