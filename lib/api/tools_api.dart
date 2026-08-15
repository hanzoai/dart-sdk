//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class ToolsApi {
  ToolsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Lists every tool the caller's org and project can reach, from every source, each flagged with whether it is activated.
  ///
  /// Lists every tool the caller's org and project can reach, from every source, each flagged with whether it is activated. This is the discovery surface: one flat set of names spanning connector actions, user functions, zap-service routes, agents, skills and the org's own external MCP servers, deduplicated by name so the highest-precedence source wins a collision. It lists; it does not call — dispatch is POST /v1/tools/call.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] source_:
  ///   Source keeps only tools from one source — connector, function, zap-service, agent, skill or mcp. Empty keeps every source.
  ///
  /// * [String] activated:
  ///   Activated keeps only the tools activated for the caller's org and project, and only when it is exactly the string \"true\".
  Future<Response> getToolsWithHttpInfo({ String? source_, String? activated, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tools';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (source_ != null) {
      queryParams.addAll(_queryParams('', 'source', source_));
    }
    if (activated != null) {
      queryParams.addAll(_queryParams('', 'activated', activated));
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

  /// Lists every tool the caller's org and project can reach, from every source, each flagged with whether it is activated.
  ///
  /// Lists every tool the caller's org and project can reach, from every source, each flagged with whether it is activated. This is the discovery surface: one flat set of names spanning connector actions, user functions, zap-service routes, agents, skills and the org's own external MCP servers, deduplicated by name so the highest-precedence source wins a collision. It lists; it does not call — dispatch is POST /v1/tools/call.
  ///
  /// Parameters:
  ///
  /// * [String] source_:
  ///   Source keeps only tools from one source — connector, function, zap-service, agent, skill or mcp. Empty keeps every source.
  ///
  /// * [String] activated:
  ///   Activated keeps only the tools activated for the caller's org and project, and only when it is exactly the string \"true\".
  Future<ToolList?> getTools({ String? source_, String? activated, }) async {
    final response = await getToolsWithHttpInfo( source_: source_, activated: activated, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ToolList',) as ToolList;
    
    }
    return null;
  }

  /// Reports which tools are switched on for the caller's org and project.
  ///
  /// Reports which tools are switched on for the caller's org and project. Activation is what makes a tool dispatchable and what makes it visible to an agent, so this is the set the MCP tool list is drawn from — every other tool in the registry is discoverable but refused at call time.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getToolsActivationWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tools/activation';

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

  /// Reports which tools are switched on for the caller's org and project.
  ///
  /// Reports which tools are switched on for the caller's org and project. Activation is what makes a tool dispatchable and what makes it visible to an agent, so this is the set the MCP tool list is drawn from — every other tool in the registry is discoverable but refused at call time.
  Future<ActivationSet?> getToolsActivation() async {
    final response = await getToolsActivationWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ActivationSet',) as ActivationSet;
    
    }
    return null;
  }

  /// Lists the MCP servers the public registries publish, as we hold them: our canonical copy of registry.modelcontextprotocol.io, plus what we decided about each entry.
  ///
  /// Lists the MCP servers the public registries publish, as we hold them: our canonical copy of registry.modelcontextprotocol.io, plus what we decided about each entry.  This is the SHELF an org picks from. A listing with a streamable-http endpoint can be enabled as-is — POST /v1/mcp/servers with its id — and its tools then join the org's tool plane and the fleet's MCP door. A listing that only ships a stdio package needs a process to run it, which is why the transports are on every entry rather than implied.  Hidden entries are absent: they are the ones we took off the shelf. A platform SuperAdmin sees them, because the same query answers \"what is on the shelf\" and \"what is in the catalog\" and two queries would drift apart.  It is PAGED — 50 by default, 200 at most. The public registry publishes tens of thousands of servers, so an unbounded answer is a twenty-megabyte response and a storefront that renders in a minute. total is the whole match, not the page.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] q:
  ///   Q matches the name, title or description, case-insensitively.
  ///
  /// * [String] featured:
  ///   Featured keeps only the listings we put on the front of the shelf, and only when it is exactly the string \"true\".
  ///
  /// * [String] official:
  ///   Official keeps only the vendors' OWN servers — not third-party copies of them — and only when it is exactly the string \"true\".
  ///
  /// * [int] limit:
  ///   Limit bounds the page: default 50, maximum 200. A value that is not a positive integer reads as the default.
  ///
  /// * [int] offset:
  ///   Offset skips that many listings.
  Future<Response> getToolsCatalogWithHttpInfo({ String? q, String? featured, String? official, int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tools/catalog';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (featured != null) {
      queryParams.addAll(_queryParams('', 'featured', featured));
    }
    if (official != null) {
      queryParams.addAll(_queryParams('', 'official', official));
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

  /// Lists the MCP servers the public registries publish, as we hold them: our canonical copy of registry.modelcontextprotocol.io, plus what we decided about each entry.
  ///
  /// Lists the MCP servers the public registries publish, as we hold them: our canonical copy of registry.modelcontextprotocol.io, plus what we decided about each entry.  This is the SHELF an org picks from. A listing with a streamable-http endpoint can be enabled as-is — POST /v1/mcp/servers with its id — and its tools then join the org's tool plane and the fleet's MCP door. A listing that only ships a stdio package needs a process to run it, which is why the transports are on every entry rather than implied.  Hidden entries are absent: they are the ones we took off the shelf. A platform SuperAdmin sees them, because the same query answers \"what is on the shelf\" and \"what is in the catalog\" and two queries would drift apart.  It is PAGED — 50 by default, 200 at most. The public registry publishes tens of thousands of servers, so an unbounded answer is a twenty-megabyte response and a storefront that renders in a minute. total is the whole match, not the page.
  ///
  /// Parameters:
  ///
  /// * [String] q:
  ///   Q matches the name, title or description, case-insensitively.
  ///
  /// * [String] featured:
  ///   Featured keeps only the listings we put on the front of the shelf, and only when it is exactly the string \"true\".
  ///
  /// * [String] official:
  ///   Official keeps only the vendors' OWN servers — not third-party copies of them — and only when it is exactly the string \"true\".
  ///
  /// * [int] limit:
  ///   Limit bounds the page: default 50, maximum 200. A value that is not a positive integer reads as the default.
  ///
  /// * [int] offset:
  ///   Offset skips that many listings.
  Future<McpCatalog?> getToolsCatalog({ String? q, String? featured, String? official, int? limit, int? offset, }) async {
    final response = await getToolsCatalogWithHttpInfo( q: q, featured: featured, official: official, limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'McpCatalog',) as McpCatalog;
    
    }
    return null;
  }

  /// Returns one catalog entry in full: the publisher's description, its repository and site, every package form with the runtime that launches it, and every hosted endpoint.
  ///
  /// Returns one catalog entry in full: the publisher's description, its repository and site, every package form with the runtime that launches it, and every hosted endpoint. It is what a branding page renders, and what tells a caller whether the listing can be enabled here and now (a streamable-http remote) or needs somewhere to run first (a stdio package).  A HIDDEN listing is not served to an org — a shelf that renders what it does not list would be a way around the shelf — but is served to a SuperAdmin, who is the one deciding whether to put it back.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the listing, from the path. It is the publisher's reverse-DNS name with its one slash written as an underscore — \"com.stripe_mcp\".
  Future<Response> getToolsCatalogByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tools/catalog/{id}'
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

  /// Returns one catalog entry in full: the publisher's description, its repository and site, every package form with the runtime that launches it, and every hosted endpoint.
  ///
  /// Returns one catalog entry in full: the publisher's description, its repository and site, every package form with the runtime that launches it, and every hosted endpoint. It is what a branding page renders, and what tells a caller whether the listing can be enabled here and now (a streamable-http remote) or needs somewhere to run first (a stdio package).  A HIDDEN listing is not served to an org — a shelf that renders what it does not list would be a way around the shelf — but is served to a SuperAdmin, who is the one deciding whether to put it back.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the listing, from the path. It is the publisher's reverse-DNS name with its one slash written as an underscore — \"com.stripe_mcp\".
  Future<MCPListing?> getToolsCatalogById(String id,) async {
    final response = await getToolsCatalogByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MCPListing',) as MCPListing;
    
    }
    return null;
  }

  /// Sets what WE say about one catalog entry — hidden, featured, official, logo — and answers with the stored listing.
  ///
  /// Sets what WE say about one catalog entry — hidden, featured, official, logo — and answers with the stored listing. SuperAdmin only; every other caller is refused.  Curation is the half of a catalog row a sync cannot write, and this is the only thing that writes it. The upstream half is never editable here: a description that disagreed with the publisher's would be a fork of their listing, and the next sync would silently undo it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the listing to curate, from the path.
  ///
  /// * [CurateReq] curateReq (required):
  Future<Response> patchToolsCatalogByIdWithHttpInfo(String id, CurateReq curateReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tools/catalog/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = curateReq;

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

  /// Sets what WE say about one catalog entry — hidden, featured, official, logo — and answers with the stored listing.
  ///
  /// Sets what WE say about one catalog entry — hidden, featured, official, logo — and answers with the stored listing. SuperAdmin only; every other caller is refused.  Curation is the half of a catalog row a sync cannot write, and this is the only thing that writes it. The upstream half is never editable here: a description that disagreed with the publisher's would be a fork of their listing, and the next sync would silently undo it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the listing to curate, from the path.
  ///
  /// * [CurateReq] curateReq (required):
  Future<MCPListing?> patchToolsCatalogById(String id, CurateReq curateReq,) async {
    final response = await patchToolsCatalogByIdWithHttpInfo(id, curateReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MCPListing',) as MCPListing;
    
    }
    return null;
  }

  /// Runs one of the caller's activated tools and answers with its output.
  ///
  /// Runs one of the caller's activated tools and answers with its output.  This is the door onto the tool plane's DYNAMIC half — the half no build-time catalogue can hold, because it is per-tenant: an org's connected connector actions, its authored skills, its agents and functions, and the tools of every external MCP server it registered. A tool's existence, its price and its activation are all rows, not code, so they cannot be known until the caller is.  One policy, the registry's: resolve by precedence, refuse an unactivated tool 403, settle a priced one through the x402 seam or fail closed 402, then dispatch to the winning source bound to the caller's own (org, project). One metered unit, one audit record. A caller can only ever dispatch its own tools.  Discovery is GET /v1/tools — ?activated=true for the callable set.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ToolCall] toolCall (required):
  Future<Response> postToolsCallWithHttpInfo(ToolCall toolCall,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tools/call';

    // ignore: prefer_final_locals
    Object? postBody = toolCall;

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

  /// Runs one of the caller's activated tools and answers with its output.
  ///
  /// Runs one of the caller's activated tools and answers with its output.  This is the door onto the tool plane's DYNAMIC half — the half no build-time catalogue can hold, because it is per-tenant: an org's connected connector actions, its authored skills, its agents and functions, and the tools of every external MCP server it registered. A tool's existence, its price and its activation are all rows, not code, so they cannot be known until the caller is.  One policy, the registry's: resolve by precedence, refuse an unactivated tool 403, settle a priced one through the x402 seam or fail closed 402, then dispatch to the winning source bound to the caller's own (org, project). One metered unit, one audit record. A caller can only ever dispatch its own tools.  Discovery is GET /v1/tools — ?activated=true for the callable set.
  ///
  /// Parameters:
  ///
  /// * [ToolCall] toolCall (required):
  Future<ToolResult?> postToolsCall(ToolCall toolCall,) async {
    final response = await postToolsCallWithHttpInfo(toolCall,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ToolResult',) as ToolResult;
    
    }
    return null;
  }

  /// Pulls the public MCP registry into our canonical copy and reports what changed.
  ///
  /// Pulls the public MCP registry into our canonical copy and reports what changed. SuperAdmin only; every other caller is refused.  It is IDEMPOTENT: a listing is keyed by the publisher's own reverse-DNS name, so a second pass over an unchanged registry rewrites the same rows and reports added=0, updated=0. It never deletes — a listing that vanishes upstream may be one an org has already enabled, and dropping its description would not drop its server. And it never touches CURATION: hidden, featured, an admin-set official and a logo survive every sync, because the write does not name those columns.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postToolsCatalogSyncWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tools/catalog/sync';

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

  /// Pulls the public MCP registry into our canonical copy and reports what changed.
  ///
  /// Pulls the public MCP registry into our canonical copy and reports what changed. SuperAdmin only; every other caller is refused.  It is IDEMPOTENT: a listing is keyed by the publisher's own reverse-DNS name, so a second pass over an unchanged registry rewrites the same rows and reports added=0, updated=0. It never deletes — a listing that vanishes upstream may be one an org has already enabled, and dropping its description would not drop its server. And it never touches CURATION: hidden, featured, an admin-set official and a logo survive every sync, because the write does not name those columns.
  Future<McpCatalogSync?> postToolsCatalogSync() async {
    final response = await postToolsCatalogSyncWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'McpCatalogSync',) as McpCatalogSync;
    
    }
    return null;
  }

  /// Switches tools on and off for the caller's org and project, and answers with the resulting activated set.
  ///
  /// Switches tools on and off for the caller's org and project, and answers with the resulting activated set. It is the ONE write path that turns skills, plugins and connectors into callable tools — an unactivated tool is listed by discovery but refused 403 at dispatch. Activate is applied before Deactivate, so a name in both lists ends up off. More than 256 toggles in one request is refused 413.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ActivationReq] activationReq (required):
  Future<Response> putToolsActivationWithHttpInfo(ActivationReq activationReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tools/activation';

    // ignore: prefer_final_locals
    Object? postBody = activationReq;

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

  /// Switches tools on and off for the caller's org and project, and answers with the resulting activated set.
  ///
  /// Switches tools on and off for the caller's org and project, and answers with the resulting activated set. It is the ONE write path that turns skills, plugins and connectors into callable tools — an unactivated tool is listed by discovery but refused 403 at dispatch. Activate is applied before Deactivate, so a name in both lists ends up off. More than 256 toggles in one request is refused 413.
  ///
  /// Parameters:
  ///
  /// * [ActivationReq] activationReq (required):
  Future<ActivationSet?> putToolsActivation(ActivationReq activationReq,) async {
    final response = await putToolsActivationWithHttpInfo(activationReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ActivationSet',) as ActivationSet;
    
    }
    return null;
  }
}
