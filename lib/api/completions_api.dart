//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class CompletionsApi {
  CompletionsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Implements the OpenAI-compatible chat completions API
  ///
  /// Implements the OpenAI-compatible chat completions API
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCompletionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/completions';

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

  /// Implements the OpenAI-compatible chat completions API
  ///
  /// Implements the OpenAI-compatible chat completions API
  Future<void> postCompletions() async {
    final response = await postCompletionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
