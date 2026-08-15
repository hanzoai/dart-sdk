//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class CompatApi {
  CompatApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

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
}
