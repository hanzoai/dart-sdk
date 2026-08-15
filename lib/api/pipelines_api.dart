//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class PipelinesApi {
  PipelinesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns one build-and-deploy pipeline per app, with its latest run.
  ///
  /// Returns one build-and-deploy pipeline per app, with its latest run.  It returns one pipeline per application in the caller's org — its repo or image source, its current status, and when its most recent deployment ran and how long it took. A pipeline is a PROJECTION of an app plus its newest deployment, not a separate record: it comes into existence with the app and is triggered only through /deploy, never here. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPipelinesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pipelines';

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

  /// Returns one build-and-deploy pipeline per app, with its latest run.
  ///
  /// Returns one build-and-deploy pipeline per app, with its latest run.  It returns one pipeline per application in the caller's org — its repo or image source, its current status, and when its most recent deployment ran and how long it took. A pipeline is a PROJECTION of an app plus its newest deployment, not a separate record: it comes into existence with the app and is triggered only through /deploy, never here. Requires a validated principal; 403 without one.
  Future<PipelineBoard?> getPipelines() async {
    final response = await getPipelinesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PipelineBoard',) as PipelineBoard;
    
    }
    return null;
  }
}
