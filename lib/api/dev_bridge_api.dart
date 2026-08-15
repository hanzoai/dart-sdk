//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class DevBridgeApi {
  DevBridgeApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Upgrades to WebSocket and bridges JSON-RPC messages between the browser and a hanzo-app-server instance.
  ///
  /// Upgrades to WebSocket and bridges JSON-RPC messages between the browser and a hanzo-app-server instance.  In local mode (default): spawns hanzo-app-server as a child process. In remote mode (?remote=host:port): proxies to a remote app-server via TCP.  GET /api/dev-bridge?cwd=/path/to/project GET /api/dev-bridge?remote=host:port&cwd=/path/to/project
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDevBridgeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dev-bridge';

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

  /// Upgrades to WebSocket and bridges JSON-RPC messages between the browser and a hanzo-app-server instance.
  ///
  /// Upgrades to WebSocket and bridges JSON-RPC messages between the browser and a hanzo-app-server instance.  In local mode (default): spawns hanzo-app-server as a child process. In remote mode (?remote=host:port): proxies to a remote app-server via TCP.  GET /api/dev-bridge?cwd=/path/to/project GET /api/dev-bridge?remote=host:port&cwd=/path/to/project
  Future<void> getDevBridge() async {
    final response = await getDevBridgeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
