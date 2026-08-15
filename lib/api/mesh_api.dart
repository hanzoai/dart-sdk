//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class MeshApi {
  MeshApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns the Zero Trust edge services the caller's org owns.
  ///
  /// Returns the Zero Trust edge services the caller's org owns.  One row per real ZT edge service tagged with the org's \"org-<org>\" role attribute: mtls is \"required\" when the service mandates end-to-end encryption and \"enabled\" otherwise (the fabric always mutually authenticates every link), and status is \"active\" because a listed service is a configured, dialable entry. A service tagged for another org, or tagged for none, is invisible here.  Unlike the network and router reads this does NOT degrade: an unconfigured deployment answers 503 and an unreachable controller surfaces the upstream's status, so a mesh page never renders \"no services\" for a fabric it simply could not read.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMeshServicesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mesh/services';

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

  /// Returns the Zero Trust edge services the caller's org owns.
  ///
  /// Returns the Zero Trust edge services the caller's org owns.  One row per real ZT edge service tagged with the org's \"org-<org>\" role attribute: mtls is \"required\" when the service mandates end-to-end encryption and \"enabled\" otherwise (the fabric always mutually authenticates every link), and status is \"active\" because a listed service is a configured, dialable entry. A service tagged for another org, or tagged for none, is invisible here.  Unlike the network and router reads this does NOT degrade: an unconfigured deployment answers 503 and an unreachable controller surfaces the upstream's status, so a mesh page never renders \"no services\" for a fabric it simply could not read.
  Future<MeshServiceList?> getMeshServices() async {
    final response = await getMeshServicesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MeshServiceList',) as MeshServiceList;
    
    }
    return null;
  }
}
