//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class ChainsApi {
  ChainsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Reports the chains this deployment can reach.
  ///
  /// Reports the chains this deployment can reach. The list is the declared registry, so it is exactly what /v1/rpc will accept — a chain that appears here is one this deployment actually has an upstream for.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getChainsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/chains';

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
  /// Reports the chains this deployment can reach. The list is the declared registry, so it is exactly what /v1/rpc will accept — a chain that appears here is one this deployment actually has an upstream for.
  Future<ChainList?> getChains() async {
    final response = await getChainsWithHttpInfo();
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
  ///   Chain is the registry id, as in /v1/chains/lux.
  Future<Response> getChainsByChainWithHttpInfo(String chain,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/chains/{chain}'
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
  ///   Chain is the registry id, as in /v1/chains/lux.
  Future<ChainStatus?> getChainsByChain(String chain,) async {
    final response = await getChainsByChainWithHttpInfo(chain,);
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
}
