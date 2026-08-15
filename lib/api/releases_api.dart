//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class ReleasesApi {
  ReleasesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns the versions that actually reached the cluster.
  ///
  /// Returns the versions that actually reached the cluster.  It lists the org's releases: the deployments that were genuinely applied to the cluster, with the app they belong to, their version, environment, status and when they were released. A deployment that failed or is still building is NOT a release and is excluded — reaching the cluster is what makes one. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getReleasesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/releases';

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

  /// Returns the versions that actually reached the cluster.
  ///
  /// Returns the versions that actually reached the cluster.  It lists the org's releases: the deployments that were genuinely applied to the cluster, with the app they belong to, their version, environment, status and when they were released. A deployment that failed or is still building is NOT a release and is excluded — reaching the cluster is what makes one. Requires a validated principal; 403 without one.
  Future<ReleaseBoard?> getReleases() async {
    final response = await getReleasesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReleaseBoard',) as ReleaseBoard;
    
    }
    return null;
  }
}
