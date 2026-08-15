//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class BaseApi {
  BaseApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Reports that the base subsystem is serving.
  ///
  /// Reports that the base subsystem is serving.  It is deliberately INDEPENDENT of whether this deployment actually embeds the Base engine: the route answers before the CLOUD_BASE_EMBED gate and before the /v1/base/_* wildcard, so a liveness probe measures the process rather than an optional feature, and the wildcard can never shadow it. It reads no tenant, so a prober that sends no principal is answered rather than refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBaseHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/base/health';

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

  /// Reports that the base subsystem is serving.
  ///
  /// Reports that the base subsystem is serving.  It is deliberately INDEPENDENT of whether this deployment actually embeds the Base engine: the route answers before the CLOUD_BASE_EMBED gate and before the /v1/base/_* wildcard, so a liveness probe measures the process rather than an optional feature, and the wildcard can never shadow it. It reads no tenant, so a prober that sends no principal is answered rather than refused.
  Future<BaseHealth?> getBaseHealth() async {
    final response = await getBaseHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BaseHealth',) as BaseHealth;
    
    }
    return null;
  }
}
