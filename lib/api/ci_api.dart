//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class CiApi {
  CiApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Compares what was written with what is running, one row per service along a single causal line: head, the commit on the branch; built, the image that commit produced; declared, the tag pinned in the universe repository; running, what the cluster serves.
  ///
  /// Compares what was written with what is running, one row per service along a single causal line: head, the commit on the branch; built, the image that commit produced; declared, the tag pinned in the universe repository; running, what the cluster serves. A service whose four values disagree names the step that broke.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCiFleetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ci/fleet';

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

  /// Compares what was written with what is running, one row per service along a single causal line: head, the commit on the branch; built, the image that commit produced; declared, the tag pinned in the universe repository; running, what the cluster serves.
  ///
  /// Compares what was written with what is running, one row per service along a single causal line: head, the commit on the branch; built, the image that commit produced; declared, the tag pinned in the universe repository; running, what the cluster serves. A service whose four values disagree names the step that broke.
  Future<Pipelines?> getCiFleet() async {
    final response = await getCiFleetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Pipelines',) as Pipelines;
    
    }
    return null;
  }

  /// Lists recent builds: the repo, the branch, the commit and how each run ended, newest first.
  ///
  /// Lists recent builds: the repo, the branch, the commit and how each run ended, newest first. A run names a repo, a branch and an actor, so the list is never wider than the caller — a SuperAdmin sees the fleet, an org member sees only its own org.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCiRunsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ci/runs';

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

  /// Lists recent builds: the repo, the branch, the commit and how each run ended, newest first.
  ///
  /// Lists recent builds: the repo, the branch, the commit and how each run ended, newest first. A run names a repo, a branch and an actor, so the list is never wider than the caller — a SuperAdmin sees the fleet, an org member sees only its own org.
  Future<Executions?> getCiRuns() async {
    final response = await getCiRunsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Executions',) as Executions;
    
    }
    return null;
  }
}
