//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class AiApi {
  AiApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Tools reports what THIS PROCESS's MCP door carries: how many tools its own registry projects, optionally their names, and which subsystems this process composed.
  ///
  /// Tools reports what THIS PROCESS's MCP door carries: how many tools its own registry projects, optionally their names, and which subsystems this process composed. It is the answer to \"is this door up and does it have anything behind it\" — a question a status code cannot answer, since an empty door and a full one are both 200. What the FLEET's door carries is the fleet door's own answer: POST /v1/mcp, tools/list, which asks every subsystem and names the ones that did not reply.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] names:
  ///   Names asks for this process's tool NAMES and not only how many there are. Off by default: a list of names is a page, and the question this op exists to answer (\"is the door up and does it have anything behind it\") is answered by the count.
  Future<Response> aiMCPToolsWithHttpInfo({ bool? names, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/mcp/tools';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (names != null) {
      queryParams.addAll(_queryParams('', 'names', names));
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

  /// Tools reports what THIS PROCESS's MCP door carries: how many tools its own registry projects, optionally their names, and which subsystems this process composed.
  ///
  /// Tools reports what THIS PROCESS's MCP door carries: how many tools its own registry projects, optionally their names, and which subsystems this process composed. It is the answer to \"is this door up and does it have anything behind it\" — a question a status code cannot answer, since an empty door and a full one are both 200. What the FLEET's door carries is the fleet door's own answer: POST /v1/mcp, tools/list, which asks every subsystem and names the ones that did not reply.
  ///
  /// Parameters:
  ///
  /// * [bool] names:
  ///   Names asks for this process's tool NAMES and not only how many there are. Off by default: a list of names is a page, and the question this op exists to answer (\"is the door up and does it have anything behind it\") is answered by the count.
  Future<AiMCPSurface?> aiMCPTools({ bool? names, }) async {
    final response = await aiMCPToolsWithHttpInfo( names: names, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AiMCPSurface',) as AiMCPSurface;
    
    }
    return null;
  }

  /// Delete a article
  ///
  /// Delete one article.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> deleteAiArticlesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/articles/{owner}/{name}'
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

  /// Delete a article
  ///
  /// Delete one article.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> deleteAiArticlesByOwnerByName(String owner, String name,) async {
    final response = await deleteAiArticlesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a asset
  ///
  /// Delete one asset.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> deleteAiAssetsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/assets/{owner}/{name}'
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

  /// Delete a asset
  ///
  /// Delete one asset.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> deleteAiAssetsByOwnerByName(String owner, String name,) async {
    final response = await deleteAiAssetsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a chat
  ///
  /// Delete one chat.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> deleteAiChatsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/chats/{owner}/{name}'
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

  /// Delete a chat
  ///
  /// Delete one chat.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> deleteAiChatsByOwnerByName(String owner, String name,) async {
    final response = await deleteAiChatsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Disconnects a third-party AI account: it deactivates the org's row so completion resolution falls back to the global Hanzo account (no BYO), and best-effort tombstones the sealed secret.
  ///
  /// Disconnects a third-party AI account: it deactivates the org's row so completion resolution falls back to the global Hanzo account (no BYO), and best-effort tombstones the sealed secret. Idempotent.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  Future<Response> deleteAiConnectionsByProviderWithHttpInfo(String provider,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/connections/{provider}'
      .replaceAll('{provider}', provider);

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

  /// Disconnects a third-party AI account: it deactivates the org's row so completion resolution falls back to the global Hanzo account (no BYO), and best-effort tombstones the sealed secret.
  ///
  /// Disconnects a third-party AI account: it deactivates the org's row so completion resolution falls back to the global Hanzo account (no BYO), and best-effort tombstones the sealed secret. Idempotent.
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  Future<void> deleteAiConnectionsByProvider(String provider,) async {
    final response = await deleteAiConnectionsByProviderWithHttpInfo(provider,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a application
  ///
  /// Delete one application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> deleteAiDeploymentsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/deployments/{owner}/{name}'
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

  /// Delete a application
  ///
  /// Delete one application.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> deleteAiDeploymentsByOwnerByName(String owner, String name,) async {
    final response = await deleteAiDeploymentsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a file
  ///
  /// Delete one file.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> deleteAiFilesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/files/{owner}/{name}'
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

  /// Delete a file
  ///
  /// Delete one file.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> deleteAiFilesByOwnerByName(String owner, String name,) async {
    final response = await deleteAiFilesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a form
  ///
  /// Delete one form.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> deleteAiFormsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/forms/{owner}/{name}'
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

  /// Delete a form
  ///
  /// Delete one form.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> deleteAiFormsByOwnerByName(String owner, String name,) async {
    final response = await deleteAiFormsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a graph
  ///
  /// Delete one graph.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> deleteAiGraphsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/graphs/{owner}/{name}'
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

  /// Delete a graph
  ///
  /// Delete one graph.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> deleteAiGraphsByOwnerByName(String owner, String name,) async {
    final response = await deleteAiGraphsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a message
  ///
  /// Delete one message.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> deleteAiMessagesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/messages/{owner}/{name}'
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

  /// Delete a message
  ///
  /// Delete one message.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> deleteAiMessagesByOwnerByName(String owner, String name,) async {
    final response = await deleteAiMessagesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Welcome (message)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteAiMessagesWelcomeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/messages/welcome';

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

  /// Welcome (message)
  Future<void> deleteAiMessagesWelcome() async {
    final response = await deleteAiMessagesWelcomeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a node
  ///
  /// Delete one node.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> deleteAiNodesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/nodes/{owner}/{name}'
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

  /// Delete a node
  ///
  /// Delete one node.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> deleteAiNodesByOwnerByName(String owner, String name,) async {
    final response = await deleteAiNodesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteAiOrgSettingsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/org/settings';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> deleteAiOrgSettings() async {
    final response = await deleteAiOrgSettingsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteAiOrgSettingsListWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/org/settings/list';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> deleteAiOrgSettingsList() async {
    final response = await deleteAiOrgSettingsListWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a provider
  ///
  /// Delete one provider.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> deleteAiProvidersByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/providers/{owner}/{name}'
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

  /// Delete a provider
  ///
  /// Delete one provider.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> deleteAiProvidersByOwnerByName(String owner, String name,) async {
    final response = await deleteAiProvidersByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a record
  ///
  /// Delete one record.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> deleteAiRecordsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/records/{owner}/{name}'
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

  /// Delete a record
  ///
  /// Delete one record.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> deleteAiRecordsByOwnerByName(String owner, String name,) async {
    final response = await deleteAiRecordsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a connection
  ///
  /// Delete one connection.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> deleteAiRemoteConnectionsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/remote-connections/{owner}/{name}'
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

  /// Delete a connection
  ///
  /// Delete one connection.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> deleteAiRemoteConnectionsByOwnerByName(String owner, String name,) async {
    final response = await deleteAiRemoteConnectionsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteAiRouterArtifactMetaWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/artifact-meta';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> deleteAiRouterArtifactMeta() async {
    final response = await deleteAiRouterArtifactMetaWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Router Data
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteAiRouterDataWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/data';

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

  /// Router Data
  Future<void> deleteAiRouterData() async {
    final response = await deleteAiRouterDataWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteAiRouterDefaultsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/defaults';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> deleteAiRouterDefaults() async {
    final response = await deleteAiRouterDefaultsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteAiRouterLedgerWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/ledger';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> deleteAiRouterLedger() async {
    final response = await deleteAiRouterLedgerWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteAiRouterPolicyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/policy';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> deleteAiRouterPolicy() async {
    final response = await deleteAiRouterPolicyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteAiRouterRewardsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/rewards';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> deleteAiRouterRewards() async {
    final response = await deleteAiRouterRewardsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a model-route
  ///
  /// Delete one model-route.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> deleteAiRoutesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/routes/{owner}/{name}'
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

  /// Delete a model-route
  ///
  /// Delete one model-route.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> deleteAiRoutesByOwnerByName(String owner, String name,) async {
    final response = await deleteAiRoutesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a scale
  ///
  /// Delete one scale.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> deleteAiScalesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/scales/{owner}/{name}'
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

  /// Delete a scale
  ///
  /// Delete one scale.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> deleteAiScalesByOwnerByName(String owner, String name,) async {
    final response = await deleteAiScalesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a scan
  ///
  /// Delete one scan.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> deleteAiScansByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/scans/{owner}/{name}'
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

  /// Delete a scan
  ///
  /// Delete one scan.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> deleteAiScansByOwnerByName(String owner, String name,) async {
    final response = await deleteAiScansByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a session
  ///
  /// Delete one session.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> deleteAiSigninSessionsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/signin-sessions/{owner}/{name}'
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

  /// Delete a session
  ///
  /// Delete one session.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> deleteAiSigninSessionsByOwnerByName(String owner, String name,) async {
    final response = await deleteAiSigninSessionsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a store
  ///
  /// Delete one store.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> deleteAiStoresByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/stores/{owner}/{name}'
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

  /// Delete a store
  ///
  /// Delete one store.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> deleteAiStoresByOwnerByName(String owner, String name,) async {
    final response = await deleteAiStoresByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a task
  ///
  /// Delete one task.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> deleteAiTasksByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/tasks/{owner}/{name}'
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

  /// Delete a task
  ///
  /// Delete one task.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> deleteAiTasksByOwnerByName(String owner, String name,) async {
    final response = await deleteAiTasksByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a template
  ///
  /// Delete one template.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> deleteAiTemplatesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/templates/{owner}/{name}'
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

  /// Delete a template
  ///
  /// Delete one template.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> deleteAiTemplatesByOwnerByName(String owner, String name,) async {
    final response = await deleteAiTemplatesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a tree-file
  ///
  /// Delete one tree-file.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> deleteAiTreeFilesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/tree-files/{owner}/{name}'
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

  /// Delete a tree-file
  ///
  /// Delete one tree-file.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> deleteAiTreeFilesByOwnerByName(String owner, String name,) async {
    final response = await deleteAiTreeFilesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// All (vector)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteAiVectorsAllWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/vectors/all';

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

  /// All (vector)
  Future<void> deleteAiVectorsAll() async {
    final response = await deleteAiVectorsAllWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a vector
  ///
  /// Delete one vector.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> deleteAiVectorsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/vectors/{owner}/{name}'
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

  /// Delete a vector
  ///
  /// Delete one vector.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> deleteAiVectorsByOwnerByName(String owner, String name,) async {
    final response = await deleteAiVectorsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a video
  ///
  /// Delete one video.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> deleteAiVideosByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/videos/{owner}/{name}'
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

  /// Delete a video
  ///
  /// Delete one video.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> deleteAiVideosByOwnerByName(String owner, String name,) async {
    final response = await deleteAiVideosByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a workflow
  ///
  /// Delete one workflow.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> deleteAiWorkflowsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/workflows/{owner}/{name}'
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

  /// Delete a workflow
  ///
  /// Delete one workflow.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> deleteAiWorkflowsByOwnerByName(String owner, String name,) async {
    final response = await deleteAiWorkflowsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Account
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiAccountWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/account';

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

  /// Account
  Future<void> getAiAccount() async {
    final response = await getAiAccountWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List activities
  ///
  /// List the caller's activities.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiActivitiesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/activities';

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

  /// List activities
  ///
  /// List the caller's activities.
  Future<void> getAiActivities() async {
    final response = await getAiActivitiesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Answer
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiAnswerWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/answer';

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

  /// Answer
  Future<void> getAiAnswer() async {
    final response = await getAiAnswerWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List articles
  ///
  /// List the caller's articles.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiArticlesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/articles';

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

  /// List articles
  ///
  /// List the caller's articles.
  Future<void> getAiArticles() async {
    final response = await getAiArticlesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve a article
  ///
  /// Read one article by its (owner, name) key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> getAiArticlesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/articles/{owner}/{name}'
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

  /// Retrieve a article
  ///
  /// Read one article by its (owner, name) key.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> getAiArticlesByOwnerByName(String owner, String name,) async {
    final response = await getAiArticlesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List articles across tenants
  ///
  /// Cross-tenant listing. Admin-only; a tenant caller is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiArticlesGlobalWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/articles/global';

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

  /// List articles across tenants
  ///
  /// Cross-tenant listing. Admin-only; a tenant caller is refused.
  Future<void> getAiArticlesGlobal() async {
    final response = await getAiArticlesGlobalWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List assets
  ///
  /// List the caller's assets.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiAssetsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/assets';

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

  /// List assets
  ///
  /// List the caller's assets.
  Future<void> getAiAssets() async {
    final response = await getAiAssetsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve a asset
  ///
  /// Read one asset by its (owner, name) key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> getAiAssetsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/assets/{owner}/{name}'
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

  /// Retrieve a asset
  ///
  /// Read one asset by its (owner, name) key.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> getAiAssetsByOwnerByName(String owner, String name,) async {
    final response = await getAiAssetsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List chats
  ///
  /// List the caller's chats.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiChatsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/chats';

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

  /// List chats
  ///
  /// List the caller's chats.
  Future<void> getAiChats() async {
    final response = await getAiChatsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve a chat
  ///
  /// Read one chat by its (owner, name) key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> getAiChatsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/chats/{owner}/{name}'
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

  /// Retrieve a chat
  ///
  /// Read one chat by its (owner, name) key.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> getAiChatsByOwnerByName(String owner, String name,) async {
    final response = await getAiChatsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List chats across tenants
  ///
  /// Cross-tenant listing. Admin-only; a tenant caller is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiChatsGlobalWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/chats/global';

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

  /// List chats across tenants
  ///
  /// Cross-tenant listing. Admin-only; a tenant caller is refused.
  Future<void> getAiChatsGlobal() async {
    final response = await getAiChatsGlobalWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists the org's connectable AI accounts and whether each is currently connected.
  ///
  /// Lists the org's connectable AI accounts and whether each is currently connected. Never returns a key or a kms:// reference.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiConnectionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/connections';

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

  /// Lists the org's connectable AI accounts and whether each is currently connected.
  ///
  /// Lists the org's connectable AI accounts and whether each is currently connected. Never returns a key or a kms:// reference.
  Future<void> getAiConnections() async {
    final response = await getAiConnectionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Begins an OAuth connection for the caller's org: it binds the org into a signed state and sends the caller to the provider's authorize URL.
  ///
  /// Begins an OAuth connection for the caller's org: it binds the org into a signed state and sends the caller to the provider's authorize URL. By default it 302-redirects (a top-level browser \"connect your login\" click); a SPA/BFF that needs to drive the redirect itself passes ?format=json and gets {authorizeUrl} in the standard envelope. The org is the VERIFIED principal, so only the caller's own connection can result.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  Future<Response> getAiConnectionsByProviderAuthorizeWithHttpInfo(String provider,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/connections/{provider}/authorize'
      .replaceAll('{provider}', provider);

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

  /// Begins an OAuth connection for the caller's org: it binds the org into a signed state and sends the caller to the provider's authorize URL.
  ///
  /// Begins an OAuth connection for the caller's org: it binds the org into a signed state and sends the caller to the provider's authorize URL. By default it 302-redirects (a top-level browser \"connect your login\" click); a SPA/BFF that needs to drive the redirect itself passes ?format=json and gets {authorizeUrl} in the standard envelope. The org is the VERIFIED principal, so only the caller's own connection can result.
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  Future<void> getAiConnectionsByProviderAuthorize(String provider,) async {
    final response = await getAiConnectionsByProviderAuthorizeWithHttpInfo(provider,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Completes OAuth: the org is recovered from the SIGNED state (not a header), the code is exchanged for a token, the token is SEALED into KMS (never the row/logs) through the same path as a BYOK key, and the org's provider row is upserted to \"connected\".
  ///
  /// Completes OAuth: the org is recovered from the SIGNED state (not a header), the code is exchanged for a token, the token is SEALED into KMS (never the row/logs) through the same path as a BYOK key, and the org's provider row is upserted to \"connected\". The browser is then redirected back to the console with ?ai_connected=<provider> (or ?ai_connect_error=<provider> on failure). Because the org comes from the state THIS server signed, an attacker cannot land their token in a victim org — which is why this endpoint is state-authenticated rather than credential-gated.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  Future<Response> getAiConnectionsByProviderCallbackWithHttpInfo(String provider,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/connections/{provider}/callback'
      .replaceAll('{provider}', provider);

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

  /// Completes OAuth: the org is recovered from the SIGNED state (not a header), the code is exchanged for a token, the token is SEALED into KMS (never the row/logs) through the same path as a BYOK key, and the org's provider row is upserted to \"connected\".
  ///
  /// Completes OAuth: the org is recovered from the SIGNED state (not a header), the code is exchanged for a token, the token is SEALED into KMS (never the row/logs) through the same path as a BYOK key, and the org's provider row is upserted to \"connected\". The browser is then redirected back to the console with ?ai_connected=<provider> (or ?ai_connect_error=<provider> on failure). Because the org comes from the state THIS server signed, an attacker cannot land their token in a victim org — which is why this endpoint is state-authenticated rather than credential-gated.
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  Future<void> getAiConnectionsByProviderCallback(String provider,) async {
    final response = await getAiConnectionsByProviderCallbackWithHttpInfo(provider,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Imports the caller org's usage for a connected third-party account.
  ///
  /// Imports the caller org's usage for a connected third-party account. The org is resolved from the VERIFIED principal (requireConnectionOrg), so a tenant reads only its own connection. The key is unsealed SERVER-SIDE and never returned. An unconnected account, a missing importer, or a scope-denied provider all return a 200 ProviderUsage with connected/available flags + a human note — the UI's honest-empty states — never a fabricated figure.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  Future<Response> getAiConnectionsByProviderUsageWithHttpInfo(String provider,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/connections/{provider}/usage'
      .replaceAll('{provider}', provider);

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

  /// Imports the caller org's usage for a connected third-party account.
  ///
  /// Imports the caller org's usage for a connected third-party account. The org is resolved from the VERIFIED principal (requireConnectionOrg), so a tenant reads only its own connection. The key is unsealed SERVER-SIDE and never returned. An unconnected account, a missing importer, or a scope-denied provider all return a 200 ProviderUsage with connected/available flags + a human note — the UI's honest-empty states — never a fabricated figure.
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  Future<void> getAiConnectionsByProviderUsage(String provider,) async {
    final response = await getAiConnectionsByProviderUsageWithHttpInfo(provider,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Dashboards Agents
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiDashboardsAgentsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/dashboards/agents';

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

  /// Dashboards Agents
  Future<void> getAiDashboardsAgents() async {
    final response = await getAiDashboardsAgentsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Dashboards Vm
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiDashboardsVmWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/dashboards/vm';

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

  /// Dashboards Vm
  Future<void> getAiDashboardsVm() async {
    final response = await getAiDashboardsVmWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List deployments
  ///
  /// List the caller's deployments.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiDeploymentsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/deployments';

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

  /// List deployments
  ///
  /// List the caller's deployments.
  Future<void> getAiDeployments() async {
    final response = await getAiDeploymentsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve a application
  ///
  /// Read one application by its (owner, name) key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> getAiDeploymentsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/deployments/{owner}/{name}'
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

  /// Retrieve a application
  ///
  /// Read one application by its (owner, name) key.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> getAiDeploymentsByOwnerByName(String owner, String name,) async {
    final response = await getAiDeploymentsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List files
  ///
  /// List the caller's files.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiFilesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/files';

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

  /// List files
  ///
  /// List the caller's files.
  Future<void> getAiFiles() async {
    final response = await getAiFilesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Active (file)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiFilesActiveWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/files/active';

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

  /// Active (file)
  Future<void> getAiFilesActive() async {
    final response = await getAiFilesActiveWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve a file
  ///
  /// Read one file by its (owner, name) key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> getAiFilesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/files/{owner}/{name}'
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

  /// Retrieve a file
  ///
  /// Read one file by its (owner, name) key.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> getAiFilesByOwnerByName(String owner, String name,) async {
    final response = await getAiFilesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List files across tenants
  ///
  /// Cross-tenant listing. Admin-only; a tenant caller is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiFilesGlobalWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/files/global';

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

  /// List files across tenants
  ///
  /// Cross-tenant listing. Admin-only; a tenant caller is refused.
  Future<void> getAiFilesGlobal() async {
    final response = await getAiFilesGlobalWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Proxies a HuggingFace dataset search (dataset picker).
  ///
  /// Proxies a HuggingFace dataset search (dataset picker).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiFinetuneHfDatasetsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/finetune/hf/datasets';

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

  /// Proxies a HuggingFace dataset search (dataset picker).
  ///
  /// Proxies a HuggingFace dataset search (dataset picker).
  Future<void> getAiFinetuneHfDatasets() async {
    final response = await getAiFinetuneHfDatasetsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Proxies a HuggingFace model search (base-model picker).
  ///
  /// Proxies a HuggingFace model search (base-model picker).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiFinetuneHfModelsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/finetune/hf/models';

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

  /// Proxies a HuggingFace model search (base-model picker).
  ///
  /// Proxies a HuggingFace model search (base-model picker).
  Future<void> getAiFinetuneHfModels() async {
    final response = await getAiFinetuneHfModelsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns a repo's detail (files, gated/private state).
  ///
  /// Returns a repo's detail (files, gated/private state). ?id=&kind=model|dataset
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiFinetuneHfRepoWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/finetune/hf/repo';

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

  /// Returns a repo's detail (files, gated/private state).
  ///
  /// Returns a repo's detail (files, gated/private state). ?id=&kind=model|dataset
  Future<void> getAiFinetuneHfRepo() async {
    final response = await getAiFinetuneHfRepoWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns one job with refreshed live status.
  ///
  /// Returns one job with refreshed live status. ?id=owner/name or ?name=
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiFinetuneJobWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/finetune/job';

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

  /// Returns one job with refreshed live status.
  ///
  /// Returns one job with refreshed live status. ?id=owner/name or ?name=
  Future<void> getAiFinetuneJob() async {
    final response = await getAiFinetuneJobWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the org's jobs, refreshing live status for active ones.
  ///
  /// Returns the org's jobs, refreshing live status for active ones.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiFinetuneJobsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/finetune/jobs';

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

  /// Returns the org's jobs, refreshing live status for active ones.
  ///
  /// Returns the org's jobs, refreshing live status for active ones.
  Future<void> getAiFinetuneJobs() async {
    final response = await getAiFinetuneJobsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the new-job catalog plus, when a selection is passed (?baseModel&method&task&preset[&datasetExamples]), the recommended config so the console can render \"Recommended\" as a one-click, ready-to-run default.
  ///
  /// Returns the new-job catalog plus, when a selection is passed (?baseModel&method&task&preset[&datasetExamples]), the recommended config so the console can render \"Recommended\" as a one-click, ready-to-run default.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiFinetunePresetsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/finetune/presets';

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

  /// Returns the new-job catalog plus, when a selection is passed (?baseModel&method&task&preset[&datasetExamples]), the recommended config so the console can render \"Recommended\" as a one-click, ready-to-run default.
  ///
  /// Returns the new-job catalog plus, when a selection is passed (?baseModel&method&task&preset[&datasetExamples]), the recommended config so the console can render \"Recommended\" as a one-click, ready-to-run default.
  Future<void> getAiFinetunePresets() async {
    final response = await getAiFinetunePresetsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List forms
  ///
  /// List the caller's forms.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiFormsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/forms';

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

  /// List forms
  ///
  /// List the caller's forms.
  Future<void> getAiForms() async {
    final response = await getAiFormsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve a form
  ///
  /// Read one form by its (owner, name) key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> getAiFormsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/forms/{owner}/{name}'
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

  /// Retrieve a form
  ///
  /// Read one form by its (owner, name) key.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> getAiFormsByOwnerByName(String owner, String name,) async {
    final response = await getAiFormsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Data (form)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiFormsDataWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/forms/data';

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

  /// Data (form)
  Future<void> getAiFormsData() async {
    final response = await getAiFormsDataWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List forms across tenants
  ///
  /// Cross-tenant listing. Admin-only; a tenant caller is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiFormsGlobalWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/forms/global';

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

  /// List forms across tenants
  ///
  /// Cross-tenant listing. Admin-only; a tenant caller is refused.
  Future<void> getAiFormsGlobal() async {
    final response = await getAiFormsGlobalWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List graphs
  ///
  /// List the caller's graphs.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiGraphsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/graphs';

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

  /// List graphs
  ///
  /// List the caller's graphs.
  Future<void> getAiGraphs() async {
    final response = await getAiGraphsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve a graph
  ///
  /// Read one graph by its (owner, name) key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> getAiGraphsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/graphs/{owner}/{name}'
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

  /// Retrieve a graph
  ///
  /// Read one graph by its (owner, name) key.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> getAiGraphsByOwnerByName(String owner, String name,) async {
    final response = await getAiGraphsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List graphs across tenants
  ///
  /// Cross-tenant listing. Admin-only; a tenant caller is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiGraphsGlobalWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/graphs/global';

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

  /// List graphs across tenants
  ///
  /// Cross-tenant listing. Admin-only; a tenant caller is refused.
  Future<void> getAiGraphsGlobal() async {
    final response = await getAiGraphsGlobalWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// K8s Status
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiK8sStatusWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/k8s-status';

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

  /// K8s Status
  Future<void> getAiK8sStatus() async {
    final response = await getAiK8sStatusWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List the authenticated user's stored facts
  ///
  /// List the authenticated user's stored facts
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiMemoryFactsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/memory/facts';

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

  /// List the authenticated user's stored facts
  ///
  /// List the authenticated user's stored facts
  Future<void> getAiMemoryFacts() async {
    final response = await getAiMemoryFactsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List the authenticated user's memories, newest first
  ///
  /// List the authenticated user's memories, newest first
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiMemoryListWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/memory/list';

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

  /// List the authenticated user's memories, newest first
  ///
  /// List the authenticated user's memories, newest first
  Future<void> getAiMemoryList() async {
    final response = await getAiMemoryListWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Recall recent/relevant memories for context injection; with q it
  ///
  /// Recall recent/relevant memories for context injection; with q it ranks semantically, without q it returns the most recent
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiMemoryRecallWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/memory/recall';

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

  /// Recall recent/relevant memories for context injection; with q it
  ///
  /// Recall recent/relevant memories for context injection; with q it ranks semantically, without q it returns the most recent
  Future<void> getAiMemoryRecall() async {
    final response = await getAiMemoryRecallWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Search the authenticated user's memories (semantic, text fallback)
  ///
  /// Search the authenticated user's memories (semantic, text fallback)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiMemorySearchWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/memory/search';

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

  /// Search the authenticated user's memories (semantic, text fallback)
  ///
  /// Search the authenticated user's memories (semantic, text fallback)
  Future<void> getAiMemorySearch() async {
    final response = await getAiMemorySearchWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List messages
  ///
  /// List the caller's messages.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiMessagesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/messages';

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

  /// List messages
  ///
  /// List the caller's messages.
  Future<void> getAiMessages() async {
    final response = await getAiMessagesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve a message
  ///
  /// Read one message by its (owner, name) key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> getAiMessagesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/messages/{owner}/{name}'
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

  /// Retrieve a message
  ///
  /// Read one message by its (owner, name) key.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> getAiMessagesByOwnerByName(String owner, String name,) async {
    final response = await getAiMessagesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Answer (message)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> getAiMessagesByOwnerByNameAnswerWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/messages/{owner}/{name}/answer'
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

  /// Answer (message)
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> getAiMessagesByOwnerByNameAnswer(String owner, String name,) async {
    final response = await getAiMessagesByOwnerByNameAnswerWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List messages across tenants
  ///
  /// Cross-tenant listing. Admin-only; a tenant caller is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiMessagesGlobalWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/messages/global';

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

  /// List messages across tenants
  ///
  /// Cross-tenant listing. Admin-only; a tenant caller is refused.
  Future<void> getAiMessagesGlobal() async {
    final response = await getAiMessagesGlobalWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List nodes
  ///
  /// List the caller's nodes.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiNodesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/nodes';

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

  /// List nodes
  ///
  /// List the caller's nodes.
  Future<void> getAiNodes() async {
    final response = await getAiNodesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve a node
  ///
  /// Read one node by its (owner, name) key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> getAiNodesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/nodes/{owner}/{name}'
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

  /// Retrieve a node
  ///
  /// Read one node by its (owner, name) key.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> getAiNodesByOwnerByName(String owner, String name,) async {
    final response = await getAiNodesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Tunnel (node)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> getAiNodesByOwnerByNameTunnelWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/nodes/{owner}/{name}/tunnel'
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

  /// Tunnel (node)
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> getAiNodesByOwnerByNameTunnel(String owner, String name,) async {
    final response = await getAiNodesByOwnerByNameTunnelWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiOrgSettingsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/org/settings';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> getAiOrgSettings() async {
    final response = await getAiOrgSettingsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiOrgSettingsListWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/org/settings/list';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> getAiOrgSettingsList() async {
    final response = await getAiOrgSettingsListWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Prometheus
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiPrometheusWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/prometheus';

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

  /// Prometheus
  Future<void> getAiPrometheus() async {
    final response = await getAiPrometheusWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List providers
  ///
  /// List the caller's providers.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiProvidersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/providers';

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

  /// List providers
  ///
  /// List the caller's providers.
  Future<void> getAiProviders() async {
    final response = await getAiProvidersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve a provider
  ///
  /// Read one provider by its (owner, name) key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> getAiProvidersByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/providers/{owner}/{name}'
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

  /// Retrieve a provider
  ///
  /// Read one provider by its (owner, name) key.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> getAiProvidersByOwnerByName(String owner, String name,) async {
    final response = await getAiProvidersByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List providers across tenants
  ///
  /// Cross-tenant listing. Admin-only; a tenant caller is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiProvidersGlobalWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/providers/global';

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

  /// List providers across tenants
  ///
  /// Cross-tenant listing. Admin-only; a tenant caller is refused.
  Future<void> getAiProvidersGlobal() async {
    final response = await getAiProvidersGlobalWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Return every stored chunk of one file_id (full document context).
  ///
  /// Return every stored chunk of one file_id (full document context). Consolidates the retired chat-rag-api GET /documents/{id}/context.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiRagContextWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/rag/context';

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

  /// Return every stored chunk of one file_id (full document context).
  ///
  /// Return every stored chunk of one file_id (full document context). Consolidates the retired chat-rag-api GET /documents/{id}/context.
  Future<void> getAiRagContext() async {
    final response = await getAiRagContextWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List records
  ///
  /// List the caller's records.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiRecordsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/records';

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

  /// List records
  ///
  /// List the caller's records.
  Future<void> getAiRecords() async {
    final response = await getAiRecordsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve a record
  ///
  /// Read one record by its (owner, name) key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> getAiRecordsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/records/{owner}/{name}'
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

  /// Retrieve a record
  ///
  /// Read one record by its (owner, name) key.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> getAiRecordsByOwnerByName(String owner, String name,) async {
    final response = await getAiRecordsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Query (record)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiRecordsQueryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/records/query';

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

  /// Query (record)
  Future<void> getAiRecordsQuery() async {
    final response = await getAiRecordsQueryWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Query Second (record)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiRecordsQuerySecondWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/records/query-second';

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

  /// Query Second (record)
  Future<void> getAiRecordsQuerySecond() async {
    final response = await getAiRecordsQuerySecondWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List remote-connections
  ///
  /// List the caller's remote-connections.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiRemoteConnectionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/remote-connections';

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

  /// List remote-connections
  ///
  /// List the caller's remote-connections.
  Future<void> getAiRemoteConnections() async {
    final response = await getAiRemoteConnectionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve a connection
  ///
  /// Read one connection by its (owner, name) key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> getAiRemoteConnectionsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/remote-connections/{owner}/{name}'
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

  /// Retrieve a connection
  ///
  /// Read one connection by its (owner, name) key.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> getAiRemoteConnectionsByOwnerByName(String owner, String name,) async {
    final response = await getAiRemoteConnectionsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiRouterArtifactMetaWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/artifact-meta';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> getAiRouterArtifactMeta() async {
    final response = await getAiRouterArtifactMetaWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Router Data
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiRouterDataWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/data';

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

  /// Router Data
  Future<void> getAiRouterData() async {
    final response = await getAiRouterDataWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiRouterDefaultsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/defaults';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> getAiRouterDefaults() async {
    final response = await getAiRouterDefaultsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the router-improvement time-series.
  ///
  /// Returns the router-improvement time-series. Two scopes, one route, mirroring /v1/ai/router/stats:    - ?scope=platform — PUBLIC-safe aggregate over ALL orgs, no authentication. Emits     the daily reward/cost-saved/adoption series (task mix included, model ids NOT)     and the retrain timeline. This is what world.hanzo.ai polls.   - default (org scope) — requires a signed-in principal, scoped to the caller's OWN     org (a super admin may pass ?org= to target another or \"\" for all).  Window: ?days=N (default 30, capped at 90). Aggregates only.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiRouterHistoryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/history';

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

  /// Returns the router-improvement time-series.
  ///
  /// Returns the router-improvement time-series. Two scopes, one route, mirroring /v1/ai/router/stats:    - ?scope=platform — PUBLIC-safe aggregate over ALL orgs, no authentication. Emits     the daily reward/cost-saved/adoption series (task mix included, model ids NOT)     and the retrain timeline. This is what world.hanzo.ai polls.   - default (org scope) — requires a signed-in principal, scoped to the caller's OWN     org (a super admin may pass ?org= to target another or \"\" for all).  Window: ?days=N (default 30, capped at 90). Aggregates only.
  Future<void> getAiRouterHistory() async {
    final response = await getAiRouterHistoryWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the LIVE Mean-Field Judge Panel state: the configured panel + dynamic judge posture (enabled/sample) resolved from the \"*\" GlobalDefaultOwner row, the live in-process per-judge calibration (weight/mean/n), and the static published benchmark.
  ///
  /// Returns the LIVE Mean-Field Judge Panel state: the configured panel + dynamic judge posture (enabled/sample) resolved from the \"*\" GlobalDefaultOwner row, the live in-process per-judge calibration (weight/mean/n), and the static published benchmark. PUBLIC-safe and platform-global (model ids + scalars only), so it rides the same unauthenticated, balance-exempt class as /v1/ai/router/stats?scope=platform — the world widget polls it with no auth. The judge state is a single in-process population (not per-org), so there is nothing to scope; ?scope=platform is accepted for symmetry with router-stats.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiRouterJudgePanelWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/judge-panel';

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

  /// Returns the LIVE Mean-Field Judge Panel state: the configured panel + dynamic judge posture (enabled/sample) resolved from the \"*\" GlobalDefaultOwner row, the live in-process per-judge calibration (weight/mean/n), and the static published benchmark.
  ///
  /// Returns the LIVE Mean-Field Judge Panel state: the configured panel + dynamic judge posture (enabled/sample) resolved from the \"*\" GlobalDefaultOwner row, the live in-process per-judge calibration (weight/mean/n), and the static published benchmark. PUBLIC-safe and platform-global (model ids + scalars only), so it rides the same unauthenticated, balance-exempt class as /v1/ai/router/stats?scope=platform — the world widget polls it with no auth. The judge state is a single in-process population (not per-org), so there is nothing to scope; ?scope=platform is accepted for symmetry with router-stats.
  Future<void> getAiRouterJudgePanel() async {
    final response = await getAiRouterJudgePanelWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiRouterLedgerWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/ledger';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> getAiRouterLedger() async {
    final response = await getAiRouterLedgerWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiRouterPolicyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/policy';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> getAiRouterPolicy() async {
    final response = await getAiRouterPolicyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiRouterRewardsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/rewards';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> getAiRouterRewards() async {
    final response = await getAiRouterRewardsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the router observability aggregate.
  ///
  /// Returns the router observability aggregate. Two scopes, one route:    - ?scope=platform — PUBLIC-safe aggregate over ALL orgs, no authentication.     Emits rates, shares, per-task/per-model counts, throughput, and the cost     RATIO (saved_pct) + counterfactual model id, but NEVER absolute $ levels,     org identity, raw events, or feature vectors. This is what world.hanzo.ai     polls.   - default (org scope) — requires a signed-in principal; scoped to the caller's     OWN org (a super admin may pass ?org= to target another org or \"\" for all).     Carries the absolute $/MTok indices for the admin savings panel.  Window: ?since= (RFC3339) or ?hours= (default 24, capped). Aggregates only.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiRouterStatsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/stats';

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

  /// Returns the router observability aggregate.
  ///
  /// Returns the router observability aggregate. Two scopes, one route:    - ?scope=platform — PUBLIC-safe aggregate over ALL orgs, no authentication.     Emits rates, shares, per-task/per-model counts, throughput, and the cost     RATIO (saved_pct) + counterfactual model id, but NEVER absolute $ levels,     org identity, raw events, or feature vectors. This is what world.hanzo.ai     polls.   - default (org scope) — requires a signed-in principal; scoped to the caller's     OWN org (a super admin may pass ?org= to target another org or \"\" for all).     Carries the absolute $/MTok indices for the admin savings panel.  Window: ?since= (RFC3339) or ?hours= (default 24, capped). Aggregates only.
  Future<void> getAiRouterStats() async {
    final response = await getAiRouterStatsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List routes
  ///
  /// List the caller's routes.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiRoutesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/routes';

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

  /// List routes
  ///
  /// List the caller's routes.
  Future<void> getAiRoutes() async {
    final response = await getAiRoutesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve a model-route
  ///
  /// Read one model-route by its (owner, name) key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> getAiRoutesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/routes/{owner}/{name}'
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

  /// Retrieve a model-route
  ///
  /// Read one model-route by its (owner, name) key.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> getAiRoutesByOwnerByName(String owner, String name,) async {
    final response = await getAiRoutesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List scales
  ///
  /// List the caller's scales.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiScalesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/scales';

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

  /// List scales
  ///
  /// List the caller's scales.
  Future<void> getAiScales() async {
    final response = await getAiScalesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve a scale
  ///
  /// Read one scale by its (owner, name) key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> getAiScalesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/scales/{owner}/{name}'
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

  /// Retrieve a scale
  ///
  /// Read one scale by its (owner, name) key.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> getAiScalesByOwnerByName(String owner, String name,) async {
    final response = await getAiScalesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List scales across tenants
  ///
  /// Cross-tenant listing. Admin-only; a tenant caller is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiScalesGlobalWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/scales/global';

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

  /// List scales across tenants
  ///
  /// Cross-tenant listing. Admin-only; a tenant caller is refused.
  Future<void> getAiScalesGlobal() async {
    final response = await getAiScalesGlobalWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Public (scale)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiScalesPublicWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/scales/public';

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

  /// Public (scale)
  Future<void> getAiScalesPublic() async {
    final response = await getAiScalesPublicWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List scans
  ///
  /// List the caller's scans.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiScansWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/scans';

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

  /// List scans
  ///
  /// List the caller's scans.
  Future<void> getAiScans() async {
    final response = await getAiScansWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve a scan
  ///
  /// Read one scan by its (owner, name) key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> getAiScansByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/scans/{owner}/{name}'
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

  /// Retrieve a scan
  ///
  /// Read one scan by its (owner, name) key.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> getAiScansByOwnerByName(String owner, String name,) async {
    final response = await getAiScansByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List signin-sessions
  ///
  /// List the caller's signin-sessions.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiSigninSessionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/signin-sessions';

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

  /// List signin-sessions
  ///
  /// List the caller's signin-sessions.
  Future<void> getAiSigninSessions() async {
    final response = await getAiSigninSessionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve a session
  ///
  /// Read one session by its (owner, name) key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> getAiSigninSessionsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/signin-sessions/{owner}/{name}'
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

  /// Retrieve a session
  ///
  /// Read one session by its (owner, name) key.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> getAiSigninSessionsByOwnerByName(String owner, String name,) async {
    final response = await getAiSigninSessionsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Duplicated (session)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiSigninSessionsDuplicatedWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/signin-sessions/duplicated';

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

  /// Duplicated (session)
  Future<void> getAiSigninSessionsDuplicated() async {
    final response = await getAiSigninSessionsDuplicatedWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List stores
  ///
  /// List the caller's stores.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiStoresWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/stores';

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

  /// List stores
  ///
  /// List the caller's stores.
  Future<void> getAiStores() async {
    final response = await getAiStoresWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve a store
  ///
  /// Read one store by its (owner, name) key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> getAiStoresByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/stores/{owner}/{name}'
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

  /// Retrieve a store
  ///
  /// Read one store by its (owner, name) key.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> getAiStoresByOwnerByName(String owner, String name,) async {
    final response = await getAiStoresByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List stores across tenants
  ///
  /// Cross-tenant listing. Admin-only; a tenant caller is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiStoresGlobalWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/stores/global';

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

  /// List stores across tenants
  ///
  /// Cross-tenant listing. Admin-only; a tenant caller is refused.
  Future<void> getAiStoresGlobal() async {
    final response = await getAiStoresGlobalWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Names (store)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiStoresNamesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/stores/names';

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

  /// Names (store)
  Future<void> getAiStoresNames() async {
    final response = await getAiStoresNamesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Providers (store)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiStoresProvidersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/stores/providers';

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

  /// Providers (store)
  Future<void> getAiStoresProviders() async {
    final response = await getAiStoresProvidersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// System
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiSystemWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/system';

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

  /// System
  Future<void> getAiSystem() async {
    final response = await getAiSystemWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List tasks
  ///
  /// List the caller's tasks.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiTasksWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/tasks';

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

  /// List tasks
  ///
  /// List the caller's tasks.
  Future<void> getAiTasks() async {
    final response = await getAiTasksWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve a task
  ///
  /// Read one task by its (owner, name) key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> getAiTasksByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/tasks/{owner}/{name}'
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

  /// Retrieve a task
  ///
  /// Read one task by its (owner, name) key.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> getAiTasksByOwnerByName(String owner, String name,) async {
    final response = await getAiTasksByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List tasks across tenants
  ///
  /// Cross-tenant listing. Admin-only; a tenant caller is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiTasksGlobalWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/tasks/global';

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

  /// List tasks across tenants
  ///
  /// Cross-tenant listing. Admin-only; a tenant caller is refused.
  Future<void> getAiTasksGlobal() async {
    final response = await getAiTasksGlobalWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List templates
  ///
  /// List the caller's templates.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiTemplatesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/templates';

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

  /// List templates
  ///
  /// List the caller's templates.
  Future<void> getAiTemplates() async {
    final response = await getAiTemplatesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve a template
  ///
  /// Read one template by its (owner, name) key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> getAiTemplatesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/templates/{owner}/{name}'
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

  /// Retrieve a template
  ///
  /// Read one template by its (owner, name) key.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> getAiTemplatesByOwnerByName(String owner, String name,) async {
    final response = await getAiTemplatesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the PUBLIC live request-geo aggregate for the world.hanzo.ai \"Hanzo mode\" globe: WHERE requests to api.hanzo.ai are coming from, as country/region points with per-service-class counts, plus headline throughput rates.
  ///
  /// Returns the PUBLIC live request-geo aggregate for the world.hanzo.ai \"Hanzo mode\" globe: WHERE requests to api.hanzo.ai are coming from, as country/region points with per-service-class counts, plus headline throughput rates.  It is AUTH-exempt and BALANCE-exempt exactly like /v1/ai/router/stats?scope=platform:   - auth: the controller name \"traffic/globe\" is neither a get-/update- CRUD name     nor a super-admin/present-credential endpoint, so the authz filter passes it     through, and this handler requires no principal.   - balance: isBalanceExempt(\"/v1/ai/traffic/...\") returns true.  It exposes ONLY aggregates — counts, rates, and country/region centroids — and NEVER any IP, per-request row, org, or user dimension (see object/traffic.go). Marketing telemetry; nothing sensitive.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiTrafficGlobeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/traffic/globe';

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

  /// Returns the PUBLIC live request-geo aggregate for the world.hanzo.ai \"Hanzo mode\" globe: WHERE requests to api.hanzo.ai are coming from, as country/region points with per-service-class counts, plus headline throughput rates.
  ///
  /// Returns the PUBLIC live request-geo aggregate for the world.hanzo.ai \"Hanzo mode\" globe: WHERE requests to api.hanzo.ai are coming from, as country/region points with per-service-class counts, plus headline throughput rates.  It is AUTH-exempt and BALANCE-exempt exactly like /v1/ai/router/stats?scope=platform:   - auth: the controller name \"traffic/globe\" is neither a get-/update- CRUD name     nor a super-admin/present-credential endpoint, so the authz filter passes it     through, and this handler requires no principal.   - balance: isBalanceExempt(\"/v1/ai/traffic/...\") returns true.  It exposes ONLY aggregates — counts, rates, and country/region centroids — and NEVER any IP, per-request row, org, or user dimension (see object/traffic.go). Marketing telemetry; nothing sensitive.
  Future<void> getAiTrafficGlobe() async {
    final response = await getAiTrafficGlobeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Training Contribution
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiTrainingContributionWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/training-contribution';

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

  /// Training Contribution
  Future<void> getAiTrainingContribution() async {
    final response = await getAiTrainingContributionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List usages
  ///
  /// List the caller's usages.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiUsagesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/usages';

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

  /// List usages
  ///
  /// List the caller's usages.
  Future<void> getAiUsages() async {
    final response = await getAiUsagesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// By User (usage)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiUsagesByUserWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/usages/by-user';

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

  /// By User (usage)
  Future<void> getAiUsagesByUser() async {
    final response = await getAiUsagesByUserWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Cloud (usage)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiUsagesCloudWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/usages/cloud';

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

  /// Cloud (usage)
  Future<void> getAiUsagesCloud() async {
    final response = await getAiUsagesCloudWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Range (usage)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiUsagesRangeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/usages/range';

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

  /// Range (usage)
  Future<void> getAiUsagesRange() async {
    final response = await getAiUsagesRangeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// User Names (usage)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiUsagesUserNamesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/usages/user-names';

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

  /// User Names (usage)
  Future<void> getAiUsagesUserNames() async {
    final response = await getAiUsagesUserNamesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List vectors
  ///
  /// List the caller's vectors.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiVectorsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/vectors';

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

  /// List vectors
  ///
  /// List the caller's vectors.
  Future<void> getAiVectors() async {
    final response = await getAiVectorsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve a vector
  ///
  /// Read one vector by its (owner, name) key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> getAiVectorsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/vectors/{owner}/{name}'
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

  /// Retrieve a vector
  ///
  /// Read one vector by its (owner, name) key.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> getAiVectorsByOwnerByName(String owner, String name,) async {
    final response = await getAiVectorsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List vectors across tenants
  ///
  /// Cross-tenant listing. Admin-only; a tenant caller is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiVectorsGlobalWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/vectors/global';

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

  /// List vectors across tenants
  ///
  /// Cross-tenant listing. Admin-only; a tenant caller is refused.
  Future<void> getAiVectorsGlobal() async {
    final response = await getAiVectorsGlobalWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Version
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiVersionWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/version';

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

  /// Version
  Future<void> getAiVersion() async {
    final response = await getAiVersionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List videos
  ///
  /// List the caller's videos.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiVideosWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/videos';

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

  /// List videos
  ///
  /// List the caller's videos.
  Future<void> getAiVideos() async {
    final response = await getAiVideosWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve a video
  ///
  /// Read one video by its (owner, name) key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> getAiVideosByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/videos/{owner}/{name}'
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

  /// Retrieve a video
  ///
  /// Read one video by its (owner, name) key.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> getAiVideosByOwnerByName(String owner, String name,) async {
    final response = await getAiVideosByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List videos across tenants
  ///
  /// Cross-tenant listing. Admin-only; a tenant caller is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiVideosGlobalWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/videos/global';

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

  /// List videos across tenants
  ///
  /// Cross-tenant listing. Admin-only; a tenant caller is refused.
  Future<void> getAiVideosGlobal() async {
    final response = await getAiVideosGlobalWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List workflows
  ///
  /// List the caller's workflows.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiWorkflowsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/workflows';

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

  /// List workflows
  ///
  /// List the caller's workflows.
  Future<void> getAiWorkflows() async {
    final response = await getAiWorkflowsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve a workflow
  ///
  /// Read one workflow by its (owner, name) key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> getAiWorkflowsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/workflows/{owner}/{name}'
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

  /// Retrieve a workflow
  ///
  /// Read one workflow by its (owner, name) key.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> getAiWorkflowsByOwnerByName(String owner, String name,) async {
    final response = await getAiWorkflowsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List workflows across tenants
  ///
  /// Cross-tenant listing. Admin-only; a tenant caller is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAiWorkflowsGlobalWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/workflows/global';

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

  /// List workflows across tenants
  ///
  /// Cross-tenant listing. Admin-only; a tenant caller is refused.
  Future<void> getAiWorkflowsGlobal() async {
    final response = await getAiWorkflowsGlobalWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the list of available models from the routing table.
  ///
  /// Returns the list of available models from the routing table.  PUBLIC BY DESIGN, AND IT DOES NOT AUTHENTICATE — that is the whole contract, so it is stated here rather than left to be inferred. The catalogue is the same for everyone (listAvailableModels takes no principal), docs.hanzo.ai fetches it from the browser, and every policy layer around it already says so out loud: the authz filter lists \"models\" as public, filter_balance refuses to gate it (a 402 here was a console-wide outage), the rate limiter excludes it, and cloud's spend.Reachable carries /v1/models/ as \"the model catalog the shell reads for discovery\".  SO THE Authorization HEADER IS NOT AN ADMISSION CHECK HERE. It is read for ONE thing — annotating gated SKUs with the caller's own access standing — and annotation degrades to nothing when there is no verified principal.  It used to hold a \"require authentication\" gate that authenticated nobody: it rejected an ABSENT credential and a MALFORMED one, then accepted any string that merely looked like a key. `Bearer sk-` followed by 36 zeroes returned 200 in production; so did a JWT three days expired. It was a shape check wearing an auth check's clothes, and its cost was diagnostic: /v1/models is the natural \"is my auth working?\" probe, and answering 200 to a dead credential sent people debugging the wrong system. A public endpoint must not appear to validate. Either check the credential or ignore it — this one ignores it, deliberately and visibly.  Removing that gate discloses nothing new: the catalogue was already reachable by anyone willing to type three characters, so there is no confidentiality delta, only an honesty one.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getModelsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/models';

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

  /// Returns the list of available models from the routing table.
  ///
  /// Returns the list of available models from the routing table.  PUBLIC BY DESIGN, AND IT DOES NOT AUTHENTICATE — that is the whole contract, so it is stated here rather than left to be inferred. The catalogue is the same for everyone (listAvailableModels takes no principal), docs.hanzo.ai fetches it from the browser, and every policy layer around it already says so out loud: the authz filter lists \"models\" as public, filter_balance refuses to gate it (a 402 here was a console-wide outage), the rate limiter excludes it, and cloud's spend.Reachable carries /v1/models/ as \"the model catalog the shell reads for discovery\".  SO THE Authorization HEADER IS NOT AN ADMISSION CHECK HERE. It is read for ONE thing — annotating gated SKUs with the caller's own access standing — and annotation degrades to nothing when there is no verified principal.  It used to hold a \"require authentication\" gate that authenticated nobody: it rejected an ABSENT credential and a MALFORMED one, then accepted any string that merely looked like a key. `Bearer sk-` followed by 36 zeroes returned 200 in production; so did a JWT three days expired. It was a shape check wearing an auth check's clothes, and its cost was diagnostic: /v1/models is the natural \"is my auth working?\" probe, and answering 200 to a dead credential sent people debugging the wrong system. A public endpoint must not appear to validate. Either check the credential or ignore it — this one ignores it, deliberately and visibly.  Removing that gate discloses nothing new: the catalogue was already reachable by anyone willing to type three characters, so there is no confidentiality delta, only an honesty one.
  Future<void> getModels() async {
    final response = await getModelsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the caller's own standing for a gated model: \"granted\", \"requested\", or empty when they have never asked.
  ///
  /// Returns the caller's own standing for a gated model: \"granted\", \"requested\", or empty when they have never asked.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] model (required):
  Future<Response> getModelsByModelAccessWithHttpInfo(String model,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/models/{model}/access'
      .replaceAll('{model}', model);

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

  /// Returns the caller's own standing for a gated model: \"granted\", \"requested\", or empty when they have never asked.
  ///
  /// Returns the caller's own standing for a gated model: \"granted\", \"requested\", or empty when they have never asked.
  ///
  /// Parameters:
  ///
  /// * [String] model (required):
  Future<void> getModelsByModelAccess(String model,) async {
    final response = await getModelsByModelAccessWithHttpInfo(model,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Public, secret-free list of the providers serving the models that GET /v1/models lists — the same source, projected.
  ///
  /// Public, secret-free list of the providers serving the models that GET /v1/models lists — the same source, projected. Safe unauthenticated: no keys, URLs, or config are returned, and it reports a SET of names, never which provider serves which model.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getModelsProvidersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/models/providers';

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

  /// Public, secret-free list of the providers serving the models that GET /v1/models lists — the same source, projected.
  ///
  /// Public, secret-free list of the providers serving the models that GET /v1/models lists — the same source, projected. Safe unauthenticated: no keys, URLs, or config are returned, and it reports a SET of names, never which provider serves which model.
  Future<void> getModelsProviders() async {
    final response = await getModelsProvidersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Implements GET /v1/videos/{id} — poll a job's status.
  ///
  /// Implements GET /v1/videos/{id} — poll a job's status.  It authenticates the caller, verifies they OWN the job (the caller's billing subject must equal the job's), performs ONE upstream status poll, and — the first time the job is observed completed — settles the reservation with the actual cost and records the billable usage event (exactly once). Returns the OpenAI-shaped video object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getVideosByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/videos/{id}'
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

  /// Implements GET /v1/videos/{id} — poll a job's status.
  ///
  /// Implements GET /v1/videos/{id} — poll a job's status.  It authenticates the caller, verifies they OWN the job (the caller's billing subject must equal the job's), performs ONE upstream status poll, and — the first time the job is observed completed — settles the reservation with the actual cost and records the billable usage event (exactly once). Returns the OpenAI-shaped video object.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> getVideosById(String id,) async {
    final response = await getVideosByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Implements GET /v1/videos/{id}/content — download the finished MP4.
  ///
  /// Implements GET /v1/videos/{id}/content — download the finished MP4.  It authenticates + ownership-checks the caller, then proxies the upstream /content endpoint (bounded by the download concurrency ceiling) and streams the raw video bytes back inline. A successful download also bills the job once (for the client that downloads without first polling to completion) — idempotent with the poll path via job.markCompleted.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getVideosByIdContentWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/videos/{id}/content'
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

  /// Implements GET /v1/videos/{id}/content — download the finished MP4.
  ///
  /// Implements GET /v1/videos/{id}/content — download the finished MP4.  It authenticates + ownership-checks the caller, then proxies the upstream /content endpoint (bounded by the download concurrency ceiling) and streams the raw video bytes back inline. A successful download also bills the job once (for the client that downloads without first polling to completion) — idempotent with the poll path via job.markCompleted.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> getVideosByIdContent(String id,) async {
    final response = await getVideosByIdContentWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a article
  ///
  /// Update one article. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> patchAiArticlesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/articles/{owner}/{name}'
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

  /// Update a article
  ///
  /// Update one article. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> patchAiArticlesByOwnerByName(String owner, String name,) async {
    final response = await patchAiArticlesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a asset
  ///
  /// Update one asset. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> patchAiAssetsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/assets/{owner}/{name}'
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

  /// Update a asset
  ///
  /// Update one asset. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> patchAiAssetsByOwnerByName(String owner, String name,) async {
    final response = await patchAiAssetsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a chat
  ///
  /// Update one chat. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> patchAiChatsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/chats/{owner}/{name}'
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

  /// Update a chat
  ///
  /// Update one chat. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> patchAiChatsByOwnerByName(String owner, String name,) async {
    final response = await patchAiChatsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a application
  ///
  /// Update one application. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> patchAiDeploymentsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/deployments/{owner}/{name}'
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

  /// Update a application
  ///
  /// Update one application. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> patchAiDeploymentsByOwnerByName(String owner, String name,) async {
    final response = await patchAiDeploymentsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a file
  ///
  /// Update one file. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> patchAiFilesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/files/{owner}/{name}'
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

  /// Update a file
  ///
  /// Update one file. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> patchAiFilesByOwnerByName(String owner, String name,) async {
    final response = await patchAiFilesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a form
  ///
  /// Update one form. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> patchAiFormsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/forms/{owner}/{name}'
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

  /// Update a form
  ///
  /// Update one form. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> patchAiFormsByOwnerByName(String owner, String name,) async {
    final response = await patchAiFormsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a graph
  ///
  /// Update one graph. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> patchAiGraphsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/graphs/{owner}/{name}'
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

  /// Update a graph
  ///
  /// Update one graph. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> patchAiGraphsByOwnerByName(String owner, String name,) async {
    final response = await patchAiGraphsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a message
  ///
  /// Update one message. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> patchAiMessagesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/messages/{owner}/{name}'
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

  /// Update a message
  ///
  /// Update one message. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> patchAiMessagesByOwnerByName(String owner, String name,) async {
    final response = await patchAiMessagesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a node
  ///
  /// Update one node. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> patchAiNodesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/nodes/{owner}/{name}'
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

  /// Update a node
  ///
  /// Update one node. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> patchAiNodesByOwnerByName(String owner, String name,) async {
    final response = await patchAiNodesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> patchAiOrgSettingsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/org/settings';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> patchAiOrgSettings() async {
    final response = await patchAiOrgSettingsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> patchAiOrgSettingsListWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/org/settings/list';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> patchAiOrgSettingsList() async {
    final response = await patchAiOrgSettingsListWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Preferences
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> patchAiPreferencesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/preferences';

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

  /// Preferences
  Future<void> patchAiPreferences() async {
    final response = await patchAiPreferencesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a provider
  ///
  /// Update one provider. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> patchAiProvidersByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/providers/{owner}/{name}'
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

  /// Update a provider
  ///
  /// Update one provider. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> patchAiProvidersByOwnerByName(String owner, String name,) async {
    final response = await patchAiProvidersByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a record
  ///
  /// Update one record. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> patchAiRecordsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/records/{owner}/{name}'
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

  /// Update a record
  ///
  /// Update one record. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> patchAiRecordsByOwnerByName(String owner, String name,) async {
    final response = await patchAiRecordsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a connection
  ///
  /// Update one connection. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> patchAiRemoteConnectionsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/remote-connections/{owner}/{name}'
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

  /// Update a connection
  ///
  /// Update one connection. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> patchAiRemoteConnectionsByOwnerByName(String owner, String name,) async {
    final response = await patchAiRemoteConnectionsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> patchAiRouterArtifactMetaWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/artifact-meta';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> patchAiRouterArtifactMeta() async {
    final response = await patchAiRouterArtifactMetaWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> patchAiRouterDefaultsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/defaults';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> patchAiRouterDefaults() async {
    final response = await patchAiRouterDefaultsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> patchAiRouterLedgerWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/ledger';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> patchAiRouterLedger() async {
    final response = await patchAiRouterLedgerWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> patchAiRouterPolicyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/policy';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> patchAiRouterPolicy() async {
    final response = await patchAiRouterPolicyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> patchAiRouterRewardsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/rewards';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> patchAiRouterRewards() async {
    final response = await patchAiRouterRewardsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a model-route
  ///
  /// Update one model-route. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> patchAiRoutesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/routes/{owner}/{name}'
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

  /// Update a model-route
  ///
  /// Update one model-route. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> patchAiRoutesByOwnerByName(String owner, String name,) async {
    final response = await patchAiRoutesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a scale
  ///
  /// Update one scale. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> patchAiScalesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/scales/{owner}/{name}'
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

  /// Update a scale
  ///
  /// Update one scale. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> patchAiScalesByOwnerByName(String owner, String name,) async {
    final response = await patchAiScalesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a scan
  ///
  /// Update one scan. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> patchAiScansByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/scans/{owner}/{name}'
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

  /// Update a scan
  ///
  /// Update one scan. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> patchAiScansByOwnerByName(String owner, String name,) async {
    final response = await patchAiScansByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a session
  ///
  /// Update one session. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> patchAiSigninSessionsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/signin-sessions/{owner}/{name}'
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

  /// Update a session
  ///
  /// Update one session. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> patchAiSigninSessionsByOwnerByName(String owner, String name,) async {
    final response = await patchAiSigninSessionsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a store
  ///
  /// Update one store. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> patchAiStoresByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/stores/{owner}/{name}'
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

  /// Update a store
  ///
  /// Update one store. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> patchAiStoresByOwnerByName(String owner, String name,) async {
    final response = await patchAiStoresByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a task
  ///
  /// Update one task. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> patchAiTasksByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/tasks/{owner}/{name}'
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

  /// Update a task
  ///
  /// Update one task. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> patchAiTasksByOwnerByName(String owner, String name,) async {
    final response = await patchAiTasksByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a template
  ///
  /// Update one template. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> patchAiTemplatesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/templates/{owner}/{name}'
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

  /// Update a template
  ///
  /// Update one template. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> patchAiTemplatesByOwnerByName(String owner, String name,) async {
    final response = await patchAiTemplatesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Training Contribution
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> patchAiTrainingContributionWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/training-contribution';

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

  /// Training Contribution
  Future<void> patchAiTrainingContribution() async {
    final response = await patchAiTrainingContributionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a tree-file
  ///
  /// Update one tree-file. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> patchAiTreeFilesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/tree-files/{owner}/{name}'
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

  /// Update a tree-file
  ///
  /// Update one tree-file. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> patchAiTreeFilesByOwnerByName(String owner, String name,) async {
    final response = await patchAiTreeFilesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a vector
  ///
  /// Update one vector. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> patchAiVectorsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/vectors/{owner}/{name}'
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

  /// Update a vector
  ///
  /// Update one vector. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> patchAiVectorsByOwnerByName(String owner, String name,) async {
    final response = await patchAiVectorsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a video
  ///
  /// Update one video. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> patchAiVideosByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/videos/{owner}/{name}'
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

  /// Update a video
  ///
  /// Update one video. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> patchAiVideosByOwnerByName(String owner, String name,) async {
    final response = await patchAiVideosByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a workflow
  ///
  /// Update one workflow. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> patchAiWorkflowsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/workflows/{owner}/{name}'
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

  /// Update a workflow
  ///
  /// Update one workflow. PATCH and PUT reach the same handler, which has always taken a whole object.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> patchAiWorkflowsByOwnerByName(String owner, String name,) async {
    final response = await patchAiWorkflowsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a article
  ///
  /// Create one article.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiArticlesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/articles';

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

  /// Create a article
  ///
  /// Create one article.
  Future<void> postAiArticles() async {
    final response = await postAiArticlesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a asset
  ///
  /// Create one asset.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiAssetsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/assets';

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

  /// Create a asset
  ///
  /// Create one asset.
  Future<void> postAiAssets() async {
    final response = await postAiAssetsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Scan (asset)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> postAiAssetsByOwnerByNameScanWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/assets/{owner}/{name}/scan'
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Scan (asset)
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> postAiAssetsByOwnerByNameScan(String owner, String name,) async {
    final response = await postAiAssetsByOwnerByNameScanWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Scan (asset)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiAssetsScanWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/assets/scan';

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

  /// Scan (asset)
  Future<void> postAiAssetsScan() async {
    final response = await postAiAssetsScanWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a chat
  ///
  /// Create one chat.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiChatsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/chats';

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

  /// Create a chat
  ///
  /// Create one chat.
  Future<void> postAiChats() async {
    final response = await postAiChatsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Connects (or reconnects) a third-party AI account for the org by sealing the supplied key into KMS and upserting the org's provider row.
  ///
  /// Connects (or reconnects) a third-party AI account for the org by sealing the supplied key into KMS and upserting the org's provider row. The raw key is sealed BEFORE the row is built and is never persisted or echoed.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiConnectionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/connections';

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

  /// Connects (or reconnects) a third-party AI account for the org by sealing the supplied key into KMS and upserting the org's provider row.
  ///
  /// Connects (or reconnects) a third-party AI account for the org by sealing the supplied key into KMS and upserting the org's provider row. The raw key is sealed BEFORE the row is built and is never persisted or echoed.
  Future<void> postAiConnections() async {
    final response = await postAiConnectionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Disconnects a third-party AI account: it deactivates the org's row so completion resolution falls back to the global Hanzo account (no BYO), and best-effort tombstones the sealed secret.
  ///
  /// Disconnects a third-party AI account: it deactivates the org's row so completion resolution falls back to the global Hanzo account (no BYO), and best-effort tombstones the sealed secret. Idempotent.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  Future<Response> postAiConnectionsByProviderWithHttpInfo(String provider,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/connections/{provider}'
      .replaceAll('{provider}', provider);

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

  /// Disconnects a third-party AI account: it deactivates the org's row so completion resolution falls back to the global Hanzo account (no BYO), and best-effort tombstones the sealed secret.
  ///
  /// Disconnects a third-party AI account: it deactivates the org's row so completion resolution falls back to the global Hanzo account (no BYO), and best-effort tombstones the sealed secret. Idempotent.
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  Future<void> postAiConnectionsByProvider(String provider,) async {
    final response = await postAiConnectionsByProviderWithHttpInfo(provider,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a application
  ///
  /// Create one application.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiDeploymentsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/deployments';

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

  /// Create a application
  ///
  /// Create one application.
  Future<void> postAiDeployments() async {
    final response = await postAiDeploymentsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deploy (application)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> postAiDeploymentsByOwnerByNameDeployWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/deployments/{owner}/{name}/deploy'
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Deploy (application)
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> postAiDeploymentsByOwnerByNameDeploy(String owner, String name,) async {
    final response = await postAiDeploymentsByOwnerByNameDeployWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Undeploy (application)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> postAiDeploymentsByOwnerByNameUndeployWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/deployments/{owner}/{name}/undeploy'
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Undeploy (application)
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> postAiDeploymentsByOwnerByNameUndeploy(String owner, String name,) async {
    final response = await postAiDeploymentsByOwnerByNameUndeployWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Attaches a per-request outcome reward to the routing decision that served request_id — the enso training loop's quality signal.
  ///
  /// Attaches a per-request outcome reward to the routing decision that served request_id — the enso training loop's quality signal. Org-scoped via the same session-OR-Bearer principal the usage read uses (RequirePrincipal): the reward lands only on the caller's OWN org's event, so a request_id from another org (or unknown) is a 404 — cross-org writes are impossible and unknown ids are indistinguishable from foreign ones. Idempotent: a repeat overwrites. The body carries NO prompt text — only {request_id, reward|rating}.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiFeedbackWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/feedback';

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

  /// Attaches a per-request outcome reward to the routing decision that served request_id — the enso training loop's quality signal.
  ///
  /// Attaches a per-request outcome reward to the routing decision that served request_id — the enso training loop's quality signal. Org-scoped via the same session-OR-Bearer principal the usage read uses (RequirePrincipal): the reward lands only on the caller's OWN org's event, so a request_id from another org (or unknown) is a 404 — cross-org writes are impossible and unknown ids are indistinguishable from foreign ones. Idempotent: a repeat overwrites. The body carries NO prompt text — only {request_id, reward|rating}.
  Future<void> postAiFeedback() async {
    final response = await postAiFeedbackWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a file
  ///
  /// Create one file.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiFilesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/files';

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

  /// Create a file
  ///
  /// Create one file.
  Future<void> postAiFiles() async {
    final response = await postAiFilesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Activate (file)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiFilesActivateWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/files/activate';

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

  /// Activate (file)
  Future<void> postAiFilesActivate() async {
    final response = await postAiFilesActivateWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Vectors (file)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> postAiFilesByOwnerByNameVectorsWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/files/{owner}/{name}/vectors'
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Vectors (file)
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> postAiFilesByOwnerByNameVectors(String owner, String name,) async {
    final response = await postAiFilesByOwnerByNameVectorsWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Upload (file)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiFilesUploadWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/files/upload';

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

  /// Upload (file)
  Future<void> postAiFilesUpload() async {
    final response = await postAiFilesUploadWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deletes the TrainJob CR, meters the GPU-hours used so far, and marks the job cancelled.
  ///
  /// Deletes the TrainJob CR, meters the GPU-hours used so far, and marks the job cancelled. ?id= or ?name=
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiFinetuneCancelWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/finetune/cancel';

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

  /// Deletes the TrainJob CR, meters the GPU-hours used so far, and marks the job cancelled.
  ///
  /// Deletes the TrainJob CR, meters the GPU-hours used so far, and marks the job cancelled. ?id= or ?name=
  Future<void> postAiFinetuneCancel() async {
    final response = await postAiFinetuneCancelWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Serves a completed job's checkpoints and registers the result as a routable model on api.hanzo.ai.
  ///
  /// Serves a completed job's checkpoints and registers the result as a routable model on api.hanzo.ai. ?id= or ?name=
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiFinetuneDeployWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/finetune/deploy';

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

  /// Serves a completed job's checkpoints and registers the result as a routable model on api.hanzo.ai.
  ///
  /// Serves a completed job's checkpoints and registers the result as a routable model on api.hanzo.ai. ?id= or ?name=
  Future<void> postAiFinetuneDeploy() async {
    final response = await postAiFinetuneDeployWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Validates the request, resolves efficient defaults, persists the job, and submits a real TrainJob CR.
  ///
  /// Validates the request, resolves efficient defaults, persists the job, and submits a real TrainJob CR. A submit failure (e.g. no cluster wired) is surfaced honestly: the job is saved with status \"failed\" + the reason, never faked.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiFinetuneJobsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/finetune/jobs';

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

  /// Validates the request, resolves efficient defaults, persists the job, and submits a real TrainJob CR.
  ///
  /// Validates the request, resolves efficient defaults, persists the job, and submits a real TrainJob CR. A submit failure (e.g. no cluster wired) is surfaced honestly: the job is saved with status \"failed\" + the reason, never faked.
  Future<void> postAiFinetuneJobs() async {
    final response = await postAiFinetuneJobsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a form
  ///
  /// Create one form.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiFormsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/forms';

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

  /// Create a form
  ///
  /// Create one form.
  Future<void> postAiForms() async {
    final response = await postAiFormsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a graph
  ///
  /// Create one graph.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiGraphsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/graphs';

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

  /// Create a graph
  ///
  /// Create one graph.
  Future<void> postAiGraphs() async {
    final response = await postAiGraphsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete one of the authenticated user's memories
  ///
  /// Delete one of the authenticated user's memories
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiMemoryDeleteWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/memory/delete';

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

  /// Delete one of the authenticated user's memories
  ///
  /// Delete one of the authenticated user's memories
  Future<void> postAiMemoryDelete() async {
    final response = await postAiMemoryDeleteWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Store a memory for the authenticated user
  ///
  /// Store a memory for the authenticated user
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiMemoryRememberWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/memory/remember';

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

  /// Store a memory for the authenticated user
  ///
  /// Store a memory for the authenticated user
  Future<void> postAiMemoryRemember() async {
    final response = await postAiMemoryRememberWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update one of the authenticated user's memories
  ///
  /// Update one of the authenticated user's memories
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiMemoryUpdateWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/memory/update';

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

  /// Update one of the authenticated user's memories
  ///
  /// Update one of the authenticated user's memories
  Future<void> postAiMemoryUpdate() async {
    final response = await postAiMemoryUpdateWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a message
  ///
  /// Create one message.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiMessagesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/messages';

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

  /// Create a message
  ///
  /// Create one message.
  Future<void> postAiMessages() async {
    final response = await postAiMessagesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a node
  ///
  /// Create one node.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiNodesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/nodes';

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

  /// Create a node
  ///
  /// Create one node.
  Future<void> postAiNodes() async {
    final response = await postAiNodesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Tunnel (node)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> postAiNodesByOwnerByNameTunnelWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/nodes/{owner}/{name}/tunnel'
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Tunnel (node)
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> postAiNodesByOwnerByNameTunnel(String owner, String name,) async {
    final response = await postAiNodesByOwnerByNameTunnelWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiOrgSettingsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/org/settings';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> postAiOrgSettings() async {
    final response = await postAiOrgSettingsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiOrgSettingsListWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/org/settings/list';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> postAiOrgSettingsList() async {
    final response = await postAiOrgSettingsListWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a provider
  ///
  /// Create one provider.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiProvidersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/providers';

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

  /// Create a provider
  ///
  /// Create one provider.
  Future<void> postAiProviders() async {
    final response = await postAiProvidersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Mcp Tools (provider)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiProvidersMcpToolsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/providers/mcp-tools';

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

  /// Mcp Tools (provider)
  Future<void> postAiProvidersMcpTools() async {
    final response = await postAiProvidersMcpToolsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete all chunks of one or more uploaded files (by file_id) from the owner's Search+Vector index.
  ///
  /// Delete all chunks of one or more uploaded files (by file_id) from the owner's Search+Vector index. Consolidates the retired chat-rag-api DELETE /documents.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiRagDeleteWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/rag/delete';

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

  /// Delete all chunks of one or more uploaded files (by file_id) from the owner's Search+Vector index.
  ///
  /// Delete all chunks of one or more uploaded files (by file_id) from the owner's Search+Vector index. Consolidates the retired chat-rag-api DELETE /documents.
  Future<void> postAiRagDelete() async {
    final response = await postAiRagDeleteWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Parse, chunk, and embed one uploaded file under its file_id into the unified Search+Vector index, scoped to the authenticated owner.
  ///
  /// Parse, chunk, and embed one uploaded file under its file_id into the unified Search+Vector index, scoped to the authenticated owner. Provide inline `content` or a `url` to fetch+parse (PDF/CSV/XLSX/PPTX/…). Re-embedding the same file_id replaces its chunks. Consolidates the retired chat-rag-api POST /embed and /local/embed.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiRagEmbedWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/rag/embed';

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

  /// Parse, chunk, and embed one uploaded file under its file_id into the unified Search+Vector index, scoped to the authenticated owner.
  ///
  /// Parse, chunk, and embed one uploaded file under its file_id into the unified Search+Vector index, scoped to the authenticated owner. Provide inline `content` or a `url` to fetch+parse (PDF/CSV/XLSX/PPTX/…). Re-embedding the same file_id replaces its chunks. Consolidates the retired chat-rag-api POST /embed and /local/embed.
  Future<void> postAiRagEmbed() async {
    final response = await postAiRagEmbedWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Unified RAG ingest: parse + chunk + embed documents and pipe them to BOTH Hanzo Vector (semantic) AND Hanzo Search (keyword) under the tenant index {owner}-{store}-docs — the same index /v1/chat retrieval reads.
  ///
  /// Unified RAG ingest: parse + chunk + embed documents and pipe them to BOTH Hanzo Vector (semantic) AND Hanzo Search (keyword) under the tenant index {owner}-{store}-docs — the same index /v1/chat retrieval reads. The source is pluggable: \"upload\" (inline files/documents), \"github\" (index a repo), \"crawl\" (web), or \"s3\" (the store's object-storage space). The owner is bound to the authenticated principal; the client-supplied owner is never trusted.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiRagIngestWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/rag/ingest';

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

  /// Unified RAG ingest: parse + chunk + embed documents and pipe them to BOTH Hanzo Vector (semantic) AND Hanzo Search (keyword) under the tenant index {owner}-{store}-docs — the same index /v1/chat retrieval reads.
  ///
  /// Unified RAG ingest: parse + chunk + embed documents and pipe them to BOTH Hanzo Vector (semantic) AND Hanzo Search (keyword) under the tenant index {owner}-{store}-docs — the same index /v1/chat retrieval reads. The source is pluggable: \"upload\" (inline files/documents), \"github\" (index a repo), \"crawl\" (web), or \"s3\" (the store's object-storage space). The owner is bound to the authenticated principal; the client-supplied owner is never trusted.
  Future<void> postAiRagIngest() async {
    final response = await postAiRagIngestWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve the top-K chunks relevant to a query, scoped to a single uploaded file (`file_id`).
  ///
  /// Retrieve the top-K chunks relevant to a query, scoped to a single uploaded file (`file_id`). Hybrid keyword+vector retrieval over the same index. Consolidates the retired chat-rag-api POST /query.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiRagQueryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/rag/query';

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

  /// Retrieve the top-K chunks relevant to a query, scoped to a single uploaded file (`file_id`).
  ///
  /// Retrieve the top-K chunks relevant to a query, scoped to a single uploaded file (`file_id`). Hybrid keyword+vector retrieval over the same index. Consolidates the retired chat-rag-api POST /query.
  Future<void> postAiRagQuery() async {
    final response = await postAiRagQueryWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve the top-K chunks relevant to a query, scoped to a SET of uploaded files (`file_ids`).
  ///
  /// Retrieve the top-K chunks relevant to a query, scoped to a SET of uploaded files (`file_ids`). Consolidates the retired chat-rag-api POST /query_multiple. Shares one retrieval path with /rag/query.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiRagQueryMultipleWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/rag/query-multiple';

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

  /// Retrieve the top-K chunks relevant to a query, scoped to a SET of uploaded files (`file_ids`).
  ///
  /// Retrieve the top-K chunks relevant to a query, scoped to a SET of uploaded files (`file_ids`). Consolidates the retired chat-rag-api POST /query_multiple. Shares one retrieval path with /rag/query.
  Future<void> postAiRagQueryMultiple() async {
    final response = await postAiRagQueryMultipleWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a record
  ///
  /// Create one record.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiRecordsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/records';

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

  /// Create a record
  ///
  /// Create one record.
  Future<void> postAiRecords() async {
    final response = await postAiRecordsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Batch (record)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiRecordsBatchWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/records/batch';

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

  /// Batch (record)
  Future<void> postAiRecordsBatch() async {
    final response = await postAiRecordsBatchWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Commit (record)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiRecordsCommitWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/records/commit';

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

  /// Commit (record)
  Future<void> postAiRecordsCommit() async {
    final response = await postAiRecordsCommitWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Commit Second (record)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiRecordsCommitSecondWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/records/commit-second';

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

  /// Commit Second (record)
  Future<void> postAiRecordsCommitSecond() async {
    final response = await postAiRecordsCommitSecondWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a connection
  ///
  /// Create one connection.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiRemoteConnectionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/remote-connections';

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

  /// Create a connection
  ///
  /// Create one connection.
  Future<void> postAiRemoteConnections() async {
    final response = await postAiRemoteConnectionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Start (connection)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> postAiRemoteConnectionsByOwnerByNameStartWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/remote-connections/{owner}/{name}/start'
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Start (connection)
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> postAiRemoteConnectionsByOwnerByNameStart(String owner, String name,) async {
    final response = await postAiRemoteConnectionsByOwnerByNameStartWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Stop (connection)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> postAiRemoteConnectionsByOwnerByNameStopWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/remote-connections/{owner}/{name}/stop'
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Stop (connection)
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> postAiRemoteConnectionsByOwnerByNameStop(String owner, String name,) async {
    final response = await postAiRemoteConnectionsByOwnerByNameStopWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiRouterArtifactMetaWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/artifact-meta';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> postAiRouterArtifactMeta() async {
    final response = await postAiRouterArtifactMetaWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiRouterDefaultsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/defaults';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> postAiRouterDefaults() async {
    final response = await postAiRouterDefaultsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiRouterLedgerWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/ledger';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> postAiRouterLedger() async {
    final response = await postAiRouterLedgerWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiRouterPolicyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/policy';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> postAiRouterPolicy() async {
    final response = await postAiRouterPolicyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiRouterRewardsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/rewards';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> postAiRouterRewards() async {
    final response = await postAiRouterRewardsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a model-route
  ///
  /// Create one model-route.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiRoutesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/routes';

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

  /// Create a model-route
  ///
  /// Create one model-route.
  Future<void> postAiRoutes() async {
    final response = await postAiRoutesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a scale
  ///
  /// Create one scale.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiScalesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/scales';

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

  /// Create a scale
  ///
  /// Create one scale.
  Future<void> postAiScales() async {
    final response = await postAiScalesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a scan
  ///
  /// Create one scan.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiScansWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/scans';

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

  /// Create a scan
  ///
  /// Create one scan.
  Future<void> postAiScans() async {
    final response = await postAiScansWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Signin
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiSigninWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/signin';

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

  /// Signin
  Future<void> postAiSignin() async {
    final response = await postAiSigninWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a session
  ///
  /// Create one session.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiSigninSessionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/signin-sessions';

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

  /// Create a session
  ///
  /// Create one session.
  Future<void> postAiSigninSessions() async {
    final response = await postAiSigninSessionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Signout
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiSignoutWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/signout';

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

  /// Signout
  Future<void> postAiSignout() async {
    final response = await postAiSignoutWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a store
  ///
  /// Create one store.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiStoresWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/stores';

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

  /// Create a store
  ///
  /// Create one store.
  Future<void> postAiStores() async {
    final response = await postAiStoresWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Vectors (store)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> postAiStoresByOwnerByNameVectorsWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/stores/{owner}/{name}/vectors'
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Vectors (store)
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> postAiStoresByOwnerByNameVectors(String owner, String name,) async {
    final response = await postAiStoresByOwnerByNameVectorsWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a task
  ///
  /// Create one task.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiTasksWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/tasks';

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

  /// Create a task
  ///
  /// Create one task.
  Future<void> postAiTasks() async {
    final response = await postAiTasksWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Analyze (task)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> postAiTasksByOwnerByNameAnalyzeWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/tasks/{owner}/{name}/analyze'
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Analyze (task)
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> postAiTasksByOwnerByNameAnalyze(String owner, String name,) async {
    final response = await postAiTasksByOwnerByNameAnalyzeWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Document (task)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> postAiTasksByOwnerByNameDocumentWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/tasks/{owner}/{name}/document'
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Document (task)
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> postAiTasksByOwnerByNameDocument(String owner, String name,) async {
    final response = await postAiTasksByOwnerByNameDocumentWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a template
  ///
  /// Create one template.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiTemplatesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/templates';

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

  /// Create a template
  ///
  /// Create one template.
  Future<void> postAiTemplates() async {
    final response = await postAiTemplatesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a tree-file
  ///
  /// Create one tree-file.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiTreeFilesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/tree-files';

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

  /// Create a tree-file
  ///
  /// Create one tree-file.
  Future<void> postAiTreeFiles() async {
    final response = await postAiTreeFilesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a vector
  ///
  /// Create one vector.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiVectorsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/vectors';

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

  /// Create a vector
  ///
  /// Create one vector.
  Future<void> postAiVectors() async {
    final response = await postAiVectorsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a video
  ///
  /// Create one video.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiVideosWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/videos';

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

  /// Create a video
  ///
  /// Create one video.
  Future<void> postAiVideos() async {
    final response = await postAiVideosWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Upload (video)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiVideosUploadWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/videos/upload';

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

  /// Upload (video)
  Future<void> postAiVideosUpload() async {
    final response = await postAiVideosUploadWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a workflow
  ///
  /// Create one workflow.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAiWorkflowsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/workflows';

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

  /// Create a workflow
  ///
  /// Create one workflow.
  Future<void> postAiWorkflows() async {
    final response = await postAiWorkflowsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

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
  /// The OpenAI-compatible TTS endpoint (POST /v1/audio/speech). It authenticates the caller, resolves `model` to its TTS provider (the SAME model-route resolution the chat/images/video endpoints use — so a BYO node registered as a TTS provider works transparently), synthesizes the audio, and streams the bytes back. This is the ONE way to synthesize speech: OpenAI-shaped, with no store or message coupling, so a caller needs no chat to speak.
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
  /// The OpenAI-compatible TTS endpoint (POST /v1/audio/speech). It authenticates the caller, resolves `model` to its TTS provider (the SAME model-route resolution the chat/images/video endpoints use — so a BYO node registered as a TTS provider works transparently), synthesizes the audio, and streams the bytes back. This is the ONE way to synthesize speech: OpenAI-shaped, with no store or message coupling, so a caller needs no chat to speak.
  Future<void> postAudioSpeech() async {
    final response = await postAudioSpeechWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The OpenAI-compatible STT endpoint (POST /v1/audio/transcriptions, multipart: file + model [+ language + response_format]).
  ///
  /// The OpenAI-compatible STT endpoint (POST /v1/audio/transcriptions, multipart: file + model [+ language + response_format]). It mirrors AudioSpeech exactly: authenticate the caller, resolve `model` to its STT provider through the SAME model-route resolution (so the in-cluster speech service — or any BYO node registered as an STT provider — works transparently), transcribe, and return the OpenAI body. This is the ONE way to transcribe: OpenAI-shaped, with no store coupling, so a caller needs no chat to be heard.
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
  /// The OpenAI-compatible STT endpoint (POST /v1/audio/transcriptions, multipart: file + model [+ language + response_format]). It mirrors AudioSpeech exactly: authenticate the caller, resolve `model` to its STT provider through the SAME model-route resolution (so the in-cluster speech service — or any BYO node registered as an STT provider — works transparently), transcribe, and return the OpenAI body. This is the ONE way to transcribe: OpenAI-shaped, with no store coupling, so a caller needs no chat to be heard.
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

  /// Implements the OpenAI-compatible chat completions API
  ///
  /// Implements the OpenAI-compatible chat completions API
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postChatWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/chat';

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

  /// Implements the OpenAI-compatible chat completions API
  ///
  /// Implements the OpenAI-compatible chat completions API
  Future<void> postChat() async {
    final response = await postChatWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Implements the OpenAI-compatible chat completions API
  ///
  /// Implements the OpenAI-compatible chat completions API
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postChatCompletionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/chat/completions';

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

  /// Implements the OpenAI-compatible chat completions API
  ///
  /// Implements the OpenAI-compatible chat completions API
  Future<void> postChatCompletions() async {
    final response = await postChatCompletionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Serves one completion to a caller with no account.
  ///
  /// Serves one completion to a caller with no account.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postChatPublicWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/chat/public';

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

  /// Serves one completion to a caller with no account.
  ///
  /// Serves one completion to a caller with no account.
  Future<void> postChatPublic() async {
    final response = await postChatPublicWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Implements the OpenAI-compatible chat completions API
  ///
  /// Implements the OpenAI-compatible chat completions API
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCompletionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/completions';

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

  /// Implements the OpenAI-compatible chat completions API
  ///
  /// Implements the OpenAI-compatible chat completions API
  Future<void> postCompletions() async {
    final response = await postCompletionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Implements POST /v1/embeddings (OpenAI-compatible).
  ///
  /// Implements POST /v1/embeddings (OpenAI-compatible).  Body: {\"model\": \"...\", \"input\": \"...\"|[\"...\", ...], \"encoding_format\"?, \"dimensions\"?} It authenticates the caller, resolves the model to its upstream provider via the shared routing table, rewrites the user-facing model name to the upstream id, and proxies the request to the provider's /embeddings endpoint verbatim.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postEmbeddingsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/embeddings';

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

  /// Implements POST /v1/embeddings (OpenAI-compatible).
  ///
  /// Implements POST /v1/embeddings (OpenAI-compatible).  Body: {\"model\": \"...\", \"input\": \"...\"|[\"...\", ...], \"encoding_format\"?, \"dimensions\"?} It authenticates the caller, resolves the model to its upstream provider via the shared routing table, rewrites the user-facing model name to the upstream id, and proxies the request to the provider's /embeddings endpoint verbatim.
  Future<void> postEmbeddings() async {
    final response = await postEmbeddingsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Implements POST /v1/images/generations (OpenAI-compatible).
  ///
  /// Implements POST /v1/images/generations (OpenAI-compatible).  Body: {\"model\": \"...\", \"prompt\": \"...\", \"n\"?: int, \"size\"?: \"1024x1024\",   \"response_format\"?: \"url\"|\"b64_json\"}  It authenticates the caller, resolves the model to its upstream provider via the shared routing table (zen3-image* → do-ai fal diffusion), reserves the per-image budget, generates the image(s) through the do-ai async image client, records usage for billing, and returns the OpenAI images response.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postImagesGenerationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/images/generations';

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

  /// Implements POST /v1/images/generations (OpenAI-compatible).
  ///
  /// Implements POST /v1/images/generations (OpenAI-compatible).  Body: {\"model\": \"...\", \"prompt\": \"...\", \"n\"?: int, \"size\"?: \"1024x1024\",   \"response_format\"?: \"url\"|\"b64_json\"}  It authenticates the caller, resolves the model to its upstream provider via the shared routing table (zen3-image* → do-ai fal diffusion), reserves the per-image budget, generates the image(s) through the do-ai async image client, records usage for billing, and returns the OpenAI images response.
  Future<void> postImagesGenerations() async {
    final response = await postImagesGenerationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Implements the Anthropic Messages API.
  ///
  /// Implements the Anthropic Messages API.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postMessagesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/messages';

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

  /// Implements the Anthropic Messages API.
  ///
  /// Implements the Anthropic Messages API.
  Future<void> postMessages() async {
    final response = await postMessagesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Implements POST /v1/messages/count_tokens.
  ///
  /// Implements POST /v1/messages/count_tokens. Claude Code calls it before a request; it returns {\"input_tokens\": N} for the given model + messages + tools.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postMessagesCountTokensWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/messages/count_tokens';

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

  /// Implements POST /v1/messages/count_tokens.
  ///
  /// Implements POST /v1/messages/count_tokens. Claude Code calls it before a request; it returns {\"input_tokens\": N} for the given model + messages + tools.
  Future<void> postMessagesCountTokens() async {
    final response = await postMessagesCountTokensWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Records the caller's waitlist request for a gated model and answers their new standing.
  ///
  /// Records the caller's waitlist request for a gated model and answers their new standing. Authed, idempotent, and self-scoped: the row is keyed to the caller's own org and identity, never to a body-supplied owner.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] model (required):
  Future<Response> postModelsByModelAccessWithHttpInfo(String model,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/models/{model}/access'
      .replaceAll('{model}', model);

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

  /// Records the caller's waitlist request for a gated model and answers their new standing.
  ///
  /// Records the caller's waitlist request for a gated model and answers their new standing. Authed, idempotent, and self-scoped: the row is keyed to the caller's own org and identity, never to a body-supplied owner.
  ///
  /// Parameters:
  ///
  /// * [String] model (required):
  Future<void> postModelsByModelAccess(String model,) async {
    final response = await postModelsByModelAccessWithHttpInfo(model,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Implements POST /v1/rerank (Cohere/Jina-compatible).
  ///
  /// Implements POST /v1/rerank (Cohere/Jina-compatible).  Body: {\"model\": \"...\", \"query\": \"...\", \"documents\": [\"...\", ...]|[{\"text\":\"...\"}],   \"top_n\"?: int, \"return_documents\"?: bool}  Response: {\"object\":\"list\",\"model\":...,\"results\":[{\"index\",\"relevance_score\",\"document\"?}],\"usage\":{...}}  Backend selection is provider-driven (one endpoint, one contract):   - If the model routes to a native rerank provider (Jina/Cohere/Voyage) the     request is proxied to that provider's /rerank endpoint.   - Otherwise scores are computed as a real bi-encoder ranking: embed the     query and documents through the resolved embedding model and rank by     cosine similarity. No rerank-specific key required.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postRerankWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/rerank';

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

  /// Implements POST /v1/rerank (Cohere/Jina-compatible).
  ///
  /// Implements POST /v1/rerank (Cohere/Jina-compatible).  Body: {\"model\": \"...\", \"query\": \"...\", \"documents\": [\"...\", ...]|[{\"text\":\"...\"}],   \"top_n\"?: int, \"return_documents\"?: bool}  Response: {\"object\":\"list\",\"model\":...,\"results\":[{\"index\",\"relevance_score\",\"document\"?}],\"usage\":{...}}  Backend selection is provider-driven (one endpoint, one contract):   - If the model routes to a native rerank provider (Jina/Cohere/Voyage) the     request is proxied to that provider's /rerank endpoint.   - Otherwise scores are computed as a real bi-encoder ranking: embed the     query and documents through the resolved embedding model and rank by     cosine similarity. No rerank-specific key required.
  Future<void> postRerank() async {
    final response = await postRerankWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Implements POST /v1/responses.
  ///
  /// Implements POST /v1/responses. The converted request is completed by the chat path, which is handed a sink saying where the answer goes: a stream is translated as it is produced, a whole body is translated entire.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postResponsesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/responses';

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

  /// Implements POST /v1/responses.
  ///
  /// Implements POST /v1/responses. The converted request is completed by the chat path, which is handed a sink saying where the answer goes: a stream is translated as it is produced, a whole body is translated entire.
  Future<void> postResponses() async {
    final response = await postResponsesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Implements POST /v1/videos/generations — the ASYNC create.
  ///
  /// Implements POST /v1/videos/generations — the ASYNC create.  Body: {\"model\": \"...\", \"prompt\": \"...\", \"size\"?: \"1280x720\", \"seconds\"?: int}  It authenticates the caller, resolves the model to its upstream provider via the shared routing table (zen3-video* / wan2-2-t2v-a14b → the spark-video backend), reserves the per-video budget (the balance gate), creates ONE upstream job, registers it in the in-pod store, and returns the OpenAI-shaped video object with status \"queued\" IMMEDIATELY. The client then polls GET /v1/videos/{id} and downloads GET /v1/videos/{id}/content. Nothing is billed here — the debit lands on completion.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postVideosGenerationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/videos/generations';

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

  /// Implements POST /v1/videos/generations — the ASYNC create.
  ///
  /// Implements POST /v1/videos/generations — the ASYNC create.  Body: {\"model\": \"...\", \"prompt\": \"...\", \"size\"?: \"1280x720\", \"seconds\"?: int}  It authenticates the caller, resolves the model to its upstream provider via the shared routing table (zen3-video* / wan2-2-t2v-a14b → the spark-video backend), reserves the per-video budget (the balance gate), creates ONE upstream job, registers it in the in-pod store, and returns the OpenAI-shaped video object with status \"queued\" IMMEDIATELY. The client then polls GET /v1/videos/{id} and downloads GET /v1/videos/{id}/content. Nothing is billed here — the debit lands on completion.
  Future<void> postVideosGenerations() async {
    final response = await postVideosGenerationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a article
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> putAiArticlesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/articles/{owner}/{name}'
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

  /// Replace a article
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> putAiArticlesByOwnerByName(String owner, String name,) async {
    final response = await putAiArticlesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a asset
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> putAiAssetsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/assets/{owner}/{name}'
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

  /// Replace a asset
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> putAiAssetsByOwnerByName(String owner, String name,) async {
    final response = await putAiAssetsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a chat
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> putAiChatsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/chats/{owner}/{name}'
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

  /// Replace a chat
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> putAiChatsByOwnerByName(String owner, String name,) async {
    final response = await putAiChatsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a application
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> putAiDeploymentsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/deployments/{owner}/{name}'
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

  /// Replace a application
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> putAiDeploymentsByOwnerByName(String owner, String name,) async {
    final response = await putAiDeploymentsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a file
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> putAiFilesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/files/{owner}/{name}'
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

  /// Replace a file
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> putAiFilesByOwnerByName(String owner, String name,) async {
    final response = await putAiFilesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a form
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> putAiFormsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/forms/{owner}/{name}'
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

  /// Replace a form
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> putAiFormsByOwnerByName(String owner, String name,) async {
    final response = await putAiFormsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a graph
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> putAiGraphsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/graphs/{owner}/{name}'
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

  /// Replace a graph
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> putAiGraphsByOwnerByName(String owner, String name,) async {
    final response = await putAiGraphsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a message
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> putAiMessagesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/messages/{owner}/{name}'
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

  /// Replace a message
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> putAiMessagesByOwnerByName(String owner, String name,) async {
    final response = await putAiMessagesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a node
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> putAiNodesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/nodes/{owner}/{name}'
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

  /// Replace a node
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> putAiNodesByOwnerByName(String owner, String name,) async {
    final response = await putAiNodesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> putAiOrgSettingsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/org/settings';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> putAiOrgSettings() async {
    final response = await putAiOrgSettingsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> putAiOrgSettingsListWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/org/settings/list';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> putAiOrgSettingsList() async {
    final response = await putAiOrgSettingsListWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Preferences
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> putAiPreferencesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/preferences';

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

  /// Preferences
  Future<void> putAiPreferences() async {
    final response = await putAiPreferencesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a provider
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> putAiProvidersByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/providers/{owner}/{name}'
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

  /// Replace a provider
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> putAiProvidersByOwnerByName(String owner, String name,) async {
    final response = await putAiProvidersByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a record
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> putAiRecordsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/records/{owner}/{name}'
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

  /// Replace a record
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> putAiRecordsByOwnerByName(String owner, String name,) async {
    final response = await putAiRecordsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a connection
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> putAiRemoteConnectionsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/remote-connections/{owner}/{name}'
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

  /// Replace a connection
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> putAiRemoteConnectionsByOwnerByName(String owner, String name,) async {
    final response = await putAiRemoteConnectionsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> putAiRouterArtifactMetaWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/artifact-meta';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> putAiRouterArtifactMeta() async {
    final response = await putAiRouterArtifactMetaWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> putAiRouterDefaultsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/defaults';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> putAiRouterDefaults() async {
    final response = await putAiRouterDefaultsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> putAiRouterLedgerWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/ledger';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> putAiRouterLedger() async {
    final response = await putAiRouterLedgerWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> putAiRouterPolicyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/policy';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> putAiRouterPolicy() async {
    final response = await putAiRouterPolicyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> putAiRouterRewardsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/router/rewards';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/ai/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/ai/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/ai/router/policy splits GET (read) vs PUT (write), /v1/ai/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> putAiRouterRewards() async {
    final response = await putAiRouterRewardsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a model-route
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> putAiRoutesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/routes/{owner}/{name}'
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

  /// Replace a model-route
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> putAiRoutesByOwnerByName(String owner, String name,) async {
    final response = await putAiRoutesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a scale
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> putAiScalesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/scales/{owner}/{name}'
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

  /// Replace a scale
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> putAiScalesByOwnerByName(String owner, String name,) async {
    final response = await putAiScalesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a scan
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> putAiScansByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/scans/{owner}/{name}'
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

  /// Replace a scan
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> putAiScansByOwnerByName(String owner, String name,) async {
    final response = await putAiScansByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a session
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> putAiSigninSessionsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/signin-sessions/{owner}/{name}'
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

  /// Replace a session
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> putAiSigninSessionsByOwnerByName(String owner, String name,) async {
    final response = await putAiSigninSessionsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a store
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> putAiStoresByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/stores/{owner}/{name}'
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

  /// Replace a store
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> putAiStoresByOwnerByName(String owner, String name,) async {
    final response = await putAiStoresByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a task
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> putAiTasksByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/tasks/{owner}/{name}'
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

  /// Replace a task
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> putAiTasksByOwnerByName(String owner, String name,) async {
    final response = await putAiTasksByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a template
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> putAiTemplatesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/templates/{owner}/{name}'
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

  /// Replace a template
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> putAiTemplatesByOwnerByName(String owner, String name,) async {
    final response = await putAiTemplatesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Training Contribution
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> putAiTrainingContributionWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/training-contribution';

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

  /// Training Contribution
  Future<void> putAiTrainingContribution() async {
    final response = await putAiTrainingContributionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a tree-file
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> putAiTreeFilesByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/tree-files/{owner}/{name}'
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

  /// Replace a tree-file
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> putAiTreeFilesByOwnerByName(String owner, String name,) async {
    final response = await putAiTreeFilesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a vector
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> putAiVectorsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/vectors/{owner}/{name}'
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

  /// Replace a vector
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> putAiVectorsByOwnerByName(String owner, String name,) async {
    final response = await putAiVectorsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a video
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> putAiVideosByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/videos/{owner}/{name}'
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

  /// Replace a video
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> putAiVideosByOwnerByName(String owner, String name,) async {
    final response = await putAiVideosByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a workflow
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<Response> putAiWorkflowsByOwnerByNameWithHttpInfo(String owner, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/workflows/{owner}/{name}'
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

  /// Replace a workflow
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] name (required):
  Future<void> putAiWorkflowsByOwnerByName(String owner, String name,) async {
    final response = await putAiWorkflowsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
