//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class ResponsesApi {
  ResponsesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Implements POST /v1/responses.
  ///
  /// Implements POST /v1/responses. The converted request is passed to ChatCompletions and an installed ResponseWriter converts its OpenAI chat JSON or SSE back into Responses JSON/SSE on the fly.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postResponsesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/responses';

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

  /// Implements POST /v1/responses.
  ///
  /// Implements POST /v1/responses. The converted request is passed to ChatCompletions and an installed ResponseWriter converts its OpenAI chat JSON or SSE back into Responses JSON/SSE on the fly.
  Future<void> postResponses() async {
    final response = await postResponsesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
