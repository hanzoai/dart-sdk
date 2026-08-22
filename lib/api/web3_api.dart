//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class Web3Api {
  Web3Api([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Reports the chains this deployment can reach.
  ///
  /// Reports the chains this deployment can reach. The list is the declared registry, so it is exactly what /v1/web3/rpc will accept — a chain that appears here is one this deployment actually has an upstream for.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getWeb3ChainsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/web3/chains';

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

  /// Reports the chains this deployment can reach.
  ///
  /// Reports the chains this deployment can reach. The list is the declared registry, so it is exactly what /v1/web3/rpc will accept — a chain that appears here is one this deployment actually has an upstream for.
  Future<ChainList?> getWeb3Chains() async {
    final response = await getWeb3ChainsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ChainList',) as ChainList;
    
    }
    return null;
  }

  /// Reports one chain and whether its upstream is answering.
  ///
  /// Reports one chain and whether its upstream is answering. An unreachable chain is still a 200 with live:false — the chain is configured, which is a different fact from the chain being up, and a 502 here would make a console page error rather than show the outage.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] chain (required):
  ///   Chain is the registry id, as in /v1/web3/chains/lux.
  Future<Response> getWeb3ChainsByChainWithHttpInfo(String chain,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/web3/chains/{chain}'
      .replaceAll('{chain}', chain);

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

  /// Reports one chain and whether its upstream is answering.
  ///
  /// Reports one chain and whether its upstream is answering. An unreachable chain is still a 200 with live:false — the chain is configured, which is a different fact from the chain being up, and a 502 here would make a console page error rather than show the outage.
  ///
  /// Parameters:
  ///
  /// * [String] chain (required):
  ///   Chain is the registry id, as in /v1/web3/chains/lux.
  Future<ChainStatus?> getWeb3ChainsByChain(String chain,) async {
    final response = await getWeb3ChainsByChainWithHttpInfo(chain,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ChainStatus',) as ChainStatus;
    
    }
    return null;
  }

  /// Reads an address's native balance on a chain.
  ///
  /// Reads an address's native balance on a chain.  ERC-20 positions are NOT enumerated here: eth_getBalance answers the native one, but \"every token this address holds\" is an indexer question — there is no RPC call that answers it, and walking a token list would return a number that silently omits whatever the list missed. explorer owns the indexer relationship; this returns the balance the chain itself can prove.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] chain (required):
  ///   Chain is the registry id.
  ///
  /// * [String] address (required):
  ///   Address is the account, 0x-prefixed.
  Future<Response> getWeb3TokensByChainByAddressWithHttpInfo(String chain, String address,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/web3/tokens/{chain}/{address}'
      .replaceAll('{chain}', chain)
      .replaceAll('{address}', address);

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

  /// Reads an address's native balance on a chain.
  ///
  /// Reads an address's native balance on a chain.  ERC-20 positions are NOT enumerated here: eth_getBalance answers the native one, but \"every token this address holds\" is an indexer question — there is no RPC call that answers it, and walking a token list would return a number that silently omits whatever the list missed. explorer owns the indexer relationship; this returns the balance the chain itself can prove.
  ///
  /// Parameters:
  ///
  /// * [String] chain (required):
  ///   Chain is the registry id.
  ///
  /// * [String] address (required):
  ///   Address is the account, 0x-prefixed.
  Future<Balances?> getWeb3TokensByChainByAddress(String chain, String address,) async {
    final response = await getWeb3TokensByChainByAddressWithHttpInfo(chain, address,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Balances',) as Balances;
    
    }
    return null;
  }

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
  Future<Response> postWeb3RpcByChainWithHttpInfo(String chain, RpcIn rpcIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/web3/rpc/{chain}'
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
  Future<RpcOut?> postWeb3RpcByChain(String chain, RpcIn rpcIn,) async {
    final response = await postWeb3RpcByChainWithHttpInfo(chain, rpcIn,);
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
