//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class OraclesApi {
  OraclesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Reports the on-chain price/data oracles from the graph's O-Chain PriceFeed registry.
  ///
  /// Reports the on-chain price/data oracles from the graph's O-Chain PriceFeed registry. A reachable graph with no feeds answers an honest empty list; an unreachable or erroring graph likewise degrades to an empty list at 200 rather than a 502, so the console never error-toasts. No feed is ever fabricated.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getOraclesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/oracles';

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

  /// Reports the on-chain price/data oracles from the graph's O-Chain PriceFeed registry.
  ///
  /// Reports the on-chain price/data oracles from the graph's O-Chain PriceFeed registry. A reachable graph with no feeds answers an honest empty list; an unreachable or erroring graph likewise degrades to an empty list at 200 rather than a 502, so the console never error-toasts. No feed is ever fabricated.
  Future<OraclesOut?> getOracles() async {
    final response = await getOraclesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OraclesOut',) as OraclesOut;
    
    }
    return null;
  }
}
