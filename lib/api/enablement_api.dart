//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class EnablementApi {
  EnablementApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns what the caller's org can actually use: every managed item with its global state, whether it is effective here, whether this org is already opted into its beta, and whether it may still opt in.
  ///
  /// Returns what the caller's org can actually use: every managed item with its global state, whether it is effective here, whether this org is already opted into its beta, and whether it may still opt in. Read-only and safe for any caller — one without a validated principal simply sees the generally-available items and no opt-in affordance, never another org's state.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getEnablementWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/enablement';

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

  /// Returns what the caller's org can actually use: every managed item with its global state, whether it is effective here, whether this org is already opted into its beta, and whether it may still opt in.
  ///
  /// Returns what the caller's org can actually use: every managed item with its global state, whether it is effective here, whether this org is already opted into its beta, and whether it may still opt in. Read-only and safe for any caller — one without a validated principal simply sees the generally-available items and no opt-in affordance, never another org's state.
  Future<EnablementBoard?> getEnablement() async {
    final response = await getEnablementWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EnablementBoard',) as EnablementBoard;
    
    }
    return null;
  }

  /// Opts the caller's OWN org into a beta item.
  ///
  /// Opts the caller's OWN org into a beta item. The org is the caller's validated one, so this can never target another org, and the registry refuses anything not in beta — so it can neither re-open an item an operator turned off nor touch one that is already generally available. Requires a signed-in caller with an org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EnablementOptRef] enablementOptRef (required):
  Future<Response> postEnablementOptinWithHttpInfo(EnablementOptRef enablementOptRef,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/enablement/optin';

    // ignore: prefer_final_locals
    Object? postBody = enablementOptRef;

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

  /// Opts the caller's OWN org into a beta item.
  ///
  /// Opts the caller's OWN org into a beta item. The org is the caller's validated one, so this can never target another org, and the registry refuses anything not in beta — so it can neither re-open an item an operator turned off nor touch one that is already generally available. Requires a signed-in caller with an org.
  ///
  /// Parameters:
  ///
  /// * [EnablementOptRef] enablementOptRef (required):
  Future<UserEnablementItem?> postEnablementOptin(EnablementOptRef enablementOptRef,) async {
    final response = await postEnablementOptinWithHttpInfo(enablementOptRef,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserEnablementItem',) as UserEnablementItem;
    
    }
    return null;
  }

  /// Removes the caller's OWN org from a beta item's grant list, the reverse of OptIntoBeta and idempotent.
  ///
  /// Removes the caller's OWN org from a beta item's grant list, the reverse of OptIntoBeta and idempotent. The org is the caller's validated one, so this can never revoke another org's grant. Requires a signed-in caller with an org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EnablementOptRef] enablementOptRef (required):
  Future<Response> postEnablementOptoutWithHttpInfo(EnablementOptRef enablementOptRef,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/enablement/optout';

    // ignore: prefer_final_locals
    Object? postBody = enablementOptRef;

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

  /// Removes the caller's OWN org from a beta item's grant list, the reverse of OptIntoBeta and idempotent.
  ///
  /// Removes the caller's OWN org from a beta item's grant list, the reverse of OptIntoBeta and idempotent. The org is the caller's validated one, so this can never revoke another org's grant. Requires a signed-in caller with an org.
  ///
  /// Parameters:
  ///
  /// * [EnablementOptRef] enablementOptRef (required):
  Future<UserEnablementItem?> postEnablementOptout(EnablementOptRef enablementOptRef,) async {
    final response = await postEnablementOptoutWithHttpInfo(enablementOptRef,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserEnablementItem',) as UserEnablementItem;
    
    }
    return null;
  }
}
