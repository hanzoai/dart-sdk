//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class ShareApi {
  ShareApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns the tunnel shares the caller's org currently has open, across every environment that org has enabled.
  ///
  /// Returns the tunnel shares the caller's org currently has open, across every environment that org has enabled. It is a READ and it degrades honestly: an unconfigured deployment, an org that has not provisioned yet, and an unreachable controller all answer an EMPTY list at 200 rather than an error, so the console never error-toasts on load.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getShareWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/share';

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

  /// Returns the tunnel shares the caller's org currently has open, across every environment that org has enabled.
  ///
  /// Returns the tunnel shares the caller's org currently has open, across every environment that org has enabled. It is a READ and it degrades honestly: an unconfigured deployment, an org that has not provisioned yet, and an unreachable controller all answer an EMPTY list at 200 rather than an error, so the console never error-toasts on load.
  Future<SharesOut?> getShare() async {
    final response = await getShareWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SharesOut',) as SharesOut;
    
    }
    return null;
  }

  /// Enable provisions the caller org's tunnel account and returns the credential the `hanzo share` CLI needs to run a tunnel.
  ///
  /// Enable provisions the caller org's tunnel account and returns the credential the `hanzo share` CLI needs to run a tunnel. It is idempotent: the account is keyed deterministically off the VALIDATED org, so a repeat call hands back the same account rather than creating a second one, and a caller can only ever provision their OWN org's account. 503 when the deployment has no share controller configured; 502 when that controller is unreachable.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postShareEnableWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/share/enable';

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

  /// Enable provisions the caller org's tunnel account and returns the credential the `hanzo share` CLI needs to run a tunnel.
  ///
  /// Enable provisions the caller org's tunnel account and returns the credential the `hanzo share` CLI needs to run a tunnel. It is idempotent: the account is keyed deterministically off the VALIDATED org, so a repeat call hands back the same account rather than creating a second one, and a caller can only ever provision their OWN org's account. 503 when the deployment has no share controller configured; 502 when that controller is unreachable.
  Future<EnableResp?> postShareEnable() async {
    final response = await postShareEnableWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EnableResp',) as EnableResp;
    
    }
    return null;
  }
}
