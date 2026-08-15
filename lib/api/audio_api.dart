//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class AudioApi {
  AudioApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Serves the generative audio verbs — /v1/audio/voice (TTS), /music, /foley — that the Zen family serves natively.
  ///
  /// Serves the generative audio verbs — /v1/audio/voice (TTS), /music, /foley — that the Zen family serves natively. It resolves the SKU and, for a Zen model, forwards to zen's matching verb billed per call at the discovered price. These verbs are Zen-native; a non-Zen model is rejected.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAudioFoleyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/audio/foley';

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

  /// Serves the generative audio verbs — /v1/audio/voice (TTS), /music, /foley — that the Zen family serves natively.
  ///
  /// Serves the generative audio verbs — /v1/audio/voice (TTS), /music, /foley — that the Zen family serves natively. It resolves the SKU and, for a Zen model, forwards to zen's matching verb billed per call at the discovered price. These verbs are Zen-native; a non-Zen model is rejected.
  Future<void> postAudioFoley() async {
    final response = await postAudioFoleyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Serves the generative audio verbs — /v1/audio/voice (TTS), /music, /foley — that the Zen family serves natively.
  ///
  /// Serves the generative audio verbs — /v1/audio/voice (TTS), /music, /foley — that the Zen family serves natively. It resolves the SKU and, for a Zen model, forwards to zen's matching verb billed per call at the discovered price. These verbs are Zen-native; a non-Zen model is rejected.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAudioMusicWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/audio/music';

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

  /// Serves the generative audio verbs — /v1/audio/voice (TTS), /music, /foley — that the Zen family serves natively.
  ///
  /// Serves the generative audio verbs — /v1/audio/voice (TTS), /music, /foley — that the Zen family serves natively. It resolves the SKU and, for a Zen model, forwards to zen's matching verb billed per call at the discovered price. These verbs are Zen-native; a non-Zen model is rejected.
  Future<void> postAudioMusic() async {
    final response = await postAudioMusicWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The OpenAI-compatible TTS endpoint (POST /v1/audio/speech).
  ///
  /// The OpenAI-compatible TTS endpoint (POST /v1/audio/speech). It authenticates the caller, resolves `model` to its TTS provider (the SAME model-route resolution the chat/images/video endpoints use — so a BYO node registered as a TTS provider works transparently), synthesizes the audio, and streams the bytes back. One code path, OpenAI-shaped, no store/message coupling (unlike the legacy /v1/generate-text-to-speech-audio which is bound to a chat store).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAudioSpeechWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/audio/speech';

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

  /// The OpenAI-compatible TTS endpoint (POST /v1/audio/speech).
  ///
  /// The OpenAI-compatible TTS endpoint (POST /v1/audio/speech). It authenticates the caller, resolves `model` to its TTS provider (the SAME model-route resolution the chat/images/video endpoints use — so a BYO node registered as a TTS provider works transparently), synthesizes the audio, and streams the bytes back. One code path, OpenAI-shaped, no store/message coupling (unlike the legacy /v1/generate-text-to-speech-audio which is bound to a chat store).
  Future<void> postAudioSpeech() async {
    final response = await postAudioSpeechWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The OpenAI-compatible STT endpoint (POST /v1/audio/transcriptions, multipart: file + model [+ language + response_format]).
  ///
  /// The OpenAI-compatible STT endpoint (POST /v1/audio/transcriptions, multipart: file + model [+ language + response_format]). It mirrors AudioSpeech exactly: authenticate the caller, resolve `model` to its STT provider through the SAME model-route resolution (so the in-cluster speech service — or any BYO node registered as an STT provider — works transparently), transcribe, and return the OpenAI body. One code path, OpenAI-shaped, no store coupling (unlike the legacy /v1/process-speech-to-text, which is bound to a chat store).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAudioTranscriptionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/audio/transcriptions';

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

  /// The OpenAI-compatible STT endpoint (POST /v1/audio/transcriptions, multipart: file + model [+ language + response_format]).
  ///
  /// The OpenAI-compatible STT endpoint (POST /v1/audio/transcriptions, multipart: file + model [+ language + response_format]). It mirrors AudioSpeech exactly: authenticate the caller, resolve `model` to its STT provider through the SAME model-route resolution (so the in-cluster speech service — or any BYO node registered as an STT provider — works transparently), transcribe, and return the OpenAI body. One code path, OpenAI-shaped, no store coupling (unlike the legacy /v1/process-speech-to-text, which is bound to a chat store).
  Future<void> postAudioTranscriptions() async {
    final response = await postAudioTranscriptionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Serves the generative audio verbs — /v1/audio/voice (TTS), /music, /foley — that the Zen family serves natively.
  ///
  /// Serves the generative audio verbs — /v1/audio/voice (TTS), /music, /foley — that the Zen family serves natively. It resolves the SKU and, for a Zen model, forwards to zen's matching verb billed per call at the discovered price. These verbs are Zen-native; a non-Zen model is rejected.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAudioVoiceWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/audio/voice';

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

  /// Serves the generative audio verbs — /v1/audio/voice (TTS), /music, /foley — that the Zen family serves natively.
  ///
  /// Serves the generative audio verbs — /v1/audio/voice (TTS), /music, /foley — that the Zen family serves natively. It resolves the SKU and, for a Zen model, forwards to zen's matching verb billed per call at the discovered price. These verbs are Zen-native; a non-Zen model is rejected.
  Future<void> postAudioVoice() async {
    final response = await postAudioVoiceWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
