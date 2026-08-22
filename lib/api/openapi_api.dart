//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class OpenapiApi {
  OpenapiApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Every capability this deployment answers, and where to follow each one
  ///
  /// The API root. One row per capability — its name, the address it answers under, whether it is generally available, and the sentence it says about itself — plus the links to the document at /v1/openapi.json and the agent door.  It is a projection of that same document and carries the same surface a customer calls: the operator's admin product, the relay doors, the legacy spellings and any capability that is not yet generally available are in neither.  Unauthenticated by design, exactly as the document it derives from: a client has to be able to read the contract before it holds a credential, and a list of capability names grants nothing.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCapabilitiesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1';

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

  /// Every capability this deployment answers, and where to follow each one
  ///
  /// The API root. One row per capability — its name, the address it answers under, whether it is generally available, and the sentence it says about itself — plus the links to the document at /v1/openapi.json and the agent door.  It is a projection of that same document and carries the same surface a customer calls: the operator's admin product, the relay doors, the legacy spellings and any capability that is not yet generally available are in neither.  Unauthenticated by design, exactly as the document it derives from: a client has to be able to read the contract before it holds a credential, and a list of capability names grants nothing.
  Future<Root?> getCapabilities() async {
    final response = await getCapabilitiesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Root',) as Root;
    
    }
    return null;
  }

  /// One capability's operations, with the address and method to call each
  ///
  /// What the capability named in the path answers: every published operation, its operationId, its method and its address, and the sentence lifted from the handler that serves it — plus the way back to /v1.  It answers where the capability serves nothing at its own root. Where it does, that operation is the answer and is described at its own address; a client following the root index reaches the capability either way.  Unauthenticated, and scoped to the same customer surface the root is. A name that is not a published capability is answered exactly as any other unrouted address, so this cannot be asked whether something exists that it would not have listed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<Response> getCapabilityWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/{name}'
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

  /// One capability's operations, with the address and method to call each
  ///
  /// What the capability named in the path answers: every published operation, its operationId, its method and its address, and the sentence lifted from the handler that serves it — plus the way back to /v1.  It answers where the capability serves nothing at its own root. Where it does, that operation is the answer and is described at its own address; a client following the root index reaches the capability either way.  Unauthenticated, and scoped to the same customer surface the root is. A name that is not a published capability is answered exactly as any other unrouted address, so this cannot be asked whether something exists that it would not have listed.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<Index?> getCapability(String name,) async {
    final response = await getCapabilityWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Index',) as Index;
    
    }
    return null;
  }

  /// Every operation this API answers, as a command
  ///
  /// The command projection of the OpenAPI document at /v1/openapi.json — each operation reduced to what running it by name needs: its service and command token, its method and path, the prose lifted from the handler, its path parameters as positional arguments and its remaining inputs as typed flags.  It is a separate address for one measured reason: the fleet document is megabytes and a command palette cannot load it, while this projection of the same operations is several times smaller because it carries no schemas, responses or components.  Unauthenticated by design, exactly as the document it derives from: a client has to be able to read the contract before it holds a credential, and a list of operation names grants nothing. The list is TOTAL and is never filtered by caller — what you may run is decided per request by the authorizer, on the decoded input, so a filtered list would be a second claim about permission that is free to be wrong.  Rendered once and served as bytes thereafter, under a strong ETag.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getOpenapiCommandsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/openapi/commands';

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

  /// Every operation this API answers, as a command
  ///
  /// The command projection of the OpenAPI document at /v1/openapi.json — each operation reduced to what running it by name needs: its service and command token, its method and path, the prose lifted from the handler, its path parameters as positional arguments and its remaining inputs as typed flags.  It is a separate address for one measured reason: the fleet document is megabytes and a command palette cannot load it, while this projection of the same operations is several times smaller because it carries no schemas, responses or components.  Unauthenticated by design, exactly as the document it derives from: a client has to be able to read the contract before it holds a credential, and a list of operation names grants nothing. The list is TOTAL and is never filtered by caller — what you may run is decided per request by the authorizer, on the decoded input, so a filtered list would be a second claim about permission that is free to be wrong.  Rendered once and served as bytes thereafter, under a strong ETag.
  Future<void> getOpenapiCommands() async {
    final response = await getOpenapiCommandsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The API description this SDK was generated from
  ///
  /// Serves the OpenAPI document for the routes this process actually answers — generated from the live router at request time, not from a checked-in file that can disagree with it.  On an app it is that app's own surface; on the fleet's front door it is the woven document for every mounted app. Unauthenticated by design: a client has to be able to read the contract before it holds a credential, and the document grants nothing.  Rendered once and served as bytes thereafter, so the route table's immutability is what makes a repeat request a memcpy rather than a re-encode of a megabyte document.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getOpenapiJsonWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/openapi.json';

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

  /// The API description this SDK was generated from
  ///
  /// Serves the OpenAPI document for the routes this process actually answers — generated from the live router at request time, not from a checked-in file that can disagree with it.  On an app it is that app's own surface; on the fleet's front door it is the woven document for every mounted app. Unauthenticated by design: a client has to be able to read the contract before it holds a credential, and the document grants nothing.  Rendered once and served as bytes thereafter, so the route table's immutability is what makes a repeat request a memcpy rather than a re-encode of a megabyte document.
  Future<void> getOpenapiJson() async {
    final response = await getOpenapiJsonWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The agent door: every subsystem's operations as MCP tools
  ///
  /// Model Context Protocol over JSON-RPC 2.0 — one POST per message, stateless, protocol revision 2026-07-28. tools/list answers without a credential with one tool per subsystem (its operations in the \"op\" enum) plus \"describe\", which returns one operation's input schema. tools/call names a subsystem tool and carries {\"op\": <operation>, \"input\": <its arguments>}; it takes the same bearer the REST API does, and a call that carries none is answered 401 with a WWW-Authenticate header naming the resource metadata at /.well-known/oauth-protected-resource, which names the authorization server to sign in at. The tool surface is the public contract: the operator's admin product is not offered, and a name that would disclose a secret or mutate an identity is withheld — the list says how many, under _meta.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MCPRequest] mCPRequest:
  Future<Response> postMcpWithHttpInfo({ MCPRequest? mCPRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mcp';

    // ignore: prefer_final_locals
    Object? postBody = mCPRequest;

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

  /// The agent door: every subsystem's operations as MCP tools
  ///
  /// Model Context Protocol over JSON-RPC 2.0 — one POST per message, stateless, protocol revision 2026-07-28. tools/list answers without a credential with one tool per subsystem (its operations in the \"op\" enum) plus \"describe\", which returns one operation's input schema. tools/call names a subsystem tool and carries {\"op\": <operation>, \"input\": <its arguments>}; it takes the same bearer the REST API does, and a call that carries none is answered 401 with a WWW-Authenticate header naming the resource metadata at /.well-known/oauth-protected-resource, which names the authorization server to sign in at. The tool surface is the public contract: the operator's admin product is not offered, and a name that would disclose a secret or mutate an identity is withheld — the list says how many, under _meta.
  ///
  /// Parameters:
  ///
  /// * [MCPRequest] mCPRequest:
  Future<MCPResponse?> postMcp({ MCPRequest? mCPRequest, }) async {
    final response = await postMcpWithHttpInfo( mCPRequest: mCPRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MCPResponse',) as MCPResponse;
    
    }
    return null;
  }
}
