//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class TreasuryApi {
  TreasuryApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns the reserve fund's health and the current revenue-share policy for any validated caller.
  ///
  /// Returns the reserve fund's health and the current revenue-share policy for any validated caller. It is a TRANSPARENCY view — a partner or author can see that the pool backing their payouts is solvent — and NOT per-org money, which is the customer's own commerce balance at /v1/billing/balance. The policy is read-only here; only a SuperAdmin sets it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTreasuryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/treasury';

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

  /// Returns the reserve fund's health and the current revenue-share policy for any validated caller.
  ///
  /// Returns the reserve fund's health and the current revenue-share policy for any validated caller. It is a TRANSPARENCY view — a partner or author can see that the pool backing their payouts is solvent — and NOT per-org money, which is the customer's own commerce balance at /v1/billing/balance. The policy is read-only here; only a SuperAdmin sets it.
  Future<TreasuryReport?> getTreasury() async {
    final response = await getTreasuryWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TreasuryReport',) as TreasuryReport;
    
    }
    return null;
  }

  /// Returns the ledger accounts the caller may see, with their balances.
  ///
  /// Returns the ledger accounts the caller may see, with their balances. It is tenant-isolated SERVER-SIDE: an ordinary caller sees ONLY accounts under its own \"org:<tenant>:\" prefix, never house accounts and never another tenant's. A SuperAdmin may widen with ?scope=house (the reserve, revenue and payout house accounts) or ?org=<tenant> — the only way to cross the tenant boundary, and only for platform sudo. The answer is honestly empty until a tenant has ledger postings.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] scope:
  ///   Scope is \"house\" to read the reserve/revenue/payout house accounts. SuperAdmin only.
  ///
  /// * [String] org:
  ///   Org names another tenant to read. SuperAdmin only; ignored when scope=house.
  Future<Response> getTreasuryAccountsWithHttpInfo({ String? scope, String? org, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/treasury/accounts';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (scope != null) {
      queryParams.addAll(_queryParams('', 'scope', scope));
    }
    if (org != null) {
      queryParams.addAll(_queryParams('', 'org', org));
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

  /// Returns the ledger accounts the caller may see, with their balances.
  ///
  /// Returns the ledger accounts the caller may see, with their balances. It is tenant-isolated SERVER-SIDE: an ordinary caller sees ONLY accounts under its own \"org:<tenant>:\" prefix, never house accounts and never another tenant's. A SuperAdmin may widen with ?scope=house (the reserve, revenue and payout house accounts) or ?org=<tenant> — the only way to cross the tenant boundary, and only for platform sudo. The answer is honestly empty until a tenant has ledger postings.
  ///
  /// Parameters:
  ///
  /// * [String] scope:
  ///   Scope is \"house\" to read the reserve/revenue/payout house accounts. SuperAdmin only.
  ///
  /// * [String] org:
  ///   Org names another tenant to read. SuperAdmin only; ignored when scope=house.
  Future<AccountsOut?> getTreasuryAccounts({ String? scope, String? org, }) async {
    final response = await getTreasuryAccountsWithHttpInfo( scope: scope, org: org, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccountsOut',) as AccountsOut;
    
    }
    return null;
  }
}
