//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class ProcessSpeechToTextApi {
  ProcessSpeechToTextApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Convert speech to text
  ///
  /// Convert speech to text
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postProcessSpeechToTextWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/process-speech-to-text';

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

  /// Convert speech to text
  ///
  /// Convert speech to text
  Future<void> postProcessSpeechToText() async {
    final response = await postProcessSpeechToTextWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
