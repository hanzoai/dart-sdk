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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiArticles200Response?> deleteAiArticlesByOwnerByName(String owner, String name,) async {
    final response = await deleteAiArticlesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiArticles200Response',) as PostAiArticles200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiAssets200Response?> deleteAiAssetsByOwnerByName(String owner, String name,) async {
    final response = await deleteAiAssetsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiAssets200Response',) as PostAiAssets200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiChats200Response?> deleteAiChatsByOwnerByName(String owner, String name,) async {
    final response = await deleteAiChatsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiChats200Response',) as PostAiChats200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiDeployments200Response?> deleteAiDeploymentsByOwnerByName(String owner, String name,) async {
    final response = await deleteAiDeploymentsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiDeployments200Response',) as PostAiDeployments200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiFiles200Response?> deleteAiFilesByOwnerByName(String owner, String name,) async {
    final response = await deleteAiFilesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiFiles200Response',) as PostAiFiles200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiForms200Response?> deleteAiFormsByOwnerByName(String owner, String name,) async {
    final response = await deleteAiFormsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiForms200Response',) as PostAiForms200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiGraphs200Response?> deleteAiGraphsByOwnerByName(String owner, String name,) async {
    final response = await deleteAiGraphsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiGraphs200Response',) as PostAiGraphs200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiMessages200Response?> deleteAiMessagesByOwnerByName(String owner, String name,) async {
    final response = await deleteAiMessagesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiMessages200Response',) as PostAiMessages200Response;
    
    }
    return null;
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
  Future<Envelope?> deleteAiMessagesWelcome() async {
    final response = await deleteAiMessagesWelcomeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiNodes200Response?> deleteAiNodesByOwnerByName(String owner, String name,) async {
    final response = await deleteAiNodesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiNodes200Response',) as PostAiNodes200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiProviders200Response?> deleteAiProvidersByOwnerByName(String owner, String name,) async {
    final response = await deleteAiProvidersByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiProviders200Response',) as PostAiProviders200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiRecords200Response?> deleteAiRecordsByOwnerByName(String owner, String name,) async {
    final response = await deleteAiRecordsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiRecords200Response',) as PostAiRecords200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiRemoteConnections200Response?> deleteAiRemoteConnectionsByOwnerByName(String owner, String name,) async {
    final response = await deleteAiRemoteConnectionsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiRemoteConnections200Response',) as PostAiRemoteConnections200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiRoutes200Response?> deleteAiRoutesByOwnerByName(String owner, String name,) async {
    final response = await deleteAiRoutesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiRoutes200Response',) as PostAiRoutes200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiScales200Response?> deleteAiScalesByOwnerByName(String owner, String name,) async {
    final response = await deleteAiScalesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiScales200Response',) as PostAiScales200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiScans200Response?> deleteAiScansByOwnerByName(String owner, String name,) async {
    final response = await deleteAiScansByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiScans200Response',) as PostAiScans200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiSigninSessions200Response?> deleteAiSigninSessionsByOwnerByName(String owner, String name,) async {
    final response = await deleteAiSigninSessionsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiSigninSessions200Response',) as PostAiSigninSessions200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiStores200Response?> deleteAiStoresByOwnerByName(String owner, String name,) async {
    final response = await deleteAiStoresByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiStores200Response',) as PostAiStores200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiTasks200Response?> deleteAiTasksByOwnerByName(String owner, String name,) async {
    final response = await deleteAiTasksByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiTasks200Response',) as PostAiTasks200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiTemplates200Response?> deleteAiTemplatesByOwnerByName(String owner, String name,) async {
    final response = await deleteAiTemplatesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiTemplates200Response',) as PostAiTemplates200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiTreeFiles200Response?> deleteAiTreeFilesByOwnerByName(String owner, String name,) async {
    final response = await deleteAiTreeFilesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiTreeFiles200Response',) as PostAiTreeFiles200Response;
    
    }
    return null;
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
  Future<Envelope?> deleteAiVectorsAll() async {
    final response = await deleteAiVectorsAllWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiVectors200Response?> deleteAiVectorsByOwnerByName(String owner, String name,) async {
    final response = await deleteAiVectorsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiVectors200Response',) as PostAiVectors200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiVideos200Response?> deleteAiVideosByOwnerByName(String owner, String name,) async {
    final response = await deleteAiVideosByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiVideos200Response',) as PostAiVideos200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiWorkflows200Response?> deleteAiWorkflowsByOwnerByName(String owner, String name,) async {
    final response = await deleteAiWorkflowsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiWorkflows200Response',) as PostAiWorkflows200Response;
    
    }
    return null;
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
  Future<Envelope?> getAiAccount() async {
    final response = await getAiAccountWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  Future<GetAiActivities200Response?> getAiActivities() async {
    final response = await getAiActivitiesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiActivities200Response',) as GetAiActivities200Response;
    
    }
    return null;
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
  Future<Envelope?> getAiAnswer() async {
    final response = await getAiAnswerWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  Future<GetAiArticles200Response?> getAiArticles() async {
    final response = await getAiArticlesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiArticles200Response',) as GetAiArticles200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiArticles200Response?> getAiArticlesByOwnerByName(String owner, String name,) async {
    final response = await getAiArticlesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiArticles200Response',) as PostAiArticles200Response;
    
    }
    return null;
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
  Future<GetAiArticles200Response?> getAiArticlesGlobal() async {
    final response = await getAiArticlesGlobalWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiArticles200Response',) as GetAiArticles200Response;
    
    }
    return null;
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
  Future<GetAiAssets200Response?> getAiAssets() async {
    final response = await getAiAssetsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiAssets200Response',) as GetAiAssets200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiAssets200Response?> getAiAssetsByOwnerByName(String owner, String name,) async {
    final response = await getAiAssetsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiAssets200Response',) as PostAiAssets200Response;
    
    }
    return null;
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
  Future<GetAiChats200Response?> getAiChats() async {
    final response = await getAiChatsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiChats200Response',) as GetAiChats200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiChats200Response?> getAiChatsByOwnerByName(String owner, String name,) async {
    final response = await getAiChatsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiChats200Response',) as PostAiChats200Response;
    
    }
    return null;
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
  Future<GetAiChats200Response?> getAiChatsGlobal() async {
    final response = await getAiChatsGlobalWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiChats200Response',) as GetAiChats200Response;
    
    }
    return null;
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
  Future<Envelope?> getAiDashboardsAgents() async {
    final response = await getAiDashboardsAgentsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  Future<Envelope?> getAiDashboardsVm() async {
    final response = await getAiDashboardsVmWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  Future<GetAiDeployments200Response?> getAiDeployments() async {
    final response = await getAiDeploymentsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiDeployments200Response',) as GetAiDeployments200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiDeployments200Response?> getAiDeploymentsByOwnerByName(String owner, String name,) async {
    final response = await getAiDeploymentsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiDeployments200Response',) as PostAiDeployments200Response;
    
    }
    return null;
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
  Future<GetAiFiles200Response?> getAiFiles() async {
    final response = await getAiFilesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiFiles200Response',) as GetAiFiles200Response;
    
    }
    return null;
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
  Future<Envelope?> getAiFilesActive() async {
    final response = await getAiFilesActiveWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiFiles200Response?> getAiFilesByOwnerByName(String owner, String name,) async {
    final response = await getAiFilesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiFiles200Response',) as PostAiFiles200Response;
    
    }
    return null;
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
  Future<GetAiFiles200Response?> getAiFilesGlobal() async {
    final response = await getAiFilesGlobalWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiFiles200Response',) as GetAiFiles200Response;
    
    }
    return null;
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
  Future<GetAiForms200Response?> getAiForms() async {
    final response = await getAiFormsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiForms200Response',) as GetAiForms200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiForms200Response?> getAiFormsByOwnerByName(String owner, String name,) async {
    final response = await getAiFormsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiForms200Response',) as PostAiForms200Response;
    
    }
    return null;
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
  Future<Envelope?> getAiFormsData() async {
    final response = await getAiFormsDataWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  Future<GetAiForms200Response?> getAiFormsGlobal() async {
    final response = await getAiFormsGlobalWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiForms200Response',) as GetAiForms200Response;
    
    }
    return null;
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
  Future<GetAiGraphs200Response?> getAiGraphs() async {
    final response = await getAiGraphsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiGraphs200Response',) as GetAiGraphs200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiGraphs200Response?> getAiGraphsByOwnerByName(String owner, String name,) async {
    final response = await getAiGraphsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiGraphs200Response',) as PostAiGraphs200Response;
    
    }
    return null;
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
  Future<GetAiGraphs200Response?> getAiGraphsGlobal() async {
    final response = await getAiGraphsGlobalWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiGraphs200Response',) as GetAiGraphs200Response;
    
    }
    return null;
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
  Future<Envelope?> getAiK8sStatus() async {
    final response = await getAiK8sStatusWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  Future<GetAiMessages200Response?> getAiMessages() async {
    final response = await getAiMessagesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiMessages200Response',) as GetAiMessages200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiMessages200Response?> getAiMessagesByOwnerByName(String owner, String name,) async {
    final response = await getAiMessagesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiMessages200Response',) as PostAiMessages200Response;
    
    }
    return null;
  }

  /// Answer (message)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<Envelope?> getAiMessagesByOwnerByNameAnswer(String owner, String name,) async {
    final response = await getAiMessagesByOwnerByNameAnswerWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  Future<GetAiMessages200Response?> getAiMessagesGlobal() async {
    final response = await getAiMessagesGlobalWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiMessages200Response',) as GetAiMessages200Response;
    
    }
    return null;
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
  Future<GetAiNodes200Response?> getAiNodes() async {
    final response = await getAiNodesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiNodes200Response',) as GetAiNodes200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiNodes200Response?> getAiNodesByOwnerByName(String owner, String name,) async {
    final response = await getAiNodesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiNodes200Response',) as PostAiNodes200Response;
    
    }
    return null;
  }

  /// Tunnel (node)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<Envelope?> getAiNodesByOwnerByNameTunnel(String owner, String name,) async {
    final response = await getAiNodesByOwnerByNameTunnelWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  Future<Envelope?> getAiPrometheus() async {
    final response = await getAiPrometheusWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  Future<GetAiProviders200Response?> getAiProviders() async {
    final response = await getAiProvidersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiProviders200Response',) as GetAiProviders200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiProviders200Response?> getAiProvidersByOwnerByName(String owner, String name,) async {
    final response = await getAiProvidersByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiProviders200Response',) as PostAiProviders200Response;
    
    }
    return null;
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
  Future<GetAiProviders200Response?> getAiProvidersGlobal() async {
    final response = await getAiProvidersGlobalWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiProviders200Response',) as GetAiProviders200Response;
    
    }
    return null;
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
  Future<GetAiRecords200Response?> getAiRecords() async {
    final response = await getAiRecordsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiRecords200Response',) as GetAiRecords200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiRecords200Response?> getAiRecordsByOwnerByName(String owner, String name,) async {
    final response = await getAiRecordsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiRecords200Response',) as PostAiRecords200Response;
    
    }
    return null;
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
  Future<Envelope?> getAiRecordsQuery() async {
    final response = await getAiRecordsQueryWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  Future<Envelope?> getAiRecordsQuerySecond() async {
    final response = await getAiRecordsQuerySecondWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  Future<GetAiRemoteConnections200Response?> getAiRemoteConnections() async {
    final response = await getAiRemoteConnectionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiRemoteConnections200Response',) as GetAiRemoteConnections200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiRemoteConnections200Response?> getAiRemoteConnectionsByOwnerByName(String owner, String name,) async {
    final response = await getAiRemoteConnectionsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiRemoteConnections200Response',) as PostAiRemoteConnections200Response;
    
    }
    return null;
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
  Future<GetAiRoutes200Response?> getAiRoutes() async {
    final response = await getAiRoutesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiRoutes200Response',) as GetAiRoutes200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiRoutes200Response?> getAiRoutesByOwnerByName(String owner, String name,) async {
    final response = await getAiRoutesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiRoutes200Response',) as PostAiRoutes200Response;
    
    }
    return null;
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
  Future<GetAiScales200Response?> getAiScales() async {
    final response = await getAiScalesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiScales200Response',) as GetAiScales200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiScales200Response?> getAiScalesByOwnerByName(String owner, String name,) async {
    final response = await getAiScalesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiScales200Response',) as PostAiScales200Response;
    
    }
    return null;
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
  Future<GetAiScales200Response?> getAiScalesGlobal() async {
    final response = await getAiScalesGlobalWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiScales200Response',) as GetAiScales200Response;
    
    }
    return null;
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
  Future<Envelope?> getAiScalesPublic() async {
    final response = await getAiScalesPublicWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  Future<GetAiScans200Response?> getAiScans() async {
    final response = await getAiScansWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiScans200Response',) as GetAiScans200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiScans200Response?> getAiScansByOwnerByName(String owner, String name,) async {
    final response = await getAiScansByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiScans200Response',) as PostAiScans200Response;
    
    }
    return null;
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
  Future<GetAiSigninSessions200Response?> getAiSigninSessions() async {
    final response = await getAiSigninSessionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiSigninSessions200Response',) as GetAiSigninSessions200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiSigninSessions200Response?> getAiSigninSessionsByOwnerByName(String owner, String name,) async {
    final response = await getAiSigninSessionsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiSigninSessions200Response',) as PostAiSigninSessions200Response;
    
    }
    return null;
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
  Future<Envelope?> getAiSigninSessionsDuplicated() async {
    final response = await getAiSigninSessionsDuplicatedWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  Future<GetAiStores200Response?> getAiStores() async {
    final response = await getAiStoresWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiStores200Response',) as GetAiStores200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiStores200Response?> getAiStoresByOwnerByName(String owner, String name,) async {
    final response = await getAiStoresByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiStores200Response',) as PostAiStores200Response;
    
    }
    return null;
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
  Future<GetAiStores200Response?> getAiStoresGlobal() async {
    final response = await getAiStoresGlobalWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiStores200Response',) as GetAiStores200Response;
    
    }
    return null;
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
  Future<Envelope?> getAiStoresNames() async {
    final response = await getAiStoresNamesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  Future<Envelope?> getAiStoresProviders() async {
    final response = await getAiStoresProvidersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  Future<Envelope?> getAiSystem() async {
    final response = await getAiSystemWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  Future<GetAiTasks200Response?> getAiTasks() async {
    final response = await getAiTasksWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiTasks200Response',) as GetAiTasks200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiTasks200Response?> getAiTasksByOwnerByName(String owner, String name,) async {
    final response = await getAiTasksByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiTasks200Response',) as PostAiTasks200Response;
    
    }
    return null;
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
  Future<GetAiTasks200Response?> getAiTasksGlobal() async {
    final response = await getAiTasksGlobalWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiTasks200Response',) as GetAiTasks200Response;
    
    }
    return null;
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
  Future<GetAiTemplates200Response?> getAiTemplates() async {
    final response = await getAiTemplatesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiTemplates200Response',) as GetAiTemplates200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiTemplates200Response?> getAiTemplatesByOwnerByName(String owner, String name,) async {
    final response = await getAiTemplatesByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiTemplates200Response',) as PostAiTemplates200Response;
    
    }
    return null;
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
  Future<Envelope?> getAiTrainingContribution() async {
    final response = await getAiTrainingContributionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  Future<GetAiUsages200Response?> getAiUsages() async {
    final response = await getAiUsagesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiUsages200Response',) as GetAiUsages200Response;
    
    }
    return null;
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
  Future<Envelope?> getAiUsagesByUser() async {
    final response = await getAiUsagesByUserWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  Future<Envelope?> getAiUsagesCloud() async {
    final response = await getAiUsagesCloudWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  Future<Envelope?> getAiUsagesRange() async {
    final response = await getAiUsagesRangeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  Future<Envelope?> getAiUsagesUserNames() async {
    final response = await getAiUsagesUserNamesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  Future<GetAiVectors200Response?> getAiVectors() async {
    final response = await getAiVectorsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiVectors200Response',) as GetAiVectors200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiVectors200Response?> getAiVectorsByOwnerByName(String owner, String name,) async {
    final response = await getAiVectorsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiVectors200Response',) as PostAiVectors200Response;
    
    }
    return null;
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
  Future<GetAiVectors200Response?> getAiVectorsGlobal() async {
    final response = await getAiVectorsGlobalWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiVectors200Response',) as GetAiVectors200Response;
    
    }
    return null;
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
  Future<Envelope?> getAiVersion() async {
    final response = await getAiVersionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  Future<GetAiVideos200Response?> getAiVideos() async {
    final response = await getAiVideosWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiVideos200Response',) as GetAiVideos200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiVideos200Response?> getAiVideosByOwnerByName(String owner, String name,) async {
    final response = await getAiVideosByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiVideos200Response',) as PostAiVideos200Response;
    
    }
    return null;
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
  Future<GetAiVideos200Response?> getAiVideosGlobal() async {
    final response = await getAiVideosGlobalWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiVideos200Response',) as GetAiVideos200Response;
    
    }
    return null;
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
  Future<GetAiWorkflows200Response?> getAiWorkflows() async {
    final response = await getAiWorkflowsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiWorkflows200Response',) as GetAiWorkflows200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  Future<PostAiWorkflows200Response?> getAiWorkflowsByOwnerByName(String owner, String name,) async {
    final response = await getAiWorkflowsByOwnerByNameWithHttpInfo(owner, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiWorkflows200Response',) as PostAiWorkflows200Response;
    
    }
    return null;
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
  Future<GetAiWorkflows200Response?> getAiWorkflowsGlobal() async {
    final response = await getAiWorkflowsGlobalWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAiWorkflows200Response',) as GetAiWorkflows200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> patchAiArticlesByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/articles/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiArticles200Response?> patchAiArticlesByOwnerByName(String owner, String name, Object body,) async {
    final response = await patchAiArticlesByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiArticles200Response',) as PostAiArticles200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> patchAiAssetsByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/assets/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiAssets200Response?> patchAiAssetsByOwnerByName(String owner, String name, Object body,) async {
    final response = await patchAiAssetsByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiAssets200Response',) as PostAiAssets200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> patchAiChatsByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/chats/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiChats200Response?> patchAiChatsByOwnerByName(String owner, String name, Object body,) async {
    final response = await patchAiChatsByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiChats200Response',) as PostAiChats200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> patchAiDeploymentsByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/deployments/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiDeployments200Response?> patchAiDeploymentsByOwnerByName(String owner, String name, Object body,) async {
    final response = await patchAiDeploymentsByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiDeployments200Response',) as PostAiDeployments200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> patchAiFilesByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/files/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiFiles200Response?> patchAiFilesByOwnerByName(String owner, String name, Object body,) async {
    final response = await patchAiFilesByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiFiles200Response',) as PostAiFiles200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> patchAiFormsByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/forms/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiForms200Response?> patchAiFormsByOwnerByName(String owner, String name, Object body,) async {
    final response = await patchAiFormsByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiForms200Response',) as PostAiForms200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> patchAiGraphsByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/graphs/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiGraphs200Response?> patchAiGraphsByOwnerByName(String owner, String name, Object body,) async {
    final response = await patchAiGraphsByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiGraphs200Response',) as PostAiGraphs200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> patchAiMessagesByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/messages/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiMessages200Response?> patchAiMessagesByOwnerByName(String owner, String name, Object body,) async {
    final response = await patchAiMessagesByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiMessages200Response',) as PostAiMessages200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> patchAiNodesByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/nodes/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiNodes200Response?> patchAiNodesByOwnerByName(String owner, String name, Object body,) async {
    final response = await patchAiNodesByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiNodes200Response',) as PostAiNodes200Response;
    
    }
    return null;
  }

  /// Preferences
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> patchAiPreferencesWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/preferences';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Envelope?> patchAiPreferences(Object body,) async {
    final response = await patchAiPreferencesWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> patchAiProvidersByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/providers/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiProviders200Response?> patchAiProvidersByOwnerByName(String owner, String name, Object body,) async {
    final response = await patchAiProvidersByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiProviders200Response',) as PostAiProviders200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> patchAiRecordsByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/records/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiRecords200Response?> patchAiRecordsByOwnerByName(String owner, String name, Object body,) async {
    final response = await patchAiRecordsByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiRecords200Response',) as PostAiRecords200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> patchAiRemoteConnectionsByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/remote-connections/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiRemoteConnections200Response?> patchAiRemoteConnectionsByOwnerByName(String owner, String name, Object body,) async {
    final response = await patchAiRemoteConnectionsByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiRemoteConnections200Response',) as PostAiRemoteConnections200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> patchAiRoutesByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/routes/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiRoutes200Response?> patchAiRoutesByOwnerByName(String owner, String name, Object body,) async {
    final response = await patchAiRoutesByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiRoutes200Response',) as PostAiRoutes200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> patchAiScalesByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/scales/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiScales200Response?> patchAiScalesByOwnerByName(String owner, String name, Object body,) async {
    final response = await patchAiScalesByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiScales200Response',) as PostAiScales200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> patchAiScansByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/scans/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiScans200Response?> patchAiScansByOwnerByName(String owner, String name, Object body,) async {
    final response = await patchAiScansByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiScans200Response',) as PostAiScans200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> patchAiSigninSessionsByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/signin-sessions/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiSigninSessions200Response?> patchAiSigninSessionsByOwnerByName(String owner, String name, Object body,) async {
    final response = await patchAiSigninSessionsByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiSigninSessions200Response',) as PostAiSigninSessions200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> patchAiStoresByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/stores/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiStores200Response?> patchAiStoresByOwnerByName(String owner, String name, Object body,) async {
    final response = await patchAiStoresByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiStores200Response',) as PostAiStores200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> patchAiTasksByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/tasks/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiTasks200Response?> patchAiTasksByOwnerByName(String owner, String name, Object body,) async {
    final response = await patchAiTasksByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiTasks200Response',) as PostAiTasks200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> patchAiTemplatesByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/templates/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiTemplates200Response?> patchAiTemplatesByOwnerByName(String owner, String name, Object body,) async {
    final response = await patchAiTemplatesByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiTemplates200Response',) as PostAiTemplates200Response;
    
    }
    return null;
  }

  /// Training Contribution
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> patchAiTrainingContributionWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/training-contribution';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Envelope?> patchAiTrainingContribution(Object body,) async {
    final response = await patchAiTrainingContributionWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> patchAiTreeFilesByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/tree-files/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiTreeFiles200Response?> patchAiTreeFilesByOwnerByName(String owner, String name, Object body,) async {
    final response = await patchAiTreeFilesByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiTreeFiles200Response',) as PostAiTreeFiles200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> patchAiVectorsByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/vectors/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiVectors200Response?> patchAiVectorsByOwnerByName(String owner, String name, Object body,) async {
    final response = await patchAiVectorsByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiVectors200Response',) as PostAiVectors200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> patchAiVideosByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/videos/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiVideos200Response?> patchAiVideosByOwnerByName(String owner, String name, Object body,) async {
    final response = await patchAiVideosByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiVideos200Response',) as PostAiVideos200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> patchAiWorkflowsByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/workflows/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiWorkflows200Response?> patchAiWorkflowsByOwnerByName(String owner, String name, Object body,) async {
    final response = await patchAiWorkflowsByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiWorkflows200Response',) as PostAiWorkflows200Response;
    
    }
    return null;
  }

  /// Create a article
  ///
  /// Create one article.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiArticlesWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/articles';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Create a article
  ///
  /// Create one article.
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<PostAiArticles200Response?> postAiArticles(Object body,) async {
    final response = await postAiArticlesWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiArticles200Response',) as PostAiArticles200Response;
    
    }
    return null;
  }

  /// Create a asset
  ///
  /// Create one asset.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiAssetsWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/assets';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Create a asset
  ///
  /// Create one asset.
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<PostAiAssets200Response?> postAiAssets(Object body,) async {
    final response = await postAiAssetsWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiAssets200Response',) as PostAiAssets200Response;
    
    }
    return null;
  }

  /// Scan (asset)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> postAiAssetsByOwnerByNameScanWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/assets/{owner}/{name}/scan'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Scan (asset)
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Envelope?> postAiAssetsByOwnerByNameScan(String owner, String name, Object body,) async {
    final response = await postAiAssetsByOwnerByNameScanWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
  }

  /// Scan (asset)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiAssetsScanWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/assets/scan';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Scan (asset)
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Envelope?> postAiAssetsScan(Object body,) async {
    final response = await postAiAssetsScanWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
  }

  /// Create a chat
  ///
  /// Create one chat.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiChatsWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/chats';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Create a chat
  ///
  /// Create one chat.
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<PostAiChats200Response?> postAiChats(Object body,) async {
    final response = await postAiChatsWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiChats200Response',) as PostAiChats200Response;
    
    }
    return null;
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
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiDeploymentsWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/deployments';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Create a application
  ///
  /// Create one application.
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<PostAiDeployments200Response?> postAiDeployments(Object body,) async {
    final response = await postAiDeploymentsWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiDeployments200Response',) as PostAiDeployments200Response;
    
    }
    return null;
  }

  /// Deploy (application)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> postAiDeploymentsByOwnerByNameDeployWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/deployments/{owner}/{name}/deploy'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Deploy (application)
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Envelope?> postAiDeploymentsByOwnerByNameDeploy(String owner, String name, Object body,) async {
    final response = await postAiDeploymentsByOwnerByNameDeployWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
  }

  /// Undeploy (application)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> postAiDeploymentsByOwnerByNameUndeployWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/deployments/{owner}/{name}/undeploy'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Undeploy (application)
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Envelope?> postAiDeploymentsByOwnerByNameUndeploy(String owner, String name, Object body,) async {
    final response = await postAiDeploymentsByOwnerByNameUndeployWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
  }

  /// Create a file
  ///
  /// Create one file.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiFilesWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/files';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Create a file
  ///
  /// Create one file.
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<PostAiFiles200Response?> postAiFiles(Object body,) async {
    final response = await postAiFilesWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiFiles200Response',) as PostAiFiles200Response;
    
    }
    return null;
  }

  /// Activate (file)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiFilesActivateWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/files/activate';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Activate (file)
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Envelope?> postAiFilesActivate(Object body,) async {
    final response = await postAiFilesActivateWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
  }

  /// Vectors (file)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> postAiFilesByOwnerByNameVectorsWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/files/{owner}/{name}/vectors'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Vectors (file)
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Envelope?> postAiFilesByOwnerByNameVectors(String owner, String name, Object body,) async {
    final response = await postAiFilesByOwnerByNameVectorsWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
  }

  /// Upload (file)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiFilesUploadWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/files/upload';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Upload (file)
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Envelope?> postAiFilesUpload(Object body,) async {
    final response = await postAiFilesUploadWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
  }

  /// Create a form
  ///
  /// Create one form.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiFormsWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/forms';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Create a form
  ///
  /// Create one form.
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<PostAiForms200Response?> postAiForms(Object body,) async {
    final response = await postAiFormsWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiForms200Response',) as PostAiForms200Response;
    
    }
    return null;
  }

  /// Create a graph
  ///
  /// Create one graph.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiGraphsWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/graphs';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Create a graph
  ///
  /// Create one graph.
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<PostAiGraphs200Response?> postAiGraphs(Object body,) async {
    final response = await postAiGraphsWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiGraphs200Response',) as PostAiGraphs200Response;
    
    }
    return null;
  }

  /// Create a message
  ///
  /// Create one message.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiMessagesWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/messages';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Create a message
  ///
  /// Create one message.
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<PostAiMessages200Response?> postAiMessages(Object body,) async {
    final response = await postAiMessagesWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiMessages200Response',) as PostAiMessages200Response;
    
    }
    return null;
  }

  /// Create a node
  ///
  /// Create one node.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiNodesWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/nodes';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Create a node
  ///
  /// Create one node.
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<PostAiNodes200Response?> postAiNodes(Object body,) async {
    final response = await postAiNodesWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiNodes200Response',) as PostAiNodes200Response;
    
    }
    return null;
  }

  /// Tunnel (node)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> postAiNodesByOwnerByNameTunnelWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/nodes/{owner}/{name}/tunnel'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Tunnel (node)
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Envelope?> postAiNodesByOwnerByNameTunnel(String owner, String name, Object body,) async {
    final response = await postAiNodesByOwnerByNameTunnelWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
  }

  /// Create a provider
  ///
  /// Create one provider.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiProvidersWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/providers';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Create a provider
  ///
  /// Create one provider.
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<PostAiProviders200Response?> postAiProviders(Object body,) async {
    final response = await postAiProvidersWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiProviders200Response',) as PostAiProviders200Response;
    
    }
    return null;
  }

  /// Mcp Tools (provider)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiProvidersMcpToolsWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/providers/mcp-tools';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Mcp Tools (provider)
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Envelope?> postAiProvidersMcpTools(Object body,) async {
    final response = await postAiProvidersMcpToolsWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
  }

  /// Create a record
  ///
  /// Create one record.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiRecordsWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/records';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Create a record
  ///
  /// Create one record.
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<PostAiRecords200Response?> postAiRecords(Object body,) async {
    final response = await postAiRecordsWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiRecords200Response',) as PostAiRecords200Response;
    
    }
    return null;
  }

  /// Batch (record)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiRecordsBatchWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/records/batch';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Batch (record)
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Envelope?> postAiRecordsBatch(Object body,) async {
    final response = await postAiRecordsBatchWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
  }

  /// Commit (record)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiRecordsCommitWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/records/commit';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Commit (record)
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Envelope?> postAiRecordsCommit(Object body,) async {
    final response = await postAiRecordsCommitWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
  }

  /// Commit Second (record)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiRecordsCommitSecondWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/records/commit-second';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Commit Second (record)
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Envelope?> postAiRecordsCommitSecond(Object body,) async {
    final response = await postAiRecordsCommitSecondWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
  }

  /// Create a connection
  ///
  /// Create one connection.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiRemoteConnectionsWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/remote-connections';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Create a connection
  ///
  /// Create one connection.
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<PostAiRemoteConnections200Response?> postAiRemoteConnections(Object body,) async {
    final response = await postAiRemoteConnectionsWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiRemoteConnections200Response',) as PostAiRemoteConnections200Response;
    
    }
    return null;
  }

  /// Start (connection)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> postAiRemoteConnectionsByOwnerByNameStartWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/remote-connections/{owner}/{name}/start'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Start (connection)
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Envelope?> postAiRemoteConnectionsByOwnerByNameStart(String owner, String name, Object body,) async {
    final response = await postAiRemoteConnectionsByOwnerByNameStartWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
  }

  /// Stop (connection)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> postAiRemoteConnectionsByOwnerByNameStopWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/remote-connections/{owner}/{name}/stop'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Stop (connection)
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Envelope?> postAiRemoteConnectionsByOwnerByNameStop(String owner, String name, Object body,) async {
    final response = await postAiRemoteConnectionsByOwnerByNameStopWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
  }

  /// Create a model-route
  ///
  /// Create one model-route.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiRoutesWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/routes';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Create a model-route
  ///
  /// Create one model-route.
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<PostAiRoutes200Response?> postAiRoutes(Object body,) async {
    final response = await postAiRoutesWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiRoutes200Response',) as PostAiRoutes200Response;
    
    }
    return null;
  }

  /// Create a scale
  ///
  /// Create one scale.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiScalesWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/scales';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Create a scale
  ///
  /// Create one scale.
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<PostAiScales200Response?> postAiScales(Object body,) async {
    final response = await postAiScalesWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiScales200Response',) as PostAiScales200Response;
    
    }
    return null;
  }

  /// Create a scan
  ///
  /// Create one scan.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiScansWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/scans';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Create a scan
  ///
  /// Create one scan.
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<PostAiScans200Response?> postAiScans(Object body,) async {
    final response = await postAiScansWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiScans200Response',) as PostAiScans200Response;
    
    }
    return null;
  }

  /// Signin
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiSigninWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/signin';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Signin
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Envelope?> postAiSignin(Object body,) async {
    final response = await postAiSigninWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
  }

  /// Create a session
  ///
  /// Create one session.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiSigninSessionsWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/signin-sessions';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Create a session
  ///
  /// Create one session.
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<PostAiSigninSessions200Response?> postAiSigninSessions(Object body,) async {
    final response = await postAiSigninSessionsWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiSigninSessions200Response',) as PostAiSigninSessions200Response;
    
    }
    return null;
  }

  /// Signout
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiSignoutWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/signout';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Signout
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Envelope?> postAiSignout(Object body,) async {
    final response = await postAiSignoutWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
  }

  /// Create a store
  ///
  /// Create one store.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiStoresWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/stores';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Create a store
  ///
  /// Create one store.
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<PostAiStores200Response?> postAiStores(Object body,) async {
    final response = await postAiStoresWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiStores200Response',) as PostAiStores200Response;
    
    }
    return null;
  }

  /// Vectors (store)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> postAiStoresByOwnerByNameVectorsWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/stores/{owner}/{name}/vectors'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Vectors (store)
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Envelope?> postAiStoresByOwnerByNameVectors(String owner, String name, Object body,) async {
    final response = await postAiStoresByOwnerByNameVectorsWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
  }

  /// Create a task
  ///
  /// Create one task.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiTasksWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/tasks';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Create a task
  ///
  /// Create one task.
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<PostAiTasks200Response?> postAiTasks(Object body,) async {
    final response = await postAiTasksWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiTasks200Response',) as PostAiTasks200Response;
    
    }
    return null;
  }

  /// Analyze (task)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> postAiTasksByOwnerByNameAnalyzeWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/tasks/{owner}/{name}/analyze'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Analyze (task)
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Envelope?> postAiTasksByOwnerByNameAnalyze(String owner, String name, Object body,) async {
    final response = await postAiTasksByOwnerByNameAnalyzeWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
  }

  /// Document (task)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> postAiTasksByOwnerByNameDocumentWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/tasks/{owner}/{name}/document'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Document (task)
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Envelope?> postAiTasksByOwnerByNameDocument(String owner, String name, Object body,) async {
    final response = await postAiTasksByOwnerByNameDocumentWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
  }

  /// Create a template
  ///
  /// Create one template.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiTemplatesWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/templates';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Create a template
  ///
  /// Create one template.
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<PostAiTemplates200Response?> postAiTemplates(Object body,) async {
    final response = await postAiTemplatesWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiTemplates200Response',) as PostAiTemplates200Response;
    
    }
    return null;
  }

  /// Create a tree-file
  ///
  /// Create one tree-file.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiTreeFilesWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/tree-files';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Create a tree-file
  ///
  /// Create one tree-file.
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<PostAiTreeFiles200Response?> postAiTreeFiles(Object body,) async {
    final response = await postAiTreeFilesWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiTreeFiles200Response',) as PostAiTreeFiles200Response;
    
    }
    return null;
  }

  /// Create a vector
  ///
  /// Create one vector.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiVectorsWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/vectors';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Create a vector
  ///
  /// Create one vector.
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<PostAiVectors200Response?> postAiVectors(Object body,) async {
    final response = await postAiVectorsWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiVectors200Response',) as PostAiVectors200Response;
    
    }
    return null;
  }

  /// Create a video
  ///
  /// Create one video.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiVideosWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/videos';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Create a video
  ///
  /// Create one video.
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<PostAiVideos200Response?> postAiVideos(Object body,) async {
    final response = await postAiVideosWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiVideos200Response',) as PostAiVideos200Response;
    
    }
    return null;
  }

  /// Upload (video)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiVideosUploadWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/videos/upload';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Upload (video)
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Envelope?> postAiVideosUpload(Object body,) async {
    final response = await postAiVideosUploadWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
  }

  /// Create a workflow
  ///
  /// Create one workflow.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> postAiWorkflowsWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/workflows';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Create a workflow
  ///
  /// Create one workflow.
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<PostAiWorkflows200Response?> postAiWorkflows(Object body,) async {
    final response = await postAiWorkflowsWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiWorkflows200Response',) as PostAiWorkflows200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> putAiArticlesByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/articles/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Replace a article
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiArticles200Response?> putAiArticlesByOwnerByName(String owner, String name, Object body,) async {
    final response = await putAiArticlesByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiArticles200Response',) as PostAiArticles200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> putAiAssetsByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/assets/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Replace a asset
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiAssets200Response?> putAiAssetsByOwnerByName(String owner, String name, Object body,) async {
    final response = await putAiAssetsByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiAssets200Response',) as PostAiAssets200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> putAiChatsByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/chats/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Replace a chat
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiChats200Response?> putAiChatsByOwnerByName(String owner, String name, Object body,) async {
    final response = await putAiChatsByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiChats200Response',) as PostAiChats200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> putAiDeploymentsByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/deployments/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Replace a application
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiDeployments200Response?> putAiDeploymentsByOwnerByName(String owner, String name, Object body,) async {
    final response = await putAiDeploymentsByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiDeployments200Response',) as PostAiDeployments200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> putAiFilesByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/files/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Replace a file
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiFiles200Response?> putAiFilesByOwnerByName(String owner, String name, Object body,) async {
    final response = await putAiFilesByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiFiles200Response',) as PostAiFiles200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> putAiFormsByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/forms/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Replace a form
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiForms200Response?> putAiFormsByOwnerByName(String owner, String name, Object body,) async {
    final response = await putAiFormsByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiForms200Response',) as PostAiForms200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> putAiGraphsByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/graphs/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Replace a graph
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiGraphs200Response?> putAiGraphsByOwnerByName(String owner, String name, Object body,) async {
    final response = await putAiGraphsByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiGraphs200Response',) as PostAiGraphs200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> putAiMessagesByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/messages/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Replace a message
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiMessages200Response?> putAiMessagesByOwnerByName(String owner, String name, Object body,) async {
    final response = await putAiMessagesByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiMessages200Response',) as PostAiMessages200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> putAiNodesByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/nodes/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Replace a node
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiNodes200Response?> putAiNodesByOwnerByName(String owner, String name, Object body,) async {
    final response = await putAiNodesByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiNodes200Response',) as PostAiNodes200Response;
    
    }
    return null;
  }

  /// Preferences
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> putAiPreferencesWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/preferences';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Preferences
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Envelope?> putAiPreferences(Object body,) async {
    final response = await putAiPreferencesWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> putAiProvidersByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/providers/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Replace a provider
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiProviders200Response?> putAiProvidersByOwnerByName(String owner, String name, Object body,) async {
    final response = await putAiProvidersByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiProviders200Response',) as PostAiProviders200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> putAiRecordsByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/records/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Replace a record
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiRecords200Response?> putAiRecordsByOwnerByName(String owner, String name, Object body,) async {
    final response = await putAiRecordsByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiRecords200Response',) as PostAiRecords200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> putAiRemoteConnectionsByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/remote-connections/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Replace a connection
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiRemoteConnections200Response?> putAiRemoteConnectionsByOwnerByName(String owner, String name, Object body,) async {
    final response = await putAiRemoteConnectionsByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiRemoteConnections200Response',) as PostAiRemoteConnections200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> putAiRoutesByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/routes/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Replace a model-route
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiRoutes200Response?> putAiRoutesByOwnerByName(String owner, String name, Object body,) async {
    final response = await putAiRoutesByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiRoutes200Response',) as PostAiRoutes200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> putAiScalesByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/scales/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Replace a scale
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiScales200Response?> putAiScalesByOwnerByName(String owner, String name, Object body,) async {
    final response = await putAiScalesByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiScales200Response',) as PostAiScales200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> putAiScansByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/scans/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Replace a scan
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiScans200Response?> putAiScansByOwnerByName(String owner, String name, Object body,) async {
    final response = await putAiScansByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiScans200Response',) as PostAiScans200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> putAiSigninSessionsByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/signin-sessions/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Replace a session
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiSigninSessions200Response?> putAiSigninSessionsByOwnerByName(String owner, String name, Object body,) async {
    final response = await putAiSigninSessionsByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiSigninSessions200Response',) as PostAiSigninSessions200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> putAiStoresByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/stores/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Replace a store
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiStores200Response?> putAiStoresByOwnerByName(String owner, String name, Object body,) async {
    final response = await putAiStoresByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiStores200Response',) as PostAiStores200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> putAiTasksByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/tasks/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Replace a task
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiTasks200Response?> putAiTasksByOwnerByName(String owner, String name, Object body,) async {
    final response = await putAiTasksByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiTasks200Response',) as PostAiTasks200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> putAiTemplatesByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/templates/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Replace a template
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiTemplates200Response?> putAiTemplatesByOwnerByName(String owner, String name, Object body,) async {
    final response = await putAiTemplatesByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiTemplates200Response',) as PostAiTemplates200Response;
    
    }
    return null;
  }

  /// Training Contribution
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> putAiTrainingContributionWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/training-contribution';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Training Contribution
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Envelope?> putAiTrainingContribution(Object body,) async {
    final response = await putAiTrainingContributionWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> putAiTreeFilesByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/tree-files/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Replace a tree-file
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiTreeFiles200Response?> putAiTreeFilesByOwnerByName(String owner, String name, Object body,) async {
    final response = await putAiTreeFilesByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiTreeFiles200Response',) as PostAiTreeFiles200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> putAiVectorsByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/vectors/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Replace a vector
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiVectors200Response?> putAiVectorsByOwnerByName(String owner, String name, Object body,) async {
    final response = await putAiVectorsByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiVectors200Response',) as PostAiVectors200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> putAiVideosByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/videos/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Replace a video
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiVideos200Response?> putAiVideosByOwnerByName(String owner, String name, Object body,) async {
    final response = await putAiVideosByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiVideos200Response',) as PostAiVideos200Response;
    
    }
    return null;
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
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<Response> putAiWorkflowsByOwnerByNameWithHttpInfo(String owner, String name, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ai/workflows/{owner}/{name}'
      .replaceAll('{owner}', owner)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Replace a workflow
  ///
  /// Identical to PATCH — the handler takes a whole object either way.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owning organization.
  ///
  /// * [String] name (required):
  ///   Resource name, unique within the owner.
  ///
  /// * [Object] body (required):
  Future<PostAiWorkflows200Response?> putAiWorkflowsByOwnerByName(String owner, String name, Object body,) async {
    final response = await putAiWorkflowsByOwnerByNameWithHttpInfo(owner, name, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostAiWorkflows200Response',) as PostAiWorkflows200Response;
    
    }
    return null;
  }
}
