//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class X402Api {
  X402Api([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Settlement reads one x402 payment receipt by id.
  ///
  /// Settlement reads one x402 payment receipt by id.  It is scoped to the caller's PAYER org — the ledger that was debited — so one tenant can never read another's settlement, and an id that exists but belongs to somebody else is a 404 exactly like one that does not exist. A caller with no billable identity is refused outright.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the settlement id from the URL — the deterministic keccak(from|nonce) key an x402 receipt is issued under (the `id` field of a Receipt, and the `transaction` of the SettlementResponse on the PAYMENT-RESPONSE header a paid request answers with).
  Future<Response> getX402SettlementsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/x402/settlements/{id}'
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

  /// Settlement reads one x402 payment receipt by id.
  ///
  /// Settlement reads one x402 payment receipt by id.  It is scoped to the caller's PAYER org — the ledger that was debited — so one tenant can never read another's settlement, and an id that exists but belongs to somebody else is a 404 exactly like one that does not exist. A caller with no billable identity is refused outright.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the settlement id from the URL — the deterministic keccak(from|nonce) key an x402 receipt is issued under (the `id` field of a Receipt, and the `transaction` of the SettlementResponse on the PAYMENT-RESPONSE header a paid request answers with).
  Future<Receipt?> getX402SettlementsById(String id,) async {
    final response = await getX402SettlementsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Receipt',) as Receipt;
    
    }
    return null;
  }
}
