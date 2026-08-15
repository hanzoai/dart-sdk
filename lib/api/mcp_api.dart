//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class McpApi {
  McpApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Deregisters one of the caller org's external MCP servers, so its tools leave the registry.
  ///
  /// Deregisters one of the caller org's external MCP servers, so its tools leave the registry. Scoped to the caller's org, so an id belonging to another tenant is a 404 and not a delete. Answers 204 with no body; a server this org does not have is 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the server to deregister, from the path.
  Future<Response> deleteMcpServersByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mcp/servers/{id}'
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

  /// Deregisters one of the caller org's external MCP servers, so its tools leave the registry.
  ///
  /// Deregisters one of the caller org's external MCP servers, so its tools leave the registry. Scoped to the caller's org, so an id belonging to another tenant is a 404 and not a delete. Answers 204 with no body; a server this org does not have is 404.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the server to deregister, from the path.
  Future<void> deleteMcpServersById(String id,) async {
    final response = await deleteMcpServersByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists the external MCP servers the caller's org has registered.
  ///
  /// Lists the external MCP servers the caller's org has registered. Each record carries the URL and the name of the header its credential is injected into; the credential VALUE lives only in KMS and is never returned, so hasSecret is the whole of what this surface says about it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMcpServersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mcp/servers';

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

  /// Lists the external MCP servers the caller's org has registered.
  ///
  /// Lists the external MCP servers the caller's org has registered. Each record carries the URL and the name of the header its credential is injected into; the credential VALUE lives only in KMS and is never returned, so hasSecret is the whole of what this surface says about it.
  Future<McpServerList?> getMcpServers() async {
    final response = await getMcpServersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'McpServerList',) as McpServerList;
    
    }
    return null;
  }

  /// Gives the caller's org one more external MCP server, so its tools join the org's tool plane and the fleet's MCP door.
  ///
  /// Gives the caller's org one more external MCP server, so its tools join the org's tool plane and the fleet's MCP door. It is the ONE way an org gains a server, whether it typed the URL in or enabled a catalog listing: both write the SAME record, and `source` says which it was. A second registration path would be a second place for a server to exist, and then a second place to forget to check the credential.  The credential VALUE is sealed in KMS under a per-org ref; the row keeps only the URL, the header name to inject it into, and a has-secret flag — so a secret with no KMS configured is refused 503 rather than stored in the clear. The URL is SSRF-validated here and re-checked by the dialer at connect time, which is the DNS-rebinding defense.  Enabling a listing the org already enabled REVISES that server rather than adding a near-duplicate beside it, so a retried enable is the same one server. Answers 201 with the stored record.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateServerReq] createServerReq (required):
  Future<Response> postMcpServersWithHttpInfo(CreateServerReq createServerReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mcp/servers';

    // ignore: prefer_final_locals
    Object? postBody = createServerReq;

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

  /// Gives the caller's org one more external MCP server, so its tools join the org's tool plane and the fleet's MCP door.
  ///
  /// Gives the caller's org one more external MCP server, so its tools join the org's tool plane and the fleet's MCP door. It is the ONE way an org gains a server, whether it typed the URL in or enabled a catalog listing: both write the SAME record, and `source` says which it was. A second registration path would be a second place for a server to exist, and then a second place to forget to check the credential.  The credential VALUE is sealed in KMS under a per-org ref; the row keeps only the URL, the header name to inject it into, and a has-secret flag — so a secret with no KMS configured is refused 503 rather than stored in the clear. The URL is SSRF-validated here and re-checked by the dialer at connect time, which is the DNS-rebinding defense.  Enabling a listing the org already enabled REVISES that server rather than adding a near-duplicate beside it, so a retried enable is the same one server. Answers 201 with the stored record.
  ///
  /// Parameters:
  ///
  /// * [CreateServerReq] createServerReq (required):
  Future<MCPServer?> postMcpServers(CreateServerReq createServerReq,) async {
    final response = await postMcpServersWithHttpInfo(createServerReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MCPServer',) as MCPServer;
    
    }
    return null;
  }
}
