//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class IamApi {
  IamApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Adds an identity provider your people can sign in with, or a service your applications send through — a social or enterprise login, an email or SMS sender, a storage or payment connector.
  ///
  /// Adds an identity provider your people can sign in with, or a service your applications send through — a social or enterprise login, an email or SMS sender, a storage or payment connector.  A provider is configured once and then switched on per application, so several applications can share one set of credentials.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamProvider] iamProvider (required):
  Future<Response> addProviderWithHttpInfo(IamProvider iamProvider,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/providers';

    // ignore: prefer_final_locals
    Object? postBody = iamProvider;

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

  /// Adds an identity provider your people can sign in with, or a service your applications send through — a social or enterprise login, an email or SMS sender, a storage or payment connector.
  ///
  /// Adds an identity provider your people can sign in with, or a service your applications send through — a social or enterprise login, an email or SMS sender, a storage or payment connector.  A provider is configured once and then switched on per application, so several applications can share one set of credentials.
  ///
  /// Parameters:
  ///
  /// * [IamProvider] iamProvider (required):
  Future<IamProviderResult?> addProvider(IamProvider iamProvider,) async {
    final response = await addProviderWithHttpInfo(iamProvider,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamProviderResult',) as IamProviderResult;
    
    }
    return null;
  }

  /// Records an access token — the credential an application or integration presents on a caller's behalf.
  ///
  /// Records an access token — the credential an application or integration presents on a caller's behalf.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamToken] iamToken (required):
  Future<Response> addTokenWithHttpInfo(IamToken iamToken,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/tokens';

    // ignore: prefer_final_locals
    Object? postBody = iamToken;

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

  /// Records an access token — the credential an application or integration presents on a caller's behalf.
  ///
  /// Records an access token — the credential an application or integration presents on a caller's behalf.
  ///
  /// Parameters:
  ///
  /// * [IamToken] iamToken (required):
  Future<IamTokenResult?> addToken(IamToken iamToken,) async {
    final response = await addTokenWithHttpInfo(iamToken,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamTokenResult',) as IamTokenResult;
    
    }
    return null;
  }

  /// Registers a passkey or security key for a person, so they can sign in with their device instead of a password.
  ///
  /// Registers a passkey or security key for a person, so they can sign in with their device instead of a password.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamWebauthnCredential] iamWebauthnCredential (required):
  Future<Response> addWebauthnCredentialWithHttpInfo(IamWebauthnCredential iamWebauthnCredential,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/webauthn-credentials';

    // ignore: prefer_final_locals
    Object? postBody = iamWebauthnCredential;

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

  /// Registers a passkey or security key for a person, so they can sign in with their device instead of a password.
  ///
  /// Registers a passkey or security key for a person, so they can sign in with their device instead of a password.
  ///
  /// Parameters:
  ///
  /// * [IamWebauthnCredential] iamWebauthnCredential (required):
  Future<IamWebauthnCredentialResult?> addWebauthnCredential(IamWebauthnCredential iamWebauthnCredential,) async {
    final response = await addWebauthnCredentialWithHttpInfo(iamWebauthnCredential,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamWebauthnCredentialResult',) as IamWebauthnCredentialResult;
    
    }
    return null;
  }

  /// Makes a new organization — the account your users, applications, roles, projects and workspaces are all named inside.
  ///
  /// Makes a new organization — the account your users, applications, roles, projects and workspaces are all named inside. It is the first write in a new tenant, and a name already in use is refused rather than taken over.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamCreateOrganizationInput] iamCreateOrganizationInput (required):
  Future<Response> createOrganizationWithHttpInfo(IamCreateOrganizationInput iamCreateOrganizationInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/organizations';

    // ignore: prefer_final_locals
    Object? postBody = iamCreateOrganizationInput;

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

  /// Makes a new organization — the account your users, applications, roles, projects and workspaces are all named inside.
  ///
  /// Makes a new organization — the account your users, applications, roles, projects and workspaces are all named inside. It is the first write in a new tenant, and a name already in use is refused rather than taken over.
  ///
  /// Parameters:
  ///
  /// * [IamCreateOrganizationInput] iamCreateOrganizationInput (required):
  Future<IamOrganization?> createOrganization(IamCreateOrganizationInput iamCreateOrganizationInput,) async {
    final response = await createOrganizationWithHttpInfo(iamCreateOrganizationInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamOrganization',) as IamOrganization;
    
    }
    return null;
  }

  /// Records a sign-in.
  ///
  /// Records a sign-in. Signing in again from another browser adds to the session rather than replacing it, so one person can be signed in from a laptop and a phone at once.  Ask for an exclusive sign-in and the opposite holds: the new sign-in is the only one left and every other browser is signed out. That is the setting to use when one person may hold only one live session at a time.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamCreateSessionIn] iamCreateSessionIn (required):
  Future<Response> createSessionWithHttpInfo(IamCreateSessionIn iamCreateSessionIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/sessions/create';

    // ignore: prefer_final_locals
    Object? postBody = iamCreateSessionIn;

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

  /// Records a sign-in.
  ///
  /// Records a sign-in. Signing in again from another browser adds to the session rather than replacing it, so one person can be signed in from a laptop and a phone at once.  Ask for an exclusive sign-in and the opposite holds: the new sign-in is the only one left and every other browser is signed out. That is the setting to use when one person may hold only one live session at a time.
  ///
  /// Parameters:
  ///
  /// * [IamCreateSessionIn] iamCreateSessionIn (required):
  Future<IamSession?> createSession(IamCreateSessionIn iamCreateSessionIn,) async {
    final response = await createSessionWithHttpInfo(iamCreateSessionIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamSession',) as IamSession;
    
    }
    return null;
  }

  /// Removes an application.
  ///
  /// Removes an application. Anyone mid-sign-in through it is turned away and its client credentials stop working, so retire the integration before deleting it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> deleteIamApplicationWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/application';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'owner', owner));
      queryParams.addAll(_queryParams('', 'name', name));

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

  /// Removes an application.
  ///
  /// Removes an application. Anyone mid-sign-in through it is turned away and its client credentials stop working, so retire the integration before deleting it.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<IamDeleteResult?> deleteIamApplication(String owner, String name,) async {
    final response = await deleteIamApplicationWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamDeleteResult',) as IamDeleteResult;
    
    }
    return null;
  }

  /// Deprovisions a person — how removing someone in your identity provider removes their access here.
  ///
  /// Deprovisions a person — how removing someone in your identity provider removes their access here. Their sessions stop working immediately. Takes an administrator.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> deleteIamScimV2UsersByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/scim/v2/Users/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

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

  /// Deprovisions a person — how removing someone in your identity provider removes their access here.
  ///
  /// Deprovisions a person — how removing someone in your identity provider removes their access here. Their sessions stop working immediately. Takes an administrator.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> deleteIamScimV2UsersByOwnerByName(String owner, String name,) async {
    final response = await deleteIamScimV2UsersByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Serves DELETE /v1/iam/service-accounts/:name.
  ///
  /// Serves DELETE /v1/iam/service-accounts/:name.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<Response> deleteIamServiceAccountsByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/service-accounts/{name}'
      .replaceAll('{name}', name);

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

  /// Serves DELETE /v1/iam/service-accounts/:name.
  ///
  /// Serves DELETE /v1/iam/service-accounts/:name.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<void> deleteIamServiceAccountsByName(String name,) async {
    final response = await deleteIamServiceAccountsByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes an organization and everything named inside it.
  ///
  /// Removes an organization and everything named inside it. There is no undo, and every session issued under it stops working.  The built-in admin organization cannot be deleted — losing it would leave the account with no way back in.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamDeleteOrganizationInput] iamDeleteOrganizationInput (required):
  Future<Response> deleteOrganizationWithHttpInfo(IamDeleteOrganizationInput iamDeleteOrganizationInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/organizations/delete';

    // ignore: prefer_final_locals
    Object? postBody = iamDeleteOrganizationInput;

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

  /// Removes an organization and everything named inside it.
  ///
  /// Removes an organization and everything named inside it. There is no undo, and every session issued under it stops working.  The built-in admin organization cannot be deleted — losing it would leave the account with no way back in.
  ///
  /// Parameters:
  ///
  /// * [IamDeleteOrganizationInput] iamDeleteOrganizationInput (required):
  Future<IamDeleteOrganizationOutput?> deleteOrganization(IamDeleteOrganizationInput iamDeleteOrganizationInput,) async {
    final response = await deleteOrganizationWithHttpInfo(iamDeleteOrganizationInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamDeleteOrganizationOutput',) as IamDeleteOrganizationOutput;
    
    }
    return null;
  }

  /// Removes a provider.
  ///
  /// Removes a provider. Sign-in through it stops for every application that used it, so give those applications another method first.  A provider that is already gone answers \"nothing changed\" rather than an error, so the call is safe to repeat.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamProviderKey] iamProviderKey (required):
  Future<Response> deleteProviderWithHttpInfo(IamProviderKey iamProviderKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/providers/delete';

    // ignore: prefer_final_locals
    Object? postBody = iamProviderKey;

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

  /// Removes a provider.
  ///
  /// Removes a provider. Sign-in through it stops for every application that used it, so give those applications another method first.  A provider that is already gone answers \"nothing changed\" rather than an error, so the call is safe to repeat.
  ///
  /// Parameters:
  ///
  /// * [IamProviderKey] iamProviderKey (required):
  Future<IamMutationResult?> deleteProvider(IamProviderKey iamProviderKey,) async {
    final response = await deleteProviderWithHttpInfo(iamProviderKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamMutationResult',) as IamMutationResult;
    
    }
    return null;
  }

  /// Signs a person out of one application — the session ends and every browser carrying it stops being authenticated.
  ///
  /// Signs a person out of one application — the session ends and every browser carrying it stops being authenticated.  A session that is already gone reports that nothing was deleted rather than an error, so the call is safe to repeat.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamSessionRef] iamSessionRef (required):
  Future<Response> deleteSessionWithHttpInfo(IamSessionRef iamSessionRef,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/sessions/delete';

    // ignore: prefer_final_locals
    Object? postBody = iamSessionRef;

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

  /// Signs a person out of one application — the session ends and every browser carrying it stops being authenticated.
  ///
  /// Signs a person out of one application — the session ends and every browser carrying it stops being authenticated.  A session that is already gone reports that nothing was deleted rather than an error, so the call is safe to repeat.
  ///
  /// Parameters:
  ///
  /// * [IamSessionRef] iamSessionRef (required):
  Future<IamDeleteSessionOut?> deleteSession(IamSessionRef iamSessionRef,) async {
    final response = await deleteSessionWithHttpInfo(iamSessionRef,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamDeleteSessionOut',) as IamDeleteSessionOut;
    
    }
    return null;
  }

  /// Revokes an access token.
  ///
  /// Revokes an access token. Whatever was using it stops being authorized at once.  A token that is already gone answers \"nothing changed\" rather than an error, so the call is safe to repeat.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamTokenKey] iamTokenKey (required):
  Future<Response> deleteTokenWithHttpInfo(IamTokenKey iamTokenKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/tokens/delete';

    // ignore: prefer_final_locals
    Object? postBody = iamTokenKey;

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

  /// Revokes an access token.
  ///
  /// Revokes an access token. Whatever was using it stops being authorized at once.  A token that is already gone answers \"nothing changed\" rather than an error, so the call is safe to repeat.
  ///
  /// Parameters:
  ///
  /// * [IamTokenKey] iamTokenKey (required):
  Future<IamTokenMutation?> deleteToken(IamTokenKey iamTokenKey,) async {
    final response = await deleteTokenWithHttpInfo(iamTokenKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamTokenMutation',) as IamTokenMutation;
    
    }
    return null;
  }

  /// Removes a passkey or security key — what you call when a device is lost.
  ///
  /// Removes a passkey or security key — what you call when a device is lost. Make sure the person has another way to sign in first.  A credential that is already gone answers \"nothing changed\" rather than an error, so the call is safe to repeat.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamWebauthnCredentialKey] iamWebauthnCredentialKey (required):
  Future<Response> deleteWebauthnCredentialWithHttpInfo(IamWebauthnCredentialKey iamWebauthnCredentialKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/webauthn-credentials/delete';

    // ignore: prefer_final_locals
    Object? postBody = iamWebauthnCredentialKey;

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

  /// Removes a passkey or security key — what you call when a device is lost.
  ///
  /// Removes a passkey or security key — what you call when a device is lost. Make sure the person has another way to sign in first.  A credential that is already gone answers \"nothing changed\" rather than an error, so the call is safe to repeat.
  ///
  /// Parameters:
  ///
  /// * [IamWebauthnCredentialKey] iamWebauthnCredentialKey (required):
  Future<IamWebauthnCredentialMutationResult?> deleteWebauthnCredential(IamWebauthnCredentialKey iamWebauthnCredentialKey,) async {
    final response = await deleteWebauthnCredentialWithHttpInfo(iamWebauthnCredentialKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamWebauthnCredentialMutationResult',) as IamWebauthnCredentialMutationResult;
    
    }
    return null;
  }

  /// Returns the signed-in person's own account and the organization they belong to — what a console reads to draw the account menu.
  ///
  /// Returns the signed-in person's own account and the organization they belong to — what a console reads to draw the account menu.  Passwords, API secrets and MFA material are stripped. It answers for a session cookie or a bearer token alike.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamAccountWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/account';

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

  /// Returns the signed-in person's own account and the organization they belong to — what a console reads to draw the account menu.
  ///
  /// Returns the signed-in person's own account and the organization they belong to — what a console reads to draw the account menu.  Passwords, API secrets and MFA material are stripped. It answers for a session cookie or a bearer token alike.
  Future<void> getIamAccount() async {
    final response = await getIamAccountWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns one application: its sign-in methods, its allowed redirect URIs and the client credentials your integration authenticates with.
  ///
  /// Returns one application: its sign-in methods, its allowed redirect URIs and the client credentials your integration authenticates with.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> getIamApplicationWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/application';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'owner', owner));
      queryParams.addAll(_queryParams('', 'name', name));

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

  /// Returns one application: its sign-in methods, its allowed redirect URIs and the client credentials your integration authenticates with.
  ///
  /// Returns one application: its sign-in methods, its allowed redirect URIs and the client credentials your integration authenticates with.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<IamApplication?> getIamApplication(String owner, String name,) async {
    final response = await getIamApplicationWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamApplication',) as IamApplication;
    
    }
    return null;
  }

  /// Returns the applications in one organization, newest first — each product or site your people sign in to, with the sign-in methods and redirect URIs it allows.
  ///
  /// Returns the applications in one organization, newest first — each product or site your people sign in to, with the sign-in methods and redirect URIs it allows.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  Future<Response> getIamApplicationsWithHttpInfo(String owner,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/applications';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'owner', owner));

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

  /// Returns the applications in one organization, newest first — each product or site your people sign in to, with the sign-in methods and redirect URIs it allows.
  ///
  /// Returns the applications in one organization, newest first — each product or site your people sign in to, with the sign-in methods and redirect URIs it allows.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  Future<IamApplicationListResult?> getIamApplications(String owner,) async {
    final response = await getIamApplicationsWithHttpInfo(owner,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamApplicationListResult',) as IamApplicationListResult;
    
    }
    return null;
  }

  /// Returns one application: its sign-in methods, its allowed redirect URIs and the client credentials your integration authenticates with.
  ///
  /// Returns one application: its sign-in methods, its allowed redirect URIs and the client credentials your integration authenticates with.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> getIamApplicationsGetWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/applications/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'owner', owner));
      queryParams.addAll(_queryParams('', 'name', name));

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

  /// Returns one application: its sign-in methods, its allowed redirect URIs and the client credentials your integration authenticates with.
  ///
  /// Returns one application: its sign-in methods, its allowed redirect URIs and the client credentials your integration authenticates with.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<IamApplication?> getIamApplicationsGet(String owner, String name,) async {
    final response = await getIamApplicationsGetWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamApplication',) as IamApplication;
    
    }
    return null;
  }

  /// Returns your organization's audit trail, newest first — who did what, when, and from where.
  ///
  /// Returns your organization's audit trail, newest first — who did what, when, and from where. It is the record you reach for during a security review or an incident.  You see your own organization's audit trail and no one else's; which organization that is comes from your credentials, not from the request.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  Future<Response> getIamAuditLogsWithHttpInfo({ String? owner, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/audit-logs';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (owner != null) {
      queryParams.addAll(_queryParams('', 'owner', owner));
    }

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

  /// Returns your organization's audit trail, newest first — who did what, when, and from where.
  ///
  /// Returns your organization's audit trail, newest first — who did what, when, and from where. It is the record you reach for during a security review or an incident.  You see your own organization's audit trail and no one else's; which organization that is comes from your credentials, not from the request.
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  Future<IamListOutput?> getIamAuditLogs({ String? owner, }) async {
    final response = await getIamAuditLogsWithHttpInfo( owner: owner, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamListOutput',) as IamListOutput;
    
    }
    return null;
  }

  /// Returns everything a login screen needs to draw itself for one application: its branding, and each sign-in method it offers with the provider details that method needs.
  ///
  /// Returns everything a login screen needs to draw itself for one application: its branding, and each sign-in method it offers with the provider details that method needs.  The client secret is masked. Read before anyone has signed in, so it carries only what is safe for a browser to see.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] clientId:
  ///   ClientId is the application's OAuth client id — the one field that selects which login screen this is.
  ///
  /// * [String] responseType:
  ///   ResponseType is the OAuth response type the screen will ask for. Only \"code\" is served; anything else is refused here rather than at the authorize leg, where the person has already typed a password.
  Future<Response> getIamAuthApplicationWithHttpInfo({ String? clientId, String? responseType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/auth/application';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (clientId != null) {
      queryParams.addAll(_queryParams('', 'clientId', clientId));
    }
    if (responseType != null) {
      queryParams.addAll(_queryParams('', 'responseType', responseType));
    }

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

  /// Returns everything a login screen needs to draw itself for one application: its branding, and each sign-in method it offers with the provider details that method needs.
  ///
  /// Returns everything a login screen needs to draw itself for one application: its branding, and each sign-in method it offers with the provider details that method needs.  The client secret is masked. Read before anyone has signed in, so it carries only what is safe for a browser to see.
  ///
  /// Parameters:
  ///
  /// * [String] clientId:
  ///   ClientId is the application's OAuth client id — the one field that selects which login screen this is.
  ///
  /// * [String] responseType:
  ///   ResponseType is the OAuth response type the screen will ask for. Only \"code\" is served; anything else is refused here rather than at the authorize leg, where the person has already typed a password.
  Future<IamAnswer?> getIamAuthApplication({ String? clientId, String? responseType, }) async {
    final response = await getIamAuthApplicationWithHttpInfo( clientId: clientId, responseType: responseType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamAnswer',) as IamAnswer;
    
    }
    return null;
  }

  /// Returns the sign-in methods one application actually has switched on, so a login screen can render the right buttons for it without you hard-coding a list that drifts the moment you add a provider.
  ///
  /// Returns the sign-in methods one application actually has switched on, so a login screen can render the right buttons for it without you hard-coding a list that drifts the moment you add a provider.  Public by design: it is read before anyone has signed in, and it exposes only which methods exist, never their credentials.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] clientId:
  ///   ClientId is the application's OAuth client id.
  Future<Response> getIamAuthMethodsWithHttpInfo({ String? clientId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/auth/methods';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (clientId != null) {
      queryParams.addAll(_queryParams('', 'clientId', clientId));
    }

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

  /// Returns the sign-in methods one application actually has switched on, so a login screen can render the right buttons for it without you hard-coding a list that drifts the moment you add a provider.
  ///
  /// Returns the sign-in methods one application actually has switched on, so a login screen can render the right buttons for it without you hard-coding a list that drifts the moment you add a provider.  Public by design: it is read before anyone has signed in, and it exposes only which methods exist, never their credentials.
  ///
  /// Parameters:
  ///
  /// * [String] clientId:
  ///   ClientId is the application's OAuth client id.
  Future<IamAnswer?> getIamAuthMethods({ String? clientId, }) async {
    final response = await getIamAuthMethodsWithHttpInfo( clientId: clientId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamAnswer',) as IamAnswer;
    
    }
    return null;
  }

  /// Returns your organization's signing certificates, newest first — the keys the tokens your applications verify are signed with.
  ///
  /// Returns your organization's signing certificates, newest first — the keys the tokens your applications verify are signed with. Private key material is masked.  You see your own organization's certificates and no one else's; which organization that is comes from your credentials, not from the request, so a query parameter can never widen the listing.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  Future<Response> getIamCertsWithHttpInfo({ String? owner, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/certs';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (owner != null) {
      queryParams.addAll(_queryParams('', 'owner', owner));
    }

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

  /// Returns your organization's signing certificates, newest first — the keys the tokens your applications verify are signed with.
  ///
  /// Returns your organization's signing certificates, newest first — the keys the tokens your applications verify are signed with. Private key material is masked.  You see your own organization's certificates and no one else's; which organization that is comes from your credentials, not from the request, so a query parameter can never widen the listing.
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  Future<IamCertsListOutput?> getIamCerts({ String? owner, }) async {
    final response = await getIamCertsWithHttpInfo( owner: owner, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamCertsListOutput',) as IamCertsListOutput;
    
    }
    return null;
  }

  /// Returns the calling person's own privacy and communication choices.
  ///
  /// Returns the calling person's own privacy and communication choices. Somebody who has never set them gets the defaults rather than nothing, so a consent screen always has something to show — insights on, and training UNANSWERED, which is the state that means the screen still has to ask.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamConsentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/consent';

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

  /// Returns the calling person's own privacy and communication choices.
  ///
  /// Returns the calling person's own privacy and communication choices. Somebody who has never set them gets the defaults rather than nothing, so a consent screen always has something to show — insights on, and training UNANSWERED, which is the state that means the screen still has to ask.
  Future<void> getIamConsent() async {
    final response = await getIamConsentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the signed-in person's own account and the organization they belong to — what a console reads to draw the account menu.
  ///
  /// Returns the signed-in person's own account and the organization they belong to — what a console reads to draw the account menu.  Passwords, API secrets and MFA material are stripped. It answers for a session cookie or a bearer token alike.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamGetAccountWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/get-account';

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

  /// Returns the signed-in person's own account and the organization they belong to — what a console reads to draw the account menu.
  ///
  /// Returns the signed-in person's own account and the organization they belong to — what a console reads to draw the account menu.  Passwords, API secrets and MFA material are stripped. It answers for a session cookie or a bearer token alike.
  Future<void> getIamGetAccount() async {
    final response = await getIamGetAccountWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns everything a login screen needs to draw itself for one application: its branding, and each sign-in method it offers with the provider details that method needs.
  ///
  /// Returns everything a login screen needs to draw itself for one application: its branding, and each sign-in method it offers with the provider details that method needs.  The client secret is masked. Read before anyone has signed in, so it carries only what is safe for a browser to see.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] clientId:
  ///   ClientId is the application's OAuth client id — the one field that selects which login screen this is.
  ///
  /// * [String] responseType:
  ///   ResponseType is the OAuth response type the screen will ask for. Only \"code\" is served; anything else is refused here rather than at the authorize leg, where the person has already typed a password.
  Future<Response> getIamGetAppLoginWithHttpInfo({ String? clientId, String? responseType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/get-app-login';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (clientId != null) {
      queryParams.addAll(_queryParams('', 'clientId', clientId));
    }
    if (responseType != null) {
      queryParams.addAll(_queryParams('', 'responseType', responseType));
    }

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

  /// Returns everything a login screen needs to draw itself for one application: its branding, and each sign-in method it offers with the provider details that method needs.
  ///
  /// Returns everything a login screen needs to draw itself for one application: its branding, and each sign-in method it offers with the provider details that method needs.  The client secret is masked. Read before anyone has signed in, so it carries only what is safe for a browser to see.
  ///
  /// Parameters:
  ///
  /// * [String] clientId:
  ///   ClientId is the application's OAuth client id — the one field that selects which login screen this is.
  ///
  /// * [String] responseType:
  ///   ResponseType is the OAuth response type the screen will ask for. Only \"code\" is served; anything else is refused here rather than at the authorize leg, where the person has already typed a password.
  Future<IamAnswer?> getIamGetAppLogin({ String? clientId, String? responseType, }) async {
    final response = await getIamGetAppLoginWithHttpInfo( clientId: clientId, responseType: responseType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamAnswer',) as IamAnswer;
    
    }
    return null;
  }

  /// Reads one record — the older spelling of the single reads on the REST surface, over the same data and the same permissions.
  ///
  /// Reads one record — the older spelling of the single reads on the REST surface, over the same data and the same permissions.  Secrets are stripped. Naming a record in another organization does not reach it, however the request spells it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamGetApplicationWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/get-application';

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

  /// Reads one record — the older spelling of the single reads on the REST surface, over the same data and the same permissions.
  ///
  /// Reads one record — the older spelling of the single reads on the REST surface, over the same data and the same permissions.  Secrets are stripped. Naming a record in another organization does not reach it, however the request spells it.
  Future<void> getIamGetApplication() async {
    final response = await getIamGetApplicationWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.
  ///
  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.  Secrets are stripped from every row. Send both a page number and a page size to page, and the total comes back alongside; send neither and you get the whole set. You see your own organization and no other, whatever the request asks for.  Scoping note (intentional, fail-closed): iam's ownership model is mixed — users/roles/permissions are owned by their tenant org, while organizations/ applications/providers/certs are platform-owned (Owner \"admin\"). A SuperAdmin (Scope → the requested owner, empty = all) therefore lists every entity, which is the console-admin path. A non-super is pinned by Scope to its own org, so it lists its tenant-owned entities correctly and is refused the platform-owned lists at the Guard (owner \"\" or \"admin\" both deny) — a safe 403, never another tenant's rows. Non-super, membership-scoped views of the platform-owned entities (e.g. an org console's own app list keyed on Application.Organization) are a separate, additive surface, not a silent behavior of this generic lister.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamGetApplicationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/get-applications';

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

  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.
  ///
  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.  Secrets are stripped from every row. Send both a page number and a page size to page, and the total comes back alongside; send neither and you get the whole set. You see your own organization and no other, whatever the request asks for.  Scoping note (intentional, fail-closed): iam's ownership model is mixed — users/roles/permissions are owned by their tenant org, while organizations/ applications/providers/certs are platform-owned (Owner \"admin\"). A SuperAdmin (Scope → the requested owner, empty = all) therefore lists every entity, which is the console-admin path. A non-super is pinned by Scope to its own org, so it lists its tenant-owned entities correctly and is refused the platform-owned lists at the Guard (owner \"\" or \"admin\" both deny) — a safe 403, never another tenant's rows. Non-super, membership-scoped views of the platform-owned entities (e.g. an org console's own app list keyed on Application.Organization) are a separate, additive surface, not a silent behavior of this generic lister.
  Future<void> getIamGetApplications() async {
    final response = await getIamGetApplicationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Reads one record — the older spelling of the single reads on the REST surface, over the same data and the same permissions.
  ///
  /// Reads one record — the older spelling of the single reads on the REST surface, over the same data and the same permissions.  Secrets are stripped. Naming a record in another organization does not reach it, however the request spells it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamGetCertWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/get-cert';

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

  /// Reads one record — the older spelling of the single reads on the REST surface, over the same data and the same permissions.
  ///
  /// Reads one record — the older spelling of the single reads on the REST surface, over the same data and the same permissions.  Secrets are stripped. Naming a record in another organization does not reach it, however the request spells it.
  Future<void> getIamGetCert() async {
    final response = await getIamGetCertWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.
  ///
  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.  Secrets are stripped from every row. Send both a page number and a page size to page, and the total comes back alongside; send neither and you get the whole set. You see your own organization and no other, whatever the request asks for.  Scoping note (intentional, fail-closed): iam's ownership model is mixed — users/roles/permissions are owned by their tenant org, while organizations/ applications/providers/certs are platform-owned (Owner \"admin\"). A SuperAdmin (Scope → the requested owner, empty = all) therefore lists every entity, which is the console-admin path. A non-super is pinned by Scope to its own org, so it lists its tenant-owned entities correctly and is refused the platform-owned lists at the Guard (owner \"\" or \"admin\" both deny) — a safe 403, never another tenant's rows. Non-super, membership-scoped views of the platform-owned entities (e.g. an org console's own app list keyed on Application.Organization) are a separate, additive surface, not a silent behavior of this generic lister.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamGetCertsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/get-certs';

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

  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.
  ///
  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.  Secrets are stripped from every row. Send both a page number and a page size to page, and the total comes back alongside; send neither and you get the whole set. You see your own organization and no other, whatever the request asks for.  Scoping note (intentional, fail-closed): iam's ownership model is mixed — users/roles/permissions are owned by their tenant org, while organizations/ applications/providers/certs are platform-owned (Owner \"admin\"). A SuperAdmin (Scope → the requested owner, empty = all) therefore lists every entity, which is the console-admin path. A non-super is pinned by Scope to its own org, so it lists its tenant-owned entities correctly and is refused the platform-owned lists at the Guard (owner \"\" or \"admin\" both deny) — a safe 403, never another tenant's rows. Non-super, membership-scoped views of the platform-owned entities (e.g. an org console's own app list keyed on Application.Organization) are a separate, additive surface, not a silent behavior of this generic lister.
  Future<void> getIamGetCerts() async {
    final response = await getIamGetCertsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.
  ///
  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.  Secrets are stripped from every row. Send both a page number and a page size to page, and the total comes back alongside; send neither and you get the whole set. You see your own organization and no other, whatever the request asks for.  Scoping note (intentional, fail-closed): iam's ownership model is mixed — users/roles/permissions are owned by their tenant org, while organizations/ applications/providers/certs are platform-owned (Owner \"admin\"). A SuperAdmin (Scope → the requested owner, empty = all) therefore lists every entity, which is the console-admin path. A non-super is pinned by Scope to its own org, so it lists its tenant-owned entities correctly and is refused the platform-owned lists at the Guard (owner \"\" or \"admin\" both deny) — a safe 403, never another tenant's rows. Non-super, membership-scoped views of the platform-owned entities (e.g. an org console's own app list keyed on Application.Organization) are a separate, additive surface, not a silent behavior of this generic lister.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamGetGlobalUsersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/get-global-users';

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

  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.
  ///
  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.  Secrets are stripped from every row. Send both a page number and a page size to page, and the total comes back alongside; send neither and you get the whole set. You see your own organization and no other, whatever the request asks for.  Scoping note (intentional, fail-closed): iam's ownership model is mixed — users/roles/permissions are owned by their tenant org, while organizations/ applications/providers/certs are platform-owned (Owner \"admin\"). A SuperAdmin (Scope → the requested owner, empty = all) therefore lists every entity, which is the console-admin path. A non-super is pinned by Scope to its own org, so it lists its tenant-owned entities correctly and is refused the platform-owned lists at the Guard (owner \"\" or \"admin\" both deny) — a safe 403, never another tenant's rows. Non-super, membership-scoped views of the platform-owned entities (e.g. an org console's own app list keyed on Application.Organization) are a separate, additive surface, not a silent behavior of this generic lister.
  Future<void> getIamGetGlobalUsers() async {
    final response = await getIamGetGlobalUsersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.
  ///
  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.  Secrets are stripped from every row. Send both a page number and a page size to page, and the total comes back alongside; send neither and you get the whole set. You see your own organization and no other, whatever the request asks for.  Scoping note (intentional, fail-closed): iam's ownership model is mixed — users/roles/permissions are owned by their tenant org, while organizations/ applications/providers/certs are platform-owned (Owner \"admin\"). A SuperAdmin (Scope → the requested owner, empty = all) therefore lists every entity, which is the console-admin path. A non-super is pinned by Scope to its own org, so it lists its tenant-owned entities correctly and is refused the platform-owned lists at the Guard (owner \"\" or \"admin\" both deny) — a safe 403, never another tenant's rows. Non-super, membership-scoped views of the platform-owned entities (e.g. an org console's own app list keyed on Application.Organization) are a separate, additive surface, not a silent behavior of this generic lister.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamGetInvitationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/get-invitations';

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

  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.
  ///
  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.  Secrets are stripped from every row. Send both a page number and a page size to page, and the total comes back alongside; send neither and you get the whole set. You see your own organization and no other, whatever the request asks for.  Scoping note (intentional, fail-closed): iam's ownership model is mixed — users/roles/permissions are owned by their tenant org, while organizations/ applications/providers/certs are platform-owned (Owner \"admin\"). A SuperAdmin (Scope → the requested owner, empty = all) therefore lists every entity, which is the console-admin path. A non-super is pinned by Scope to its own org, so it lists its tenant-owned entities correctly and is refused the platform-owned lists at the Guard (owner \"\" or \"admin\" both deny) — a safe 403, never another tenant's rows. Non-super, membership-scoped views of the platform-owned entities (e.g. an org console's own app list keyed on Application.Organization) are a separate, additive surface, not a silent behavior of this generic lister.
  Future<void> getIamGetInvitations() async {
    final response = await getIamGetInvitationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Answers either question about who belongs where: which organizations one person can act in, or who can act in one organization.
  ///
  /// Answers either question about who belongs where: which organizations one person can act in, or who can act in one organization.  Both are org-scoped: a non-SuperAdmin may ask about ITS OWN org's roster, or about a user whose home org is its own, and nothing else. The bound comes from the verified credential via authz.Scope, so a request parameter can never widen it — a membership row names who may act and spend in an org, so a cross-tenant read is a customer roster leak.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] user:
  ///   User is \"<homeOrg>/<username>\" — which organizations that identity may act in.
  ///
  /// * [String] org:
  ///   Org is an organization — who may act in it.
  Future<Response> getIamGetMembershipsWithHttpInfo({ String? user, String? org, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/get-memberships';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (user != null) {
      queryParams.addAll(_queryParams('', 'user', user));
    }
    if (org != null) {
      queryParams.addAll(_queryParams('', 'org', org));
    }

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

  /// Answers either question about who belongs where: which organizations one person can act in, or who can act in one organization.
  ///
  /// Answers either question about who belongs where: which organizations one person can act in, or who can act in one organization.  Both are org-scoped: a non-SuperAdmin may ask about ITS OWN org's roster, or about a user whose home org is its own, and nothing else. The bound comes from the verified credential via authz.Scope, so a request parameter can never widen it — a membership row names who may act and spend in an org, so a cross-tenant read is a customer roster leak.
  ///
  /// Parameters:
  ///
  /// * [String] user:
  ///   User is \"<homeOrg>/<username>\" — which organizations that identity may act in.
  ///
  /// * [String] org:
  ///   Org is an organization — who may act in it.
  Future<IamAnswer?> getIamGetMemberships({ String? user, String? org, }) async {
    final response = await getIamGetMembershipsWithHttpInfo( user: user, org: org, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamAnswer',) as IamAnswer;
    
    }
    return null;
  }

  /// Reads one record — the older spelling of the single reads on the REST surface, over the same data and the same permissions.
  ///
  /// Reads one record — the older spelling of the single reads on the REST surface, over the same data and the same permissions.  Secrets are stripped. Naming a record in another organization does not reach it, however the request spells it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamGetOrganizationWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/get-organization';

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

  /// Reads one record — the older spelling of the single reads on the REST surface, over the same data and the same permissions.
  ///
  /// Reads one record — the older spelling of the single reads on the REST surface, over the same data and the same permissions.  Secrets are stripped. Naming a record in another organization does not reach it, however the request spells it.
  Future<void> getIamGetOrganization() async {
    final response = await getIamGetOrganizationWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns one organization's projects — what a scope switcher lists so somebody can move between them.
  ///
  /// Returns one organization's projects — what a scope switcher lists so somebody can move between them.  You see your own organization and no other, whatever the request asks for.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamGetOrganizationProjectsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/get-organization-projects';

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

  /// Returns one organization's projects — what a scope switcher lists so somebody can move between them.
  ///
  /// Returns one organization's projects — what a scope switcher lists so somebody can move between them.  You see your own organization and no other, whatever the request asks for.
  Future<void> getIamGetOrganizationProjects() async {
    final response = await getIamGetOrganizationProjectsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns one organization's workspaces — what a scope switcher lists so somebody can move between them.
  ///
  /// Returns one organization's workspaces — what a scope switcher lists so somebody can move between them.  You see your own organization and no other, whatever the request asks for.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamGetOrganizationWorkspacesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/get-organization-workspaces';

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

  /// Returns one organization's workspaces — what a scope switcher lists so somebody can move between them.
  ///
  /// Returns one organization's workspaces — what a scope switcher lists so somebody can move between them.  You see your own organization and no other, whatever the request asks for.
  Future<void> getIamGetOrganizationWorkspaces() async {
    final response = await getIamGetOrganizationWorkspacesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.
  ///
  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.  Secrets are stripped from every row. Send both a page number and a page size to page, and the total comes back alongside; send neither and you get the whole set. You see your own organization and no other, whatever the request asks for.  Scoping note (intentional, fail-closed): iam's ownership model is mixed — users/roles/permissions are owned by their tenant org, while organizations/ applications/providers/certs are platform-owned (Owner \"admin\"). A SuperAdmin (Scope → the requested owner, empty = all) therefore lists every entity, which is the console-admin path. A non-super is pinned by Scope to its own org, so it lists its tenant-owned entities correctly and is refused the platform-owned lists at the Guard (owner \"\" or \"admin\" both deny) — a safe 403, never another tenant's rows. Non-super, membership-scoped views of the platform-owned entities (e.g. an org console's own app list keyed on Application.Organization) are a separate, additive surface, not a silent behavior of this generic lister.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamGetOrganizationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/get-organizations';

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

  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.
  ///
  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.  Secrets are stripped from every row. Send both a page number and a page size to page, and the total comes back alongside; send neither and you get the whole set. You see your own organization and no other, whatever the request asks for.  Scoping note (intentional, fail-closed): iam's ownership model is mixed — users/roles/permissions are owned by their tenant org, while organizations/ applications/providers/certs are platform-owned (Owner \"admin\"). A SuperAdmin (Scope → the requested owner, empty = all) therefore lists every entity, which is the console-admin path. A non-super is pinned by Scope to its own org, so it lists its tenant-owned entities correctly and is refused the platform-owned lists at the Guard (owner \"\" or \"admin\" both deny) — a safe 403, never another tenant's rows. Non-super, membership-scoped views of the platform-owned entities (e.g. an org console's own app list keyed on Application.Organization) are a separate, additive surface, not a silent behavior of this generic lister.
  Future<void> getIamGetOrganizations() async {
    final response = await getIamGetOrganizationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Reads one record — the older spelling of the single reads on the REST surface, over the same data and the same permissions.
  ///
  /// Reads one record — the older spelling of the single reads on the REST surface, over the same data and the same permissions.  Secrets are stripped. Naming a record in another organization does not reach it, however the request spells it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamGetPermissionWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/get-permission';

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

  /// Reads one record — the older spelling of the single reads on the REST surface, over the same data and the same permissions.
  ///
  /// Reads one record — the older spelling of the single reads on the REST surface, over the same data and the same permissions.  Secrets are stripped. Naming a record in another organization does not reach it, however the request spells it.
  Future<void> getIamGetPermission() async {
    final response = await getIamGetPermissionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.
  ///
  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.  Secrets are stripped from every row. Send both a page number and a page size to page, and the total comes back alongside; send neither and you get the whole set. You see your own organization and no other, whatever the request asks for.  Scoping note (intentional, fail-closed): iam's ownership model is mixed — users/roles/permissions are owned by their tenant org, while organizations/ applications/providers/certs are platform-owned (Owner \"admin\"). A SuperAdmin (Scope → the requested owner, empty = all) therefore lists every entity, which is the console-admin path. A non-super is pinned by Scope to its own org, so it lists its tenant-owned entities correctly and is refused the platform-owned lists at the Guard (owner \"\" or \"admin\" both deny) — a safe 403, never another tenant's rows. Non-super, membership-scoped views of the platform-owned entities (e.g. an org console's own app list keyed on Application.Organization) are a separate, additive surface, not a silent behavior of this generic lister.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamGetPermissionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/get-permissions';

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

  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.
  ///
  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.  Secrets are stripped from every row. Send both a page number and a page size to page, and the total comes back alongside; send neither and you get the whole set. You see your own organization and no other, whatever the request asks for.  Scoping note (intentional, fail-closed): iam's ownership model is mixed — users/roles/permissions are owned by their tenant org, while organizations/ applications/providers/certs are platform-owned (Owner \"admin\"). A SuperAdmin (Scope → the requested owner, empty = all) therefore lists every entity, which is the console-admin path. A non-super is pinned by Scope to its own org, so it lists its tenant-owned entities correctly and is refused the platform-owned lists at the Guard (owner \"\" or \"admin\" both deny) — a safe 403, never another tenant's rows. Non-super, membership-scoped views of the platform-owned entities (e.g. an org console's own app list keyed on Application.Organization) are a separate, additive surface, not a silent behavior of this generic lister.
  Future<void> getIamGetPermissions() async {
    final response = await getIamGetPermissionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Reads one record — the older spelling of the single reads on the REST surface, over the same data and the same permissions.
  ///
  /// Reads one record — the older spelling of the single reads on the REST surface, over the same data and the same permissions.  Secrets are stripped. Naming a record in another organization does not reach it, however the request spells it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamGetProviderWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/get-provider';

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

  /// Reads one record — the older spelling of the single reads on the REST surface, over the same data and the same permissions.
  ///
  /// Reads one record — the older spelling of the single reads on the REST surface, over the same data and the same permissions.  Secrets are stripped. Naming a record in another organization does not reach it, however the request spells it.
  Future<void> getIamGetProvider() async {
    final response = await getIamGetProviderWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.
  ///
  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.  Secrets are stripped from every row. Send both a page number and a page size to page, and the total comes back alongside; send neither and you get the whole set. You see your own organization and no other, whatever the request asks for.  Scoping note (intentional, fail-closed): iam's ownership model is mixed — users/roles/permissions are owned by their tenant org, while organizations/ applications/providers/certs are platform-owned (Owner \"admin\"). A SuperAdmin (Scope → the requested owner, empty = all) therefore lists every entity, which is the console-admin path. A non-super is pinned by Scope to its own org, so it lists its tenant-owned entities correctly and is refused the platform-owned lists at the Guard (owner \"\" or \"admin\" both deny) — a safe 403, never another tenant's rows. Non-super, membership-scoped views of the platform-owned entities (e.g. an org console's own app list keyed on Application.Organization) are a separate, additive surface, not a silent behavior of this generic lister.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamGetProvidersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/get-providers';

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

  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.
  ///
  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.  Secrets are stripped from every row. Send both a page number and a page size to page, and the total comes back alongside; send neither and you get the whole set. You see your own organization and no other, whatever the request asks for.  Scoping note (intentional, fail-closed): iam's ownership model is mixed — users/roles/permissions are owned by their tenant org, while organizations/ applications/providers/certs are platform-owned (Owner \"admin\"). A SuperAdmin (Scope → the requested owner, empty = all) therefore lists every entity, which is the console-admin path. A non-super is pinned by Scope to its own org, so it lists its tenant-owned entities correctly and is refused the platform-owned lists at the Guard (owner \"\" or \"admin\" both deny) — a safe 403, never another tenant's rows. Non-super, membership-scoped views of the platform-owned entities (e.g. an org console's own app list keyed on Application.Organization) are a separate, additive surface, not a silent behavior of this generic lister.
  Future<void> getIamGetProviders() async {
    final response = await getIamGetProvidersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.
  ///
  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.  Secrets are stripped from every row. Send both a page number and a page size to page, and the total comes back alongside; send neither and you get the whole set. You see your own organization and no other, whatever the request asks for.  Scoping note (intentional, fail-closed): iam's ownership model is mixed — users/roles/permissions are owned by their tenant org, while organizations/ applications/providers/certs are platform-owned (Owner \"admin\"). A SuperAdmin (Scope → the requested owner, empty = all) therefore lists every entity, which is the console-admin path. A non-super is pinned by Scope to its own org, so it lists its tenant-owned entities correctly and is refused the platform-owned lists at the Guard (owner \"\" or \"admin\" both deny) — a safe 403, never another tenant's rows. Non-super, membership-scoped views of the platform-owned entities (e.g. an org console's own app list keyed on Application.Organization) are a separate, additive surface, not a silent behavior of this generic lister.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamGetRecordsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/get-records';

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

  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.
  ///
  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.  Secrets are stripped from every row. Send both a page number and a page size to page, and the total comes back alongside; send neither and you get the whole set. You see your own organization and no other, whatever the request asks for.  Scoping note (intentional, fail-closed): iam's ownership model is mixed — users/roles/permissions are owned by their tenant org, while organizations/ applications/providers/certs are platform-owned (Owner \"admin\"). A SuperAdmin (Scope → the requested owner, empty = all) therefore lists every entity, which is the console-admin path. A non-super is pinned by Scope to its own org, so it lists its tenant-owned entities correctly and is refused the platform-owned lists at the Guard (owner \"\" or \"admin\" both deny) — a safe 403, never another tenant's rows. Non-super, membership-scoped views of the platform-owned entities (e.g. an org console's own app list keyed on Application.Organization) are a separate, additive surface, not a silent behavior of this generic lister.
  Future<void> getIamGetRecords() async {
    final response = await getIamGetRecordsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Reads one record — the older spelling of the single reads on the REST surface, over the same data and the same permissions.
  ///
  /// Reads one record — the older spelling of the single reads on the REST surface, over the same data and the same permissions.  Secrets are stripped. Naming a record in another organization does not reach it, however the request spells it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamGetRoleWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/get-role';

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

  /// Reads one record — the older spelling of the single reads on the REST surface, over the same data and the same permissions.
  ///
  /// Reads one record — the older spelling of the single reads on the REST surface, over the same data and the same permissions.  Secrets are stripped. Naming a record in another organization does not reach it, however the request spells it.
  Future<void> getIamGetRole() async {
    final response = await getIamGetRoleWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.
  ///
  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.  Secrets are stripped from every row. Send both a page number and a page size to page, and the total comes back alongside; send neither and you get the whole set. You see your own organization and no other, whatever the request asks for.  Scoping note (intentional, fail-closed): iam's ownership model is mixed — users/roles/permissions are owned by their tenant org, while organizations/ applications/providers/certs are platform-owned (Owner \"admin\"). A SuperAdmin (Scope → the requested owner, empty = all) therefore lists every entity, which is the console-admin path. A non-super is pinned by Scope to its own org, so it lists its tenant-owned entities correctly and is refused the platform-owned lists at the Guard (owner \"\" or \"admin\" both deny) — a safe 403, never another tenant's rows. Non-super, membership-scoped views of the platform-owned entities (e.g. an org console's own app list keyed on Application.Organization) are a separate, additive surface, not a silent behavior of this generic lister.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamGetRolesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/get-roles';

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

  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.
  ///
  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.  Secrets are stripped from every row. Send both a page number and a page size to page, and the total comes back alongside; send neither and you get the whole set. You see your own organization and no other, whatever the request asks for.  Scoping note (intentional, fail-closed): iam's ownership model is mixed — users/roles/permissions are owned by their tenant org, while organizations/ applications/providers/certs are platform-owned (Owner \"admin\"). A SuperAdmin (Scope → the requested owner, empty = all) therefore lists every entity, which is the console-admin path. A non-super is pinned by Scope to its own org, so it lists its tenant-owned entities correctly and is refused the platform-owned lists at the Guard (owner \"\" or \"admin\" both deny) — a safe 403, never another tenant's rows. Non-super, membership-scoped views of the platform-owned entities (e.g. an org console's own app list keyed on Application.Organization) are a separate, additive surface, not a silent behavior of this generic lister.
  Future<void> getIamGetRoles() async {
    final response = await getIamGetRolesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Reads one person, two ways.
  ///
  /// Reads one person, two ways.  Name them and it is an ordinary read, with secrets stripped. Or hand it a SECRET API key and it answers with the person that key belongs to — how a service of yours turns a credential on an incoming request into an identity.  A publishable key resolves to nobody here, deliberately: it is safe to ship in a browser precisely because it names an organization and never a person.  get-user is handler-authorized (authz.handlerAuthorizedExact) because the key variant carries no owner/name for the Guard to authorize; so the owner/name variant reinstates the SAME read authorization the Guard applies, through the ONE policy function (authz.Can) — identical behavior, a cross-tenant or non-self read still refused 403 — then reuses the generic getHandler verbatim for resolution and redaction. No authz and no CRUD is reimplemented.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamGetUserWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/get-user';

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

  /// Reads one person, two ways.
  ///
  /// Reads one person, two ways.  Name them and it is an ordinary read, with secrets stripped. Or hand it a SECRET API key and it answers with the person that key belongs to — how a service of yours turns a credential on an incoming request into an identity.  A publishable key resolves to nobody here, deliberately: it is safe to ship in a browser precisely because it names an organization and never a person.  get-user is handler-authorized (authz.handlerAuthorizedExact) because the key variant carries no owner/name for the Guard to authorize; so the owner/name variant reinstates the SAME read authorization the Guard applies, through the ONE policy function (authz.Can) — identical behavior, a cross-tenant or non-self read still refused 403 — then reuses the generic getHandler verbatim for resolution and redaction. No authz and no CRUD is reimplemented.
  Future<void> getIamGetUser() async {
    final response = await getIamGetUserWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.
  ///
  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.  Secrets are stripped from every row. Send both a page number and a page size to page, and the total comes back alongside; send neither and you get the whole set. You see your own organization and no other, whatever the request asks for.  Scoping note (intentional, fail-closed): iam's ownership model is mixed — users/roles/permissions are owned by their tenant org, while organizations/ applications/providers/certs are platform-owned (Owner \"admin\"). A SuperAdmin (Scope → the requested owner, empty = all) therefore lists every entity, which is the console-admin path. A non-super is pinned by Scope to its own org, so it lists its tenant-owned entities correctly and is refused the platform-owned lists at the Guard (owner \"\" or \"admin\" both deny) — a safe 403, never another tenant's rows. Non-super, membership-scoped views of the platform-owned entities (e.g. an org console's own app list keyed on Application.Organization) are a separate, additive surface, not a silent behavior of this generic lister.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamGetUsersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/get-users';

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

  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.
  ///
  /// Lists one kind of record in your organization — the older spelling of the collection reads on the REST surface, over the same data and the same permissions.  Secrets are stripped from every row. Send both a page number and a page size to page, and the total comes back alongside; send neither and you get the whole set. You see your own organization and no other, whatever the request asks for.  Scoping note (intentional, fail-closed): iam's ownership model is mixed — users/roles/permissions are owned by their tenant org, while organizations/ applications/providers/certs are platform-owned (Owner \"admin\"). A SuperAdmin (Scope → the requested owner, empty = all) therefore lists every entity, which is the console-admin path. A non-super is pinned by Scope to its own org, so it lists its tenant-owned entities correctly and is refused the platform-owned lists at the Guard (owner \"\" or \"admin\" both deny) — a safe 403, never another tenant's rows. Non-super, membership-scoped views of the platform-owned entities (e.g. an org console's own app list keyed on Application.Organization) are a separate, additive surface, not a silent behavior of this generic lister.
  Future<void> getIamGetUsers() async {
    final response = await getIamGetUsersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns your organization's invitations, newest first — who has been asked to join, on what terms, and how many seats each invitation still has left.
  ///
  /// Returns your organization's invitations, newest first — who has been asked to join, on what terms, and how many seats each invitation still has left.  You see your own organization's invitations and no one else's; which organization that is comes from your credentials, not from the request.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  Future<Response> getIamInvitationsWithHttpInfo({ String? owner, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/invitations';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (owner != null) {
      queryParams.addAll(_queryParams('', 'owner', owner));
    }

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

  /// Returns your organization's invitations, newest first — who has been asked to join, on what terms, and how many seats each invitation still has left.
  ///
  /// Returns your organization's invitations, newest first — who has been asked to join, on what terms, and how many seats each invitation still has left.  You see your own organization's invitations and no one else's; which organization that is comes from your credentials, not from the request.
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  Future<IamInvitationsListOutput?> getIamInvitations({ String? owner, }) async {
    final response = await getIamInvitationsWithHttpInfo( owner: owner, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamInvitationsListOutput',) as IamInvitationsListOutput;
    
    }
    return null;
  }

  /// Returns your organization's API keys, newest first — what each is called, what it may reach, and its publishable half.
  ///
  /// Returns your organization's API keys, newest first — what each is called, what it may reach, and its publishable half. Secret halves are never listed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  Future<Response> getIamKeysWithHttpInfo({ String? owner, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/keys';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (owner != null) {
      queryParams.addAll(_queryParams('', 'owner', owner));
    }

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

  /// Returns your organization's API keys, newest first — what each is called, what it may reach, and its publishable half.
  ///
  /// Returns your organization's API keys, newest first — what each is called, what it may reach, and its publishable half. Secret halves are never listed.
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  Future<IamListResponse?> getIamKeys({ String? owner, }) async {
    final response = await getIamKeysWithHttpInfo( owner: owner, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamListResponse',) as IamListResponse;
    
    }
    return null;
  }

  /// Returns one API key: what it is called, what it may reach, and when it was issued.
  ///
  /// Returns one API key: what it is called, what it may reach, and when it was issued.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  ///
  /// * [String] name:
  Future<Response> getIamKeysGetWithHttpInfo({ String? owner, String? name, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/keys/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (owner != null) {
      queryParams.addAll(_queryParams('', 'owner', owner));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }

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

  /// Returns one API key: what it is called, what it may reach, and when it was issued.
  ///
  /// Returns one API key: what it is called, what it may reach, and when it was issued.
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  ///
  /// * [String] name:
  Future<IamKey?> getIamKeysGet({ String? owner, String? name, }) async {
    final response = await getIamKeysGetWithHttpInfo( owner: owner, name: name, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamKey',) as IamKey;
    
    }
    return null;
  }

  /// Returns the sign-in identities linked to the calling person's account — every provider they can currently sign in with.
  ///
  /// Returns the sign-in identities linked to the calling person's account — every provider they can currently sign in with. It is what a security page lists next to the option to disconnect one.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamLinkedAccountsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/linked-accounts';

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

  /// Returns the sign-in identities linked to the calling person's account — every provider they can currently sign in with.
  ///
  /// Returns the sign-in identities linked to the calling person's account — every provider they can currently sign in with. It is what a security page lists next to the option to disconnect one.
  Future<void> getIamLinkedAccounts() async {
    final response = await getIamLinkedAccountsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Answers either question about who belongs where: which organizations one person can act in, or who can act in one organization.
  ///
  /// Answers either question about who belongs where: which organizations one person can act in, or who can act in one organization.  Both are org-scoped: a non-SuperAdmin may ask about ITS OWN org's roster, or about a user whose home org is its own, and nothing else. The bound comes from the verified credential via authz.Scope, so a request parameter can never widen it — a membership row names who may act and spend in an org, so a cross-tenant read is a customer roster leak.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] user:
  ///   User is \"<homeOrg>/<username>\" — which organizations that identity may act in.
  ///
  /// * [String] org:
  ///   Org is an organization — who may act in it.
  Future<Response> getIamMembershipsWithHttpInfo({ String? user, String? org, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/memberships';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (user != null) {
      queryParams.addAll(_queryParams('', 'user', user));
    }
    if (org != null) {
      queryParams.addAll(_queryParams('', 'org', org));
    }

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

  /// Answers either question about who belongs where: which organizations one person can act in, or who can act in one organization.
  ///
  /// Answers either question about who belongs where: which organizations one person can act in, or who can act in one organization.  Both are org-scoped: a non-SuperAdmin may ask about ITS OWN org's roster, or about a user whose home org is its own, and nothing else. The bound comes from the verified credential via authz.Scope, so a request parameter can never widen it — a membership row names who may act and spend in an org, so a cross-tenant read is a customer roster leak.
  ///
  /// Parameters:
  ///
  /// * [String] user:
  ///   User is \"<homeOrg>/<username>\" — which organizations that identity may act in.
  ///
  /// * [String] org:
  ///   Org is an organization — who may act in it.
  Future<IamAnswer?> getIamMemberships({ String? user, String? org, }) async {
    final response = await getIamMembershipsWithHttpInfo( user: user, org: org, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamAnswer',) as IamAnswer;
    
    }
    return null;
  }

  /// Starts a sign-in — the address you send a browser to, and the beginning of every OAuth and OpenID Connect flow.
  ///
  /// Starts a sign-in — the address you send a browser to, and the beginning of every OAuth and OpenID Connect flow.  If the person is ALREADY signed in here, it does not ask them again: it returns them to the application with a one-time code and they never see this page. Otherwise it shows the right way to sign in for the application they are signing in to, or hands off to another identity provider if that is what they pick.  A client can say what it wants with `prompt`: `none` means answer without any screen at all — with the code if a session exists, with an error if not, but never with a page; `login` means ask for the password again even if a session exists; `select_account` means let the person choose which identity to use.  It returns only to an address the application has registered. That check happens before anything else, so a request naming an unregistered address is refused where the person can see it rather than being bounced onwards.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamOauthAuthorizeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/oauth/authorize';

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

  /// Starts a sign-in — the address you send a browser to, and the beginning of every OAuth and OpenID Connect flow.
  ///
  /// Starts a sign-in — the address you send a browser to, and the beginning of every OAuth and OpenID Connect flow.  If the person is ALREADY signed in here, it does not ask them again: it returns them to the application with a one-time code and they never see this page. Otherwise it shows the right way to sign in for the application they are signing in to, or hands off to another identity provider if that is what they pick.  A client can say what it wants with `prompt`: `none` means answer without any screen at all — with the code if a session exists, with an error if not, but never with a page; `login` means ask for the password again even if a session exists; `select_account` means let the person choose which identity to use.  It returns only to an address the application has registered. That check happens before anything else, so a request naming an unregistered address is refused where the person can see it rather than being bounced onwards.
  Future<void> getIamOauthAuthorize() async {
    final response = await getIamOauthAuthorizeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Completes the round-trip: it resolves and burns the single-use transaction (checking expiry + browser binding), exchanges and verifies the IdP response, links or provisions the local user, and mints the iam authorization code the relying party expects — then redirects to the original redirect_uri with code + state.
  ///
  /// Completes the round-trip: it resolves and burns the single-use transaction (checking expiry + browser binding), exchanges and verifies the IdP response, links or provisions the local user, and mints the iam authorization code the relying party expects — then redirects to the original redirect_uri with code + state.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamOauthCallbackWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/oauth/callback';

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

  /// Completes the round-trip: it resolves and burns the single-use transaction (checking expiry + browser binding), exchanges and verifies the IdP response, links or provisions the local user, and mints the iam authorization code the relying party expects — then redirects to the original redirect_uri with code + state.
  ///
  /// Completes the round-trip: it resolves and burns the single-use transaction (checking expiry + browser binding), exchanges and verifies the IdP response, links or provisions the local user, and mints the iam authorization code the relying party expects — then redirects to the original redirect_uri with code + state.
  Future<void> getIamOauthCallback() async {
    final response = await getIamOauthCallbackWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Ends a sign-in and sends the browser somewhere sensible.
  ///
  /// Ends a sign-in and sends the browser somewhere sensible. Accepts GET or POST, so it works as a plain link.  It ACTUALLY signs you out, which is worth stating because the endpoint spent a release not doing it: the whole body computed a redirect and answered {\"status\":\"ok\"} unconditionally — no session ended, no token revoked. A logout that reports success while leaving the session live is worse than no logout at all, because the person on the shared machine believes it worked. Three things happen here now, in this order:   1. The browser session dies — sid revoked server-side AND the cookie expired     (sessions.Clear). Server-side revocation is the load-bearing half: a copy     of the cookie taken before logout must not still resolve.  2. The relying party's tokens are revoked when an id_token_hint names it, so     the refresh token cannot mint a fresh access token after the human left.     Revocation state is authoritative — a JWT's `exp` still reads valid for     days, so expiry is necessary but never sufficient.  3. Only then is a redirect considered, and only to a REGISTERED uri.  The open-redirect guard is unchanged: a redirect happens only when a VERIFIED id_token_hint identifies the application and that application has registered the target. Anything else refuses to redirect — nobody can turn your logout link into a redirect to a site of their choosing.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamOauthLogoutWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/oauth/logout';

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

  /// Ends a sign-in and sends the browser somewhere sensible.
  ///
  /// Ends a sign-in and sends the browser somewhere sensible. Accepts GET or POST, so it works as a plain link.  It ACTUALLY signs you out, which is worth stating because the endpoint spent a release not doing it: the whole body computed a redirect and answered {\"status\":\"ok\"} unconditionally — no session ended, no token revoked. A logout that reports success while leaving the session live is worse than no logout at all, because the person on the shared machine believes it worked. Three things happen here now, in this order:   1. The browser session dies — sid revoked server-side AND the cookie expired     (sessions.Clear). Server-side revocation is the load-bearing half: a copy     of the cookie taken before logout must not still resolve.  2. The relying party's tokens are revoked when an id_token_hint names it, so     the refresh token cannot mint a fresh access token after the human left.     Revocation state is authoritative — a JWT's `exp` still reads valid for     days, so expiry is necessary but never sufficient.  3. Only then is a redirect considered, and only to a REGISTERED uri.  The open-redirect guard is unchanged: a redirect happens only when a VERIFIED id_token_hint identifies the application and that application has registered the target. Anything else refuses to redirect — nobody can turn your logout link into a redirect to a site of their choosing.
  Future<void> getIamOauthLogout() async {
    final response = await getIamOauthLogoutWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the profile claims for whoever the access token belongs to — the standard OpenID Connect way to find out who is calling you without your application storing anything itself.
  ///
  /// Returns the profile claims for whoever the access token belongs to — the standard OpenID Connect way to find out who is calling you without your application storing anything itself.  The token must still be live: revoke it and this stops answering.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamOauthUserinfoWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/oauth/userinfo';

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

  /// Returns the profile claims for whoever the access token belongs to — the standard OpenID Connect way to find out who is calling you without your application storing anything itself.
  ///
  /// Returns the profile claims for whoever the access token belongs to — the standard OpenID Connect way to find out who is calling you without your application storing anything itself.  The token must still be live: revoke it and this stops answering.
  Future<void> getIamOauthUserinfo() async {
    final response = await getIamOauthUserinfoWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the permissions in one organization, newest first — each one a grant saying which people or roles may do what, and to which resources.
  ///
  /// Returns the permissions in one organization, newest first — each one a grant saying which people or roles may do what, and to which resources.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  Future<Response> getIamPermissionsWithHttpInfo({ String? owner, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/permissions';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (owner != null) {
      queryParams.addAll(_queryParams('', 'owner', owner));
    }

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

  /// Returns the permissions in one organization, newest first — each one a grant saying which people or roles may do what, and to which resources.
  ///
  /// Returns the permissions in one organization, newest first — each one a grant saying which people or roles may do what, and to which resources.
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  Future<IamPermissionListResponse?> getIamPermissions({ String? owner, }) async {
    final response = await getIamPermissionsWithHttpInfo( owner: owner, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamPermissionListResponse',) as IamPermissionListResponse;
    
    }
    return null;
  }

  /// Returns one permission: who it grants to, what it allows, and the resources it covers.
  ///
  /// Returns one permission: who it grants to, what it allows, and the resources it covers.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  ///
  /// * [String] name:
  Future<Response> getIamPermissionsGetWithHttpInfo({ String? owner, String? name, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/permissions/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (owner != null) {
      queryParams.addAll(_queryParams('', 'owner', owner));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }

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

  /// Returns one permission: who it grants to, what it allows, and the resources it covers.
  ///
  /// Returns one permission: who it grants to, what it allows, and the resources it covers.
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  ///
  /// * [String] name:
  Future<IamPermission?> getIamPermissionsGet({ String? owner, String? name, }) async {
    final response = await getIamPermissionsGetWithHttpInfo( owner: owner, name: name, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamPermission',) as IamPermission;
    
    }
    return null;
  }

  /// Returns your organization's projects, newest first — the scope people pick between when their work is separated by product or client rather than by team.
  ///
  /// Returns your organization's projects, newest first — the scope people pick between when their work is separated by product or client rather than by team.  You see your own organization's projects and no one else's; which organization that is comes from your credentials, not from the request.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  Future<Response> getIamProjectsWithHttpInfo({ String? owner, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/projects';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (owner != null) {
      queryParams.addAll(_queryParams('', 'owner', owner));
    }

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

  /// Returns your organization's projects, newest first — the scope people pick between when their work is separated by product or client rather than by team.
  ///
  /// Returns your organization's projects, newest first — the scope people pick between when their work is separated by product or client rather than by team.  You see your own organization's projects and no one else's; which organization that is comes from your credentials, not from the request.
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  Future<IamProjectsListOutput?> getIamProjects({ String? owner, }) async {
    final response = await getIamProjectsWithHttpInfo( owner: owner, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamProjectsListOutput',) as IamProjectsListOutput;
    
    }
    return null;
  }

  /// Publishes the public key your registry uses to verify the tokens issued above — the one URL to configure so the registry trusts logins without holding any secret of its own.
  ///
  /// Publishes the public key your registry uses to verify the tokens issued above — the one URL to configure so the registry trusts logins without holding any secret of its own.  If no signing key is available it refuses rather than publishing an empty set, because a registry that trusts nothing looks identical to one that trusts everything until somebody tries to push.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamRegistryJwksWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/registry/jwks';

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

  /// Publishes the public key your registry uses to verify the tokens issued above — the one URL to configure so the registry trusts logins without holding any secret of its own.
  ///
  /// Publishes the public key your registry uses to verify the tokens issued above — the one URL to configure so the registry trusts logins without holding any secret of its own.  If no signing key is available it refuses rather than publishing an empty set, because a registry that trusts nothing looks identical to one that trusts everything until somebody tries to push.
  Future<void> getIamRegistryJwks() async {
    final response = await getIamRegistryJwksWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Signs a container client in to your registry.
  ///
  /// Signs a container client in to your registry. `docker login`, and every build tool that pushes or pulls images, lands here: it exchanges the credential for a short-lived token scoped to exactly the repositories that credential may touch.  Both of the shapes container tooling uses are accepted, so the same login works whichever client your pipeline runs.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamRegistryTokenWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/registry/token';

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

  /// Signs a container client in to your registry.
  ///
  /// Signs a container client in to your registry. `docker login`, and every build tool that pushes or pulls images, lands here: it exchanges the credential for a short-lived token scoped to exactly the repositories that credential may touch.  Both of the shapes container tooling uses are accepted, so the same login works whichever client your pipeline runs.
  Future<void> getIamRegistryToken() async {
    final response = await getIamRegistryTokenWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Answers which organization a PUBLISHABLE key belongs to — what a service of yours calls to attribute a request that arrived carrying a key shipped in a browser.
  ///
  /// Answers which organization a PUBLISHABLE key belongs to — what a service of yours calls to attribute a request that arrived carrying a key shipped in a browser.  It names an organization and never a person: no path through it can load or return a user, so a key you put in client code cannot become a way to learn who anyone is. A key that is expired, secret rather than publishable, or simply unknown all answer with the same sentence, and with a `code` saying which of those it was. Only a confidential service that already proved it may resolve keys at all ever reads that code — there is no anonymous caller here to probe for which keys exist — and telling it apart is what lets the holder be told to re-mint an expired key instead of hunting a configuration error.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamResolveKeyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/resolve-key';

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

  /// Answers which organization a PUBLISHABLE key belongs to — what a service of yours calls to attribute a request that arrived carrying a key shipped in a browser.
  ///
  /// Answers which organization a PUBLISHABLE key belongs to — what a service of yours calls to attribute a request that arrived carrying a key shipped in a browser.  It names an organization and never a person: no path through it can load or return a user, so a key you put in client code cannot become a way to learn who anyone is. A key that is expired, secret rather than publishable, or simply unknown all answer with the same sentence, and with a `code` saying which of those it was. Only a confidential service that already proved it may resolve keys at all ever reads that code — there is no anonymous caller here to probe for which keys exist — and telling it apart is what lets the holder be told to re-mint an expired key instead of hunting a configuration error.
  Future<void> getIamResolveKey() async {
    final response = await getIamResolveKeyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns your organization's roles, newest first — each a named group of people that permissions are granted to.
  ///
  /// Returns your organization's roles, newest first — each a named group of people that permissions are granted to.  You see your own organization's roles and no one else's; which organization that is comes from your credentials, not from the request.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  Future<Response> getIamRolesWithHttpInfo({ String? owner, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/roles';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (owner != null) {
      queryParams.addAll(_queryParams('', 'owner', owner));
    }

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

  /// Returns your organization's roles, newest first — each a named group of people that permissions are granted to.
  ///
  /// Returns your organization's roles, newest first — each a named group of people that permissions are granted to.  You see your own organization's roles and no one else's; which organization that is comes from your credentials, not from the request.
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  Future<IamRolesListOutput?> getIamRoles({ String? owner, }) async {
    final response = await getIamRolesWithHttpInfo( owner: owner, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamRolesListOutput',) as IamRolesListOutput;
    
    }
    return null;
  }

  /// Returns the kinds of record this directory provisions and the address of each, so your identity provider discovers them rather than having them configured by hand.
  ///
  /// Returns the kinds of record this directory provisions and the address of each, so your identity provider discovers them rather than having them configured by hand.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamScimV2ResourcetypesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/scim/v2/ResourceTypes';

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

  /// Returns the kinds of record this directory provisions and the address of each, so your identity provider discovers them rather than having them configured by hand.
  ///
  /// Returns the kinds of record this directory provisions and the address of each, so your identity provider discovers them rather than having them configured by hand.
  Future<IamListResponse?> getIamScimV2Resourcetypes() async {
    final response = await getIamScimV2ResourcetypesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamListResponse',) as IamListResponse;
    
    }
    return null;
  }

  /// Returns one provisionable record kind in full.
  ///
  /// Returns one provisionable record kind in full.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<Response> getIamScimV2ResourcetypesByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/scim/v2/ResourceTypes/{name}'
      .replaceAll('{name}', name);

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

  /// Returns one provisionable record kind in full.
  ///
  /// Returns one provisionable record kind in full.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<Object?> getIamScimV2ResourcetypesByName(String name,) async {
    final response = await getIamScimV2ResourcetypesByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Returns the attribute definitions this directory understands, so your identity provider knows which fields it may send and what they mean before it sends any.
  ///
  /// Returns the attribute definitions this directory understands, so your identity provider knows which fields it may send and what they mean before it sends any.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamScimV2SchemasWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/scim/v2/Schemas';

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

  /// Returns the attribute definitions this directory understands, so your identity provider knows which fields it may send and what they mean before it sends any.
  ///
  /// Returns the attribute definitions this directory understands, so your identity provider knows which fields it may send and what they mean before it sends any.
  Future<IamListResponse?> getIamScimV2Schemas() async {
    final response = await getIamScimV2SchemasWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamListResponse',) as IamListResponse;
    
    }
    return null;
  }

  /// Returns one attribute definition in full.
  ///
  /// Returns one attribute definition in full.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getIamScimV2SchemasByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/scim/v2/Schemas/{id}'
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

  /// Returns one attribute definition in full.
  ///
  /// Returns one attribute definition in full.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Object?> getIamScimV2SchemasById(String id,) async {
    final response = await getIamScimV2SchemasByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Tells your identity provider which parts of SCIM this directory supports, so it configures itself instead of you filling in a form.
  ///
  /// Tells your identity provider which parts of SCIM this directory supports, so it configures itself instead of you filling in a form.  Filtering and partial updates are supported. Bulk operations, sorting and entity tags are not — an IdP that reads this will not attempt them.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamScimV2ServiceproviderconfigWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/scim/v2/ServiceProviderConfig';

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

  /// Tells your identity provider which parts of SCIM this directory supports, so it configures itself instead of you filling in a form.
  ///
  /// Tells your identity provider which parts of SCIM this directory supports, so it configures itself instead of you filling in a form.  Filtering and partial updates are supported. Bulk operations, sorting and entity tags are not — an IdP that reads this will not attempt them.
  Future<IamConfig?> getIamScimV2Serviceproviderconfig() async {
    final response = await getIamScimV2ServiceproviderconfigWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamConfig',) as IamConfig;
    
    }
    return null;
  }

  /// Returns the people in your organization to your identity provider, in the standard SCIM shape, so an IdP can reconcile its directory against ours.
  ///
  /// Returns the people in your organization to your identity provider, in the standard SCIM shape, so an IdP can reconcile its directory against ours. Searchable by username or email address, and paged.  Reading the whole list takes an administrator; an ordinary person is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamScimV2UsersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/scim/v2/Users';

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

  /// Returns the people in your organization to your identity provider, in the standard SCIM shape, so an IdP can reconcile its directory against ours.
  ///
  /// Returns the people in your organization to your identity provider, in the standard SCIM shape, so an IdP can reconcile its directory against ours. Searchable by username or email address, and paged.  Reading the whole list takes an administrator; an ordinary person is refused.
  Future<void> getIamScimV2Users() async {
    final response = await getIamScimV2UsersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns one person in the standard SCIM shape.
  ///
  /// Returns one person in the standard SCIM shape. An administrator may read anyone in the organization; everyone else may read only themselves.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> getIamScimV2UsersByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/scim/v2/Users/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

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

  /// Returns one person in the standard SCIM shape.
  ///
  /// Returns one person in the standard SCIM shape. An administrator may read anyone in the organization; everyone else may read only themselves.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> getIamScimV2UsersByOwnerByName(String owner, String name,) async {
    final response = await getIamScimV2UsersByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns your organization's service accounts — what each is called and when it was created.
  ///
  /// Returns your organization's service accounts — what each is called and when it was created. Never their secrets: a key's secret half exists in a response exactly once, when it is minted. Paginated in memory over the already org-scoped slice — the set per org is small, so a dedicated count query is overkill (v1 service_account.go:296-307).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization:
  ///   Organization is the organization whose service accounts to list. Required.
  ///
  /// * [int] p:
  ///   P is the 1-indexed page to return. Paging takes both p and pageSize — leave either out, or send something that is not a number, and the whole list comes back.
  ///
  /// * [int] pageSize:
  ///   Size is how many accounts a page holds.
  Future<Response> getIamServiceAccountsWithHttpInfo({ String? organization, int? p, int? pageSize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/service-accounts';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (organization != null) {
      queryParams.addAll(_queryParams('', 'organization', organization));
    }
    if (p != null) {
      queryParams.addAll(_queryParams('', 'p', p));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
    }

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

  /// Returns your organization's service accounts — what each is called and when it was created.
  ///
  /// Returns your organization's service accounts — what each is called and when it was created. Never their secrets: a key's secret half exists in a response exactly once, when it is minted. Paginated in memory over the already org-scoped slice — the set per org is small, so a dedicated count query is overkill (v1 service_account.go:296-307).
  ///
  /// Parameters:
  ///
  /// * [String] organization:
  ///   Organization is the organization whose service accounts to list. Required.
  ///
  /// * [int] p:
  ///   P is the 1-indexed page to return. Paging takes both p and pageSize — leave either out, or send something that is not a number, and the whole list comes back.
  ///
  /// * [int] pageSize:
  ///   Size is how many accounts a page holds.
  Future<IamAnswer?> getIamServiceAccounts({ String? organization, int? p, int? pageSize, }) async {
    final response = await getIamServiceAccountsWithHttpInfo( organization: organization, p: p, pageSize: pageSize, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamAnswer',) as IamAnswer;
    
    }
    return null;
  }

  /// Returns a page of the people in your organization, with the total so you can page through the rest.
  ///
  /// Returns a page of the people in your organization, with the total so you can page through the rest. Passwords, API secrets and MFA material are stripped from every entry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [int] limit:
  ///
  /// * [int] offset:
  Future<Response> getIamUsersWithHttpInfo(String owner, { int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/users';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'owner', owner));
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }

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

  /// Returns a page of the people in your organization, with the total so you can page through the rest.
  ///
  /// Returns a page of the people in your organization, with the total so you can page through the rest. Passwords, API secrets and MFA material are stripped from every entry.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [int] limit:
  ///
  /// * [int] offset:
  Future<IamUsersListOutput?> getIamUsers(String owner, { int? limit, int? offset, }) async {
    final response = await getIamUsersWithHttpInfo(owner,  limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamUsersListOutput',) as IamUsersListOutput;
    
    }
    return null;
  }

  /// Returns one person in your organization, addressed by their username or by their email address.
  ///
  /// Returns one person in your organization, addressed by their username or by their email address. Passwords, API secrets and MFA material are stripped from the response.  An address that names two accounts names none: the read refuses rather than picking one, and says so instead of reporting \"no such user\". Handing back an arbitrary one of two rows is how somebody gets added to a team under a colleague's identity.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name:
  ///
  /// * [String] email:
  Future<Response> getIamUsersGetWithHttpInfo(String owner, { String? name, String? email, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/users/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'owner', owner));
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (email != null) {
      queryParams.addAll(_queryParams('', 'email', email));
    }

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

  /// Returns one person in your organization, addressed by their username or by their email address.
  ///
  /// Returns one person in your organization, addressed by their username or by their email address. Passwords, API secrets and MFA material are stripped from the response.  An address that names two accounts names none: the read refuses rather than picking one, and says so instead of reporting \"no such user\". Handing back an arbitrary one of two rows is how somebody gets added to a team under a colleague's identity.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name:
  ///
  /// * [String] email:
  Future<IamUser?> getIamUsersGet(String owner, { String? name, String? email, }) async {
    final response = await getIamUsersGetWithHttpInfo(owner,  name: name, email: email, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamUser',) as IamUser;
    
    }
    return null;
  }

  /// Starts a wallet sign-in: it returns a one-time challenge for the wallet to sign.
  ///
  /// Starts a wallet sign-in: it returns a one-time challenge for the wallet to sign. The challenge is good once and is tied to the site that asked for it, so a signature collected elsewhere cannot be replayed here.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamWeb3NonceWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/web3/nonce';

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

  /// Starts a wallet sign-in: it returns a one-time challenge for the wallet to sign.
  ///
  /// Starts a wallet sign-in: it returns a one-time challenge for the wallet to sign. The challenge is good once and is tied to the site that asked for it, so a signature collected elsewhere cannot be replayed here.
  Future<void> getIamWeb3Nonce() async {
    final response = await getIamWeb3NonceWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Publishes the public keys that verify the tokens issued here — the one URL you point a service at so it can check a token itself, offline, without calling back and without holding any secret of ours.
  ///
  /// Publishes the public keys that verify the tokens issued here — the one URL you point a service at so it can check a token itself, offline, without calling back and without holding any secret of ours.  Keys appear here before they start signing and stay after they stop, so a rotation never leaves a live token unverifiable. Nothing private is ever published.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamWellKnownJwksWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/.well-known/jwks';

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

  /// Publishes the public keys that verify the tokens issued here — the one URL you point a service at so it can check a token itself, offline, without calling back and without holding any secret of ours.
  ///
  /// Publishes the public keys that verify the tokens issued here — the one URL you point a service at so it can check a token itself, offline, without calling back and without holding any secret of ours.  Keys appear here before they start signing and stay after they stop, so a rotation never leaves a live token unverifiable. Nothing private is ever published.
  Future<void> getIamWellKnownJwks() async {
    final response = await getIamWellKnownJwksWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the OpenID Connect discovery document — the one URL you point a standards-compliant client at so it can find every other endpoint on its own, instead of you configuring them by hand.
  ///
  /// Returns the OpenID Connect discovery document — the one URL you point a standards-compliant client at so it can find every other endpoint on its own, instead of you configuring them by hand.  It advertises only what is actually implemented, so a client that reads it cannot ask for a flow that will fail: the authorization-code flow, PKCE with S256, the supported grants, and the signing algorithms whose public keys the JWKS really publishes.  The issuer is derived from the host you asked on and is the same value the tokens carry, so a client that pins the issuer never sees it change.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamWellKnownOauthAuthorizationServerWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/.well-known/oauth-authorization-server';

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

  /// Returns the OpenID Connect discovery document — the one URL you point a standards-compliant client at so it can find every other endpoint on its own, instead of you configuring them by hand.
  ///
  /// Returns the OpenID Connect discovery document — the one URL you point a standards-compliant client at so it can find every other endpoint on its own, instead of you configuring them by hand.  It advertises only what is actually implemented, so a client that reads it cannot ask for a flow that will fail: the authorization-code flow, PKCE with S256, the supported grants, and the signing algorithms whose public keys the JWKS really publishes.  The issuer is derived from the host you asked on and is the same value the tokens carry, so a client that pins the issuer never sees it change.
  Future<void> getIamWellKnownOauthAuthorizationServer() async {
    final response = await getIamWellKnownOauthAuthorizationServerWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the OpenID Connect discovery document — the one URL you point a standards-compliant client at so it can find every other endpoint on its own, instead of you configuring them by hand.
  ///
  /// Returns the OpenID Connect discovery document — the one URL you point a standards-compliant client at so it can find every other endpoint on its own, instead of you configuring them by hand.  It advertises only what is actually implemented, so a client that reads it cannot ask for a flow that will fail: the authorization-code flow, PKCE with S256, the supported grants, and the signing algorithms whose public keys the JWKS really publishes.  The issuer is derived from the host you asked on and is the same value the tokens carry, so a client that pins the issuer never sees it change.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamWellKnownOpenidConfigurationWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/.well-known/openid-configuration';

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

  /// Returns the OpenID Connect discovery document — the one URL you point a standards-compliant client at so it can find every other endpoint on its own, instead of you configuring them by hand.
  ///
  /// Returns the OpenID Connect discovery document — the one URL you point a standards-compliant client at so it can find every other endpoint on its own, instead of you configuring them by hand.  It advertises only what is actually implemented, so a client that reads it cannot ask for a flow that will fail: the authorization-code flow, PKCE with S256, the supported grants, and the signing algorithms whose public keys the JWKS really publishes.  The issuer is derived from the host you asked on and is the same value the tokens carry, so a client that pins the issuer never sees it change.
  Future<void> getIamWellKnownOpenidConfiguration() async {
    final response = await getIamWellKnownOpenidConfigurationWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Tells you who the current caller is — the lightweight check a page makes on load to decide whether to render signed-in or signed-out.
  ///
  /// Tells you who the current caller is — the lightweight check a page makes on load to decide whether to render signed-in or signed-out.  It answers for a session cookie or a bearer token alike, and says plainly when nobody is signed in rather than failing.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIamWhoamiWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/whoami';

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

  /// Tells you who the current caller is — the lightweight check a page makes on load to decide whether to render signed-in or signed-out.
  ///
  /// Tells you who the current caller is — the lightweight check a page makes on load to decide whether to render signed-in or signed-out.  It answers for a session cookie or a bearer token alike, and says plainly when nobody is signed in rather than failing.
  Future<void> getIamWhoami() async {
    final response = await getIamWhoamiWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns your organization's workspaces, newest first — the scope a team works in, alongside projects rather than instead of them.
  ///
  /// Returns your organization's workspaces, newest first — the scope a team works in, alongside projects rather than instead of them.  You see your own organization's workspaces and no one else's; which organization that is comes from your credentials, not from the request.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  Future<Response> getIamWorkspacesWithHttpInfo({ String? owner, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/workspaces';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (owner != null) {
      queryParams.addAll(_queryParams('', 'owner', owner));
    }

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

  /// Returns your organization's workspaces, newest first — the scope a team works in, alongside projects rather than instead of them.
  ///
  /// Returns your organization's workspaces, newest first — the scope a team works in, alongside projects rather than instead of them.  You see your own organization's workspaces and no one else's; which organization that is comes from your credentials, not from the request.
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  Future<IamWorkspacesListOutput?> getIamWorkspaces({ String? owner, }) async {
    final response = await getIamWorkspacesWithHttpInfo( owner: owner, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamWorkspacesListOutput',) as IamWorkspacesListOutput;
    
    }
    return null;
  }

  /// Returns one organization: its display, its defaults and the sign-in rules everyone in it inherits.
  ///
  /// Returns one organization: its display, its defaults and the sign-in rules everyone in it inherits.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  ///
  /// * [String] name:
  Future<Response> getOrganizationWithHttpInfo({ String? owner, String? name, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/organizations/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (owner != null) {
      queryParams.addAll(_queryParams('', 'owner', owner));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }

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

  /// Returns one organization: its display, its defaults and the sign-in rules everyone in it inherits.
  ///
  /// Returns one organization: its display, its defaults and the sign-in rules everyone in it inherits.
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  ///
  /// * [String] name:
  Future<IamOrganization?> getOrganization({ String? owner, String? name, }) async {
    final response = await getOrganizationWithHttpInfo( owner: owner, name: name, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamOrganization',) as IamOrganization;
    
    }
    return null;
  }

  /// Returns one provider: what it connects to and how it is configured.
  ///
  /// Returns one provider: what it connects to and how it is configured. Its credentials come back masked.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamProviderKey] iamProviderKey (required):
  Future<Response> getProviderWithHttpInfo(IamProviderKey iamProviderKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/providers/get';

    // ignore: prefer_final_locals
    Object? postBody = iamProviderKey;

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

  /// Returns one provider: what it connects to and how it is configured.
  ///
  /// Returns one provider: what it connects to and how it is configured. Its credentials come back masked.
  ///
  /// Parameters:
  ///
  /// * [IamProviderKey] iamProviderKey (required):
  Future<IamProviderResult?> getProvider(IamProviderKey iamProviderKey,) async {
    final response = await getProviderWithHttpInfo(iamProviderKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamProviderResult',) as IamProviderResult;
    
    }
    return null;
  }

  /// Returns one person's session in one application — when it began and which browsers or devices are still carrying it.
  ///
  /// Returns one person's session in one application — when it began and which browsers or devices are still carrying it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamSessionRef] iamSessionRef (required):
  Future<Response> getSessionWithHttpInfo(IamSessionRef iamSessionRef,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/sessions/get';

    // ignore: prefer_final_locals
    Object? postBody = iamSessionRef;

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

  /// Returns one person's session in one application — when it began and which browsers or devices are still carrying it.
  ///
  /// Returns one person's session in one application — when it began and which browsers or devices are still carrying it.
  ///
  /// Parameters:
  ///
  /// * [IamSessionRef] iamSessionRef (required):
  Future<IamSession?> getSession(IamSessionRef iamSessionRef,) async {
    final response = await getSessionWithHttpInfo(iamSessionRef,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamSession',) as IamSession;
    
    }
    return null;
  }

  /// Returns one access token: who and what it was issued to, and when it expires.
  ///
  /// Returns one access token: who and what it was issued to, and when it expires.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamTokenKey] iamTokenKey (required):
  Future<Response> getTokenWithHttpInfo(IamTokenKey iamTokenKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/tokens/get';

    // ignore: prefer_final_locals
    Object? postBody = iamTokenKey;

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

  /// Returns one access token: who and what it was issued to, and when it expires.
  ///
  /// Returns one access token: who and what it was issued to, and when it expires.
  ///
  /// Parameters:
  ///
  /// * [IamTokenKey] iamTokenKey (required):
  Future<IamTokenResult?> getToken(IamTokenKey iamTokenKey,) async {
    final response = await getTokenWithHttpInfo(iamTokenKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamTokenResult',) as IamTokenResult;
    
    }
    return null;
  }

  /// Returns one passkey or security key: whose it is, what device it lives on, and when it was registered.
  ///
  /// Returns one passkey or security key: whose it is, what device it lives on, and when it was registered.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamWebauthnCredentialKey] iamWebauthnCredentialKey (required):
  Future<Response> getWebauthnCredentialWithHttpInfo(IamWebauthnCredentialKey iamWebauthnCredentialKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/webauthn-credentials/get';

    // ignore: prefer_final_locals
    Object? postBody = iamWebauthnCredentialKey;

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

  /// Returns one passkey or security key: whose it is, what device it lives on, and when it was registered.
  ///
  /// Returns one passkey or security key: whose it is, what device it lives on, and when it was registered.
  ///
  /// Parameters:
  ///
  /// * [IamWebauthnCredentialKey] iamWebauthnCredentialKey (required):
  Future<IamWebauthnCredentialResult?> getWebauthnCredential(IamWebauthnCredentialKey iamWebauthnCredentialKey,) async {
    final response = await getWebauthnCredentialWithHttpInfo(iamWebauthnCredentialKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamWebauthnCredentialResult',) as IamWebauthnCredentialResult;
    
    }
    return null;
  }

  /// Returns the organizations you can see, newest first.
  ///
  /// Returns the organizations you can see, newest first. Narrow it to one parent account, and set a limit and offset to page through the rest.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  ///
  /// * [int] limit:
  ///
  /// * [int] offset:
  Future<Response> listOrganizationsWithHttpInfo({ String? owner, int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/organizations';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (owner != null) {
      queryParams.addAll(_queryParams('', 'owner', owner));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }

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

  /// Returns the organizations you can see, newest first.
  ///
  /// Returns the organizations you can see, newest first. Narrow it to one parent account, and set a limit and offset to page through the rest.
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  ///
  /// * [int] limit:
  ///
  /// * [int] offset:
  Future<IamListOrganizationsOutput?> listOrganizations({ String? owner, int? limit, int? offset, }) async {
    final response = await listOrganizationsWithHttpInfo( owner: owner, limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamListOrganizationsOutput',) as IamListOrganizationsOutput;
    
    }
    return null;
  }

  /// Returns your organization's providers, newest first — the identity providers your people sign in with, and the senders and connectors your applications go through.
  ///
  /// Returns your organization's providers, newest first — the identity providers your people sign in with, and the senders and connectors your applications go through.  You see your own organization's providers and no one else's; which organization that is comes from your credentials, not from the request.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  Future<Response> listProvidersWithHttpInfo({ String? owner, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/providers';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (owner != null) {
      queryParams.addAll(_queryParams('', 'owner', owner));
    }

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

  /// Returns your organization's providers, newest first — the identity providers your people sign in with, and the senders and connectors your applications go through.
  ///
  /// Returns your organization's providers, newest first — the identity providers your people sign in with, and the senders and connectors your applications go through.  You see your own organization's providers and no one else's; which organization that is comes from your credentials, not from the request.
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  Future<IamListProvidersOut?> listProviders({ String? owner, }) async {
    final response = await listProvidersWithHttpInfo( owner: owner, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamListProvidersOut',) as IamListProvidersOut;
    
    }
    return null;
  }

  /// Returns who is currently signed in to your organization, newest first, and can be narrowed to one person or one application.
  ///
  /// Returns who is currently signed in to your organization, newest first, and can be narrowed to one person or one application. It is what you read before signing someone out.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamListSessionsIn] iamListSessionsIn (required):
  Future<Response> listSessionsWithHttpInfo(IamListSessionsIn iamListSessionsIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/sessions/list';

    // ignore: prefer_final_locals
    Object? postBody = iamListSessionsIn;

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

  /// Returns who is currently signed in to your organization, newest first, and can be narrowed to one person or one application.
  ///
  /// Returns who is currently signed in to your organization, newest first, and can be narrowed to one person or one application. It is what you read before signing someone out.
  ///
  /// Parameters:
  ///
  /// * [IamListSessionsIn] iamListSessionsIn (required):
  Future<IamListSessionsOut?> listSessions(IamListSessionsIn iamListSessionsIn,) async {
    final response = await listSessionsWithHttpInfo(iamListSessionsIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamListSessionsOut',) as IamListSessionsOut;
    
    }
    return null;
  }

  /// Returns the access tokens issued in your organization, newest first, and can be narrowed to one organization.
  ///
  /// Returns the access tokens issued in your organization, newest first, and can be narrowed to one organization. Use it to see what is currently authorized before revoking anything.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  ///
  /// * [String] organization:
  Future<Response> listTokensWithHttpInfo({ String? owner, String? organization, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/tokens';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (owner != null) {
      queryParams.addAll(_queryParams('', 'owner', owner));
    }
    if (organization != null) {
      queryParams.addAll(_queryParams('', 'organization', organization));
    }

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

  /// Returns the access tokens issued in your organization, newest first, and can be narrowed to one organization.
  ///
  /// Returns the access tokens issued in your organization, newest first, and can be narrowed to one organization. Use it to see what is currently authorized before revoking anything.
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  ///
  /// * [String] organization:
  Future<IamListTokensOut?> listTokens({ String? owner, String? organization, }) async {
    final response = await listTokensWithHttpInfo( owner: owner, organization: organization, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamListTokensOut',) as IamListTokensOut;
    
    }
    return null;
  }

  /// Returns the passkeys and security keys registered in your organization, newest first — which device each belongs to and when it was last used.
  ///
  /// Returns the passkeys and security keys registered in your organization, newest first — which device each belongs to and when it was last used.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  Future<Response> listWebauthnCredentialsWithHttpInfo({ String? owner, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/webauthn-credentials';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (owner != null) {
      queryParams.addAll(_queryParams('', 'owner', owner));
    }

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

  /// Returns the passkeys and security keys registered in your organization, newest first — which device each belongs to and when it was last used.
  ///
  /// Returns the passkeys and security keys registered in your organization, newest first — which device each belongs to and when it was last used.
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  Future<IamListWebauthnCredentialsOut?> listWebauthnCredentials({ String? owner, }) async {
    final response = await listWebauthnCredentialsWithHttpInfo( owner: owner, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamListWebauthnCredentialsOut',) as IamListWebauthnCredentialsOut;
    
    }
    return null;
  }

  /// Applies a partial change from your identity provider — one attribute moved, not the whole record resent.
  ///
  /// Applies a partial change from your identity provider — one attribute moved, not the whole record resent.  The change is applied onto the person as they currently are, so everything you did not mention keeps its value, including the parts SCIM does not describe.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> patchIamScimV2UsersByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/scim/v2/Users/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Applies a partial change from your identity provider — one attribute moved, not the whole record resent.
  ///
  /// Applies a partial change from your identity provider — one attribute moved, not the whole record resent.  The change is applied onto the person as they currently are, so everything you did not mention keeps its value, including the parts SCIM does not describe.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> patchIamScimV2UsersByOwnerByName(String owner, String name,) async {
    final response = await patchIamScimV2UsersByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Registers an application in your organization — one product or site your people sign in to, with its own client credentials, sign-in methods and allowed redirect URIs.
  ///
  /// Registers an application in your organization — one product or site your people sign in to, with its own client credentials, sign-in methods and allowed redirect URIs.  The older spelling of POST /v1/iam/application. A name already used in the organization is refused rather than overwritten.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamApplication] iamApplication (required):
  Future<Response> postIamAddApplicationWithHttpInfo(IamApplication iamApplication,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/add-application';

    // ignore: prefer_final_locals
    Object? postBody = iamApplication;

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

  /// Registers an application in your organization — one product or site your people sign in to, with its own client credentials, sign-in methods and allowed redirect URIs.
  ///
  /// Registers an application in your organization — one product or site your people sign in to, with its own client credentials, sign-in methods and allowed redirect URIs.  The older spelling of POST /v1/iam/application. A name already used in the organization is refused rather than overwritten.
  ///
  /// Parameters:
  ///
  /// * [IamApplication] iamApplication (required):
  Future<IamResponse?> postIamAddApplication(IamApplication iamApplication,) async {
    final response = await postIamAddApplicationWithHttpInfo(iamApplication,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamResponse',) as IamResponse;
    
    }
    return null;
  }

  /// Lets a person or an application act in an organization.
  ///
  /// Lets a person or an application act in an organization. It is the grant behind \"add someone to the team\", and it is safe to repeat — granting a membership that already exists changes nothing. Granting membership IS the org's authority to give, so it takes the same gate a write to that org's own registry row takes: a SuperAdmin, an admin of the org itself, or an org-admin-capable confidential client. One rule, one place (internal/authz).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamAddMembershipWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/add-membership';

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

  /// Lets a person or an application act in an organization.
  ///
  /// Lets a person or an application act in an organization. It is the grant behind \"add someone to the team\", and it is safe to repeat — granting a membership that already exists changes nothing. Granting membership IS the org's authority to give, so it takes the same gate a write to that org's own registry row takes: a SuperAdmin, an admin of the org itself, or an org-admin-capable confidential client. One rule, one place (internal/authz).
  Future<void> postIamAddMembership() async {
    final response = await postIamAddMembershipWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Creates an organization — the account everything else in your directory hangs from.
  ///
  /// Creates an organization — the account everything else in your directory hangs from. Users, applications, roles, projects and workspaces are all named inside one organization, so this is the first write in a new tenant.  The older spelling of POST /v1/iam/organizations. Both reach the same create, so a name already taken is refused here too.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamCreateOrganizationInput] iamCreateOrganizationInput (required):
  Future<Response> postIamAddOrganizationWithHttpInfo(IamCreateOrganizationInput iamCreateOrganizationInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/add-organization';

    // ignore: prefer_final_locals
    Object? postBody = iamCreateOrganizationInput;

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

  /// Creates an organization — the account everything else in your directory hangs from.
  ///
  /// Creates an organization — the account everything else in your directory hangs from. Users, applications, roles, projects and workspaces are all named inside one organization, so this is the first write in a new tenant.  The older spelling of POST /v1/iam/organizations. Both reach the same create, so a name already taken is refused here too.
  ///
  /// Parameters:
  ///
  /// * [IamCreateOrganizationInput] iamCreateOrganizationInput (required):
  Future<IamResponse?> postIamAddOrganization(IamCreateOrganizationInput iamCreateOrganizationInput,) async {
    final response = await postIamAddOrganizationWithHttpInfo(iamCreateOrganizationInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamResponse',) as IamResponse;
    
    }
    return null;
  }

  /// Creates a project inside your organization — the scope people pick between when their work is separated by product or client rather than by team.
  ///
  /// Creates a project inside your organization — the scope people pick between when their work is separated by product or client rather than by team.  The older spelling of POST /v1/iam/projects. Creating one takes an administrator of the owning organization.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamInput] iamInput (required):
  Future<Response> postIamAddProjectWithHttpInfo(IamInput iamInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/add-project';

    // ignore: prefer_final_locals
    Object? postBody = iamInput;

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

  /// Creates a project inside your organization — the scope people pick between when their work is separated by product or client rather than by team.
  ///
  /// Creates a project inside your organization — the scope people pick between when their work is separated by product or client rather than by team.  The older spelling of POST /v1/iam/projects. Creating one takes an administrator of the owning organization.
  ///
  /// Parameters:
  ///
  /// * [IamInput] iamInput (required):
  Future<IamResponse?> postIamAddProject(IamInput iamInput,) async {
    final response = await postIamAddProjectWithHttpInfo(iamInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamResponse',) as IamResponse;
    
    }
    return null;
  }

  /// Adds an identity provider your people can sign in with, or a service your applications send through — a social or enterprise login, an email or SMS sender, a storage or payment connector.
  ///
  /// Adds an identity provider your people can sign in with, or a service your applications send through — a social or enterprise login, an email or SMS sender, a storage or payment connector.  A provider is configured once here and then switched on per application, so several applications can share one set of credentials.  The older spelling of POST /v1/iam/providers.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamProvider] iamProvider (required):
  Future<Response> postIamAddProviderWithHttpInfo(IamProvider iamProvider,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/add-provider';

    // ignore: prefer_final_locals
    Object? postBody = iamProvider;

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

  /// Adds an identity provider your people can sign in with, or a service your applications send through — a social or enterprise login, an email or SMS sender, a storage or payment connector.
  ///
  /// Adds an identity provider your people can sign in with, or a service your applications send through — a social or enterprise login, an email or SMS sender, a storage or payment connector.  A provider is configured once here and then switched on per application, so several applications can share one set of credentials.  The older spelling of POST /v1/iam/providers.
  ///
  /// Parameters:
  ///
  /// * [IamProvider] iamProvider (required):
  Future<IamResponse?> postIamAddProvider(IamProvider iamProvider,) async {
    final response = await postIamAddProviderWithHttpInfo(iamProvider,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamResponse',) as IamResponse;
    
    }
    return null;
  }

  /// Creates a role — a named group of people that permissions are granted to.
  ///
  /// Creates a role — a named group of people that permissions are granted to. Granting to a role rather than to each person is what keeps access correct as your team changes: add someone to the role and they inherit everything it can do.  The older spelling of POST /v1/iam/roles.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamRolesInput] iamRolesInput (required):
  Future<Response> postIamAddRoleWithHttpInfo(IamRolesInput iamRolesInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/add-role';

    // ignore: prefer_final_locals
    Object? postBody = iamRolesInput;

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

  /// Creates a role — a named group of people that permissions are granted to.
  ///
  /// Creates a role — a named group of people that permissions are granted to. Granting to a role rather than to each person is what keeps access correct as your team changes: add someone to the role and they inherit everything it can do.  The older spelling of POST /v1/iam/roles.
  ///
  /// Parameters:
  ///
  /// * [IamRolesInput] iamRolesInput (required):
  Future<IamResponse?> postIamAddRole(IamRolesInput iamRolesInput,) async {
    final response = await postIamAddRoleWithHttpInfo(iamRolesInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamResponse',) as IamResponse;
    
    }
    return null;
  }

  /// Adds a person to your organization and, if you send a password, sets the one they will sign in with.
  ///
  /// Adds a person to your organization and, if you send a password, sets the one they will sign in with. The password is hashed before it is stored and is never returned to you or to anyone else.  Usernames are checked against one rule wherever an account is created — this verb, password signup, a social sign-in, or SCIM — so a name accepted here is a name accepted everywhere.  The older spelling of POST /v1/iam/users, and it posts the user's fields at the top level rather than wrapped in {user, password}.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamUserBody] iamUserBody (required):
  Future<Response> postIamAddUserWithHttpInfo(IamUserBody iamUserBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/add-user';

    // ignore: prefer_final_locals
    Object? postBody = iamUserBody;

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

  /// Adds a person to your organization and, if you send a password, sets the one they will sign in with.
  ///
  /// Adds a person to your organization and, if you send a password, sets the one they will sign in with. The password is hashed before it is stored and is never returned to you or to anyone else.  Usernames are checked against one rule wherever an account is created — this verb, password signup, a social sign-in, or SCIM — so a name accepted here is a name accepted everywhere.  The older spelling of POST /v1/iam/users, and it posts the user's fields at the top level rather than wrapped in {user, password}.
  ///
  /// Parameters:
  ///
  /// * [IamUserBody] iamUserBody (required):
  Future<IamResponse?> postIamAddUser(IamUserBody iamUserBody,) async {
    final response = await postIamAddUserWithHttpInfo(iamUserBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamResponse',) as IamResponse;
    
    }
    return null;
  }

  /// Creates a workspace inside your organization — the scope a team works in, alongside projects rather than instead of them.
  ///
  /// Creates a workspace inside your organization — the scope a team works in, alongside projects rather than instead of them.  The older spelling of POST /v1/iam/workspaces. Creating one takes an administrator of the owning organization.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamWorkspacesInput] iamWorkspacesInput (required):
  Future<Response> postIamAddWorkspaceWithHttpInfo(IamWorkspacesInput iamWorkspacesInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/add-workspace';

    // ignore: prefer_final_locals
    Object? postBody = iamWorkspacesInput;

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

  /// Creates a workspace inside your organization — the scope a team works in, alongside projects rather than instead of them.
  ///
  /// Creates a workspace inside your organization — the scope a team works in, alongside projects rather than instead of them.  The older spelling of POST /v1/iam/workspaces. Creating one takes an administrator of the owning organization.
  ///
  /// Parameters:
  ///
  /// * [IamWorkspacesInput] iamWorkspacesInput (required):
  Future<IamResponse?> postIamAddWorkspace(IamWorkspacesInput iamWorkspacesInput,) async {
    final response = await postIamAddWorkspaceWithHttpInfo(iamWorkspacesInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamResponse',) as IamResponse;
    
    }
    return null;
  }

  /// Sets up an account on someone's behalf — the same onboarding a person gets themselves, driven by one of your own services instead of by them.
  ///
  /// Sets up an account on someone's behalf — the same onboarding a person gets themselves, driven by one of your own services instead of by them.  It authenticates as your service rather than as a person, which is why the person to provision is named in the request. The setup it performs is identical to self-service onboarding; there is one provisioning path, not two that can drift.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamAdminProvisionWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/admin/provision';

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

  /// Sets up an account on someone's behalf — the same onboarding a person gets themselves, driven by one of your own services instead of by them.
  ///
  /// Sets up an account on someone's behalf — the same onboarding a person gets themselves, driven by one of your own services instead of by them.  It authenticates as your service rather than as a person, which is why the person to provision is named in the request. The setup it performs is identical to self-service onboarding; there is one provisioning path, not two that can drift.
  Future<void> postIamAdminProvision() async {
    final response = await postIamAdminProvisionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Registers an application in your organization — one product or site your people sign in to, with its own client credentials, sign-in methods and allowed redirect URIs.
  ///
  /// Registers an application in your organization — one product or site your people sign in to, with its own client credentials, sign-in methods and allowed redirect URIs. A name already used in the organization is refused rather than overwritten.  Exported so the legacy add-application alias reuses this exact path — one create, two spellings.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamApplication] iamApplication (required):
  Future<Response> postIamApplicationWithHttpInfo(IamApplication iamApplication,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/application';

    // ignore: prefer_final_locals
    Object? postBody = iamApplication;

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

  /// Registers an application in your organization — one product or site your people sign in to, with its own client credentials, sign-in methods and allowed redirect URIs.
  ///
  /// Registers an application in your organization — one product or site your people sign in to, with its own client credentials, sign-in methods and allowed redirect URIs. A name already used in the organization is refused rather than overwritten.  Exported so the legacy add-application alias reuses this exact path — one create, two spellings.
  ///
  /// Parameters:
  ///
  /// * [IamApplication] iamApplication (required):
  Future<IamApplication?> postIamApplication(IamApplication iamApplication,) async {
    final response = await postIamApplicationWithHttpInfo(iamApplication,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamApplication',) as IamApplication;
    
    }
    return null;
  }

  /// Registers an application in your organization — one product or site your people sign in to, with its own client credentials, sign-in methods and allowed redirect URIs.
  ///
  /// Registers an application in your organization — one product or site your people sign in to, with its own client credentials, sign-in methods and allowed redirect URIs. A name already used in the organization is refused rather than overwritten.  Exported so the legacy add-application alias reuses this exact path — one create, two spellings.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamApplication] iamApplication (required):
  Future<Response> postIamApplicationsWithHttpInfo(IamApplication iamApplication,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/applications';

    // ignore: prefer_final_locals
    Object? postBody = iamApplication;

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

  /// Registers an application in your organization — one product or site your people sign in to, with its own client credentials, sign-in methods and allowed redirect URIs.
  ///
  /// Registers an application in your organization — one product or site your people sign in to, with its own client credentials, sign-in methods and allowed redirect URIs. A name already used in the organization is refused rather than overwritten.  Exported so the legacy add-application alias reuses this exact path — one create, two spellings.
  ///
  /// Parameters:
  ///
  /// * [IamApplication] iamApplication (required):
  Future<IamApplication?> postIamApplications(IamApplication iamApplication,) async {
    final response = await postIamApplicationsWithHttpInfo(iamApplication,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamApplication',) as IamApplication;
    
    }
    return null;
  }

  /// Removes an application.
  ///
  /// Removes an application. Anyone mid-sign-in through it is turned away and its client credentials stop working, so retire the integration before deleting it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamApplicationRef] iamApplicationRef (required):
  Future<Response> postIamApplicationsDeleteWithHttpInfo(IamApplicationRef iamApplicationRef,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/applications/delete';

    // ignore: prefer_final_locals
    Object? postBody = iamApplicationRef;

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

  /// Removes an application.
  ///
  /// Removes an application. Anyone mid-sign-in through it is turned away and its client credentials stop working, so retire the integration before deleting it.
  ///
  /// Parameters:
  ///
  /// * [IamApplicationRef] iamApplicationRef (required):
  Future<IamDeleteResult?> postIamApplicationsDelete(IamApplicationRef iamApplicationRef,) async {
    final response = await postIamApplicationsDeleteWithHttpInfo(iamApplicationRef,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamDeleteResult',) as IamDeleteResult;
    
    }
    return null;
  }

  /// Changes an application's display, its sign-in methods and the redirect URIs it may return to — the call that makes login work from a new host.
  ///
  /// Changes an application's display, its sign-in methods and the redirect URIs it may return to — the call that makes login work from a new host. Which organization it belongs to and what it is named are fixed when it is created and are not editable here.  Exported so the legacy update-application alias reuses this exact path — one update, two spellings.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamApplication] iamApplication (required):
  Future<Response> postIamApplicationsUpdateWithHttpInfo(IamApplication iamApplication,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/applications/update';

    // ignore: prefer_final_locals
    Object? postBody = iamApplication;

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

  /// Changes an application's display, its sign-in methods and the redirect URIs it may return to — the call that makes login work from a new host.
  ///
  /// Changes an application's display, its sign-in methods and the redirect URIs it may return to — the call that makes login work from a new host. Which organization it belongs to and what it is named are fixed when it is created and are not editable here.  Exported so the legacy update-application alias reuses this exact path — one update, two spellings.
  ///
  /// Parameters:
  ///
  /// * [IamApplication] iamApplication (required):
  Future<IamApplication?> postIamApplicationsUpdate(IamApplication iamApplication,) async {
    final response = await postIamApplicationsUpdateWithHttpInfo(iamApplication,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamApplication',) as IamApplication;
    
    }
    return null;
  }

  /// Records an audit entry, so activity from your own systems lands in the same trail as everything the Hanzo Cloud records for you.
  ///
  /// Records an audit entry, so activity from your own systems lands in the same trail as everything the Hanzo Cloud records for you.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamAuditlogsInput] iamAuditlogsInput (required):
  Future<Response> postIamAuditLogsWithHttpInfo(IamAuditlogsInput iamAuditlogsInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/audit-logs';

    // ignore: prefer_final_locals
    Object? postBody = iamAuditlogsInput;

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

  /// Records an audit entry, so activity from your own systems lands in the same trail as everything the Hanzo Cloud records for you.
  ///
  /// Records an audit entry, so activity from your own systems lands in the same trail as everything the Hanzo Cloud records for you.
  ///
  /// Parameters:
  ///
  /// * [IamAuditlogsInput] iamAuditlogsInput (required):
  Future<IamAuditLog?> postIamAuditLogs(IamAuditlogsInput iamAuditlogsInput,) async {
    final response = await postIamAuditLogsWithHttpInfo(iamAuditlogsInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamAuditLog',) as IamAuditLog;
    
    }
    return null;
  }

  /// Removes an audit entry.
  ///
  /// Removes an audit entry. Retention policy is normally what should expire a trail; deleting by hand leaves a gap a reviewer will notice.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamRef] iamRef (required):
  Future<Response> postIamAuditLogsDeleteWithHttpInfo(IamRef iamRef,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/audit-logs/delete';

    // ignore: prefer_final_locals
    Object? postBody = iamRef;

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

  /// Removes an audit entry.
  ///
  /// Removes an audit entry. Retention policy is normally what should expire a trail; deleting by hand leaves a gap a reviewer will notice.
  ///
  /// Parameters:
  ///
  /// * [IamRef] iamRef (required):
  Future<IamDeleteOutput?> postIamAuditLogsDelete(IamRef iamRef,) async {
    final response = await postIamAuditLogsDeleteWithHttpInfo(iamRef,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamDeleteOutput',) as IamDeleteOutput;
    
    }
    return null;
  }

  /// Returns one audit entry in full: the action, the person or key behind it, and the request it came in on.
  ///
  /// Returns one audit entry in full: the action, the person or key behind it, and the request it came in on.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamRef] iamRef (required):
  Future<Response> postIamAuditLogsGetWithHttpInfo(IamRef iamRef,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/audit-logs/get';

    // ignore: prefer_final_locals
    Object? postBody = iamRef;

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

  /// Returns one audit entry in full: the action, the person or key behind it, and the request it came in on.
  ///
  /// Returns one audit entry in full: the action, the person or key behind it, and the request it came in on.
  ///
  /// Parameters:
  ///
  /// * [IamRef] iamRef (required):
  Future<IamAuditLog?> postIamAuditLogsGet(IamRef iamRef,) async {
    final response = await postIamAuditLogsGetWithHttpInfo(iamRef,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamAuditLog',) as IamAuditLog;
    
    }
    return null;
  }

  /// Corrects an audit entry.
  ///
  /// Corrects an audit entry. The trail is append-only in normal operation and nothing in the Hanzo Cloud rewrites it — this exists for an administrator to correct an entry their own systems recorded wrongly.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamAuditlogsInput] iamAuditlogsInput (required):
  Future<Response> postIamAuditLogsUpdateWithHttpInfo(IamAuditlogsInput iamAuditlogsInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/audit-logs/update';

    // ignore: prefer_final_locals
    Object? postBody = iamAuditlogsInput;

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

  /// Corrects an audit entry.
  ///
  /// Corrects an audit entry. The trail is append-only in normal operation and nothing in the Hanzo Cloud rewrites it — this exists for an administrator to correct an entry their own systems recorded wrongly.
  ///
  /// Parameters:
  ///
  /// * [IamAuditlogsInput] iamAuditlogsInput (required):
  Future<IamAuditLog?> postIamAuditLogsUpdate(IamAuditlogsInput iamAuditlogsInput,) async {
    final response = await postIamAuditLogsUpdateWithHttpInfo(iamAuditlogsInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamAuditLog',) as IamAuditLog;
    
    }
    return null;
  }

  /// Adds a signing certificate your applications can verify tokens against — the call you make to bring your own key, or to stage the next one before a rotation.
  ///
  /// Adds a signing certificate your applications can verify tokens against — the call you make to bring your own key, or to stage the next one before a rotation. A name already used in your organization is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamCert] iamCert (required):
  Future<Response> postIamCertsWithHttpInfo(IamCert iamCert,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/certs';

    // ignore: prefer_final_locals
    Object? postBody = iamCert;

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

  /// Adds a signing certificate your applications can verify tokens against — the call you make to bring your own key, or to stage the next one before a rotation.
  ///
  /// Adds a signing certificate your applications can verify tokens against — the call you make to bring your own key, or to stage the next one before a rotation. A name already used in your organization is refused.
  ///
  /// Parameters:
  ///
  /// * [IamCert] iamCert (required):
  Future<IamCert?> postIamCerts(IamCert iamCert,) async {
    final response = await postIamCertsWithHttpInfo(iamCert,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamCert',) as IamCert;
    
    }
    return null;
  }

  /// Removes a signing certificate.
  ///
  /// Removes a signing certificate. Tokens signed with it can no longer be verified, so retire it only once nothing is still presenting them.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamCertsRef] iamCertsRef (required):
  Future<Response> postIamCertsDeleteWithHttpInfo(IamCertsRef iamCertsRef,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/certs/delete';

    // ignore: prefer_final_locals
    Object? postBody = iamCertsRef;

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

  /// Removes a signing certificate.
  ///
  /// Removes a signing certificate. Tokens signed with it can no longer be verified, so retire it only once nothing is still presenting them.
  ///
  /// Parameters:
  ///
  /// * [IamCertsRef] iamCertsRef (required):
  Future<IamCertsDeleteOutput?> postIamCertsDelete(IamCertsRef iamCertsRef,) async {
    final response = await postIamCertsDeleteWithHttpInfo(iamCertsRef,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamCertsDeleteOutput',) as IamCertsDeleteOutput;
    
    }
    return null;
  }

  /// Returns one signing certificate — its algorithm, its validity window and its public half.
  ///
  /// Returns one signing certificate — its algorithm, its validity window and its public half. The private key is masked.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamCertsRef] iamCertsRef (required):
  Future<Response> postIamCertsGetWithHttpInfo(IamCertsRef iamCertsRef,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/certs/get';

    // ignore: prefer_final_locals
    Object? postBody = iamCertsRef;

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

  /// Returns one signing certificate — its algorithm, its validity window and its public half.
  ///
  /// Returns one signing certificate — its algorithm, its validity window and its public half. The private key is masked.
  ///
  /// Parameters:
  ///
  /// * [IamCertsRef] iamCertsRef (required):
  Future<IamCert?> postIamCertsGet(IamCertsRef iamCertsRef,) async {
    final response = await postIamCertsGetWithHttpInfo(iamCertsRef,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamCert',) as IamCert;
    
    }
    return null;
  }

  /// Changes a signing certificate's settings.
  ///
  /// Changes a signing certificate's settings. What it is called does not change, and neither does when it was added.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamCert] iamCert (required):
  Future<Response> postIamCertsUpdateWithHttpInfo(IamCert iamCert,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/certs/update';

    // ignore: prefer_final_locals
    Object? postBody = iamCert;

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

  /// Changes a signing certificate's settings.
  ///
  /// Changes a signing certificate's settings. What it is called does not change, and neither does when it was added.
  ///
  /// Parameters:
  ///
  /// * [IamCert] iamCert (required):
  Future<IamCert?> postIamCertsUpdate(IamCert iamCert,) async {
    final response = await postIamCertsUpdateWithHttpInfo(iamCert,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamCert',) as IamCert;
    
    }
    return null;
  }

  /// Deletes an application.
  ///
  /// Deletes an application. Anyone mid-sign-in through it is turned away and its client credentials stop working, so retire the integration first.  The older spelling of DELETE /v1/iam/application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamApplication] iamApplication (required):
  Future<Response> postIamDeleteApplicationWithHttpInfo(IamApplication iamApplication,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/delete-application';

    // ignore: prefer_final_locals
    Object? postBody = iamApplication;

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

  /// Deletes an application.
  ///
  /// Deletes an application. Anyone mid-sign-in through it is turned away and its client credentials stop working, so retire the integration first.  The older spelling of DELETE /v1/iam/application.
  ///
  /// Parameters:
  ///
  /// * [IamApplication] iamApplication (required):
  Future<IamResponse?> postIamDeleteApplication(IamApplication iamApplication,) async {
    final response = await postIamDeleteApplicationWithHttpInfo(iamApplication,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamResponse',) as IamResponse;
    
    }
    return null;
  }

  /// Takes away a person's or an application's right to act in an organization.
  ///
  /// Takes away a person's or an application's right to act in an organization. Their account survives; what ends is their access to that organization. Revoking a membership that is already gone reports that nothing was removed rather than failing, so a retry is safe. It is the mirror of ensure and takes the SAME gate: revoking membership is the org's authority to give or take, so a SuperAdmin, an admin of the org itself, or an org-admin-capable confidential client. Idempotent through the store — deleting an absent membership reports removed=false, never an error — so a retried revoke is safe.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamDeleteMembershipWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/delete-membership';

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

  /// Takes away a person's or an application's right to act in an organization.
  ///
  /// Takes away a person's or an application's right to act in an organization. Their account survives; what ends is their access to that organization. Revoking a membership that is already gone reports that nothing was removed rather than failing, so a retry is safe. It is the mirror of ensure and takes the SAME gate: revoking membership is the org's authority to give or take, so a SuperAdmin, an admin of the org itself, or an org-admin-capable confidential client. Idempotent through the store — deleting an absent membership reports removed=false, never an error — so a retried revoke is safe.
  Future<void> postIamDeleteMembership() async {
    final response = await postIamDeleteMembershipWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Turns a factor off, so sign-in stops asking for it.
  ///
  /// Turns a factor off, so sign-in stops asking for it. Naming no factor turns off ALL of them — the reset path. People may do this for themselves; doing it for somebody else takes an administrator, which is what makes it the way back in when a phone is lost.  The recovery codes go with the last factor: they are the way past a challenge, so keeping them alive for an account with nothing to challenge would leave a standing credential behind.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamDeleteMfaWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/delete-mfa';

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

  /// Turns a factor off, so sign-in stops asking for it.
  ///
  /// Turns a factor off, so sign-in stops asking for it. Naming no factor turns off ALL of them — the reset path. People may do this for themselves; doing it for somebody else takes an administrator, which is what makes it the way back in when a phone is lost.  The recovery codes go with the last factor: they are the way past a challenge, so keeping them alive for an account with nothing to challenge would leave a standing credential behind.
  Future<void> postIamDeleteMfa() async {
    final response = await postIamDeleteMfaWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deletes an organization and everything named inside it — its users, applications, roles, projects and workspaces.
  ///
  /// Deletes an organization and everything named inside it — its users, applications, roles, projects and workspaces. There is no undo, and every session issued under it stops working.  The older spelling of POST /v1/iam/organizations/delete.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamDeleteOrganizationInput] iamDeleteOrganizationInput (required):
  Future<Response> postIamDeleteOrganizationWithHttpInfo(IamDeleteOrganizationInput iamDeleteOrganizationInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/delete-organization';

    // ignore: prefer_final_locals
    Object? postBody = iamDeleteOrganizationInput;

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

  /// Deletes an organization and everything named inside it — its users, applications, roles, projects and workspaces.
  ///
  /// Deletes an organization and everything named inside it — its users, applications, roles, projects and workspaces. There is no undo, and every session issued under it stops working.  The older spelling of POST /v1/iam/organizations/delete.
  ///
  /// Parameters:
  ///
  /// * [IamDeleteOrganizationInput] iamDeleteOrganizationInput (required):
  Future<IamResponse?> postIamDeleteOrganization(IamDeleteOrganizationInput iamDeleteOrganizationInput,) async {
    final response = await postIamDeleteOrganizationWithHttpInfo(iamDeleteOrganizationInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamResponse',) as IamResponse;
    
    }
    return null;
  }

  /// Deletes a project.
  ///
  /// Deletes a project. The people and roles in your organization are unchanged; what goes is the scope itself, so anything addressed by it must move first.  The older spelling of POST /v1/iam/projects/delete.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamProjectsRef] iamProjectsRef (required):
  Future<Response> postIamDeleteProjectWithHttpInfo(IamProjectsRef iamProjectsRef,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/delete-project';

    // ignore: prefer_final_locals
    Object? postBody = iamProjectsRef;

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

  /// Deletes a project.
  ///
  /// Deletes a project. The people and roles in your organization are unchanged; what goes is the scope itself, so anything addressed by it must move first.  The older spelling of POST /v1/iam/projects/delete.
  ///
  /// Parameters:
  ///
  /// * [IamProjectsRef] iamProjectsRef (required):
  Future<IamResponse?> postIamDeleteProject(IamProjectsRef iamProjectsRef,) async {
    final response = await postIamDeleteProjectWithHttpInfo(iamProjectsRef,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamResponse',) as IamResponse;
    
    }
    return null;
  }

  /// Removes a provider.
  ///
  /// Removes a provider. Sign-in through it stops for every application that used it, so detach those applications first if they have no other method.  The older spelling of POST /v1/iam/providers/delete.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamProvider] iamProvider (required):
  Future<Response> postIamDeleteProviderWithHttpInfo(IamProvider iamProvider,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/delete-provider';

    // ignore: prefer_final_locals
    Object? postBody = iamProvider;

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

  /// Removes a provider.
  ///
  /// Removes a provider. Sign-in through it stops for every application that used it, so detach those applications first if they have no other method.  The older spelling of POST /v1/iam/providers/delete.
  ///
  /// Parameters:
  ///
  /// * [IamProvider] iamProvider (required):
  Future<IamResponse?> postIamDeleteProvider(IamProvider iamProvider,) async {
    final response = await postIamDeleteProviderWithHttpInfo(iamProvider,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamResponse',) as IamResponse;
    
    }
    return null;
  }

  /// Deletes a role.
  ///
  /// Deletes a role. Everyone in it loses the access it carried; their accounts and any other roles they hold are untouched.  The older spelling of POST /v1/iam/roles/delete.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamRolesRef] iamRolesRef (required):
  Future<Response> postIamDeleteRoleWithHttpInfo(IamRolesRef iamRolesRef,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/delete-role';

    // ignore: prefer_final_locals
    Object? postBody = iamRolesRef;

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

  /// Deletes a role.
  ///
  /// Deletes a role. Everyone in it loses the access it carried; their accounts and any other roles they hold are untouched.  The older spelling of POST /v1/iam/roles/delete.
  ///
  /// Parameters:
  ///
  /// * [IamRolesRef] iamRolesRef (required):
  Future<IamResponse?> postIamDeleteRole(IamRolesRef iamRolesRef,) async {
    final response = await postIamDeleteRoleWithHttpInfo(iamRolesRef,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamResponse',) as IamResponse;
    
    }
    return null;
  }

  /// Removes a person from your organization.
  ///
  /// Removes a person from your organization. Their sessions stop working and the account is gone, not suspended — to keep the record and only stop sign-in, update the user instead.  The older spelling of POST /v1/iam/users/delete.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamUserBody] iamUserBody (required):
  Future<Response> postIamDeleteUserWithHttpInfo(IamUserBody iamUserBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/delete-user';

    // ignore: prefer_final_locals
    Object? postBody = iamUserBody;

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

  /// Removes a person from your organization.
  ///
  /// Removes a person from your organization. Their sessions stop working and the account is gone, not suspended — to keep the record and only stop sign-in, update the user instead.  The older spelling of POST /v1/iam/users/delete.
  ///
  /// Parameters:
  ///
  /// * [IamUserBody] iamUserBody (required):
  Future<IamResponse?> postIamDeleteUser(IamUserBody iamUserBody,) async {
    final response = await postIamDeleteUserWithHttpInfo(iamUserBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamResponse',) as IamResponse;
    
    }
    return null;
  }

  /// Deletes a workspace.
  ///
  /// Deletes a workspace. The people and roles in your organization are unchanged; what goes is the scope itself.  The older spelling of POST /v1/iam/workspaces/delete.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamWorkspacesRef] iamWorkspacesRef (required):
  Future<Response> postIamDeleteWorkspaceWithHttpInfo(IamWorkspacesRef iamWorkspacesRef,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/delete-workspace';

    // ignore: prefer_final_locals
    Object? postBody = iamWorkspacesRef;

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

  /// Deletes a workspace.
  ///
  /// Deletes a workspace. The people and roles in your organization are unchanged; what goes is the scope itself.  The older spelling of POST /v1/iam/workspaces/delete.
  ///
  /// Parameters:
  ///
  /// * [IamWorkspacesRef] iamWorkspacesRef (required):
  Future<IamResponse?> postIamDeleteWorkspace(IamWorkspacesRef iamWorkspacesRef,) async {
    final response = await postIamDeleteWorkspaceWithHttpInfo(iamWorkspacesRef,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamResponse',) as IamResponse;
    
    }
    return null;
  }

  /// Issues an invitation to join your organization — the code or link a new member redeems, with the role they arrive holding and the date it stops working.
  ///
  /// Issues an invitation to join your organization — the code or link a new member redeems, with the role they arrive holding and the date it stops working. A name already used in the organization is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamInvitationsInput] iamInvitationsInput (required):
  Future<Response> postIamInvitationsWithHttpInfo(IamInvitationsInput iamInvitationsInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/invitations';

    // ignore: prefer_final_locals
    Object? postBody = iamInvitationsInput;

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

  /// Issues an invitation to join your organization — the code or link a new member redeems, with the role they arrive holding and the date it stops working.
  ///
  /// Issues an invitation to join your organization — the code or link a new member redeems, with the role they arrive holding and the date it stops working. A name already used in the organization is refused.
  ///
  /// Parameters:
  ///
  /// * [IamInvitationsInput] iamInvitationsInput (required):
  Future<IamInvitation?> postIamInvitations(IamInvitationsInput iamInvitationsInput,) async {
    final response = await postIamInvitationsWithHttpInfo(iamInvitationsInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamInvitation',) as IamInvitation;
    
    }
    return null;
  }

  /// Withdraws an invitation.
  ///
  /// Withdraws an invitation. It stops being redeemable at once; anyone who already joined through it keeps their account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamInvitationsRef] iamInvitationsRef (required):
  Future<Response> postIamInvitationsDeleteWithHttpInfo(IamInvitationsRef iamInvitationsRef,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/invitations/delete';

    // ignore: prefer_final_locals
    Object? postBody = iamInvitationsRef;

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

  /// Withdraws an invitation.
  ///
  /// Withdraws an invitation. It stops being redeemable at once; anyone who already joined through it keeps their account.
  ///
  /// Parameters:
  ///
  /// * [IamInvitationsRef] iamInvitationsRef (required):
  Future<IamInvitationsDeleteOutput?> postIamInvitationsDelete(IamInvitationsRef iamInvitationsRef,) async {
    final response = await postIamInvitationsDeleteWithHttpInfo(iamInvitationsRef,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamInvitationsDeleteOutput',) as IamInvitationsDeleteOutput;
    
    }
    return null;
  }

  /// Returns one invitation: who it is for, what it grants on acceptance, and when it expires.
  ///
  /// Returns one invitation: who it is for, what it grants on acceptance, and when it expires.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamInvitationsRef] iamInvitationsRef (required):
  Future<Response> postIamInvitationsGetWithHttpInfo(IamInvitationsRef iamInvitationsRef,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/invitations/get';

    // ignore: prefer_final_locals
    Object? postBody = iamInvitationsRef;

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

  /// Returns one invitation: who it is for, what it grants on acceptance, and when it expires.
  ///
  /// Returns one invitation: who it is for, what it grants on acceptance, and when it expires.
  ///
  /// Parameters:
  ///
  /// * [IamInvitationsRef] iamInvitationsRef (required):
  Future<IamInvitation?> postIamInvitationsGet(IamInvitationsRef iamInvitationsRef,) async {
    final response = await postIamInvitationsGetWithHttpInfo(iamInvitationsRef,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamInvitation',) as IamInvitation;
    
    }
    return null;
  }

  /// Changes an invitation's terms — the role it grants, how many may redeem it, or when it expires.
  ///
  /// Changes an invitation's terms — the role it grants, how many may redeem it, or when it expires. What it is called does not change.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamInvitationsInput] iamInvitationsInput (required):
  Future<Response> postIamInvitationsUpdateWithHttpInfo(IamInvitationsInput iamInvitationsInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/invitations/update';

    // ignore: prefer_final_locals
    Object? postBody = iamInvitationsInput;

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

  /// Changes an invitation's terms — the role it grants, how many may redeem it, or when it expires.
  ///
  /// Changes an invitation's terms — the role it grants, how many may redeem it, or when it expires. What it is called does not change.
  ///
  /// Parameters:
  ///
  /// * [IamInvitationsInput] iamInvitationsInput (required):
  Future<IamInvitation?> postIamInvitationsUpdate(IamInvitationsInput iamInvitationsInput,) async {
    final response = await postIamInvitationsUpdateWithHttpInfo(iamInvitationsInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamInvitation',) as IamInvitation;
    
    }
    return null;
  }

  /// Mints an access token for the `?id=<owner>/<name>` target user (optional `?aud=` resource, RFC 8707), issued by the authenticated + allow-listed confidential client.
  ///
  /// Mints an access token for the `?id=<owner>/<name>` target user (optional `?aud=` resource, RFC 8707), issued by the authenticated + allow-listed confidential client. The token's subject + owner are the TARGET USER's, so a resource server scopes on the validated owner claim to the user's tenant — indistinguishable from a token the user obtained directly. Response is the camelCase `{accessToken, expiresIn}` body identity.ts consumes. Equivalent to the RFC 8693 token-exchange grant, minus the subject_token proof (the console has the user's id, not a token) — the reason this compat shim exists.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamIssueUserTokenWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/issue-user-token';

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

  /// Mints an access token for the `?id=<owner>/<name>` target user (optional `?aud=` resource, RFC 8707), issued by the authenticated + allow-listed confidential client.
  ///
  /// Mints an access token for the `?id=<owner>/<name>` target user (optional `?aud=` resource, RFC 8707), issued by the authenticated + allow-listed confidential client. The token's subject + owner are the TARGET USER's, so a resource server scopes on the validated owner claim to the user's tenant — indistinguishable from a token the user obtained directly. Response is the camelCase `{accessToken, expiresIn}` body identity.ts consumes. Equivalent to the RFC 8693 token-exchange grant, minus the subject_token proof (the console has the user's id, not a token) — the reason this compat shim exists.
  Future<void> postIamIssueUserToken() async {
    final response = await postIamIssueUserTokenWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Issues an API key.
  ///
  /// Issues an API key. A standard key comes back as a publishable half you may ship in client code and a secret half you must not — the secret is shown once, at creation, and cannot be retrieved afterwards. A publish-scoped key is issued with the publishable half only, so there is no secret to leak.  A name already used in your organization is refused rather than reissued, so creating twice never silently invalidates a key that is in production.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamKey] iamKey (required):
  Future<Response> postIamKeysWithHttpInfo(IamKey iamKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/keys';

    // ignore: prefer_final_locals
    Object? postBody = iamKey;

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

  /// Issues an API key.
  ///
  /// Issues an API key. A standard key comes back as a publishable half you may ship in client code and a secret half you must not — the secret is shown once, at creation, and cannot be retrieved afterwards. A publish-scoped key is issued with the publishable half only, so there is no secret to leak.  A name already used in your organization is refused rather than reissued, so creating twice never silently invalidates a key that is in production.
  ///
  /// Parameters:
  ///
  /// * [IamKey] iamKey (required):
  Future<IamKey?> postIamKeys(IamKey iamKey,) async {
    final response = await postIamKeysWithHttpInfo(iamKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamKey',) as IamKey;
    
    }
    return null;
  }

  /// Revokes an API key.
  ///
  /// Revokes an API key. Anything still presenting it stops being authorized at once, so roll the replacement out before you revoke.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamKeysRef] iamKeysRef (required):
  Future<Response> postIamKeysDeleteWithHttpInfo(IamKeysRef iamKeysRef,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/keys/delete';

    // ignore: prefer_final_locals
    Object? postBody = iamKeysRef;

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

  /// Revokes an API key.
  ///
  /// Revokes an API key. Anything still presenting it stops being authorized at once, so roll the replacement out before you revoke.
  ///
  /// Parameters:
  ///
  /// * [IamKeysRef] iamKeysRef (required):
  Future<IamDeleteResponse?> postIamKeysDelete(IamKeysRef iamKeysRef,) async {
    final response = await postIamKeysDeleteWithHttpInfo(iamKeysRef,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamDeleteResponse',) as IamDeleteResponse;
    
    }
    return null;
  }

  /// (re)generates the target user's key of the requested TYPE and returns it once, over the shared authorizeMinter + mintTarget seam.
  ///
  /// (re)generates the target user's key of the requested TYPE and returns it once, over the shared authorizeMinter + mintTarget seam. `?type=secret` (the default) yields the confidential sk-; `?type=publishable` yields the pk- that is safe to ship in client JS and resolves to an org, never a principal.  It writes the schema.Key row that the resolvers actually read. schema.User.AccessKey is not a credential and nothing resolves it, so a key stamped there would authenticate nobody.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamKeysMintWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/keys/mint';

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

  /// (re)generates the target user's key of the requested TYPE and returns it once, over the shared authorizeMinter + mintTarget seam.
  ///
  /// (re)generates the target user's key of the requested TYPE and returns it once, over the shared authorizeMinter + mintTarget seam. `?type=secret` (the default) yields the confidential sk-; `?type=publishable` yields the pk- that is safe to ship in client JS and resolves to an org, never a principal.  It writes the schema.Key row that the resolvers actually read. schema.User.AccessKey is not a credential and nothing resolves it, so a key stamped there would authenticate nobody.
  Future<void> postIamKeysMint() async {
    final response = await postIamKeysMintWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Clears the target user's key of the requested TYPE (immediate revoke).
  ///
  /// Clears the target user's key of the requested TYPE (immediate revoke). Scoped by the same `?type` field mint takes, so revoking the browser key leaves the server key working. A secret key's stored value is the sk- in its schema.Key row.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamKeysRevokeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/keys/revoke';

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

  /// Clears the target user's key of the requested TYPE (immediate revoke).
  ///
  /// Clears the target user's key of the requested TYPE (immediate revoke). Scoped by the same `?type` field mint takes, so revoking the browser key leaves the server key working. A secret key's stored value is the sk- in its schema.Key row.
  Future<void> postIamKeysRevoke() async {
    final response = await postIamKeysRevokeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Changes what a key is called or what it may reach.
  ///
  /// Changes what a key is called or what it may reach. The credential itself is not reissued — the key in your deployment keeps working.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamKey] iamKey (required):
  Future<Response> postIamKeysUpdateWithHttpInfo(IamKey iamKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/keys/update';

    // ignore: prefer_final_locals
    Object? postBody = iamKey;

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

  /// Changes what a key is called or what it may reach.
  ///
  /// Changes what a key is called or what it may reach. The credential itself is not reissued — the key in your deployment keeps working.
  ///
  /// Parameters:
  ///
  /// * [IamKey] iamKey (required):
  Future<IamKey?> postIamKeysUpdate(IamKey iamKey,) async {
    final response = await postIamKeysUpdateWithHttpInfo(iamKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamKey',) as IamKey;
    
    }
    return null;
  }

  /// Starts connecting another sign-in identity to the account you are already signed in as.
  ///
  /// Starts connecting another sign-in identity to the account you are already signed in as. It answers with the provider's URL for the browser to follow; when the provider returns, that identity is attached and you come back to returnUri.  Your account is fixed here, from the credential you are already holding, and is carried server-side for the rest of the round-trip — so nothing that happens at the provider can point the link at somebody else.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamLinkWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/link';

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

  /// Starts connecting another sign-in identity to the account you are already signed in as.
  ///
  /// Starts connecting another sign-in identity to the account you are already signed in as. It answers with the provider's URL for the browser to follow; when the provider returns, that identity is attached and you come back to returnUri.  Your account is fixed here, from the credential you are already holding, and is carried server-side for the rest of the round-trip — so nothing that happens at the provider can point the link at somebody else.
  Future<void> postIamLink() async {
    final response = await postIamLinkWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Signs a person in with the credential they typed, and — when the request is part of an OAuth flow — hands back the one-time code that finishes it.
  ///
  /// Signs a person in with the credential they typed, and — when the request is part of an OAuth flow — hands back the one-time code that finishes it. A second factor, if the account has one, is asked for and required here.  The password is compared against a stored one-way hash and is never logged, echoed or stored as typed.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamLoginWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/login';

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

  /// Signs a person in with the credential they typed, and — when the request is part of an OAuth flow — hands back the one-time code that finishes it.
  ///
  /// Signs a person in with the credential they typed, and — when the request is part of an OAuth flow — hands back the one-time code that finishes it. A second factor, if the account has one, is asked for and required here.  The password is compared against a stored one-way hash and is never logged, echoed or stored as typed.
  Future<void> postIamLogin() async {
    final response = await postIamLoginWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lets a person or an application act in an organization.
  ///
  /// Lets a person or an application act in an organization. It is the grant behind \"add someone to the team\", and it is safe to repeat — granting a membership that already exists changes nothing. Granting membership IS the org's authority to give, so it takes the same gate a write to that org's own registry row takes: a SuperAdmin, an admin of the org itself, or an org-admin-capable confidential client. One rule, one place (internal/authz).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamMembershipsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/memberships';

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

  /// Lets a person or an application act in an organization.
  ///
  /// Lets a person or an application act in an organization. It is the grant behind \"add someone to the team\", and it is safe to repeat — granting a membership that already exists changes nothing. Granting membership IS the org's authority to give, so it takes the same gate a write to that org's own registry row takes: a SuperAdmin, an admin of the org itself, or an org-admin-capable confidential client. One rule, one place (internal/authz).
  Future<void> postIamMemberships() async {
    final response = await postIamMembershipsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Turns a factor off, so sign-in stops asking for it.
  ///
  /// Turns a factor off, so sign-in stops asking for it. Naming no factor turns off ALL of them — the reset path. People may do this for themselves; doing it for somebody else takes an administrator, which is what makes it the way back in when a phone is lost.  The recovery codes go with the last factor: they are the way past a challenge, so keeping them alive for an account with nothing to challenge would leave a standing credential behind.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamMfaDisableWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/mfa/disable';

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

  /// Turns a factor off, so sign-in stops asking for it.
  ///
  /// Turns a factor off, so sign-in stops asking for it. Naming no factor turns off ALL of them — the reset path. People may do this for themselves; doing it for somebody else takes an administrator, which is what makes it the way back in when a phone is lost.  The recovery codes go with the last factor: they are the way past a challenge, so keeping them alive for an account with nothing to challenge would leave a standing credential behind.
  Future<void> postIamMfaDisable() async {
    final response = await postIamMfaDisableWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Picks which second factor an account is asked for first when it has more than one.
  ///
  /// Picks which second factor an account is asked for first when it has more than one. Only a factor the account actually holds: storing an unheld one told the login gate \"MFA is on\" — factor.Enabled reads that column — while leaving it nothing to ask for, so the sign-in required the password alone.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamMfaPreferredWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/mfa/preferred';

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

  /// Picks which second factor an account is asked for first when it has more than one.
  ///
  /// Picks which second factor an account is asked for first when it has more than one. Only a factor the account actually holds: storing an unheld one told the login gate \"MFA is on\" — factor.Enabled reads that column — while leaving it nothing to ask for, so the sign-in required the password alone.
  Future<void> postIamMfaPreferred() async {
    final response = await postIamMfaPreferredWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Finishes the enrolment: from here the account's sign-ins ask for this factor.
  ///
  /// Finishes the enrolment: from here the account's sign-ins ask for this factor. It requires the proof initiate handed out — a passcode from the authenticator, or the code that was sent — and verifies it BEFORE writing anything.  It used to write on the strength of a `secret` field alone. A client that skipped the verify step, scanned the QR into the wrong app, or was simply buggy switched on a factor no code would ever satisfy, and the account was then locked out with no self-service way back: the gate holds the sign-in before minting, so the person cannot obtain the bearer that disable requires.  The recovery codes are minted here and returned ONCE, on the first factor the account adds. Answering with them is the way back in when no factor can be produced, so they are the same value the row's digests were made from — by construction, not by a client echoing them back.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamMfaSetupEnableWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/mfa/setup/enable';

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

  /// Finishes the enrolment: from here the account's sign-ins ask for this factor.
  ///
  /// Finishes the enrolment: from here the account's sign-ins ask for this factor. It requires the proof initiate handed out — a passcode from the authenticator, or the code that was sent — and verifies it BEFORE writing anything.  It used to write on the strength of a `secret` field alone. A client that skipped the verify step, scanned the QR into the wrong app, or was simply buggy switched on a factor no code would ever satisfy, and the account was then locked out with no self-service way back: the gate holds the sign-in before minting, so the person cannot obtain the bearer that disable requires.  The recovery codes are minted here and returned ONCE, on the first factor the account adds. Answering with them is the way back in when no factor can be produced, so they are the same value the row's digests were made from — by construction, not by a client echoing them back.
  Future<void> postIamMfaSetupEnable() async {
    final response = await postIamMfaSetupEnableWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Starts enrolling a factor and hands over whatever the person needs to prove they hold it: app a fresh secret and the otpauth:// URL to render as a QR code sms a code texted to the number on the account email a code mailed to the address on the account Nothing is switched on yet, so abandoning this step leaves the account exactly as it was.
  ///
  /// Starts enrolling a factor and hands over whatever the person needs to prove they hold it:   app   a fresh secret and the otpauth:// URL to render as a QR code  sms   a code texted to the number on the account  email a code mailed to the address on the account  Nothing is switched on yet, so abandoning this step leaves the account exactly as it was. Response: {status:\"ok\", data:{mfaType, secret, url}} — secret and url only for the authenticator.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamMfaSetupInitiateWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/mfa/setup/initiate';

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

  /// Starts enrolling a factor and hands over whatever the person needs to prove they hold it: app a fresh secret and the otpauth:// URL to render as a QR code sms a code texted to the number on the account email a code mailed to the address on the account Nothing is switched on yet, so abandoning this step leaves the account exactly as it was.
  ///
  /// Starts enrolling a factor and hands over whatever the person needs to prove they hold it:   app   a fresh secret and the otpauth:// URL to render as a QR code  sms   a code texted to the number on the account  email a code mailed to the address on the account  Nothing is switched on yet, so abandoning this step leaves the account exactly as it was. Response: {status:\"ok\", data:{mfaType, secret, url}} — secret and url only for the authenticator.
  Future<void> postIamMfaSetupInitiate() async {
    final response = await postIamMfaSetupInitiateWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// (re)generates the target user's key of the requested TYPE and returns it once, over the shared authorizeMinter + mintTarget seam.
  ///
  /// (re)generates the target user's key of the requested TYPE and returns it once, over the shared authorizeMinter + mintTarget seam. `?type=secret` (the default) yields the confidential sk-; `?type=publishable` yields the pk- that is safe to ship in client JS and resolves to an org, never a principal.  It writes the schema.Key row that the resolvers actually read. schema.User.AccessKey is not a credential and nothing resolves it, so a key stamped there would authenticate nobody.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamMintUserKeysWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/mint-user-keys';

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

  /// (re)generates the target user's key of the requested TYPE and returns it once, over the shared authorizeMinter + mintTarget seam.
  ///
  /// (re)generates the target user's key of the requested TYPE and returns it once, over the shared authorizeMinter + mintTarget seam. `?type=secret` (the default) yields the confidential sk-; `?type=publishable` yields the pk- that is safe to ship in client JS and resolves to an org, never a principal.  It writes the schema.Key row that the resolvers actually read. schema.User.AccessKey is not a credential and nothing resolves it, so a key stamped there would authenticate nobody.
  Future<void> postIamMintUserKeys() async {
    final response = await postIamMintUserKeysWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Starts a sign-in — the address you send a browser to, and the beginning of every OAuth and OpenID Connect flow.
  ///
  /// Starts a sign-in — the address you send a browser to, and the beginning of every OAuth and OpenID Connect flow.  If the person is ALREADY signed in here, it does not ask them again: it returns them to the application with a one-time code and they never see this page. Otherwise it shows the right way to sign in for the application they are signing in to, or hands off to another identity provider if that is what they pick.  A client can say what it wants with `prompt`: `none` means answer without any screen at all — with the code if a session exists, with an error if not, but never with a page; `login` means ask for the password again even if a session exists; `select_account` means let the person choose which identity to use.  It returns only to an address the application has registered. That check happens before anything else, so a request naming an unregistered address is refused where the person can see it rather than being bounced onwards.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamOauthAuthorizeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/oauth/authorize';

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

  /// Starts a sign-in — the address you send a browser to, and the beginning of every OAuth and OpenID Connect flow.
  ///
  /// Starts a sign-in — the address you send a browser to, and the beginning of every OAuth and OpenID Connect flow.  If the person is ALREADY signed in here, it does not ask them again: it returns them to the application with a one-time code and they never see this page. Otherwise it shows the right way to sign in for the application they are signing in to, or hands off to another identity provider if that is what they pick.  A client can say what it wants with `prompt`: `none` means answer without any screen at all — with the code if a session exists, with an error if not, but never with a page; `login` means ask for the password again even if a session exists; `select_account` means let the person choose which identity to use.  It returns only to an address the application has registered. That check happens before anything else, so a request naming an unregistered address is refused where the person can see it rather than being bounced onwards.
  Future<void> postIamOauthAuthorize() async {
    final response = await postIamOauthAuthorizeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Starts a sign-in on a device with no browser and no keyboard — a TV, a CLI, a headless box.
  ///
  /// Starts a sign-in on a device with no browser and no keyboard — a TV, a CLI, a headless box. It returns a short code to show the person and the address to send them to on a phone or laptop.  Nothing is granted until a human approves it there; until then the code is just a pending request.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamOauthDeviceWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/oauth/device';

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

  /// Starts a sign-in on a device with no browser and no keyboard — a TV, a CLI, a headless box.
  ///
  /// Starts a sign-in on a device with no browser and no keyboard — a TV, a CLI, a headless box. It returns a short code to show the person and the address to send them to on a phone or laptop.  Nothing is granted until a human approves it there; until then the code is just a pending request.
  Future<void> postIamOauthDevice() async {
    final response = await postIamOauthDeviceWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Answers \"what am I approving?\" for a pending device code.
  ///
  /// Answers \"what am I approving?\" for a pending device code.  The approval page exists to tell a human WHICH application they are authorizing; a page that names the wrong one defeats the control it implements. It used to render the portal's own app name — a constant, `hanzo-console` for every code — so a device code minted by `hanzo-cli` was approved under a screen naming a different application entirely. The client is a property of the CODE, so it is read from the code's row here and nowhere else.  Requires a signed-in session, and answers with the same ONE opaque refusal approveDevice uses. That is deliberate: the user_code is only 40 bits and is the one secret in this flow, so an unauthenticated lookup — or one that distinguished unknown from expired from already-approved — would be an oracle for hunting live codes. Gated and opaque, it reveals strictly less than the approval the same caller could already attempt.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamOauthDeviceInfoWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/oauth/device/info';

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

  /// Answers \"what am I approving?\" for a pending device code.
  ///
  /// Answers \"what am I approving?\" for a pending device code.  The approval page exists to tell a human WHICH application they are authorizing; a page that names the wrong one defeats the control it implements. It used to render the portal's own app name — a constant, `hanzo-console` for every code — so a device code minted by `hanzo-cli` was approved under a screen naming a different application entirely. The client is a property of the CODE, so it is read from the code's row here and nowhere else.  Requires a signed-in session, and answers with the same ONE opaque refusal approveDevice uses. That is deliberate: the user_code is only 40 bits and is the one secret in this flow, so an unauthenticated lookup — or one that distinguished unknown from expired from already-approved — would be an oracle for hunting live codes. Gated and opaque, it reveals strictly less than the approval the same caller could already attempt.
  Future<void> postIamOauthDeviceInfo() async {
    final response = await postIamOauthDeviceInfoWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Completes a sign-in that came in through another identity provider and still owes a second factor.
  ///
  /// Completes a sign-in that came in through another identity provider and still owes a second factor. The person supplies the factor here and the login finishes.  The account is fixed when the challenge is issued, not by the request, so no one can redirect a half-finished login onto somebody else's account. A wrong factor uses the challenge up: retrying means starting the sign-in again, the same as a mistyped password.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamOauthFederationMfaWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/oauth/federation/mfa';

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

  /// Completes a sign-in that came in through another identity provider and still owes a second factor.
  ///
  /// Completes a sign-in that came in through another identity provider and still owes a second factor. The person supplies the factor here and the login finishes.  The account is fixed when the challenge is issued, not by the request, so no one can redirect a half-finished login onto somebody else's account. A wrong factor uses the challenge up: retrying means starting the sign-in again, the same as a mistyped password.
  Future<void> postIamOauthFederationMfa() async {
    final response = await postIamOauthFederationMfaWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Answers whether an access token is still good, and what it is good for — the check a resource server of yours makes before honouring a token it did not mint.
  ///
  /// Answers whether an access token is still good, and what it is good for — the check a resource server of yours makes before honouring a token it did not mint.  A token counts as active only if it verifies AND has not been revoked, so a revoked token reads as dead here immediately rather than until it expires. A token that is unknown, expired or revoked answers simply that it is not active, and nothing more — the endpoint is not a way to learn about tokens you were not given.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamOauthIntrospectWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/oauth/introspect';

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

  /// Answers whether an access token is still good, and what it is good for — the check a resource server of yours makes before honouring a token it did not mint.
  ///
  /// Answers whether an access token is still good, and what it is good for — the check a resource server of yours makes before honouring a token it did not mint.  A token counts as active only if it verifies AND has not been revoked, so a revoked token reads as dead here immediately rather than until it expires. A token that is unknown, expired or revoked answers simply that it is not active, and nothing more — the endpoint is not a way to learn about tokens you were not given.
  Future<void> postIamOauthIntrospect() async {
    final response = await postIamOauthIntrospectWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Ends a sign-in and sends the browser somewhere sensible.
  ///
  /// Ends a sign-in and sends the browser somewhere sensible. Accepts GET or POST, so it works as a plain link.  It ACTUALLY signs you out, which is worth stating because the endpoint spent a release not doing it: the whole body computed a redirect and answered {\"status\":\"ok\"} unconditionally — no session ended, no token revoked. A logout that reports success while leaving the session live is worse than no logout at all, because the person on the shared machine believes it worked. Three things happen here now, in this order:   1. The browser session dies — sid revoked server-side AND the cookie expired     (sessions.Clear). Server-side revocation is the load-bearing half: a copy     of the cookie taken before logout must not still resolve.  2. The relying party's tokens are revoked when an id_token_hint names it, so     the refresh token cannot mint a fresh access token after the human left.     Revocation state is authoritative — a JWT's `exp` still reads valid for     days, so expiry is necessary but never sufficient.  3. Only then is a redirect considered, and only to a REGISTERED uri.  The open-redirect guard is unchanged: a redirect happens only when a VERIFIED id_token_hint identifies the application and that application has registered the target. Anything else refuses to redirect — nobody can turn your logout link into a redirect to a site of their choosing.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamOauthLogoutWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/oauth/logout';

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

  /// Ends a sign-in and sends the browser somewhere sensible.
  ///
  /// Ends a sign-in and sends the browser somewhere sensible. Accepts GET or POST, so it works as a plain link.  It ACTUALLY signs you out, which is worth stating because the endpoint spent a release not doing it: the whole body computed a redirect and answered {\"status\":\"ok\"} unconditionally — no session ended, no token revoked. A logout that reports success while leaving the session live is worse than no logout at all, because the person on the shared machine believes it worked. Three things happen here now, in this order:   1. The browser session dies — sid revoked server-side AND the cookie expired     (sessions.Clear). Server-side revocation is the load-bearing half: a copy     of the cookie taken before logout must not still resolve.  2. The relying party's tokens are revoked when an id_token_hint names it, so     the refresh token cannot mint a fresh access token after the human left.     Revocation state is authoritative — a JWT's `exp` still reads valid for     days, so expiry is necessary but never sufficient.  3. Only then is a redirect considered, and only to a REGISTERED uri.  The open-redirect guard is unchanged: a redirect happens only when a VERIFIED id_token_hint identifies the application and that application has registered the target. Anything else refuses to redirect — nobody can turn your logout link into a redirect to a site of their choosing.
  Future<void> postIamOauthLogout() async {
    final response = await postIamOauthLogoutWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retires a token before it expires — what you call when someone signs out or a credential may have leaked.
  ///
  /// Retires a token before it expires — what you call when someone signs out or a credential may have leaked.  Revoking an access token kills that token. Revoking a REFRESH token kills the whole chain it belongs to, so no further access tokens can be minted from it and every token already minted from it dies with it.  A token that is not yours, or that never existed, answers success and does nothing — so the endpoint cannot be used to discover which tokens are real.  PUBLIC clients revoke too, and must: sign-out is the only control a long-lived refresh token has. hanzo-cli is a public PKCE client holding a 30-day rotating refresh token, so a confidential-only revocation endpoint made `hanzo auth logout` a LOCAL DELETE — the credential it dropped stayed spendable at hanzo.id for the rest of the month, with nothing able to kill it. Measured 2026-08-01: revoke answered 401 invalid_client and the refresh token went on minting access tokens.  Widening authentication does not widen authority. The caller must still POSSESS the token — and possession already permits USE, of which revocation is the strict opposite — and the row must belong to the client that presents it, so a public client_id buys the ability to destroy exactly what its holder could otherwise spend. RFC 6749 §3.2.1 is the same reading: a client with no credentials identifies itself with client_id.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamOauthRevokeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/oauth/revoke';

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

  /// Retires a token before it expires — what you call when someone signs out or a credential may have leaked.
  ///
  /// Retires a token before it expires — what you call when someone signs out or a credential may have leaked.  Revoking an access token kills that token. Revoking a REFRESH token kills the whole chain it belongs to, so no further access tokens can be minted from it and every token already minted from it dies with it.  A token that is not yours, or that never existed, answers success and does nothing — so the endpoint cannot be used to discover which tokens are real.  PUBLIC clients revoke too, and must: sign-out is the only control a long-lived refresh token has. hanzo-cli is a public PKCE client holding a 30-day rotating refresh token, so a confidential-only revocation endpoint made `hanzo auth logout` a LOCAL DELETE — the credential it dropped stayed spendable at hanzo.id for the rest of the month, with nothing able to kill it. Measured 2026-08-01: revoke answered 401 invalid_client and the refresh token went on minting access tokens.  Widening authentication does not widen authority. The caller must still POSSESS the token — and possession already permits USE, of which revocation is the strict opposite — and the row must belong to the client that presents it, so a public client_id buys the ability to destroy exactly what its holder could otherwise spend. RFC 6749 §3.2.1 is the same reading: a client with no credentials identifies itself with client_id.
  Future<void> postIamOauthRevoke() async {
    final response = await postIamOauthRevokeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Exchanges what your application is holding for the tokens it needs — the one-time code from a finished sign-in, a refresh token, or your own client credentials when the caller is a program rather than a person.
  ///
  /// Exchanges what your application is holding for the tokens it needs — the one-time code from a finished sign-in, a refresh token, or your own client credentials when the caller is a program rather than a person.  A refresh returns a NEW refresh token and retires the one you sent. If a retired one is ever presented again the whole chain is revoked, on the assumption that a token which came back from the dead was copied — so a stolen refresh token buys an attacker one use and costs them the session.  Responses are never cached, by any hop.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamOauthTokenWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/oauth/token';

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

  /// Exchanges what your application is holding for the tokens it needs — the one-time code from a finished sign-in, a refresh token, or your own client credentials when the caller is a program rather than a person.
  ///
  /// Exchanges what your application is holding for the tokens it needs — the one-time code from a finished sign-in, a refresh token, or your own client credentials when the caller is a program rather than a person.  A refresh returns a NEW refresh token and retires the one you sent. If a retired one is ever presented again the whole chain is revoked, on the assumption that a token which came back from the dead was copied — so a stolen refresh token buys an attacker one use and costs them the session.  Responses are never cached, by any hop.
  Future<void> postIamOauthToken() async {
    final response = await postIamOauthTokenWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the profile claims for whoever the access token belongs to — the standard OpenID Connect way to find out who is calling you without your application storing anything itself.
  ///
  /// Returns the profile claims for whoever the access token belongs to — the standard OpenID Connect way to find out who is calling you without your application storing anything itself.  The token must still be live: revoke it and this stops answering.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamOauthUserinfoWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/oauth/userinfo';

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

  /// Returns the profile claims for whoever the access token belongs to — the standard OpenID Connect way to find out who is calling you without your application storing anything itself.
  ///
  /// Returns the profile claims for whoever the access token belongs to — the standard OpenID Connect way to find out who is calling you without your application storing anything itself.  The token must still be live: revoke it and this stops answering.
  Future<void> postIamOauthUserinfo() async {
    final response = await postIamOauthUserinfoWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Finishes setting up the account of whoever is calling — it creates their organization if they have none and puts them in it, so a person who has just signed up lands somewhere they can work.
  ///
  /// Finishes setting up the account of whoever is calling — it creates their organization if they have none and puts them in it, so a person who has just signed up lands somewhere they can work.  It always acts on the caller and never on somebody named in the request, so there is no way to onboard another person's account through it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamOnboardWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/onboard';

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

  /// Finishes setting up the account of whoever is calling — it creates their organization if they have none and puts them in it, so a person who has just signed up lands somewhere they can work.
  ///
  /// Finishes setting up the account of whoever is calling — it creates their organization if they have none and puts them in it, so a person who has just signed up lands somewhere they can work.  It always acts on the caller and never on somebody named in the request, so there is no way to onboard another person's account through it.
  Future<void> postIamOnboard() async {
    final response = await postIamOnboardWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Grants a permission — the call that gives a person or a role the ability to do something.
  ///
  /// Grants a permission — the call that gives a person or a role the ability to do something. Adding refuses to overwrite a grant that already exists, so widening an existing one is an update, never an accident.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamPermission] iamPermission (required):
  Future<Response> postIamPermissionsWithHttpInfo(IamPermission iamPermission,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/permissions';

    // ignore: prefer_final_locals
    Object? postBody = iamPermission;

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

  /// Grants a permission — the call that gives a person or a role the ability to do something.
  ///
  /// Grants a permission — the call that gives a person or a role the ability to do something. Adding refuses to overwrite a grant that already exists, so widening an existing one is an update, never an accident.
  ///
  /// Parameters:
  ///
  /// * [IamPermission] iamPermission (required):
  Future<IamPermission?> postIamPermissions(IamPermission iamPermission,) async {
    final response = await postIamPermissionsWithHttpInfo(iamPermission,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamPermission',) as IamPermission;
    
    }
    return null;
  }

  /// Revokes a permission.
  ///
  /// Revokes a permission. Everyone who held access only through it loses that access immediately; grants they hold by another route are untouched.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamPermissionRef] iamPermissionRef (required):
  Future<Response> postIamPermissionsDeleteWithHttpInfo(IamPermissionRef iamPermissionRef,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/permissions/delete';

    // ignore: prefer_final_locals
    Object? postBody = iamPermissionRef;

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

  /// Revokes a permission.
  ///
  /// Revokes a permission. Everyone who held access only through it loses that access immediately; grants they hold by another route are untouched.
  ///
  /// Parameters:
  ///
  /// * [IamPermissionRef] iamPermissionRef (required):
  Future<IamPermissionDeleteResponse?> postIamPermissionsDelete(IamPermissionRef iamPermissionRef,) async {
    final response = await postIamPermissionsDeleteWithHttpInfo(iamPermissionRef,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamPermissionDeleteResponse',) as IamPermissionDeleteResponse;
    
    }
    return null;
  }

  /// Changes who a permission grants to, what it allows, or the resources it covers.
  ///
  /// Changes who a permission grants to, what it allows, or the resources it covers. Access changes as soon as the write lands. What the permission is called does not change, and neither does when it was created.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamPermission] iamPermission (required):
  Future<Response> postIamPermissionsUpdateWithHttpInfo(IamPermission iamPermission,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/permissions/update';

    // ignore: prefer_final_locals
    Object? postBody = iamPermission;

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

  /// Changes who a permission grants to, what it allows, or the resources it covers.
  ///
  /// Changes who a permission grants to, what it allows, or the resources it covers. Access changes as soon as the write lands. What the permission is called does not change, and neither does when it was created.
  ///
  /// Parameters:
  ///
  /// * [IamPermission] iamPermission (required):
  Future<IamPermission?> postIamPermissionsUpdate(IamPermission iamPermission,) async {
    final response = await postIamPermissionsUpdateWithHttpInfo(iamPermission,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamPermission',) as IamPermission;
    
    }
    return null;
  }

  /// Saves the calling person's own settings and returns the full set afterwards.
  ///
  /// Saves the calling person's own settings and returns the full set afterwards. Send only the settings you are changing — the rest are kept, so two screens can save at once without one undoing the other.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamPreferencesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/preferences';

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

  /// Saves the calling person's own settings and returns the full set afterwards.
  ///
  /// Saves the calling person's own settings and returns the full set afterwards. Send only the settings you are changing — the rest are kept, so two screens can save at once without one undoing the other.
  Future<void> postIamPreferences() async {
    final response = await postIamPreferencesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Makes a project inside your organization — the scope people pick between when their work is separated by product or client rather than by team.
  ///
  /// Makes a project inside your organization — the scope people pick between when their work is separated by product or client rather than by team. A name already used in the organization is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamInput] iamInput (required):
  Future<Response> postIamProjectsWithHttpInfo(IamInput iamInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/projects';

    // ignore: prefer_final_locals
    Object? postBody = iamInput;

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

  /// Makes a project inside your organization — the scope people pick between when their work is separated by product or client rather than by team.
  ///
  /// Makes a project inside your organization — the scope people pick between when their work is separated by product or client rather than by team. A name already used in the organization is refused.
  ///
  /// Parameters:
  ///
  /// * [IamInput] iamInput (required):
  Future<IamProject?> postIamProjects(IamInput iamInput,) async {
    final response = await postIamProjectsWithHttpInfo(iamInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamProject',) as IamProject;
    
    }
    return null;
  }

  /// Removes a project.
  ///
  /// Removes a project. The people and roles in your organization are unchanged; what goes is the scope itself, so move anything addressed by it first.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamProjectsRef] iamProjectsRef (required):
  Future<Response> postIamProjectsDeleteWithHttpInfo(IamProjectsRef iamProjectsRef,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/projects/delete';

    // ignore: prefer_final_locals
    Object? postBody = iamProjectsRef;

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

  /// Removes a project.
  ///
  /// Removes a project. The people and roles in your organization are unchanged; what goes is the scope itself, so move anything addressed by it first.
  ///
  /// Parameters:
  ///
  /// * [IamProjectsRef] iamProjectsRef (required):
  Future<IamProjectsDeleteOutput?> postIamProjectsDelete(IamProjectsRef iamProjectsRef,) async {
    final response = await postIamProjectsDeleteWithHttpInfo(iamProjectsRef,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamProjectsDeleteOutput',) as IamProjectsDeleteOutput;
    
    }
    return null;
  }

  /// Returns one project: what it is called and how it is set up.
  ///
  /// Returns one project: what it is called and how it is set up.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamProjectsRef] iamProjectsRef (required):
  Future<Response> postIamProjectsGetWithHttpInfo(IamProjectsRef iamProjectsRef,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/projects/get';

    // ignore: prefer_final_locals
    Object? postBody = iamProjectsRef;

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

  /// Returns one project: what it is called and how it is set up.
  ///
  /// Returns one project: what it is called and how it is set up.
  ///
  /// Parameters:
  ///
  /// * [IamProjectsRef] iamProjectsRef (required):
  Future<IamProject?> postIamProjectsGet(IamProjectsRef iamProjectsRef,) async {
    final response = await postIamProjectsGetWithHttpInfo(iamProjectsRef,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamProject',) as IamProject;
    
    }
    return null;
  }

  /// Changes a project's settings.
  ///
  /// Changes a project's settings. What it is called does not change, and neither does when it was created.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamInput] iamInput (required):
  Future<Response> postIamProjectsUpdateWithHttpInfo(IamInput iamInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/projects/update';

    // ignore: prefer_final_locals
    Object? postBody = iamInput;

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

  /// Changes a project's settings.
  ///
  /// Changes a project's settings. What it is called does not change, and neither does when it was created.
  ///
  /// Parameters:
  ///
  /// * [IamInput] iamInput (required):
  Future<IamProject?> postIamProjectsUpdate(IamInput iamInput,) async {
    final response = await postIamProjectsUpdateWithHttpInfo(iamInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamProject',) as IamProject;
    
    }
    return null;
  }

  /// Signs a container client in to your registry.
  ///
  /// Signs a container client in to your registry. `docker login`, and every build tool that pushes or pulls images, lands here: it exchanges the credential for a short-lived token scoped to exactly the repositories that credential may touch.  Both of the shapes container tooling uses are accepted, so the same login works whichever client your pipeline runs.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamRegistryTokenWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/registry/token';

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

  /// Signs a container client in to your registry.
  ///
  /// Signs a container client in to your registry. `docker login`, and every build tool that pushes or pulls images, lands here: it exchanges the credential for a short-lived token scoped to exactly the repositories that credential may touch.  Both of the shapes container tooling uses are accepted, so the same login works whichever client your pipeline runs.
  Future<void> postIamRegistryToken() async {
    final response = await postIamRegistryTokenWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Clears the target user's key of the requested TYPE (immediate revoke).
  ///
  /// Clears the target user's key of the requested TYPE (immediate revoke). Scoped by the same `?type` field mint takes, so revoking the browser key leaves the server key working. A secret key's stored value is the sk- in its schema.Key row.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamRevokeUserKeysWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/revoke-user-keys';

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

  /// Clears the target user's key of the requested TYPE (immediate revoke).
  ///
  /// Clears the target user's key of the requested TYPE (immediate revoke). Scoped by the same `?type` field mint takes, so revoking the browser key leaves the server key working. A secret key's stored value is the sk- in its schema.Key row.
  Future<void> postIamRevokeUserKeys() async {
    final response = await postIamRevokeUserKeysWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Makes a role — a named group of people that permissions are granted to.
  ///
  /// Makes a role — a named group of people that permissions are granted to. Granting to a role rather than to each person is what keeps access correct as your team changes: add someone to the role and they inherit everything it can do. A name already used in your organization is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamRolesInput] iamRolesInput (required):
  Future<Response> postIamRolesWithHttpInfo(IamRolesInput iamRolesInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/roles';

    // ignore: prefer_final_locals
    Object? postBody = iamRolesInput;

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

  /// Makes a role — a named group of people that permissions are granted to.
  ///
  /// Makes a role — a named group of people that permissions are granted to. Granting to a role rather than to each person is what keeps access correct as your team changes: add someone to the role and they inherit everything it can do. A name already used in your organization is refused.
  ///
  /// Parameters:
  ///
  /// * [IamRolesInput] iamRolesInput (required):
  Future<IamRole?> postIamRoles(IamRolesInput iamRolesInput,) async {
    final response = await postIamRolesWithHttpInfo(iamRolesInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamRole',) as IamRole;
    
    }
    return null;
  }

  /// Removes a role.
  ///
  /// Removes a role. Everyone in it loses the access it carried; their accounts, and any other role they hold, are untouched.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamRolesRef] iamRolesRef (required):
  Future<Response> postIamRolesDeleteWithHttpInfo(IamRolesRef iamRolesRef,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/roles/delete';

    // ignore: prefer_final_locals
    Object? postBody = iamRolesRef;

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

  /// Removes a role.
  ///
  /// Removes a role. Everyone in it loses the access it carried; their accounts, and any other role they hold, are untouched.
  ///
  /// Parameters:
  ///
  /// * [IamRolesRef] iamRolesRef (required):
  Future<IamRolesDeleteOutput?> postIamRolesDelete(IamRolesRef iamRolesRef,) async {
    final response = await postIamRolesDeleteWithHttpInfo(iamRolesRef,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamRolesDeleteOutput',) as IamRolesDeleteOutput;
    
    }
    return null;
  }

  /// Returns one role: who is in it, and the roles it includes.
  ///
  /// Returns one role: who is in it, and the roles it includes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamRolesRef] iamRolesRef (required):
  Future<Response> postIamRolesGetWithHttpInfo(IamRolesRef iamRolesRef,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/roles/get';

    // ignore: prefer_final_locals
    Object? postBody = iamRolesRef;

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

  /// Returns one role: who is in it, and the roles it includes.
  ///
  /// Returns one role: who is in it, and the roles it includes.
  ///
  /// Parameters:
  ///
  /// * [IamRolesRef] iamRolesRef (required):
  Future<IamRole?> postIamRolesGet(IamRolesRef iamRolesRef,) async {
    final response = await postIamRolesGetWithHttpInfo(iamRolesRef,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamRole',) as IamRole;
    
    }
    return null;
  }

  /// Changes who is in a role, or which roles it includes.
  ///
  /// Changes who is in a role, or which roles it includes. Access changes for everyone in it as soon as the write lands. What the role is called does not change, and neither does when it was created.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamRolesInput] iamRolesInput (required):
  Future<Response> postIamRolesUpdateWithHttpInfo(IamRolesInput iamRolesInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/roles/update';

    // ignore: prefer_final_locals
    Object? postBody = iamRolesInput;

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

  /// Changes who is in a role, or which roles it includes.
  ///
  /// Changes who is in a role, or which roles it includes. Access changes for everyone in it as soon as the write lands. What the role is called does not change, and neither does when it was created.
  ///
  /// Parameters:
  ///
  /// * [IamRolesInput] iamRolesInput (required):
  Future<IamRole?> postIamRolesUpdate(IamRolesInput iamRolesInput,) async {
    final response = await postIamRolesUpdateWithHttpInfo(iamRolesInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamRole',) as IamRole;
    
    }
    return null;
  }

  /// Provisions a person from your identity provider — how a new hire gets an account here automatically when they are added over there.
  ///
  /// Provisions a person from your identity provider — how a new hire gets an account here automatically when they are added over there.  Takes an administrator. Making someone an administrator takes more than that, so an IdP integration cannot escalate anyone by setting a flag.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamScimV2UsersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/scim/v2/Users';

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

  /// Provisions a person from your identity provider — how a new hire gets an account here automatically when they are added over there.
  ///
  /// Provisions a person from your identity provider — how a new hire gets an account here automatically when they are added over there.  Takes an administrator. Making someone an administrator takes more than that, so an IdP integration cannot escalate anyone by setting a flag.
  Future<void> postIamScimV2Users() async {
    final response = await postIamScimV2UsersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Validates the request and asks otp to get a code to the person.
  ///
  /// Validates the request and asks otp to get a code to the person. The request fields are read via fiber's FormValue — the escape hatch zip exposes for form bodies (multipart or urlencoded) — since the typed JSON Bind does not apply here. v1 also accepts countryCode/method/checkUser/captchaType; iam ignores them (the captcha/forget/MFA flows those drive are not ported), and CAPTCHA verification is likewise not enforced — iam models no captcha provider — so the code is issued once the destination and application validate.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamSendVerificationCodeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/send-verification-code';

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

  /// Validates the request and asks otp to get a code to the person.
  ///
  /// Validates the request and asks otp to get a code to the person. The request fields are read via fiber's FormValue — the escape hatch zip exposes for form bodies (multipart or urlencoded) — since the typed JSON Bind does not apply here. v1 also accepts countryCode/method/checkUser/captchaType; iam ignores them (the captcha/forget/MFA flows those drive are not ported), and CAPTCHA verification is likewise not enforced — iam models no captcha provider — so the code is issued once the destination and application validate.
  Future<void> postIamSendVerificationCode() async {
    final response = await postIamSendVerificationCodeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Makes a service account — an identity for a program rather than a person, for a script, a bot or a deployment that has to authenticate on its own.
  ///
  /// Makes a service account — an identity for a program rather than a person, for a script, a bot or a deployment that has to authenticate on its own.  It comes back with its first key, and the secret half is shown ONCE, here. There is no way to read it again; if you lose it, rotate.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamServiceAccountsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/service-accounts';

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

  /// Makes a service account — an identity for a program rather than a person, for a script, a bot or a deployment that has to authenticate on its own.
  ///
  /// Makes a service account — an identity for a program rather than a person, for a script, a bot or a deployment that has to authenticate on its own.  It comes back with its first key, and the secret half is shown ONCE, here. There is no way to read it again; if you lose it, rotate.
  Future<void> postIamServiceAccounts() async {
    final response = await postIamServiceAccountsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Serves POST /v1/iam/service-accounts/:name/keys: mint a fresh key, invalidating the prior one, and return the new raw secret exactly once.
  ///
  /// Serves POST /v1/iam/service-accounts/:name/keys: mint a fresh key, invalidating the prior one, and return the new raw secret exactly once.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<Response> postIamServiceAccountsByNameKeysWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/service-accounts/{name}/keys'
      .replaceAll('{name}', name);

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

  /// Serves POST /v1/iam/service-accounts/:name/keys: mint a fresh key, invalidating the prior one, and return the new raw secret exactly once.
  ///
  /// Serves POST /v1/iam/service-accounts/:name/keys: mint a fresh key, invalidating the prior one, and return the new raw secret exactly once.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<void> postIamServiceAccountsByNameKeys(String name,) async {
    final response = await postIamServiceAccountsByNameKeysWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Picks which second factor an account is asked for first when it has more than one.
  ///
  /// Picks which second factor an account is asked for first when it has more than one. Only a factor the account actually holds: storing an unheld one told the login gate \"MFA is on\" — factor.Enabled reads that column — while leaving it nothing to ask for, so the sign-in required the password alone.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamSetPreferredMfaWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/set-preferred-mfa';

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

  /// Picks which second factor an account is asked for first when it has more than one.
  ///
  /// Picks which second factor an account is asked for first when it has more than one. Only a factor the account actually holds: storing an unheld one told the login gate \"MFA is on\" — factor.Enabled reads that column — while leaving it nothing to ask for, so the sign-in required the password alone.
  Future<void> postIamSetPreferredMfa() async {
    final response = await postIamSetPreferredMfaWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Completes a sign-in: it exchanges the one-time code your application was handed at the end of the login flow for a live session, and returns the signed-in account.
  ///
  /// Completes a sign-in: it exchanges the one-time code your application was handed at the end of the login flow for a live session, and returns the signed-in account.  The code works once. This is the call that turns a finished login into something your application can act on.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamSigninWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/signin';

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

  /// Completes a sign-in: it exchanges the one-time code your application was handed at the end of the login flow for a live session, and returns the signed-in account.
  ///
  /// Completes a sign-in: it exchanges the one-time code your application was handed at the end of the login flow for a live session, and returns the signed-in account.  The code works once. This is the call that turns a finished login into something your application can act on.
  Future<void> postIamSignin() async {
    final response = await postIamSigninWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Creates an account from the sign-up form and applies the application's own sign-up rules — whether self-service registration is open at all, and which fields it requires.
  ///
  /// Creates an account from the sign-up form and applies the application's own sign-up rules — whether self-service registration is open at all, and which fields it requires.  The password is hashed before it is stored and is never returned.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamSignupWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/signup';

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

  /// Creates an account from the sign-up form and applies the application's own sign-up rules — whether self-service registration is open at all, and which fields it requires.
  ///
  /// Creates an account from the sign-up form and applies the application's own sign-up rules — whether self-service registration is open at all, and which fields it requires.  The password is hashed before it is stored and is never returned.
  Future<void> postIamSignup() async {
    final response = await postIamSignupWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Mints an access token for the `?id=<owner>/<name>` target user (optional `?aud=` resource, RFC 8707), issued by the authenticated + allow-listed confidential client.
  ///
  /// Mints an access token for the `?id=<owner>/<name>` target user (optional `?aud=` resource, RFC 8707), issued by the authenticated + allow-listed confidential client. The token's subject + owner are the TARGET USER's, so a resource server scopes on the validated owner claim to the user's tenant — indistinguishable from a token the user obtained directly. Response is the camelCase `{accessToken, expiresIn}` body identity.ts consumes. Equivalent to the RFC 8693 token-exchange grant, minus the subject_token proof (the console has the user's id, not a token) — the reason this compat shim exists.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamTokensIssueWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/tokens/issue';

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

  /// Mints an access token for the `?id=<owner>/<name>` target user (optional `?aud=` resource, RFC 8707), issued by the authenticated + allow-listed confidential client.
  ///
  /// Mints an access token for the `?id=<owner>/<name>` target user (optional `?aud=` resource, RFC 8707), issued by the authenticated + allow-listed confidential client. The token's subject + owner are the TARGET USER's, so a resource server scopes on the validated owner claim to the user's tenant — indistinguishable from a token the user obtained directly. Response is the camelCase `{accessToken, expiresIn}` body identity.ts consumes. Equivalent to the RFC 8693 token-exchange grant, minus the subject_token proof (the console has the user's id, not a token) — the reason this compat shim exists.
  Future<void> postIamTokensIssue() async {
    final response = await postIamTokensIssueWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Disconnects one sign-in identity from an account, so that provider can no longer be used to sign in as that person.
  ///
  /// Disconnects one sign-in identity from an account, so that provider can no longer be used to sign in as that person. Their account and every other way they sign in are untouched. Two principals may do it, and only two: the account holder itself, and a SuperAdmin (a member of the reserved admin org, the one predicate). An ORG ADMIN deliberately may NOT — unlinking is not tenant administration, it is unpicking someone's own sign-in method, so the generic org-admin rule is the wrong answer here.  A holder unlinking itself must also be permitted by the application — the provider link's CanUnlink flag — so an organization that mandates federated sign-in cannot have its users strand themselves. A SuperAdmin is not bound by that flag; it is the platform's own recovery path. Fail-closed throughout.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamUnlinkWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/unlink';

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

  /// Disconnects one sign-in identity from an account, so that provider can no longer be used to sign in as that person.
  ///
  /// Disconnects one sign-in identity from an account, so that provider can no longer be used to sign in as that person. Their account and every other way they sign in are untouched. Two principals may do it, and only two: the account holder itself, and a SuperAdmin (a member of the reserved admin org, the one predicate). An ORG ADMIN deliberately may NOT — unlinking is not tenant administration, it is unpicking someone's own sign-in method, so the generic org-admin rule is the wrong answer here.  A holder unlinking itself must also be permitted by the application — the provider link's CanUnlink flag — so an organization that mandates federated sign-in cannot have its users strand themselves. A SuperAdmin is not bound by that flag; it is the platform's own recovery path. Fail-closed throughout.
  Future<void> postIamUnlink() async {
    final response = await postIamUnlinkWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Updates one of your applications — its display, its sign-in methods and the redirect URIs it is allowed to return to.
  ///
  /// Updates one of your applications — its display, its sign-in methods and the redirect URIs it is allowed to return to. Which organization and name the application has are fixed when it is created and are not editable here.  A redirect URI you add becomes an allowed sign-in origin, so this is the call that makes login work from a new host.  The older spelling of PUT /v1/iam/application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamApplication] iamApplication (required):
  Future<Response> postIamUpdateApplicationWithHttpInfo(IamApplication iamApplication,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/update-application';

    // ignore: prefer_final_locals
    Object? postBody = iamApplication;

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

  /// Updates one of your applications — its display, its sign-in methods and the redirect URIs it is allowed to return to.
  ///
  /// Updates one of your applications — its display, its sign-in methods and the redirect URIs it is allowed to return to. Which organization and name the application has are fixed when it is created and are not editable here.  A redirect URI you add becomes an allowed sign-in origin, so this is the call that makes login work from a new host.  The older spelling of PUT /v1/iam/application.
  ///
  /// Parameters:
  ///
  /// * [IamApplication] iamApplication (required):
  Future<IamResponse?> postIamUpdateApplication(IamApplication iamApplication,) async {
    final response = await postIamUpdateApplicationWithHttpInfo(iamApplication,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamResponse',) as IamResponse;
    
    }
    return null;
  }

  /// Updates your organization — its display, its default settings and the sign-in rules everyone in it inherits.
  ///
  /// Updates your organization — its display, its default settings and the sign-in rules everyone in it inherits.  The older spelling of POST /v1/iam/organizations/update.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamUpdateOrganizationInput] iamUpdateOrganizationInput (required):
  Future<Response> postIamUpdateOrganizationWithHttpInfo(IamUpdateOrganizationInput iamUpdateOrganizationInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/update-organization';

    // ignore: prefer_final_locals
    Object? postBody = iamUpdateOrganizationInput;

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

  /// Updates your organization — its display, its default settings and the sign-in rules everyone in it inherits.
  ///
  /// Updates your organization — its display, its default settings and the sign-in rules everyone in it inherits.  The older spelling of POST /v1/iam/organizations/update.
  ///
  /// Parameters:
  ///
  /// * [IamUpdateOrganizationInput] iamUpdateOrganizationInput (required):
  Future<IamResponse?> postIamUpdateOrganization(IamUpdateOrganizationInput iamUpdateOrganizationInput,) async {
    final response = await postIamUpdateOrganizationWithHttpInfo(iamUpdateOrganizationInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamResponse',) as IamResponse;
    
    }
    return null;
  }

  /// Saves the calling person's own settings and returns the full set afterwards.
  ///
  /// Saves the calling person's own settings and returns the full set afterwards. Send only the settings you are changing — the rest are kept, so two screens can save at once without one undoing the other.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamUpdatePreferencesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/update-preferences';

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

  /// Saves the calling person's own settings and returns the full set afterwards.
  ///
  /// Saves the calling person's own settings and returns the full set afterwards. Send only the settings you are changing — the rest are kept, so two screens can save at once without one undoing the other.
  Future<void> postIamUpdatePreferences() async {
    final response = await postIamUpdatePreferencesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Updates a provider's settings or rotates the credentials it holds.
  ///
  /// Updates a provider's settings or rotates the credentials it holds. The change takes effect on the next sign-in through it — sessions already issued are unaffected.  The older spelling of POST /v1/iam/providers/update.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamProvider] iamProvider (required):
  Future<Response> postIamUpdateProviderWithHttpInfo(IamProvider iamProvider,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/update-provider';

    // ignore: prefer_final_locals
    Object? postBody = iamProvider;

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

  /// Updates a provider's settings or rotates the credentials it holds.
  ///
  /// Updates a provider's settings or rotates the credentials it holds. The change takes effect on the next sign-in through it — sessions already issued are unaffected.  The older spelling of POST /v1/iam/providers/update.
  ///
  /// Parameters:
  ///
  /// * [IamProvider] iamProvider (required):
  Future<IamResponse?> postIamUpdateProvider(IamProvider iamProvider,) async {
    final response = await postIamUpdateProviderWithHttpInfo(iamProvider,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamResponse',) as IamResponse;
    
    }
    return null;
  }

  /// Updates a role's members or the roles it includes.
  ///
  /// Updates a role's members or the roles it includes. Access changes for everyone in it as soon as the write lands.  The older spelling of POST /v1/iam/roles/update.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamRolesInput] iamRolesInput (required):
  Future<Response> postIamUpdateRoleWithHttpInfo(IamRolesInput iamRolesInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/update-role';

    // ignore: prefer_final_locals
    Object? postBody = iamRolesInput;

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

  /// Updates a role's members or the roles it includes.
  ///
  /// Updates a role's members or the roles it includes. Access changes for everyone in it as soon as the write lands.  The older spelling of POST /v1/iam/roles/update.
  ///
  /// Parameters:
  ///
  /// * [IamRolesInput] iamRolesInput (required):
  Future<IamResponse?> postIamUpdateRole(IamRolesInput iamRolesInput,) async {
    final response = await postIamUpdateRoleWithHttpInfo(iamRolesInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamResponse',) as IamResponse;
    
    }
    return null;
  }

  /// Updates one of your users' profile, roles or credentials.
  ///
  /// Updates one of your users' profile, roles or credentials. Send a password to reset it; leave it out and the current one stands.  The older spelling of POST /v1/iam/users/update, with the user's fields at the top level rather than wrapped in {user, password}.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamUserBody] iamUserBody (required):
  Future<Response> postIamUpdateUserWithHttpInfo(IamUserBody iamUserBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/update-user';

    // ignore: prefer_final_locals
    Object? postBody = iamUserBody;

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

  /// Updates one of your users' profile, roles or credentials.
  ///
  /// Updates one of your users' profile, roles or credentials. Send a password to reset it; leave it out and the current one stands.  The older spelling of POST /v1/iam/users/update, with the user's fields at the top level rather than wrapped in {user, password}.
  ///
  /// Parameters:
  ///
  /// * [IamUserBody] iamUserBody (required):
  Future<IamResponse?> postIamUpdateUser(IamUserBody iamUserBody,) async {
    final response = await postIamUpdateUserWithHttpInfo(iamUserBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamResponse',) as IamResponse;
    
    }
    return null;
  }

  /// Adds a person to your organization.
  ///
  /// Adds a person to your organization. Send a password and it becomes the one they sign in with; it is hashed before it is stored and never comes back in any response.  The username is checked against the same rule every account in the Hanzo Cloud is held to, whichever way it was created — this call, password signup, a social sign-in, or SCIM — so a name accepted here works everywhere.  A name already taken in your organization is refused rather than overwritten.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamCreateInput] iamCreateInput (required):
  Future<Response> postIamUsersWithHttpInfo(IamCreateInput iamCreateInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/users';

    // ignore: prefer_final_locals
    Object? postBody = iamCreateInput;

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

  /// Adds a person to your organization.
  ///
  /// Adds a person to your organization. Send a password and it becomes the one they sign in with; it is hashed before it is stored and never comes back in any response.  The username is checked against the same rule every account in the Hanzo Cloud is held to, whichever way it was created — this call, password signup, a social sign-in, or SCIM — so a name accepted here works everywhere.  A name already taken in your organization is refused rather than overwritten.
  ///
  /// Parameters:
  ///
  /// * [IamCreateInput] iamCreateInput (required):
  Future<IamUser?> postIamUsers(IamCreateInput iamCreateInput,) async {
    final response = await postIamUsersWithHttpInfo(iamCreateInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamUser',) as IamUser;
    
    }
    return null;
  }

  /// Removes a person from your organization.
  ///
  /// Removes a person from your organization. Their sessions stop working immediately and the account is gone rather than suspended — to keep the record and only stop sign-in, update the user instead.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamUsersRef] iamUsersRef (required):
  Future<Response> postIamUsersDeleteWithHttpInfo(IamUsersRef iamUsersRef,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/users/delete';

    // ignore: prefer_final_locals
    Object? postBody = iamUsersRef;

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

  /// Removes a person from your organization.
  ///
  /// Removes a person from your organization. Their sessions stop working immediately and the account is gone rather than suspended — to keep the record and only stop sign-in, update the user instead.
  ///
  /// Parameters:
  ///
  /// * [IamUsersRef] iamUsersRef (required):
  Future<IamUsersDeleteOutput?> postIamUsersDelete(IamUsersRef iamUsersRef,) async {
    final response = await postIamUsersDeleteWithHttpInfo(iamUsersRef,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamUsersDeleteOutput',) as IamUsersDeleteOutput;
    
    }
    return null;
  }

  /// Changes a person's profile, their roles, or the credentials they sign in with.
  ///
  /// Changes a person's profile, their roles, or the credentials they sign in with. Send a password to reset it; leave it out and their current one keeps working.  Who they are does not change: their organization, username and the identifier their existing sessions are keyed on all survive the write, so an update never signs anyone out.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamUpdateInput] iamUpdateInput (required):
  Future<Response> postIamUsersUpdateWithHttpInfo(IamUpdateInput iamUpdateInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/users/update';

    // ignore: prefer_final_locals
    Object? postBody = iamUpdateInput;

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

  /// Changes a person's profile, their roles, or the credentials they sign in with.
  ///
  /// Changes a person's profile, their roles, or the credentials they sign in with. Send a password to reset it; leave it out and their current one keeps working.  Who they are does not change: their organization, username and the identifier their existing sessions are keyed on all survive the write, so an update never signs anyone out.
  ///
  /// Parameters:
  ///
  /// * [IamUpdateInput] iamUpdateInput (required):
  Future<IamUser?> postIamUsersUpdate(IamUpdateInput iamUpdateInput,) async {
    final response = await postIamUsersUpdateWithHttpInfo(iamUpdateInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamUser',) as IamUser;
    
    }
    return null;
  }

  /// Validates the request and asks otp to get a code to the person.
  ///
  /// Validates the request and asks otp to get a code to the person. The request fields are read via fiber's FormValue — the escape hatch zip exposes for form bodies (multipart or urlencoded) — since the typed JSON Bind does not apply here. v1 also accepts countryCode/method/checkUser/captchaType; iam ignores them (the captcha/forget/MFA flows those drive are not ported), and CAPTCHA verification is likewise not enforced — iam models no captcha provider — so the code is issued once the destination and application validate.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamVerificationCodesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/verification-codes';

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

  /// Validates the request and asks otp to get a code to the person.
  ///
  /// Validates the request and asks otp to get a code to the person. The request fields are read via fiber's FormValue — the escape hatch zip exposes for form bodies (multipart or urlencoded) — since the typed JSON Bind does not apply here. v1 also accepts countryCode/method/checkUser/captchaType; iam ignores them (the captcha/forget/MFA flows those drive are not ported), and CAPTCHA verification is likewise not enforced — iam models no captcha provider — so the code is issued once the destination and application validate.
  Future<void> postIamVerificationCodes() async {
    final response = await postIamVerificationCodesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Completes a wallet sign-in: it verifies the signed challenge and, if it holds, signs the wallet's owner in.
  ///
  /// Completes a wallet sign-in: it verifies the signed challenge and, if it holds, signs the wallet's owner in.  This IS the login — it answers exactly as a password sign-in does, so the rest of your flow does not branch on how somebody arrived.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIamWeb3VerifyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/web3/verify';

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

  /// Completes a wallet sign-in: it verifies the signed challenge and, if it holds, signs the wallet's owner in.
  ///
  /// Completes a wallet sign-in: it verifies the signed challenge and, if it holds, signs the wallet's owner in.  This IS the login — it answers exactly as a password sign-in does, so the rest of your flow does not branch on how somebody arrived.
  Future<void> postIamWeb3Verify() async {
    final response = await postIamWeb3VerifyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Makes a workspace inside your organization — the scope a team works in, alongside projects rather than instead of them.
  ///
  /// Makes a workspace inside your organization — the scope a team works in, alongside projects rather than instead of them. A name already used in the organization is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamWorkspacesInput] iamWorkspacesInput (required):
  Future<Response> postIamWorkspacesWithHttpInfo(IamWorkspacesInput iamWorkspacesInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/workspaces';

    // ignore: prefer_final_locals
    Object? postBody = iamWorkspacesInput;

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

  /// Makes a workspace inside your organization — the scope a team works in, alongside projects rather than instead of them.
  ///
  /// Makes a workspace inside your organization — the scope a team works in, alongside projects rather than instead of them. A name already used in the organization is refused.
  ///
  /// Parameters:
  ///
  /// * [IamWorkspacesInput] iamWorkspacesInput (required):
  Future<IamWorkspace?> postIamWorkspaces(IamWorkspacesInput iamWorkspacesInput,) async {
    final response = await postIamWorkspacesWithHttpInfo(iamWorkspacesInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamWorkspace',) as IamWorkspace;
    
    }
    return null;
  }

  /// Removes a workspace.
  ///
  /// Removes a workspace. The people and roles in your organization are unchanged; what goes is the scope itself.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamWorkspacesRef] iamWorkspacesRef (required):
  Future<Response> postIamWorkspacesDeleteWithHttpInfo(IamWorkspacesRef iamWorkspacesRef,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/workspaces/delete';

    // ignore: prefer_final_locals
    Object? postBody = iamWorkspacesRef;

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

  /// Removes a workspace.
  ///
  /// Removes a workspace. The people and roles in your organization are unchanged; what goes is the scope itself.
  ///
  /// Parameters:
  ///
  /// * [IamWorkspacesRef] iamWorkspacesRef (required):
  Future<IamWorkspacesDeleteOutput?> postIamWorkspacesDelete(IamWorkspacesRef iamWorkspacesRef,) async {
    final response = await postIamWorkspacesDeleteWithHttpInfo(iamWorkspacesRef,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamWorkspacesDeleteOutput',) as IamWorkspacesDeleteOutput;
    
    }
    return null;
  }

  /// Returns one workspace: what it is called and how it is set up.
  ///
  /// Returns one workspace: what it is called and how it is set up.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamWorkspacesRef] iamWorkspacesRef (required):
  Future<Response> postIamWorkspacesGetWithHttpInfo(IamWorkspacesRef iamWorkspacesRef,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/workspaces/get';

    // ignore: prefer_final_locals
    Object? postBody = iamWorkspacesRef;

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

  /// Returns one workspace: what it is called and how it is set up.
  ///
  /// Returns one workspace: what it is called and how it is set up.
  ///
  /// Parameters:
  ///
  /// * [IamWorkspacesRef] iamWorkspacesRef (required):
  Future<IamWorkspace?> postIamWorkspacesGet(IamWorkspacesRef iamWorkspacesRef,) async {
    final response = await postIamWorkspacesGetWithHttpInfo(iamWorkspacesRef,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamWorkspace',) as IamWorkspace;
    
    }
    return null;
  }

  /// Changes a workspace's settings.
  ///
  /// Changes a workspace's settings. What it is called does not change, and neither does when it was created.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamWorkspacesInput] iamWorkspacesInput (required):
  Future<Response> postIamWorkspacesUpdateWithHttpInfo(IamWorkspacesInput iamWorkspacesInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/workspaces/update';

    // ignore: prefer_final_locals
    Object? postBody = iamWorkspacesInput;

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

  /// Changes a workspace's settings.
  ///
  /// Changes a workspace's settings. What it is called does not change, and neither does when it was created.
  ///
  /// Parameters:
  ///
  /// * [IamWorkspacesInput] iamWorkspacesInput (required):
  Future<IamWorkspace?> postIamWorkspacesUpdate(IamWorkspacesInput iamWorkspacesInput,) async {
    final response = await postIamWorkspacesUpdateWithHttpInfo(iamWorkspacesInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamWorkspace',) as IamWorkspace;
    
    }
    return null;
  }

  /// Changes an application's display, its sign-in methods and the redirect URIs it may return to — the call that makes login work from a new host.
  ///
  /// Changes an application's display, its sign-in methods and the redirect URIs it may return to — the call that makes login work from a new host. Which organization it belongs to and what it is named are fixed when it is created and are not editable here.  Exported so the legacy update-application alias reuses this exact path — one update, two spellings.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamApplication] iamApplication (required):
  Future<Response> putIamApplicationWithHttpInfo(IamApplication iamApplication,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/application';

    // ignore: prefer_final_locals
    Object? postBody = iamApplication;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Changes an application's display, its sign-in methods and the redirect URIs it may return to — the call that makes login work from a new host.
  ///
  /// Changes an application's display, its sign-in methods and the redirect URIs it may return to — the call that makes login work from a new host. Which organization it belongs to and what it is named are fixed when it is created and are not editable here.  Exported so the legacy update-application alias reuses this exact path — one update, two spellings.
  ///
  /// Parameters:
  ///
  /// * [IamApplication] iamApplication (required):
  Future<IamApplication?> putIamApplication(IamApplication iamApplication,) async {
    final response = await putIamApplicationWithHttpInfo(iamApplication,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamApplication',) as IamApplication;
    
    }
    return null;
  }

  /// Records the calling person's privacy and communication choices.
  ///
  /// Records the calling person's privacy and communication choices. Only their own — there is no way to set consent for somebody else.  Send only the answers you are changing. A question you leave out keeps the answer it already had, so a screen that saves one switch never revokes the other, and two screens saving at once do not undo each other.  An answer this version does not recognize is refused here rather than stored, so nothing is ever persisted for a later reader to have to interpret.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> putIamConsentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/consent';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Records the calling person's privacy and communication choices.
  ///
  /// Records the calling person's privacy and communication choices. Only their own — there is no way to set consent for somebody else.  Send only the answers you are changing. A question you leave out keeps the answer it already had, so a screen that saves one switch never revokes the other, and two screens saving at once do not undo each other.  An answer this version does not recognize is refused here rather than stored, so nothing is ever persisted for a later reader to have to interpret.
  Future<void> putIamConsent() async {
    final response = await putIamConsentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replaces the calling person's password.
  ///
  /// Replaces the calling person's password. Only their own — there is no shape of this request that writes somebody else's.  Prove who you are with the password you are replacing, or — when you cannot sign in at all — with a code sent to the address the account already holds. Exactly one of the two: a request carrying both proves nothing more than either, and answering it would mean deciding which one mattered.  A reset also clears the account lockout, in the SAME transaction as the digest. Replacing a credential retires the run of guesses against the old one, and without this a person who reset a forgotten password was still refused for up to fifteen more minutes — with the brand-new password they had just chosen.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamPasswordBody] iamPasswordBody (required):
  ///
  /// * [String] cookie:
  ///
  /// * [String] authorization:
  Future<Response> putIamPasswordWithHttpInfo(IamPasswordBody iamPasswordBody, { String? cookie, String? authorization, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/password';

    // ignore: prefer_final_locals
    Object? postBody = iamPasswordBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (cookie != null) {
      headerParams[r'Cookie'] = parameterToString(cookie);
    }
    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Replaces the calling person's password.
  ///
  /// Replaces the calling person's password. Only their own — there is no shape of this request that writes somebody else's.  Prove who you are with the password you are replacing, or — when you cannot sign in at all — with a code sent to the address the account already holds. Exactly one of the two: a request carrying both proves nothing more than either, and answering it would mean deciding which one mattered.  A reset also clears the account lockout, in the SAME transaction as the digest. Replacing a credential retires the run of guesses against the old one, and without this a person who reset a forgotten password was still refused for up to fifteen more minutes — with the brand-new password they had just chosen.
  ///
  /// Parameters:
  ///
  /// * [IamPasswordBody] iamPasswordBody (required):
  ///
  /// * [String] cookie:
  ///
  /// * [String] authorization:
  Future<IamAnswer?> putIamPassword(IamPasswordBody iamPasswordBody, { String? cookie, String? authorization, }) async {
    final response = await putIamPasswordWithHttpInfo(iamPasswordBody,  cookie: cookie, authorization: authorization, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamAnswer',) as IamAnswer;
    
    }
    return null;
  }

  /// Overwrites a person's SCIM attributes with what your identity provider sends — how a change made there lands here.
  ///
  /// Overwrites a person's SCIM attributes with what your identity provider sends — how a change made there lands here.  Only the attributes SCIM describes are replaced. Anything the standard does not cover — their multi-factor enrolment above all — survives untouched, so a routine sync from your IdP can never quietly strip someone's second factor or bring a deleted account back.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> putIamScimV2UsersByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/scim/v2/Users/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Overwrites a person's SCIM attributes with what your identity provider sends — how a change made there lands here.
  ///
  /// Overwrites a person's SCIM attributes with what your identity provider sends — how a change made there lands here.  Only the attributes SCIM describes are replaced. Anything the standard does not cover — their multi-factor enrolment above all — survives untouched, so a routine sync from your IdP can never quietly strip someone's second factor or bring a deleted account back.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> putIamScimV2UsersByOwnerByName(String owner, String name,) async {
    final response = await putIamScimV2UsersByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Changes an organization's display, its defaults and the sign-in rules everyone in it inherits.
  ///
  /// Changes an organization's display, its defaults and the sign-in rules everyone in it inherits. Which organization it is does not change, and neither does when it was created.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamUpdateOrganizationInput] iamUpdateOrganizationInput (required):
  Future<Response> updateOrganizationWithHttpInfo(IamUpdateOrganizationInput iamUpdateOrganizationInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/organizations/update';

    // ignore: prefer_final_locals
    Object? postBody = iamUpdateOrganizationInput;

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

  /// Changes an organization's display, its defaults and the sign-in rules everyone in it inherits.
  ///
  /// Changes an organization's display, its defaults and the sign-in rules everyone in it inherits. Which organization it is does not change, and neither does when it was created.
  ///
  /// Parameters:
  ///
  /// * [IamUpdateOrganizationInput] iamUpdateOrganizationInput (required):
  Future<IamOrganization?> updateOrganization(IamUpdateOrganizationInput iamUpdateOrganizationInput,) async {
    final response = await updateOrganizationWithHttpInfo(iamUpdateOrganizationInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamOrganization',) as IamOrganization;
    
    }
    return null;
  }

  /// Changes a provider's settings or rotates the credentials it holds.
  ///
  /// Changes a provider's settings or rotates the credentials it holds. The change takes effect on the next sign-in through it — sessions already issued are unaffected.  A provider that is not there answers \"nothing changed\" rather than an error, so the call is safe to repeat.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamProvider] iamProvider (required):
  Future<Response> updateProviderWithHttpInfo(IamProvider iamProvider,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/providers/update';

    // ignore: prefer_final_locals
    Object? postBody = iamProvider;

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

  /// Changes a provider's settings or rotates the credentials it holds.
  ///
  /// Changes a provider's settings or rotates the credentials it holds. The change takes effect on the next sign-in through it — sessions already issued are unaffected.  A provider that is not there answers \"nothing changed\" rather than an error, so the call is safe to repeat.
  ///
  /// Parameters:
  ///
  /// * [IamProvider] iamProvider (required):
  Future<IamMutationResult?> updateProvider(IamProvider iamProvider,) async {
    final response = await updateProviderWithHttpInfo(iamProvider,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamMutationResult',) as IamMutationResult;
    
    }
    return null;
  }

  /// Replaces the set of browsers a session covers — signing out the ones you leave off while the session itself stays live.
  ///
  /// Replaces the set of browsers a session covers — signing out the ones you leave off while the session itself stays live. A session that does not exist is reported as missing rather than created.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamUpdateSessionIn] iamUpdateSessionIn (required):
  Future<Response> updateSessionWithHttpInfo(IamUpdateSessionIn iamUpdateSessionIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/sessions/update';

    // ignore: prefer_final_locals
    Object? postBody = iamUpdateSessionIn;

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

  /// Replaces the set of browsers a session covers — signing out the ones you leave off while the session itself stays live.
  ///
  /// Replaces the set of browsers a session covers — signing out the ones you leave off while the session itself stays live. A session that does not exist is reported as missing rather than created.
  ///
  /// Parameters:
  ///
  /// * [IamUpdateSessionIn] iamUpdateSessionIn (required):
  Future<IamSession?> updateSession(IamUpdateSessionIn iamUpdateSessionIn,) async {
    final response = await updateSessionWithHttpInfo(iamUpdateSessionIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamSession',) as IamSession;
    
    }
    return null;
  }

  /// Changes an access token's scope or expiry.
  ///
  /// Changes an access token's scope or expiry.  A token that is not there answers \"nothing changed\" rather than an error, so the call is safe to repeat.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamToken] iamToken (required):
  Future<Response> updateTokenWithHttpInfo(IamToken iamToken,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/tokens/update';

    // ignore: prefer_final_locals
    Object? postBody = iamToken;

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

  /// Changes an access token's scope or expiry.
  ///
  /// Changes an access token's scope or expiry.  A token that is not there answers \"nothing changed\" rather than an error, so the call is safe to repeat.
  ///
  /// Parameters:
  ///
  /// * [IamToken] iamToken (required):
  Future<IamTokenMutation?> updateToken(IamToken iamToken,) async {
    final response = await updateTokenWithHttpInfo(iamToken,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamTokenMutation',) as IamTokenMutation;
    
    }
    return null;
  }

  /// Renames a registered passkey or security key, so a person can tell their devices apart.
  ///
  /// Renames a registered passkey or security key, so a person can tell their devices apart.  A credential that is not there answers \"nothing changed\" rather than an error, so the call is safe to repeat.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamWebauthnCredential] iamWebauthnCredential (required):
  Future<Response> updateWebauthnCredentialWithHttpInfo(IamWebauthnCredential iamWebauthnCredential,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/webauthn-credentials/update';

    // ignore: prefer_final_locals
    Object? postBody = iamWebauthnCredential;

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

  /// Renames a registered passkey or security key, so a person can tell their devices apart.
  ///
  /// Renames a registered passkey or security key, so a person can tell their devices apart.  A credential that is not there answers \"nothing changed\" rather than an error, so the call is safe to repeat.
  ///
  /// Parameters:
  ///
  /// * [IamWebauthnCredential] iamWebauthnCredential (required):
  Future<IamWebauthnCredentialMutationResult?> updateWebauthnCredential(IamWebauthnCredential iamWebauthnCredential,) async {
    final response = await updateWebauthnCredentialWithHttpInfo(iamWebauthnCredential,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamWebauthnCredentialMutationResult',) as IamWebauthnCredentialMutationResult;
    
    }
    return null;
  }

  /// Creates an application or updates it in place, so a deployment can declare the applications it needs and run the same declaration on every environment and on every redeploy.
  ///
  /// Creates an application or updates it in place, so a deployment can declare the applications it needs and run the same declaration on every environment and on every redeploy.  It says which of the two it did. Leave the client secret out and the existing one is kept — so re-running your deployment does not rotate a credential your running services are holding.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamRegistration] iamRegistration (required):
  ///
  /// * [String] authorization:
  Future<Response> upsertApplicationWithHttpInfo(IamRegistration iamRegistration, { String? authorization, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/admin/applications/upsert';

    // ignore: prefer_final_locals
    Object? postBody = iamRegistration;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }

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

  /// Creates an application or updates it in place, so a deployment can declare the applications it needs and run the same declaration on every environment and on every redeploy.
  ///
  /// Creates an application or updates it in place, so a deployment can declare the applications it needs and run the same declaration on every environment and on every redeploy.  It says which of the two it did. Leave the client secret out and the existing one is kept — so re-running your deployment does not rotate a credential your running services are holding.
  ///
  /// Parameters:
  ///
  /// * [IamRegistration] iamRegistration (required):
  ///
  /// * [String] authorization:
  Future<IamReply?> upsertApplication(IamRegistration iamRegistration, { String? authorization, }) async {
    final response = await upsertApplicationWithHttpInfo(iamRegistration,  authorization: authorization, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamReply',) as IamReply;
    
    }
    return null;
  }

  /// Creates a person or updates them in place, so a deployment can declare the accounts it needs and re-run that declaration safely.
  ///
  /// Creates a person or updates them in place, so a deployment can declare the accounts it needs and re-run that declaration safely.  Passwords are hashed before they are stored. Leave the password out and their current one is kept, so a redeploy never locks somebody out.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IamPerson] iamPerson (required):
  ///
  /// * [String] authorization:
  Future<Response> upsertUserWithHttpInfo(IamPerson iamPerson, { String? authorization, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iam/admin/users/upsert';

    // ignore: prefer_final_locals
    Object? postBody = iamPerson;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }

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

  /// Creates a person or updates them in place, so a deployment can declare the accounts it needs and re-run that declaration safely.
  ///
  /// Creates a person or updates them in place, so a deployment can declare the accounts it needs and re-run that declaration safely.  Passwords are hashed before they are stored. Leave the password out and their current one is kept, so a redeploy never locks somebody out.
  ///
  /// Parameters:
  ///
  /// * [IamPerson] iamPerson (required):
  ///
  /// * [String] authorization:
  Future<IamReply?> upsertUser(IamPerson iamPerson, { String? authorization, }) async {
    final response = await upsertUserWithHttpInfo(iamPerson,  authorization: authorization, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamReply',) as IamReply;
    
    }
    return null;
  }
}
