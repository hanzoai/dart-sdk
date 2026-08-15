//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class GenerateTextToSpeechAudioStreamApi {
  GenerateTextToSpeechAudioStreamApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Convert text to speech with streaming
  ///
  /// Convert text to speech with streaming
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getGenerateTextToSpeechAudioStreamWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/generate-text-to-speech-audio-stream';

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

  /// Convert text to speech with streaming
  ///
  /// Convert text to speech with streaming
  Future<void> getGenerateTextToSpeechAudioStream() async {
    final response = await getGenerateTextToSpeechAudioStreamWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
