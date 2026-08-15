//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class WecomBotApi {
  WecomBotApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Verify WeChat work bot callback URL
  ///
  /// Verify WeChat work bot callback URL
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] botId (required):
  Future<Response> getWecomBotCallbackByBotidWithHttpInfo(String botId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/wecom-bot/callback/{botId}'
      .replaceAll('{botId}', botId);

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

  /// Verify WeChat work bot callback URL
  ///
  /// Verify WeChat work bot callback URL
  ///
  /// Parameters:
  ///
  /// * [String] botId (required):
  Future<void> getWecomBotCallbackByBotid(String botId,) async {
    final response = await getWecomBotCallbackByBotidWithHttpInfo(botId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Process WeChat work bot messages
  ///
  /// Process WeChat work bot messages
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] botId (required):
  Future<Response> postWecomBotCallbackByBotidWithHttpInfo(String botId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/wecom-bot/callback/{botId}'
      .replaceAll('{botId}', botId);

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

  /// Process WeChat work bot messages
  ///
  /// Process WeChat work bot messages
  ///
  /// Parameters:
  ///
  /// * [String] botId (required):
  Future<void> postWecomBotCallbackByBotid(String botId,) async {
    final response = await postWecomBotCallbackByBotidWithHttpInfo(botId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
