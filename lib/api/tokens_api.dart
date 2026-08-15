//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class TokensApi {
  TokensApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

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
  Future<Response> getTokensByChainByAddressWithHttpInfo(String chain, String address,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tokens/{chain}/{address}'
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
  Future<Balances?> getTokensByChainByAddress(String chain, String address,) async {
    final response = await getTokensByChainByAddressWithHttpInfo(chain, address,);
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
}
