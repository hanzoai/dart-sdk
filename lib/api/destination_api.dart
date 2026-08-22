//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class DestinationApi {
  DestinationApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Forgets a destination for the caller's org: every credential held in KMS, then the stored config.
  ///
  /// Forgets a destination for the caller's org: every credential held in KMS, then the stored config. Idempotent, and it requires org admin.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] platform (required):
  ///   Platform is the destination to act on, from the path: ga4 | meta | tiktok | linkedin | x | reddit | insights | analytics.
  Future<Response> deleteDestinationByPlatformWithHttpInfo(String platform,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/destination/{platform}'
      .replaceAll('{platform}', platform);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Forgets a destination for the caller's org: every credential held in KMS, then the stored config.
  ///
  /// Forgets a destination for the caller's org: every credential held in KMS, then the stored config. Idempotent, and it requires org admin.
  ///
  /// Parameters:
  ///
  /// * [String] platform (required):
  ///   Platform is the destination to act on, from the path: ga4 | meta | tiktok | linkedin | x | reddit | insights | analytics.
  Future<DestinationDisconnected?> deleteDestinationByPlatform(String platform,) async {
    final response = await deleteDestinationByPlatformWithHttpInfo(platform,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DestinationDisconnected',) as DestinationDisconnected;
    
    }
    return null;
  }

  /// Reports every destination this deployment can forward to, each with the caller org's connection state: whether it is connected, whether it is enabled, whether a credential resolves right now, and the config fields the console renders for it.
  ///
  /// Reports every destination this deployment can forward to, each with the caller org's connection state: whether it is connected, whether it is enabled, whether a credential resolves right now, and the config fields the console renders for it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDestinationWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/destination';

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

  /// Reports every destination this deployment can forward to, each with the caller org's connection state: whether it is connected, whether it is enabled, whether a credential resolves right now, and the config fields the console renders for it.
  ///
  /// Reports every destination this deployment can forward to, each with the caller org's connection state: whether it is connected, whether it is enabled, whether a credential resolves right now, and the config fields the console renders for it.
  Future<DestinationList?> getDestination() async {
    final response = await getDestinationWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DestinationList',) as DestinationList;
    
    }
    return null;
  }

  /// Reports one destination's card for the caller's org — its config fields, its connection state, and whether a credential resolves right now.
  ///
  /// Reports one destination's card for the caller's org — its config fields, its connection state, and whether a credential resolves right now. A platform this deployment does not carry is not found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] platform (required):
  ///   Platform is the destination to act on, from the path: ga4 | meta | tiktok | linkedin | x | reddit | insights | analytics.
  Future<Response> getDestinationByPlatformWithHttpInfo(String platform,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/destination/{platform}'
      .replaceAll('{platform}', platform);

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

  /// Reports one destination's card for the caller's org — its config fields, its connection state, and whether a credential resolves right now.
  ///
  /// Reports one destination's card for the caller's org — its config fields, its connection state, and whether a credential resolves right now. A platform this deployment does not carry is not found.
  ///
  /// Parameters:
  ///
  /// * [String] platform (required):
  ///   Platform is the destination to act on, from the path: ga4 | meta | tiktok | linkedin | x | reddit | insights | analytics.
  Future<DestinationStatus?> getDestinationByPlatform(String platform,) async {
    final response = await getDestinationByPlatformWithHttpInfo(platform,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DestinationStatus',) as DestinationStatus;
    
    }
    return null;
  }

  /// Connect one conversion destination for your org, or update the one you have
  ///
  /// Stores the addressed platform's non-secret ids (its measurement, pixel or dataset ids) and seals its API credential into KMS under a path scoped to the caller's own org, then answers the same status card the read routes do — with live telling you whether the credential actually resolves right now. The body's property NAMES are the platform's own: each field the platform declares, plus each secret under its camelCase name, so the accepted keys differ per platform and a missing REQUIRED field is refused. Connecting is an ORG ADMIN action — a validated member without the admin bit gets 403 — and it fails closed with 503 when the KMS master key is unavailable rather than persisting a destination whose secret was never sealed. The secret itself never appears in the response, in the store, or in a log line; only its NAME is ever published. Set enabled to false to keep the connection but stop the analytics fan-out to it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] platform (required):
  ///
  /// * [Map<String, Object>] requestBody:
  Future<Response> postDestinationByPlatformWithHttpInfo(String platform, { Map<String, Object>? requestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/destination/{platform}'
      .replaceAll('{platform}', platform);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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

  /// Connect one conversion destination for your org, or update the one you have
  ///
  /// Stores the addressed platform's non-secret ids (its measurement, pixel or dataset ids) and seals its API credential into KMS under a path scoped to the caller's own org, then answers the same status card the read routes do — with live telling you whether the credential actually resolves right now. The body's property NAMES are the platform's own: each field the platform declares, plus each secret under its camelCase name, so the accepted keys differ per platform and a missing REQUIRED field is refused. Connecting is an ORG ADMIN action — a validated member without the admin bit gets 403 — and it fails closed with 503 when the KMS master key is unavailable rather than persisting a destination whose secret was never sealed. The secret itself never appears in the response, in the store, or in a log line; only its NAME is ever published. Set enabled to false to keep the connection but stop the analytics fan-out to it.
  ///
  /// Parameters:
  ///
  /// * [String] platform (required):
  ///
  /// * [Map<String, Object>] requestBody:
  Future<DestinationStatus?> postDestinationByPlatform(String platform, { Map<String, Object>? requestBody, }) async {
    final response = await postDestinationByPlatformWithHttpInfo(platform,  requestBody: requestBody, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DestinationStatus',) as DestinationStatus;
    
    }
    return null;
  }

  /// Sends ONE synthetic pageview through the connected destination end to end and reports what the platform said.
  ///
  /// Sends ONE synthetic pageview through the connected destination end to end and reports what the platform said. A send the platform refuses is reported as data — {\"ok\": false, \"error\": …} at 200 — so the console shows the platform's own words rather than an error about Hanzo. It requires org admin.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] platform (required):
  ///   Platform is the destination to act on, from the path: ga4 | meta | tiktok | linkedin | x | reddit | insights | analytics.
  Future<Response> postDestinationByPlatformTestWithHttpInfo(String platform,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/destination/{platform}/test'
      .replaceAll('{platform}', platform);

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

  /// Sends ONE synthetic pageview through the connected destination end to end and reports what the platform said.
  ///
  /// Sends ONE synthetic pageview through the connected destination end to end and reports what the platform said. A send the platform refuses is reported as data — {\"ok\": false, \"error\": …} at 200 — so the console shows the platform's own words rather than an error about Hanzo. It requires org admin.
  ///
  /// Parameters:
  ///
  /// * [String] platform (required):
  ///   Platform is the destination to act on, from the path: ga4 | meta | tiktok | linkedin | x | reddit | insights | analytics.
  Future<DestinationTest?> postDestinationByPlatformTest(String platform,) async {
    final response = await postDestinationByPlatformTestWithHttpInfo(platform,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DestinationTest',) as DestinationTest;
    
    }
    return null;
  }
}
