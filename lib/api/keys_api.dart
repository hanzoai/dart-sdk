//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class KeysApi {
  KeysApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Revokes the caller's own API key of the requested class.
  ///
  /// Revokes the caller's own API key of the requested class. The class is the same field mint takes — `?type=publishable`, defaulting to secret — so revoking the key that ships in a browser bundle does not sign its holder out of their own API: the other key keeps working.  Revoking is how a key is replaced when it does not need replacing; minting the same class again rotates it in one step. IAM drops the credential immediately, but the gateway caches keys for a few minutes, so a request that beat the cache expiry may still be served.  For callers written against the older shape, the class is also accepted in a JSON request body, read only when `?type=` is absent.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] type:
  ///   Type is the key class to act on: \"secret\" (sk-, session-equivalent, belongs on a server) or \"publishable\" (pk-, org-identifying, safe in a browser bundle). Omitted means secret, which is what every existing caller means.
  Future<Response> deleteKeysWithHttpInfo({ String? type, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/keys';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }

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

  /// Revokes the caller's own API key of the requested class.
  ///
  /// Revokes the caller's own API key of the requested class. The class is the same field mint takes — `?type=publishable`, defaulting to secret — so revoking the key that ships in a browser bundle does not sign its holder out of their own API: the other key keeps working.  Revoking is how a key is replaced when it does not need replacing; minting the same class again rotates it in one step. IAM drops the credential immediately, but the gateway caches keys for a few minutes, so a request that beat the cache expiry may still be served.  For callers written against the older shape, the class is also accepted in a JSON request body, read only when `?type=` is absent.
  ///
  /// Parameters:
  ///
  /// * [String] type:
  ///   Type is the key class to act on: \"secret\" (sk-, session-equivalent, belongs on a server) or \"publishable\" (pk-, org-identifying, safe in a browser bundle). Omitted means secret, which is what every existing caller means.
  Future<RevokedKey?> deleteKeys({ String? type, }) async {
    final response = await deleteKeysWithHttpInfo( type: type, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RevokedKey',) as RevokedKey;
    
    }
    return null;
  }

  /// Returns the caller's own API keys — every type they hold, read AUTHORITATIVELY from IAM rather than from the session claim, which lags a key minted moments ago.
  ///
  /// Returns the caller's own API keys — every type they hold, read AUTHORITATIVELY from IAM rather than from the session claim, which lags a key minted moments ago. No secret material comes back: a secret key is represented by its prefix, and only a publishable key (public by construction) carries its full value.  A transient IAM read failure reports an empty set rather than a 5xx, so the page shows the honest empty state and never a fabricated key.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getKeysWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/keys';

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

  /// Returns the caller's own API keys — every type they hold, read AUTHORITATIVELY from IAM rather than from the session claim, which lags a key minted moments ago.
  ///
  /// Returns the caller's own API keys — every type they hold, read AUTHORITATIVELY from IAM rather than from the session claim, which lags a key minted moments ago. No secret material comes back: a secret key is represented by its prefix, and only a publishable key (public by construction) carries its full value.  A transient IAM read failure reports an empty set rather than a 5xx, so the page shows the honest empty state and never a fabricated key.
  Future<ApiKeyList?> getKeys() async {
    final response = await getKeysWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApiKeyList',) as ApiKeyList;
    
    }
    return null;
  }

  /// Creates — or rotates — the caller's API key of the requested type and returns it ONCE.
  ///
  /// Creates — or rotates — the caller's API key of the requested type and returns it ONCE. A real IAM failure surfaces as 502, never a fabricated key.  Rotating is what creating means here: a user holds one key per type, so the endpoint is idempotent by (caller, type) and the superseded credential stops working. Two live secrets for one user would make \"revoke my key\" a lie.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [KeyTypeIn] keyTypeIn (required):
  Future<Response> postKeysWithHttpInfo(KeyTypeIn keyTypeIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/keys';

    // ignore: prefer_final_locals
    Object? postBody = keyTypeIn;

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

  /// Creates — or rotates — the caller's API key of the requested type and returns it ONCE.
  ///
  /// Creates — or rotates — the caller's API key of the requested type and returns it ONCE. A real IAM failure surfaces as 502, never a fabricated key.  Rotating is what creating means here: a user holds one key per type, so the endpoint is idempotent by (caller, type) and the superseded credential stops working. Two live secrets for one user would make \"revoke my key\" a lie.
  ///
  /// Parameters:
  ///
  /// * [KeyTypeIn] keyTypeIn (required):
  Future<MintedKey?> postKeys(KeyTypeIn keyTypeIn,) async {
    final response = await postKeysWithHttpInfo(keyTypeIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MintedKey',) as MintedKey;
    
    }
    return null;
  }
}
