//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class RpcApi {
  RpcApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Forwards a JSON-RPC call to the named chain and returns its answer unchanged.
  ///
  /// Forwards a JSON-RPC call to the named chain and returns its answer unchanged. Only declared chains are reachable, and only to a caller with a validated principal — this is the deployment's upstream, not an open relay.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] chain (required):
  ///   Chain is the registry id, from the URL.
  ///
  /// * [RpcIn] rpcIn (required):
  Future<Response> postRpcByChainWithHttpInfo(String chain, RpcIn rpcIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/rpc/{chain}'
      .replaceAll('{chain}', chain);

    // ignore: prefer_final_locals
    Object? postBody = rpcIn;

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

  /// Forwards a JSON-RPC call to the named chain and returns its answer unchanged.
  ///
  /// Forwards a JSON-RPC call to the named chain and returns its answer unchanged. Only declared chains are reachable, and only to a caller with a validated principal — this is the deployment's upstream, not an open relay.
  ///
  /// Parameters:
  ///
  /// * [String] chain (required):
  ///   Chain is the registry id, from the URL.
  ///
  /// * [RpcIn] rpcIn (required):
  Future<RpcOut?> postRpcByChain(String chain, RpcIn rpcIn,) async {
    final response = await postRpcByChainWithHttpInfo(chain, rpcIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RpcOut',) as RpcOut;
    
    }
    return null;
  }
}
