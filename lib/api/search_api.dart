//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class SearchApi {
  SearchApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Hybrid search over the org's own corpora
  ///
  /// Is the typed op behind POST /v1/search. It does exactly two things the in-process entry point must not do: resolve the tenant from the validated principal, and refuse when there is none. Everything else is ForOrg.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Request] request (required):
  Future<Response> searchWithHttpInfo(Request request,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/search';

    // ignore: prefer_final_locals
    Object? postBody = request;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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

  /// Hybrid search over the org's own corpora
  ///
  /// Is the typed op behind POST /v1/search. It does exactly two things the in-process entry point must not do: resolve the tenant from the validated principal, and refuse when there is none. Everything else is ForOrg.
  ///
  /// Parameters:
  ///
  /// * [Request] request (required):
  Future<Fusion?> search(Request request,) async {
    final response = await searchWithHttpInfo(request,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Fusion',) as Fusion;
    
    }
    return null;
  }
}
