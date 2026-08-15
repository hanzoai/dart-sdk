//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class FinanceApi {
  FinanceApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

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
  Future<Response> getFinanceAccountsWithHttpInfo({ String? scope, String? org, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/finance/accounts';

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
  Future<AccountsOut?> getFinanceAccounts({ String? scope, String? org, }) async {
    final response = await getFinanceAccountsWithHttpInfo( scope: scope, org: org, );
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

  /// Answers the org's spendable prepaid balance typed for the finance surfaces: `availableCents`, `pendingCents`, `dueCents` and the `asOf` instant it was read.
  ///
  /// Answers the org's spendable prepaid balance typed for the finance surfaces: `availableCents`, `pendingCents`, `dueCents` and the `asOf` instant it was read.  It is the SAME wallet read /v1/billing/balance answers — one function, called by both, so the two surfaces cannot drift into disagreeing about a customer's money. Reshaped, never re-metered. Co-resident the number comes straight out of the org's own double-entry ledger file.  `dueCents` is a structural 0: this is a PREPAID wallet with no open-invoice debt, so nothing is ever owed and a non-zero value here would be an invention. `pendingCents` is 0 on the co-resident ledger, where authorization holds are never posted; only a split-deploy upstream reports holds, and there spendable is the balance NET of them, floored at 0 — a fully-held wallet reports 0 rather than money the gate would refuse.  Cents are ROUNDED from the ledger's exact 18-decimal USD. Scoped to the caller's own org from the validated IAM owner claim; 401 without a validated principal, and a balance that cannot be read is 502 — never 0, because unknown is not broke.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getFinanceBalanceWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/finance/balance';

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

  /// Answers the org's spendable prepaid balance typed for the finance surfaces: `availableCents`, `pendingCents`, `dueCents` and the `asOf` instant it was read.
  ///
  /// Answers the org's spendable prepaid balance typed for the finance surfaces: `availableCents`, `pendingCents`, `dueCents` and the `asOf` instant it was read.  It is the SAME wallet read /v1/billing/balance answers — one function, called by both, so the two surfaces cannot drift into disagreeing about a customer's money. Reshaped, never re-metered. Co-resident the number comes straight out of the org's own double-entry ledger file.  `dueCents` is a structural 0: this is a PREPAID wallet with no open-invoice debt, so nothing is ever owed and a non-zero value here would be an invention. `pendingCents` is 0 on the co-resident ledger, where authorization holds are never posted; only a split-deploy upstream reports holds, and there spendable is the balance NET of them, floored at 0 — a fully-held wallet reports 0 rather than money the gate would refuse.  Cents are ROUNDED from the ledger's exact 18-decimal USD. Scoped to the caller's own org from the validated IAM owner claim; 401 without a validated principal, and a balance that cannot be read is 502 — never 0, because unknown is not broke.
  Future<FinanceBalanceView?> getFinanceBalance() async {
    final response = await getFinanceBalanceWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FinanceBalanceView',) as FinanceBalanceView;
    
    }
    return null;
  }

  /// Answers the money PUT IN to the org's wallet — each staff grant, promo and settled top-up as a positive row with its id, label, cents and grant time.
  ///
  /// Answers the money PUT IN to the org's wallet — each staff grant, promo and settled top-up as a positive row with its id, label, cents and grant time.  Spend is not a credit. A posting counts here only when it moved money IN; debits belong to /v1/finance/usage (aggregated) and /v1/finance/ledger (signed). All three project ONE read of the same ledger through ONE vocabulary for what a posting means, so they cannot disagree about a row — nor silently drop one, which is what an empty credits page against a funded wallet was.  `label` falls back through the posting's notes, then its tags, then a bare Credit — it is a description, never an identifier. `remainingCents` is OMITTED: the wallet is one running balance, not per-grant buckets, so no grant has a remainder to report and spend cannot be attributed to the credit that funded it.  Cents are ROUNDED from the ledger's exact 18-decimal USD. Scoped to the caller's own org; 401 without a validated principal. An org with no grants gets an empty array — honest, never a fabricated figure.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getFinanceCreditsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/finance/credits';

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

  /// Answers the money PUT IN to the org's wallet — each staff grant, promo and settled top-up as a positive row with its id, label, cents and grant time.
  ///
  /// Answers the money PUT IN to the org's wallet — each staff grant, promo and settled top-up as a positive row with its id, label, cents and grant time.  Spend is not a credit. A posting counts here only when it moved money IN; debits belong to /v1/finance/usage (aggregated) and /v1/finance/ledger (signed). All three project ONE read of the same ledger through ONE vocabulary for what a posting means, so they cannot disagree about a row — nor silently drop one, which is what an empty credits page against a funded wallet was.  `label` falls back through the posting's notes, then its tags, then a bare Credit — it is a description, never an identifier. `remainingCents` is OMITTED: the wallet is one running balance, not per-grant buckets, so no grant has a remainder to report and spend cannot be attributed to the credit that funded it.  Cents are ROUNDED from the ledger's exact 18-decimal USD. Scoped to the caller's own org; 401 without a validated principal. An org with no grants gets an empty array — honest, never a fabricated figure.
  Future<List<FinanceCredit>?> getFinanceCredits() async {
    final response = await getFinanceCreditsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FinanceCredit>') as List)
        .cast<FinanceCredit>()
        .toList(growable: false);

    }
    return null;
  }

  /// Answers an empty typed array, always.
  ///
  /// Answers an empty typed array, always. The fleet bills a PREPAID wallet — money in, metered debits out — and issues no customer invoices, so there is no invoice ledger to project. Nothing here is a fabricated figure and nothing is hidden behind a filter.  The shape is fixed, so the finance UI renders this lane today and the day an invoice ledger exists it fills with ZERO client change. Spend that actually happened is /v1/finance/usage; money in and out is /v1/finance/ledger; what is left to spend is /v1/finance/balance.  The gate is real even though the body is empty: 401 without a validated principal. It is the only finance read that touches no store, so it is also the only one that cannot 502.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getFinanceInvoicesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/finance/invoices';

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

  /// Answers an empty typed array, always.
  ///
  /// Answers an empty typed array, always. The fleet bills a PREPAID wallet — money in, metered debits out — and issues no customer invoices, so there is no invoice ledger to project. Nothing here is a fabricated figure and nothing is hidden behind a filter.  The shape is fixed, so the finance UI renders this lane today and the day an invoice ledger exists it fills with ZERO client change. Spend that actually happened is /v1/finance/usage; money in and out is /v1/finance/ledger; what is left to spend is /v1/finance/balance.  The gate is real even though the body is empty: 401 without a validated principal. It is the only finance read that touches no store, so it is also the only one that cannot 502.
  Future<List<FinanceInvoice>?> getFinanceInvoices() async {
    final response = await getFinanceInvoicesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FinanceInvoice>') as List)
        .cast<FinanceInvoice>()
        .toList(growable: false);

    }
    return null;
  }

  /// Answers the org's own postings inside `range=`, each as a signed entry: a DEPOSIT CREDITS the wallet (positive, account `credits:<org>`) and every other posting DEBITS it (negative, account `usage:<org>`), described by its notes or its tags.
  ///
  /// Answers the org's own postings inside `range=`, each as a signed entry: a DEPOSIT CREDITS the wallet (positive, account `credits:<org>`) and every other posting DEBITS it (negative, account `usage:<org>`), described by its notes or its tags. The sign is the posting's own meaning, read through ONE vocabulary shared with the ledger that wrote it — a reader with its own spelling for `deposit` rendered a customer's grant as a charge.  This is the closest projection of the truth. The org's double-entry postings are the source of record — balanced, only ever appended, one file per org — and this lane is that list, widest of the three: /v1/finance/credits is its deposit half and /v1/finance/usage is its withdrawal half rolled up. All three come from ONE read, which is why they cannot contradict each other, and all three answer 501 where no commerce link is configured rather than reporting an empty wallet.  A row whose timestamp will not parse is KEPT rather than dropped — a malformed date must show up in a money list, not vanish from it. `balanceCents` is omitted: these are MOVEMENTS, and the standing balance is /v1/finance/balance.  Cents are ROUNDED from the ledger's exact 18-decimal USD. Scoped to the caller's own org, where the org's ledger file is the tenant boundary; 401 without a validated principal.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range is the window: 24h, 7d, 30d or 90d. Anything else — including absent — is 30d, so a typo silently widens the window to a month rather than failing.
  Future<Response> getFinanceLedgerWithHttpInfo({ String? range, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/finance/ledger';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (range != null) {
      queryParams.addAll(_queryParams('', 'range', range));
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

  /// Answers the org's own postings inside `range=`, each as a signed entry: a DEPOSIT CREDITS the wallet (positive, account `credits:<org>`) and every other posting DEBITS it (negative, account `usage:<org>`), described by its notes or its tags.
  ///
  /// Answers the org's own postings inside `range=`, each as a signed entry: a DEPOSIT CREDITS the wallet (positive, account `credits:<org>`) and every other posting DEBITS it (negative, account `usage:<org>`), described by its notes or its tags. The sign is the posting's own meaning, read through ONE vocabulary shared with the ledger that wrote it — a reader with its own spelling for `deposit` rendered a customer's grant as a charge.  This is the closest projection of the truth. The org's double-entry postings are the source of record — balanced, only ever appended, one file per org — and this lane is that list, widest of the three: /v1/finance/credits is its deposit half and /v1/finance/usage is its withdrawal half rolled up. All three come from ONE read, which is why they cannot contradict each other, and all three answer 501 where no commerce link is configured rather than reporting an empty wallet.  A row whose timestamp will not parse is KEPT rather than dropped — a malformed date must show up in a money list, not vanish from it. `balanceCents` is omitted: these are MOVEMENTS, and the standing balance is /v1/finance/balance.  Cents are ROUNDED from the ledger's exact 18-decimal USD. Scoped to the caller's own org, where the org's ledger file is the tenant boundary; 401 without a validated principal.
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range is the window: 24h, 7d, 30d or 90d. Anything else — including absent — is 30d, so a typo silently widens the window to a month rather than failing.
  Future<List<FinanceLedgerEntry>?> getFinanceLedger({ String? range, }) async {
    final response = await getFinanceLedgerWithHttpInfo( range: range, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FinanceLedgerEntry>') as List)
        .cast<FinanceLedgerEntry>()
        .toList(growable: false);

    }
    return null;
  }

  /// Answers the masked card descriptors for the caller's resolved WALLET — id, brand, last four, expiry, default flag — reshaped into the finance contract.
  ///
  /// Answers the masked card descriptors for the caller's resolved WALLET — id, brand, last four, expiry, default flag — reshaped into the finance contract.  It re-masks defensively: whatever the upstream sends, at most the trailing four DIGITS survive into `last4`. No card number, no security code and no processor token exists in this shape at all, so an over-returning upstream still cannot leak one through this lane.  Read the sibling difference before trusting a mismatch. This keys the store on the resolved wallet; /v1/billing/methods keys it on the org SLUG, which is also the key a card is SAVED under — identical for an org paying from its shared pool, different wherever the payer is a person. When the two lists disagree, the billing one is what was saved.  401 without a validated principal. An upstream that answers non-2xx or cannot be reached is 502 — never an empty list, because no cards and could not ask must not look alike.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getFinancePaymentMethodsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/finance/payment-methods';

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

  /// Answers the masked card descriptors for the caller's resolved WALLET — id, brand, last four, expiry, default flag — reshaped into the finance contract.
  ///
  /// Answers the masked card descriptors for the caller's resolved WALLET — id, brand, last four, expiry, default flag — reshaped into the finance contract.  It re-masks defensively: whatever the upstream sends, at most the trailing four DIGITS survive into `last4`. No card number, no security code and no processor token exists in this shape at all, so an over-returning upstream still cannot leak one through this lane.  Read the sibling difference before trusting a mismatch. This keys the store on the resolved wallet; /v1/billing/methods keys it on the org SLUG, which is also the key a card is SAVED under — identical for an org paying from its shared pool, different wherever the payer is a person. When the two lists disagree, the billing one is what was saved.  401 without a validated principal. An upstream that answers non-2xx or cannot be reached is 502 — never an empty list, because no cards and could not ask must not look alike.
  Future<List<FinancePaymentMethod>?> getFinancePaymentMethods() async {
    final response = await getFinancePaymentMethodsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FinancePaymentMethod>') as List)
        .cast<FinancePaymentMethod>()
        .toList(growable: false);

    }
    return null;
  }

  /// Returns the reserve fund's health and the current revenue-share policy for any validated caller.
  ///
  /// Returns the reserve fund's health and the current revenue-share policy for any validated caller. It is a TRANSPARENCY view — a partner or author can see that the pool backing their payouts is solvent — and NOT per-org money, which is the customer's own commerce balance at /v1/billing/balance. The policy is read-only here; only a SuperAdmin sets it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getFinanceTreasuryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/finance/treasury';

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
  Future<TreasuryReport?> getFinanceTreasury() async {
    final response = await getFinanceTreasuryWithHttpInfo();
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

  /// Answers metered spend inside `range=`: the window total, a time series to plot, and one line per usage TAG.
  ///
  /// Answers metered spend inside `range=`: the window total, a time series to plot, and one line per usage TAG. Aggregated from the same charged ledger the balance comes off — projected, never re-metered.  Only DEBIT postings count; deposits are credits and are excluded. Buckets are hourly at 24h and daily otherwise, in UTC; a posting whose timestamp will not parse is dropped rather than mis-bucketed.  Lines group by the posting's tag (`Usage` where it carries none) and `units` counts POSTINGS, not tokens. The dimensions here are time and tag. For per-request rows and a per-PRODUCT breakdown, read /v1/billing/usage instead — the same money, cut a different way.  Cents are ROUNDED from the ledger's exact 18-decimal USD, so a window made of sub-cent token calls totals LOW here. Scoped to the caller's own org; 401 without a validated principal.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range is the window: 24h, 7d, 30d or 90d. Anything else — including absent — is 30d, so a typo silently widens the window to a month rather than failing.
  Future<Response> getFinanceUsageWithHttpInfo({ String? range, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/finance/usage';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (range != null) {
      queryParams.addAll(_queryParams('', 'range', range));
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

  /// Answers metered spend inside `range=`: the window total, a time series to plot, and one line per usage TAG.
  ///
  /// Answers metered spend inside `range=`: the window total, a time series to plot, and one line per usage TAG. Aggregated from the same charged ledger the balance comes off — projected, never re-metered.  Only DEBIT postings count; deposits are credits and are excluded. Buckets are hourly at 24h and daily otherwise, in UTC; a posting whose timestamp will not parse is dropped rather than mis-bucketed.  Lines group by the posting's tag (`Usage` where it carries none) and `units` counts POSTINGS, not tokens. The dimensions here are time and tag. For per-request rows and a per-PRODUCT breakdown, read /v1/billing/usage instead — the same money, cut a different way.  Cents are ROUNDED from the ledger's exact 18-decimal USD, so a window made of sub-cent token calls totals LOW here. Scoped to the caller's own org; 401 without a validated principal.
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range is the window: 24h, 7d, 30d or 90d. Anything else — including absent — is 30d, so a typo silently widens the window to a month rather than failing.
  Future<FinanceUsageView?> getFinanceUsage({ String? range, }) async {
    final response = await getFinanceUsageWithHttpInfo( range: range, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FinanceUsageView',) as FinanceUsageView;
    
    }
    return null;
  }
}
