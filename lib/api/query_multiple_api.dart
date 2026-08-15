//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class QueryMultipleApi {
  QueryMultipleApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Handles POST /v1/query_multiple — {file_ids,query,k}.
  ///
  /// Handles POST /v1/query_multiple — {file_ids,query,k}.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postQueryMultipleWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/query_multiple';

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

  /// Handles POST /v1/query_multiple — {file_ids,query,k}.
  ///
  /// Handles POST /v1/query_multiple — {file_ids,query,k}.
  Future<void> postQueryMultiple() async {
    final response = await postQueryMultipleWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
