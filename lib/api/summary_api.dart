//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class SummaryApi {
  SummaryApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Reports whether the platform is up.
  ///
  /// Reports whether the platform is up. It returns the public status document: the incidents currently open against Hanzo's own services, derived from the fleet health probes, plus the address of the human status page. No authentication is required and no tenant data is involved — the answer is the same for every caller.  A service that fails its health probe becomes one incident naming that service. When the availability source itself cannot be read the endpoint answers 503 rather than an empty incident list, because \"we cannot tell\" and \"everything is fine\" are different answers and only one of them is true.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSummaryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/summary';

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

  /// Reports whether the platform is up.
  ///
  /// Reports whether the platform is up. It returns the public status document: the incidents currently open against Hanzo's own services, derived from the fleet health probes, plus the address of the human status page. No authentication is required and no tenant data is involved — the answer is the same for every caller.  A service that fails its health probe becomes one incident naming that service. When the availability source itself cannot be read the endpoint answers 503 rather than an empty incident list, because \"we cannot tell\" and \"everything is fine\" are different answers and only one of them is true.
  Future<O11yStatusSummary?> getSummary() async {
    final response = await getSummaryWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yStatusSummary',) as O11yStatusSummary;
    
    }
    return null;
  }
}
