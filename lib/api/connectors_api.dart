//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class ConnectorsApi {
  ConnectorsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Forgets a connector: every custodied secret, then the row.
  ///
  /// Forgets a connector: every custodied secret, then the row. Idempotent — dropping a never-connected id still answers {disconnected:true} (disconnect() parity). No provider Revoke: none of the user-plane providers exposes a revoke endpoint.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the connector id, provider + \":\" + label (\"openai:default\") — the auth-profile-id shape. Another user's id is simply no row, so 404.
  Future<Response> deleteConnectorsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/connectors/{id}'
      .replaceAll('{id}', id);

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

  /// Forgets a connector: every custodied secret, then the row.
  ///
  /// Forgets a connector: every custodied secret, then the row. Idempotent — dropping a never-connected id still answers {disconnected:true} (disconnect() parity). No provider Revoke: none of the user-plane providers exposes a revoke endpoint.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the connector id, provider + \":\" + label (\"openai:default\") — the auth-profile-id shape. Another user's id is simply no row, so 404.
  Future<DisconnectOut?> deleteConnectorsById(String id,) async {
    final response = await deleteConnectorsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DisconnectOut',) as DisconnectOut;
    
    }
    return null;
  }

  /// Lists the caller's OWN connectors across every provider — the set `hanzo connector ls` prints.
  ///
  /// Lists the caller's OWN connectors across every provider — the set `hanzo connector ls` prints. Rows are keyed (org,user), so this can never surface another user's connector, and no secret is in the view.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getConnectorsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/connectors';

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

  /// Lists the caller's OWN connectors across every provider — the set `hanzo connector ls` prints.
  ///
  /// Lists the caller's OWN connectors across every provider — the set `hanzo connector ls` prints. Rows are keyed (org,user), so this can never surface another user's connector, and no secret is in the view.
  Future<ConnectorsOut?> getConnectors() async {
    final response = await getConnectorsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectorsOut',) as ConnectorsOut;
    
    }
    return null;
  }

  /// Hands the custodied access token to its owner — the ONE place custody exits.
  ///
  /// Hands the custodied access token to its owner — the ONE place custody exits. The (org,user)-keyed row IS the same-user gate: another user's id is simply \"no row\" → 404. fresh() auto-rotates within the refreshSkew window; static providers degenerate to a plain kmsGet of Secrets[0]. Refresh tokens are NEVER returned — custody keeps the sink. The token is never logged.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the connector id, provider + \":\" + label (\"openai:default\") — the auth-profile-id shape. Another user's id is simply no row, so 404.
  Future<Response> getConnectorsByIdTokenWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/connectors/{id}/token'
      .replaceAll('{id}', id);

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

  /// Hands the custodied access token to its owner — the ONE place custody exits.
  ///
  /// Hands the custodied access token to its owner — the ONE place custody exits. The (org,user)-keyed row IS the same-user gate: another user's id is simply \"no row\" → 404. fresh() auto-rotates within the refreshSkew window; static providers degenerate to a plain kmsGet of Secrets[0]. Refresh tokens are NEVER returned — custody keeps the sink. The token is never logged.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the connector id, provider + \":\" + label (\"openai:default\") — the auth-profile-id shape. Another user's id is simply no row, so 404.
  Future<ConnectorTokenOut?> getConnectorsByIdToken(String id,) async {
    final response = await getConnectorsByIdTokenWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectorTokenOut',) as ConnectorTokenOut;
    
    }
    return null;
  }

  /// Lists the user-scoped provider cards — the catalog of what a user can connect, and how.
  ///
  /// Lists the user-scoped provider cards — the catalog of what a user can connect, and how. Methods derive from capabilities (Device/Adopt/Verify — Mount asserts at least one), never from a parallel kind enum.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getConnectorsProvidersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/connectors/providers';

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

  /// Lists the user-scoped provider cards — the catalog of what a user can connect, and how.
  ///
  /// Lists the user-scoped provider cards — the catalog of what a user can connect, and how. Methods derive from capabilities (Device/Adopt/Verify — Mount asserts at least one), never from a parallel kind enum.
  Future<ConnectorProvidersOut?> getConnectorsProviders() async {
    final response = await getConnectorsProvidersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectorProvidersOut',) as ConnectorProvidersOut;
    
    }
    return null;
  }

  /// Forces a token rotation for a connected connector, ahead of the automatic rotation a token read would do inside the expiry window.
  ///
  /// Forces a token rotation for a connected connector, ahead of the automatic rotation a token read would do inside the expiry window. Only providers that declare a Refresh support it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the connector id, provider + \":\" + label (\"openai:default\") — the auth-profile-id shape. Another user's id is simply no row, so 404.
  Future<Response> postConnectorsByIdRefreshWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/connectors/{id}/refresh'
      .replaceAll('{id}', id);

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

  /// Forces a token rotation for a connected connector, ahead of the automatic rotation a token read would do inside the expiry window.
  ///
  /// Forces a token rotation for a connected connector, ahead of the automatic rotation a token read would do inside the expiry window. Only providers that declare a Refresh support it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the connector id, provider + \":\" + label (\"openai:default\") — the auth-profile-id shape. Another user's id is simply no row, so 404.
  Future<RefreshOut?> postConnectorsByIdRefresh(String id,) async {
    final response = await postConnectorsByIdRefreshWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RefreshOut',) as RefreshOut;
    
    }
    return null;
  }

  /// Is the direct intake path: a customer-held token/setup-token (Verify) or an externally obtained OAuth bundle from the CLI's local PKCE (Adopt).
  ///
  /// Is the direct intake path: a customer-held token/setup-token (Verify) or an externally obtained OAuth bundle from the CLI's local PKCE (Adopt). ALWAYS verify-before-store: a bad credential is refused and NOTHING is persisted (connectByCredential's fail-closed order).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the user-scoped provider's registry id, from the path.
  ///
  /// * [CredentialIn] credentialIn (required):
  Future<Response> postConnectorsByProviderCredentialWithHttpInfo(String provider, CredentialIn credentialIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/connectors/{provider}/credential'
      .replaceAll('{provider}', provider);

    // ignore: prefer_final_locals
    Object? postBody = credentialIn;

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

  /// Is the direct intake path: a customer-held token/setup-token (Verify) or an externally obtained OAuth bundle from the CLI's local PKCE (Adopt).
  ///
  /// Is the direct intake path: a customer-held token/setup-token (Verify) or an externally obtained OAuth bundle from the CLI's local PKCE (Adopt). ALWAYS verify-before-store: a bad credential is refused and NOTHING is persisted (connectByCredential's fail-closed order).
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the user-scoped provider's registry id, from the path.
  ///
  /// * [CredentialIn] credentialIn (required):
  Future<CredentialOut?> postConnectorsByProviderCredential(String provider, CredentialIn credentialIn,) async {
    final response = await postConnectorsByProviderCredentialWithHttpInfo(provider, credentialIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CredentialOut',) as CredentialOut;
    
    }
    return null;
  }

  /// Begins a device sign-in and returns the code to show the user plus how to poll for completion.
  ///
  /// Begins a device sign-in and returns the code to show the user plus how to poll for completion. KMS readiness is checked NOW rather than dead-ending the user at poll-done (connect() parity), and the per-provider connector cap is checked before the provider is called. The provider's device code is persisted only in the encrypted grants table and is NEVER returned.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the user-scoped provider's registry id, from the path.
  ///
  /// * [DeviceStartIn] deviceStartIn (required):
  Future<Response> postConnectorsByProviderDeviceWithHttpInfo(String provider, DeviceStartIn deviceStartIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/connectors/{provider}/device'
      .replaceAll('{provider}', provider);

    // ignore: prefer_final_locals
    Object? postBody = deviceStartIn;

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

  /// Begins a device sign-in and returns the code to show the user plus how to poll for completion.
  ///
  /// Begins a device sign-in and returns the code to show the user plus how to poll for completion. KMS readiness is checked NOW rather than dead-ending the user at poll-done (connect() parity), and the per-provider connector cap is checked before the provider is called. The provider's device code is persisted only in the encrypted grants table and is NEVER returned.
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the user-scoped provider's registry id, from the path.
  ///
  /// * [DeviceStartIn] deviceStartIn (required):
  Future<DeviceStartOut?> postConnectorsByProviderDevice(String provider, DeviceStartIn deviceStartIn,) async {
    final response = await postConnectorsByProviderDeviceWithHttpInfo(provider, deviceStartIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeviceStartOut',) as DeviceStartOut;
    
    }
    return null;
  }

  /// Advances a device sign-in.
  ///
  /// Advances a device sign-in. Terminal outcomes are DATA, not errors (verifyConn {active:false} discipline) — the status set is closed: pending|connected|denied|expired. pollSlow collapses to \"pending\" on the wire; the raised cadence rides interval.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the user-scoped provider's registry id, from the path.
  ///
  /// * [String] flow (required):
  ///   Flow is the id deviceStartOut returned. Expired or another user's flow is indistinguishable from an unknown one: 404.
  Future<Response> postConnectorsByProviderDeviceByFlowPollWithHttpInfo(String provider, String flow,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/connectors/{provider}/device/{flow}/poll'
      .replaceAll('{provider}', provider)
      .replaceAll('{flow}', flow);

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

  /// Advances a device sign-in.
  ///
  /// Advances a device sign-in. Terminal outcomes are DATA, not errors (verifyConn {active:false} discipline) — the status set is closed: pending|connected|denied|expired. pollSlow collapses to \"pending\" on the wire; the raised cadence rides interval.
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the user-scoped provider's registry id, from the path.
  ///
  /// * [String] flow (required):
  ///   Flow is the id deviceStartOut returned. Expired or another user's flow is indistinguishable from an unknown one: 404.
  Future<DevicePollOut?> postConnectorsByProviderDeviceByFlowPoll(String provider, String flow,) async {
    final response = await postConnectorsByProviderDeviceByFlowPollWithHttpInfo(provider, flow,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePollOut',) as DevicePollOut;
    
    }
    return null;
  }
}
