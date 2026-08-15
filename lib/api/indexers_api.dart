//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class IndexersApi {
  IndexersApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Reports the deployment's chain indexer(s) and how far each has indexed.
  ///
  /// Reports the deployment's chain indexer(s) and how far each has indexed. Identity and health come from the indexer's /health; the latest indexed block (height + time) from its /v1/explorer/blocks. The row EXISTS if EITHER call reaches the indexer; when the indexer is entirely unreachable the answer degrades to an honest-EMPTY list at 200, not a 502. No chain HEAD is exposed by the indexer REST, so `lag` is honestly omitted rather than fabricated.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIndexersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/indexers';

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

  /// Reports the deployment's chain indexer(s) and how far each has indexed.
  ///
  /// Reports the deployment's chain indexer(s) and how far each has indexed. Identity and health come from the indexer's /health; the latest indexed block (height + time) from its /v1/explorer/blocks. The row EXISTS if EITHER call reaches the indexer; when the indexer is entirely unreachable the answer degrades to an honest-EMPTY list at 200, not a 502. No chain HEAD is exposed by the indexer REST, so `lag` is honestly omitted rather than fabricated.
  Future<IndexersOut?> getIndexers() async {
    final response = await getIndexersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IndexersOut',) as IndexersOut;
    
    }
    return null;
  }
}
