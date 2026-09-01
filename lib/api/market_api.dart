//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class MarketApi {
  MarketApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Answers every chain this deployment can read, what is deployed on each, and what its automated market maker amounts to.
  ///
  /// Answers every chain this deployment can read, what is deployed on each, and what its automated market maker amounts to.  One call. It reads the chain registry, then every chain's indexer for its figures and its most recent active day, all at once — where a client doing it itself makes one registry request and two more per chain.  THE ROW IS THE UNIT OF TRUTH. Each carries its own reach, so one indexer being unreachable costs one row its figures and leaves the rest answered. A chain with no market maker deployed — the registry names no factory for it — answers `read` with totals of nothing, which is a fact about that chain and is not the same as a chain nobody could ask.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMarketChainsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/market/chains';

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

  /// Answers every chain this deployment can read, what is deployed on each, and what its automated market maker amounts to.
  ///
  /// Answers every chain this deployment can read, what is deployed on each, and what its automated market maker amounts to.  One call. It reads the chain registry, then every chain's indexer for its figures and its most recent active day, all at once — where a client doing it itself makes one registry request and two more per chain.  THE ROW IS THE UNIT OF TRUTH. Each carries its own reach, so one indexer being unreachable costs one row its figures and leaves the rest answered. A chain with no market maker deployed — the registry names no factory for it — answers `read` with totals of nothing, which is a fact about that chain and is not the same as a chain nobody could ask.
  Future<Roster?> getMarketChains() async {
    final response = await getMarketChainsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Roster',) as Roster;
    
    }
    return null;
  }

  /// Answers the automated market makers on one chain: their two tokens, their fee tier, and what has moved through each.
  ///
  /// Answers the automated market makers on one chain: their two tokens, their fee tier, and what has moved through each.  The two price fields on a pool are the ratio its own reserves stand at, as the indexer computed them. They are not a price ON either token and not a mark: nothing here derives one, ranks the pools, or names a route through them.  A chain with no market maker deployed answers `read` with no pools. That is the chain's real condition, and it is deliberately not the same answer as an indexer that could not be asked.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] chain:
  ///   Chain is the chain's slug — `cchain`, `zoo` — as `chains` reports it. It is the indexer's word for the chain and NOT the chain id: `96369`, `C` and `c-chain` all name nothing.
  Future<Response> getMarketPoolsWithHttpInfo({ String? chain, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/market/pools';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (chain != null) {
      queryParams.addAll(_queryParams('', 'chain', chain));
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

  /// Answers the automated market makers on one chain: their two tokens, their fee tier, and what has moved through each.
  ///
  /// Answers the automated market makers on one chain: their two tokens, their fee tier, and what has moved through each.  The two price fields on a pool are the ratio its own reserves stand at, as the indexer computed them. They are not a price ON either token and not a mark: nothing here derives one, ranks the pools, or names a route through them.  A chain with no market maker deployed answers `read` with no pools. That is the chain's real condition, and it is deliberately not the same answer as an indexer that could not be asked.
  ///
  /// Parameters:
  ///
  /// * [String] chain:
  ///   Chain is the chain's slug — `cchain`, `zoo` — as `chains` reports it. It is the indexer's word for the chain and NOT the chain id: `96369`, `C` and `c-chain` all name nothing.
  Future<Pools?> getMarketPools({ String? chain, }) async {
    final response = await getMarketPoolsWithHttpInfo( chain: chain, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Pools',) as Pools;
    
    }
    return null;
  }

  /// Answers which of the four settlement precompiles carry code on one chain.
  ///
  /// Answers which of the four settlement precompiles carry code on one chain.  An address with no code answers a call with empty data rather than an error, so \"this chain has no view precompile\" and \"this market was never opened\" reach a caller as the same silence — and only the second is a fact about a market. This says which it is, by asking the node for the code at each address.  It reads presence and nothing else. No market, no quote, no depth and no order is requested here, and `eth_getCode` is the only method this operation ever sends.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] chain:
  ///   Chain is the chain's slug — `cchain`, `zoo` — as `chains` reports it. It is the indexer's word for the chain and NOT the chain id: `96369`, `C` and `c-chain` all name nothing.
  Future<Response> getMarketSurveyWithHttpInfo({ String? chain, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/market/survey';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (chain != null) {
      queryParams.addAll(_queryParams('', 'chain', chain));
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

  /// Answers which of the four settlement precompiles carry code on one chain.
  ///
  /// Answers which of the four settlement precompiles carry code on one chain.  An address with no code answers a call with empty data rather than an error, so \"this chain has no view precompile\" and \"this market was never opened\" reach a caller as the same silence — and only the second is a fact about a market. This says which it is, by asking the node for the code at each address.  It reads presence and nothing else. No market, no quote, no depth and no order is requested here, and `eth_getCode` is the only method this operation ever sends.
  ///
  /// Parameters:
  ///
  /// * [String] chain:
  ///   Chain is the chain's slug — `cchain`, `zoo` — as `chains` reports it. It is the indexer's word for the chain and NOT the chain id: `96369`, `C` and `c-chain` all name nothing.
  Future<Survey?> getMarketSurvey({ String? chain, }) async {
    final response = await getMarketSurveyWithHttpInfo( chain: chain, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Survey',) as Survey;
    
    }
    return null;
  }

  /// Answers one token's daily history — open, high, low, close, price and volume per UTC day, oldest first.
  ///
  /// Answers one token's daily history — open, high, low, close, price and volume per UTC day, oldest first.  Every figure is the indexer's own arithmetic, passed through as the decimal string it computed. Nothing here rounds one, converts one, or fills a gap: a day the indexer holds no figure for arrives with that field absent, which says \"not indexed\" where a zero would say \"worth nothing\".
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] chain:
  ///
  /// * [String] at:
  ///   At is the token's contract address.
  Future<Response> getMarketTokenWithHttpInfo({ String? chain, String? at, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/market/token';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (chain != null) {
      queryParams.addAll(_queryParams('', 'chain', chain));
    }
    if (at != null) {
      queryParams.addAll(_queryParams('', 'at', at));
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

  /// Answers one token's daily history — open, high, low, close, price and volume per UTC day, oldest first.
  ///
  /// Answers one token's daily history — open, high, low, close, price and volume per UTC day, oldest first.  Every figure is the indexer's own arithmetic, passed through as the decimal string it computed. Nothing here rounds one, converts one, or fills a gap: a day the indexer holds no figure for arrives with that field absent, which says \"not indexed\" where a zero would say \"worth nothing\".
  ///
  /// Parameters:
  ///
  /// * [String] chain:
  ///
  /// * [String] at:
  ///   At is the token's contract address.
  Future<History?> getMarketToken({ String? chain, String? at, }) async {
    final response = await getMarketTokenWithHttpInfo( chain: chain, at: at, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'History',) as History;
    
    }
    return null;
  }

  /// Answers the tokens one chain's indexer has seen, with the decimals a caller needs to read any amount of one correctly.
  ///
  /// Answers the tokens one chain's indexer has seen, with the decimals a caller needs to read any amount of one correctly.  This is what the indexer INGESTED, which is not the same as what exists on the chain: a token nothing has traded has no row here, and this is not a registry of what is permitted or listed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] chain:
  ///   Chain is the chain's slug — `cchain`, `zoo` — as `chains` reports it. It is the indexer's word for the chain and NOT the chain id: `96369`, `C` and `c-chain` all name nothing.
  Future<Response> getMarketTokensWithHttpInfo({ String? chain, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/market/tokens';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (chain != null) {
      queryParams.addAll(_queryParams('', 'chain', chain));
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

  /// Answers the tokens one chain's indexer has seen, with the decimals a caller needs to read any amount of one correctly.
  ///
  /// Answers the tokens one chain's indexer has seen, with the decimals a caller needs to read any amount of one correctly.  This is what the indexer INGESTED, which is not the same as what exists on the chain: a token nothing has traded has no row here, and this is not a registry of what is permitted or listed.
  ///
  /// Parameters:
  ///
  /// * [String] chain:
  ///   Chain is the chain's slug — `cchain`, `zoo` — as `chains` reports it. It is the indexer's word for the chain and NOT the chain id: `96369`, `C` and `c-chain` all name nothing.
  Future<Tokens?> getMarketTokens({ String? chain, }) async {
    final response = await getMarketTokensWithHttpInfo( chain: chain, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Tokens',) as Tokens;
    
    }
    return null;
  }
}
