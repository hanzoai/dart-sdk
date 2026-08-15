//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class BooksApi {
  BooksApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns the org's chart of accounts — the seeded fixed chart every posting key in the ledger refers to.
  ///
  /// Returns the org's chart of accounts — the seeded fixed chart every posting key in the ledger refers to.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sandbox:
  ///   Sandbox reads the org's SANDBOX ledger when it is exactly \"true\"; anything else reads the live one.
  Future<Response> getBooksAccountsWithHttpInfo({ String? sandbox, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/books/accounts';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sandbox != null) {
      queryParams.addAll(_queryParams('', 'sandbox', sandbox));
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

  /// Returns the org's chart of accounts — the seeded fixed chart every posting key in the ledger refers to.
  ///
  /// Returns the org's chart of accounts — the seeded fixed chart every posting key in the ledger refers to.
  ///
  /// Parameters:
  ///
  /// * [String] sandbox:
  ///   Sandbox reads the org's SANDBOX ledger when it is exactly \"true\"; anything else reads the live one.
  Future<List<Account>?> getBooksAccounts({ String? sandbox, }) async {
    final response = await getBooksAccountsWithHttpInfo( sandbox: sandbox, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Account>') as List)
        .cast<Account>()
        .toList(growable: false);

    }
    return null;
  }

  /// Returns the org's normalized bank transactions, newest first — every row the import and connector paths have ingested, with its amount in exact cents, its direction, and whether it has been matched to a voucher yet.
  ///
  /// Returns the org's normalized bank transactions, newest first — every row the import and connector paths have ingested, with its amount in exact cents, its direction, and whether it has been matched to a voucher yet.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sandbox:
  ///   Sandbox reads the org's SANDBOX ledger when it is exactly \"true\".
  ///
  /// * [int] limit:
  ///   Limit caps how many rows come back; 500 when absent or not positive.
  Future<Response> getBooksBankTransactionsWithHttpInfo({ String? sandbox, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/books/bank/transactions';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sandbox != null) {
      queryParams.addAll(_queryParams('', 'sandbox', sandbox));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// Returns the org's normalized bank transactions, newest first — every row the import and connector paths have ingested, with its amount in exact cents, its direction, and whether it has been matched to a voucher yet.
  ///
  /// Returns the org's normalized bank transactions, newest first — every row the import and connector paths have ingested, with its amount in exact cents, its direction, and whether it has been matched to a voucher yet.
  ///
  /// Parameters:
  ///
  /// * [String] sandbox:
  ///   Sandbox reads the org's SANDBOX ledger when it is exactly \"true\".
  ///
  /// * [int] limit:
  ///   Limit caps how many rows come back; 500 when absent or not positive.
  Future<List<BankTxnRow>?> getBooksBankTransactions({ String? sandbox, int? limit, }) async {
    final response = await getBooksBankTransactionsWithHttpInfo( sandbox: sandbox, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<BankTxnRow>') as List)
        .cast<BankTxnRow>()
        .toList(growable: false);

    }
    return null;
  }

  /// Returns the org's unmatched bank inflows and their open clarifying questions — the queue a human answers so an unexplained deposit is never guessed into revenue.
  ///
  /// Returns the org's unmatched bank inflows and their open clarifying questions — the queue a human answers so an unexplained deposit is never guessed into revenue.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sandbox:
  ///   Sandbox reads the org's SANDBOX ledger when it is exactly \"true\"; anything else reads the live one.
  Future<Response> getBooksBankUnreconciledWithHttpInfo({ String? sandbox, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/books/bank/unreconciled';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sandbox != null) {
      queryParams.addAll(_queryParams('', 'sandbox', sandbox));
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

  /// Returns the org's unmatched bank inflows and their open clarifying questions — the queue a human answers so an unexplained deposit is never guessed into revenue.
  ///
  /// Returns the org's unmatched bank inflows and their open clarifying questions — the queue a human answers so an unexplained deposit is never guessed into revenue.
  ///
  /// Parameters:
  ///
  /// * [String] sandbox:
  ///   Sandbox reads the org's SANDBOX ledger when it is exactly \"true\"; anything else reads the live one.
  Future<UnreconciledOut?> getBooksBankUnreconciled({ String? sandbox, }) async {
    final response = await getBooksBankUnreconciledWithHttpInfo( sandbox: sandbox, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UnreconciledOut',) as UnreconciledOut;
    
    }
    return null;
  }

  /// Returns the complete financial package for the caller's org over (from, to]: the trial balance, the P&L, the balance sheet, and the GL detail behind them — the four statements a tax preparer or an investor asks for, assembled from the one ledger in a single read so they cannot disagree with each other.
  ///
  /// Returns the complete financial package for the caller's org over (from, to]: the trial balance, the P&L, the balance sheet, and the GL detail behind them — the four statements a tax preparer or an investor asks for, assembled from the one ledger in a single read so they cannot disagree with each other.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sandbox:
  ///   Sandbox reads the org's SANDBOX ledger when it is exactly \"true\".
  ///
  /// * [String] from:
  ///   From is the RFC3339 start of the window, exclusive. Empty means all time.
  ///
  /// * [String] to:
  ///   To is the RFC3339 end of the window, inclusive. Empty means up to now.
  ///
  /// * [String] format:
  ///   Format is the export encoding. Only \"json\" is supported; empty means json.
  ///
  /// * [int] limit:
  ///   Limit caps the GL detail rows included as the audit trail; 5000 when absent or not positive.
  Future<Response> getBooksExportWithHttpInfo({ String? sandbox, String? from, String? to, String? format, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/books/export';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sandbox != null) {
      queryParams.addAll(_queryParams('', 'sandbox', sandbox));
    }
    if (from != null) {
      queryParams.addAll(_queryParams('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_queryParams('', 'to', to));
    }
    if (format != null) {
      queryParams.addAll(_queryParams('', 'format', format));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// Returns the complete financial package for the caller's org over (from, to]: the trial balance, the P&L, the balance sheet, and the GL detail behind them — the four statements a tax preparer or an investor asks for, assembled from the one ledger in a single read so they cannot disagree with each other.
  ///
  /// Returns the complete financial package for the caller's org over (from, to]: the trial balance, the P&L, the balance sheet, and the GL detail behind them — the four statements a tax preparer or an investor asks for, assembled from the one ledger in a single read so they cannot disagree with each other.
  ///
  /// Parameters:
  ///
  /// * [String] sandbox:
  ///   Sandbox reads the org's SANDBOX ledger when it is exactly \"true\".
  ///
  /// * [String] from:
  ///   From is the RFC3339 start of the window, exclusive. Empty means all time.
  ///
  /// * [String] to:
  ///   To is the RFC3339 end of the window, inclusive. Empty means up to now.
  ///
  /// * [String] format:
  ///   Format is the export encoding. Only \"json\" is supported; empty means json.
  ///
  /// * [int] limit:
  ///   Limit caps the GL detail rows included as the audit trail; 5000 when absent or not positive.
  Future<FinancialPackage?> getBooksExport({ String? sandbox, String? from, String? to, String? format, int? limit, }) async {
    final response = await getBooksExportWithHttpInfo( sandbox: sandbox, from: from, to: to, format: format, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FinancialPackage',) as FinancialPackage;
    
    }
    return null;
  }

  /// ListGL returns the org's most recent GL Entry rows, newest first.
  ///
  /// ListGL returns the org's most recent GL Entry rows, newest first. This is the raw double-entry detail behind every statement: one row per leg, with its debit, credit, posting time and the source that booked it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sandbox:
  ///   Sandbox reads the org's SANDBOX ledger when it is exactly \"true\".
  ///
  /// * [int] limit:
  ///   Limit caps how many rows come back; 500 when absent or not positive.
  Future<Response> getBooksGlWithHttpInfo({ String? sandbox, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/books/gl';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sandbox != null) {
      queryParams.addAll(_queryParams('', 'sandbox', sandbox));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// ListGL returns the org's most recent GL Entry rows, newest first.
  ///
  /// ListGL returns the org's most recent GL Entry rows, newest first. This is the raw double-entry detail behind every statement: one row per leg, with its debit, credit, posting time and the source that booked it.
  ///
  /// Parameters:
  ///
  /// * [String] sandbox:
  ///   Sandbox reads the org's SANDBOX ledger when it is exactly \"true\".
  ///
  /// * [int] limit:
  ///   Limit caps how many rows come back; 500 when absent or not positive.
  Future<List<GLRow>?> getBooksGl({ String? sandbox, int? limit, }) async {
    final response = await getBooksGlWithHttpInfo( sandbox: sandbox, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GLRow>') as List)
        .cast<GLRow>()
        .toList(growable: false);

    }
    return null;
  }

  /// Returns the org's open document queue — everything uploaded but not yet booked, newest first, each with its extracted summary and the confidence the scanner resolved its category at.
  ///
  /// Returns the org's open document queue — everything uploaded but not yet booked, newest first, each with its extracted summary and the confidence the scanner resolved its category at. A booked document drops out of the queue.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sandbox:
  ///   Sandbox reads the org's SANDBOX ledger when it is exactly \"true\"; anything else reads the live one.
  Future<Response> getBooksInboxWithHttpInfo({ String? sandbox, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/books/inbox';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sandbox != null) {
      queryParams.addAll(_queryParams('', 'sandbox', sandbox));
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

  /// Returns the org's open document queue — everything uploaded but not yet booked, newest first, each with its extracted summary and the confidence the scanner resolved its category at.
  ///
  /// Returns the org's open document queue — everything uploaded but not yet booked, newest first, each with its extracted summary and the confidence the scanner resolved its category at. A booked document drops out of the queue.
  ///
  /// Parameters:
  ///
  /// * [String] sandbox:
  ///   Sandbox reads the org's SANDBOX ledger when it is exactly \"true\"; anything else reads the live one.
  Future<InboxOut?> getBooksInbox({ String? sandbox, }) async {
    final response = await getBooksInboxWithHttpInfo( sandbox: sandbox, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxOut',) as InboxOut;
    
    }
    return null;
  }

  /// Metrics returns the org's deterministic SaaS-metrics snapshot over an optional (from, to] window — MRR, ARR, revenue, COGS, burn, gross margin, net income, cash, deferred revenue, monthly burn and runway — as raw int64-cent figures AND the same figures already formatted.
  ///
  /// Metrics returns the org's deterministic SaaS-metrics snapshot over an optional (from, to] window — MRR, ARR, revenue, COGS, burn, gross margin, net income, cash, deferred revenue, monthly burn and runway — as raw int64-cent figures AND the same figures already formatted. Every number is the ledger, aggregated the one way the books define it, never a guess; it is the grounded read the unified /v1/ask advisor replays.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sandbox:
  ///   Sandbox reads the org's SANDBOX ledger when it is exactly \"true\".
  ///
  /// * [String] from:
  ///   From is the RFC3339 start of the window, exclusive. Empty means all time.
  ///
  /// * [String] to:
  ///   To is the RFC3339 end of the window, inclusive. Empty means up to now.
  Future<Response> getBooksMetricsWithHttpInfo({ String? sandbox, String? from, String? to, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/books/metrics';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sandbox != null) {
      queryParams.addAll(_queryParams('', 'sandbox', sandbox));
    }
    if (from != null) {
      queryParams.addAll(_queryParams('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_queryParams('', 'to', to));
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

  /// Metrics returns the org's deterministic SaaS-metrics snapshot over an optional (from, to] window — MRR, ARR, revenue, COGS, burn, gross margin, net income, cash, deferred revenue, monthly burn and runway — as raw int64-cent figures AND the same figures already formatted.
  ///
  /// Metrics returns the org's deterministic SaaS-metrics snapshot over an optional (from, to] window — MRR, ARR, revenue, COGS, burn, gross margin, net income, cash, deferred revenue, monthly burn and runway — as raw int64-cent figures AND the same figures already formatted. Every number is the ledger, aggregated the one way the books define it, never a guess; it is the grounded read the unified /v1/ask advisor replays.
  ///
  /// Parameters:
  ///
  /// * [String] sandbox:
  ///   Sandbox reads the org's SANDBOX ledger when it is exactly \"true\".
  ///
  /// * [String] from:
  ///   From is the RFC3339 start of the window, exclusive. Empty means all time.
  ///
  /// * [String] to:
  ///   To is the RFC3339 end of the window, inclusive. Empty means up to now.
  Future<MetricsResponse?> getBooksMetrics({ String? sandbox, String? from, String? to, }) async {
    final response = await getBooksMetricsWithHttpInfo( sandbox: sandbox, from: from, to: to, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MetricsResponse',) as MetricsResponse;
    
    }
    return null;
  }

  /// Returns the org's accrual-basis Profit & Loss over an optional (from, to] window of RFC3339 posting times: recognized revenue, matched cost, and the net.
  ///
  /// Returns the org's accrual-basis Profit & Loss over an optional (from, to] window of RFC3339 posting times: recognized revenue, matched cost, and the net.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sandbox:
  ///   Sandbox reads the org's SANDBOX ledger when it is exactly \"true\".
  ///
  /// * [String] from:
  ///   From is the RFC3339 start of the window, exclusive. Empty means all time.
  ///
  /// * [String] to:
  ///   To is the RFC3339 end of the window, inclusive. Empty means up to now.
  Future<Response> getBooksPnlWithHttpInfo({ String? sandbox, String? from, String? to, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/books/pnl';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sandbox != null) {
      queryParams.addAll(_queryParams('', 'sandbox', sandbox));
    }
    if (from != null) {
      queryParams.addAll(_queryParams('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_queryParams('', 'to', to));
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

  /// Returns the org's accrual-basis Profit & Loss over an optional (from, to] window of RFC3339 posting times: recognized revenue, matched cost, and the net.
  ///
  /// Returns the org's accrual-basis Profit & Loss over an optional (from, to] window of RFC3339 posting times: recognized revenue, matched cost, and the net.
  ///
  /// Parameters:
  ///
  /// * [String] sandbox:
  ///   Sandbox reads the org's SANDBOX ledger when it is exactly \"true\".
  ///
  /// * [String] from:
  ///   From is the RFC3339 start of the window, exclusive. Empty means all time.
  ///
  /// * [String] to:
  ///   To is the RFC3339 end of the window, inclusive. Empty means up to now.
  Future<PnL?> getBooksPnl({ String? sandbox, String? from, String? to, }) async {
    final response = await getBooksPnlWithHttpInfo( sandbox: sandbox, from: from, to: to, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PnL',) as PnL;
    
    }
    return null;
  }

  /// Returns the org's Balance Sheet as of `to` (empty = all time), with the Assets == Liabilities + Equity equation proof.
  ///
  /// Returns the org's Balance Sheet as of `to` (empty = all time), with the Assets == Liabilities + Equity equation proof.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sandbox:
  ///   Sandbox reads the org's SANDBOX ledger when it is exactly \"true\".
  ///
  /// * [String] to:
  ///   To is the RFC3339 instant the statement is struck as of. Empty means all time.
  Future<Response> getBooksPositionWithHttpInfo({ String? sandbox, String? to, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/books/position';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sandbox != null) {
      queryParams.addAll(_queryParams('', 'sandbox', sandbox));
    }
    if (to != null) {
      queryParams.addAll(_queryParams('', 'to', to));
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

  /// Returns the org's Balance Sheet as of `to` (empty = all time), with the Assets == Liabilities + Equity equation proof.
  ///
  /// Returns the org's Balance Sheet as of `to` (empty = all time), with the Assets == Liabilities + Equity equation proof.
  ///
  /// Parameters:
  ///
  /// * [String] sandbox:
  ///   Sandbox reads the org's SANDBOX ledger when it is exactly \"true\".
  ///
  /// * [String] to:
  ///   To is the RFC3339 instant the statement is struck as of. Empty means all time.
  Future<BalanceSheet?> getBooksPosition({ String? sandbox, String? to, }) async {
    final response = await getBooksPositionWithHttpInfo( sandbox: sandbox, to: to, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BalanceSheet',) as BalanceSheet;
    
    }
    return null;
  }

  /// Returns the clarifying questions the caller's own recent GL raises — the unusual postings a founder should look at (outliers, reversals, round-offs, uncosted revenue, an overdrawn wallet), sharpest first.
  ///
  /// Returns the clarifying questions the caller's own recent GL raises — the unusual postings a founder should look at (outliers, reversals, round-offs, uncosted revenue, an overdrawn wallet), sharpest first. An empty list means the books look clean; the detector is deterministic over the ledger and invents nothing.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sandbox:
  ///   Sandbox reads the org's SANDBOX ledger when it is exactly \"true\"; anything else reads the live one.
  Future<Response> getBooksQuestionsWithHttpInfo({ String? sandbox, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/books/questions';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sandbox != null) {
      queryParams.addAll(_queryParams('', 'sandbox', sandbox));
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

  /// Returns the clarifying questions the caller's own recent GL raises — the unusual postings a founder should look at (outliers, reversals, round-offs, uncosted revenue, an overdrawn wallet), sharpest first.
  ///
  /// Returns the clarifying questions the caller's own recent GL raises — the unusual postings a founder should look at (outliers, reversals, round-offs, uncosted revenue, an overdrawn wallet), sharpest first. An empty list means the books look clean; the detector is deterministic over the ledger and invents nothing.
  ///
  /// Parameters:
  ///
  /// * [String] sandbox:
  ///   Sandbox reads the org's SANDBOX ledger when it is exactly \"true\"; anything else reads the live one.
  Future<QuestionsResponse?> getBooksQuestions({ String? sandbox, }) async {
    final response = await getBooksQuestionsWithHttpInfo( sandbox: sandbox, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QuestionsResponse',) as QuestionsResponse;
    
    }
    return null;
  }

  /// Returns the org's auto-categorization rules, highest priority first.
  ///
  /// Returns the org's auto-categorization rules, highest priority first. A rule is a standing instruction — \"anything whose merchant contains X books to category Y\" — and it overrides a vendor's default category, so this is the list that decides how a future bill classifies itself.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sandbox:
  ///   Sandbox reads the org's SANDBOX ledger when it is exactly \"true\"; anything else reads the live one.
  Future<Response> getBooksRulesWithHttpInfo({ String? sandbox, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/books/rules';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sandbox != null) {
      queryParams.addAll(_queryParams('', 'sandbox', sandbox));
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

  /// Returns the org's auto-categorization rules, highest priority first.
  ///
  /// Returns the org's auto-categorization rules, highest priority first. A rule is a standing instruction — \"anything whose merchant contains X books to category Y\" — and it overrides a vendor's default category, so this is the list that decides how a future bill classifies itself.
  ///
  /// Parameters:
  ///
  /// * [String] sandbox:
  ///   Sandbox reads the org's SANDBOX ledger when it is exactly \"true\"; anything else reads the live one.
  Future<RulesOut?> getBooksRules({ String? sandbox, }) async {
    final response = await getBooksRulesWithHttpInfo( sandbox: sandbox, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RulesOut',) as RulesOut;
    
    }
    return null;
  }

  /// Returns the org's booked ledger as a single-line register, newest first: one row per voucher, with its date, description, vendor, category, source and amount in exact cents.
  ///
  /// Returns the org's booked ledger as a single-line register, newest first: one row per voucher, with its date, description, vendor, category, source and amount in exact cents. It is the double-entry ledger projected to the register a human reads, filterable by posting-time window, category and vendor. Strictly read-only — it restates the books, it never moves them.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sandbox:
  ///   Sandbox reads the org's SANDBOX ledger when it is exactly \"true\".
  ///
  /// * [String] from:
  ///   From is the RFC3339 start of the posting-time window, inclusive.
  ///
  /// * [String] to:
  ///   To is the RFC3339 end of the posting-time window, inclusive.
  ///
  /// * [String] category:
  ///   Category filters to one COA account, named by number (\"5300\") or by category slug (\"software\").
  ///
  /// * [String] vendor:
  ///   Vendor filters to rows whose vendor or description contains this text, case-insensitively.
  ///
  /// * [int] limit:
  ///   Limit caps how many rows come back; 200 when absent or not positive.
  Future<Response> getBooksTransactionsWithHttpInfo({ String? sandbox, String? from, String? to, String? category, String? vendor, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/books/transactions';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sandbox != null) {
      queryParams.addAll(_queryParams('', 'sandbox', sandbox));
    }
    if (from != null) {
      queryParams.addAll(_queryParams('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_queryParams('', 'to', to));
    }
    if (category != null) {
      queryParams.addAll(_queryParams('', 'category', category));
    }
    if (vendor != null) {
      queryParams.addAll(_queryParams('', 'vendor', vendor));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// Returns the org's booked ledger as a single-line register, newest first: one row per voucher, with its date, description, vendor, category, source and amount in exact cents.
  ///
  /// Returns the org's booked ledger as a single-line register, newest first: one row per voucher, with its date, description, vendor, category, source and amount in exact cents. It is the double-entry ledger projected to the register a human reads, filterable by posting-time window, category and vendor. Strictly read-only — it restates the books, it never moves them.
  ///
  /// Parameters:
  ///
  /// * [String] sandbox:
  ///   Sandbox reads the org's SANDBOX ledger when it is exactly \"true\".
  ///
  /// * [String] from:
  ///   From is the RFC3339 start of the posting-time window, inclusive.
  ///
  /// * [String] to:
  ///   To is the RFC3339 end of the posting-time window, inclusive.
  ///
  /// * [String] category:
  ///   Category filters to one COA account, named by number (\"5300\") or by category slug (\"software\").
  ///
  /// * [String] vendor:
  ///   Vendor filters to rows whose vendor or description contains this text, case-insensitively.
  ///
  /// * [int] limit:
  ///   Limit caps how many rows come back; 200 when absent or not positive.
  Future<TransactionsOut?> getBooksTransactions({ String? sandbox, String? from, String? to, String? category, String? vendor, int? limit, }) async {
    final response = await getBooksTransactionsWithHttpInfo( sandbox: sandbox, from: from, to: to, category: category, vendor: vendor, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TransactionsOut',) as TransactionsOut;
    
    }
    return null;
  }

  /// Returns the org's trial balance over an optional [from, to] window of RFC3339 posting times, including the opening/closing columns and the TotalDebit == TotalCredit proof that the books balance.
  ///
  /// Returns the org's trial balance over an optional [from, to] window of RFC3339 posting times, including the opening/closing columns and the TotalDebit == TotalCredit proof that the books balance.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sandbox:
  ///   Sandbox reads the org's SANDBOX ledger when it is exactly \"true\".
  ///
  /// * [String] from:
  ///   From is the RFC3339 start of the window, exclusive. Empty means all time.
  ///
  /// * [String] to:
  ///   To is the RFC3339 end of the window, inclusive. Empty means up to now.
  Future<Response> getBooksTrialWithHttpInfo({ String? sandbox, String? from, String? to, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/books/trial';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sandbox != null) {
      queryParams.addAll(_queryParams('', 'sandbox', sandbox));
    }
    if (from != null) {
      queryParams.addAll(_queryParams('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_queryParams('', 'to', to));
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

  /// Returns the org's trial balance over an optional [from, to] window of RFC3339 posting times, including the opening/closing columns and the TotalDebit == TotalCredit proof that the books balance.
  ///
  /// Returns the org's trial balance over an optional [from, to] window of RFC3339 posting times, including the opening/closing columns and the TotalDebit == TotalCredit proof that the books balance.
  ///
  /// Parameters:
  ///
  /// * [String] sandbox:
  ///   Sandbox reads the org's SANDBOX ledger when it is exactly \"true\".
  ///
  /// * [String] from:
  ///   From is the RFC3339 start of the window, exclusive. Empty means all time.
  ///
  /// * [String] to:
  ///   To is the RFC3339 end of the window, inclusive. Empty means up to now.
  Future<TrialBalance?> getBooksTrial({ String? sandbox, String? from, String? to, }) async {
    final response = await getBooksTrialWithHttpInfo( sandbox: sandbox, from: from, to: to, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TrialBalance',) as TrialBalance;
    
    }
    return null;
  }

  /// Returns the org's vendor book: each canonical vendor, the alias spellings a receipt may print it under, and the expense account new bills from it default to.
  ///
  /// Returns the org's vendor book: each canonical vendor, the alias spellings a receipt may print it under, and the expense account new bills from it default to. A vendor here is what makes a scanned bill self-classify instead of asking again.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sandbox:
  ///   Sandbox reads the org's SANDBOX ledger when it is exactly \"true\"; anything else reads the live one.
  Future<Response> getBooksVendorsWithHttpInfo({ String? sandbox, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/books/vendors';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sandbox != null) {
      queryParams.addAll(_queryParams('', 'sandbox', sandbox));
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

  /// Returns the org's vendor book: each canonical vendor, the alias spellings a receipt may print it under, and the expense account new bills from it default to.
  ///
  /// Returns the org's vendor book: each canonical vendor, the alias spellings a receipt may print it under, and the expense account new bills from it default to. A vendor here is what makes a scanned bill self-classify instead of asking again.
  ///
  /// Parameters:
  ///
  /// * [String] sandbox:
  ///   Sandbox reads the org's SANDBOX ledger when it is exactly \"true\"; anything else reads the live one.
  Future<VendorsOut?> getBooksVendors({ String? sandbox, }) async {
    final response = await getBooksVendorsWithHttpInfo( sandbox: sandbox, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VendorsOut',) as VendorsOut;
    
    }
    return null;
  }

  /// Answers a plain-language question about the caller's own books — \"what is my MRR?\", \"how long is my runway?\" — with figures taken from their ledger, never a guessed number.
  ///
  /// Answers a plain-language question about the caller's own books — \"what is my MRR?\", \"how long is my runway?\" — with figures taken from their ledger, never a guessed number. A deterministic keyword router picks the intent and reads the real metrics, and those figures, followups and report sources are computed BEFORE any model call and are never altered by one: the optional narration seam only rephrases the sentence, and it degrades silently to the templated answer when no AI plane is wired. It is strictly read-only — it restates the books, it never posts to them.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AskRequest] askRequest (required):
  Future<Response> postBooksAskWithHttpInfo(AskRequest askRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/books/ask';

    // ignore: prefer_final_locals
    Object? postBody = askRequest;

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

  /// Answers a plain-language question about the caller's own books — \"what is my MRR?\", \"how long is my runway?\" — with figures taken from their ledger, never a guessed number.
  ///
  /// Answers a plain-language question about the caller's own books — \"what is my MRR?\", \"how long is my runway?\" — with figures taken from their ledger, never a guessed number. A deterministic keyword router picks the intent and reads the real metrics, and those figures, followups and report sources are computed BEFORE any model call and are never altered by one: the optional narration seam only rephrases the sentence, and it degrades silently to the templated answer when no AI plane is wired. It is strictly read-only — it restates the books, it never posts to them.
  ///
  /// Parameters:
  ///
  /// * [AskRequest] askRequest (required):
  Future<AskResponse?> postBooksAsk(AskRequest askRequest,) async {
    final response = await postBooksAskWithHttpInfo(askRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AskResponse',) as AskResponse;
    
    }
    return null;
  }

  /// Finish connecting a bank account (not yet available)
  ///
  /// ANSWERS 501 UNCONDITIONALLY. It is the intended second hop of the bank-linking handshake — trade the provider's short-lived public token for the durable access credential and seal that credential into KMS — and nothing on the HTTP path reaches an implementation today.  The durable bank credential is the reason this hop exists: it is meant to be sealed server-side and never handed back to the caller. Since the route never succeeds, no credential is stored by it and no bank is connected through it.  Documented as refusing rather than declared with a success body, for the same reason as the first hop: it has never sent one, and stating a shape it has never produced would put a return type in every SDK for a call that always fails. A caller with no principal gets 401 before the 501.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postBooksBankExchangeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/books/bank/exchange';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Finish connecting a bank account (not yet available)
  ///
  /// ANSWERS 501 UNCONDITIONALLY. It is the intended second hop of the bank-linking handshake — trade the provider's short-lived public token for the durable access credential and seal that credential into KMS — and nothing on the HTTP path reaches an implementation today.  The durable bank credential is the reason this hop exists: it is meant to be sealed server-side and never handed back to the caller. Since the route never succeeds, no credential is stored by it and no bank is connected through it.  Documented as refusing rather than declared with a success body, for the same reason as the first hop: it has never sent one, and stating a shape it has never produced would put a return type in every SDK for a call that always fails. A caller with no principal gets 401 before the 501.
  Future<void> postBooksBankExchange() async {
    final response = await postBooksBankExchangeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Import a bank statement file into your books
  ///
  /// Takes a bank statement as RAW BYTES — the file exactly as downloaded, OFX, QFX or CSV, not wrapped in JSON — parses every row, books it against the caller org's own ledger, and answers the tally: how many rows were seen, how many vouchers posted, how many inflows reconciled, how many raised a question, how many were own-account transfers, and how many were skipped.  RE-IMPORTING THE SAME STATEMENT DOES NOT DOUBLE-BOOK. Every row goes through the same posting choke point every other source uses, keyed idempotently, so an overlapping statement — the usual case, since exports overlap at the month boundary — lands its new rows and counts the rest as skipped. Skipped is the number to read on a second import.  It is READ-ONLY against the bank: this ingests, it never sends money. Scoped to the caller's own org from the validated principal, and refused without one; `sandbox=true` writes the org's sandbox ledger instead of its real books. An empty body is a 400, and a file the parser cannot read is a 400 carrying the parser's reason rather than a partial import. On a deployment whose import parser is not built, this answers 501 rather than mishandling the file.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] body:
  Future<Response> postBooksBankImportWithHttpInfo({ MultipartFile? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/books/bank/import';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/octet-stream'];


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

  /// Import a bank statement file into your books
  ///
  /// Takes a bank statement as RAW BYTES — the file exactly as downloaded, OFX, QFX or CSV, not wrapped in JSON — parses every row, books it against the caller org's own ledger, and answers the tally: how many rows were seen, how many vouchers posted, how many inflows reconciled, how many raised a question, how many were own-account transfers, and how many were skipped.  RE-IMPORTING THE SAME STATEMENT DOES NOT DOUBLE-BOOK. Every row goes through the same posting choke point every other source uses, keyed idempotently, so an overlapping statement — the usual case, since exports overlap at the month boundary — lands its new rows and counts the rest as skipped. Skipped is the number to read on a second import.  It is READ-ONLY against the bank: this ingests, it never sends money. Scoped to the caller's own org from the validated principal, and refused without one; `sandbox=true` writes the org's sandbox ledger instead of its real books. An empty body is a 400, and a file the parser cannot read is a 400 carrying the parser's reason rather than a partial import. On a deployment whose import parser is not built, this answers 501 rather than mishandling the file.
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] body:
  Future<BankTally?> postBooksBankImport({ MultipartFile? body, }) async {
    final response = await postBooksBankImportWithHttpInfo( body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BankTally',) as BankTally;
    
    }
    return null;
  }

  /// Pulls every connected bank (Plaid/Teller) for the caller's org, maps each fetched transaction to a posting and books it idempotently, then advances that connector's cursor so the next sync resumes where this one stopped.
  ///
  /// Pulls every connected bank (Plaid/Teller) for the caller's org, maps each fetched transaction to a posting and books it idempotently, then advances that connector's cursor so the next sync resumes where this one stopped. One connector's outage is skipped rather than failing the whole sync. It reports the batch: how many transactions were seen, how many vouchers posted, how many inflows reconciled against the processor clearing account, how many raised a question, how many were own-account transfers, and how many were already-processed no-ops. It is READ-ONLY against the bank — it ingests, it never sends money.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postBooksBankSyncWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/books/bank/sync';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Pulls every connected bank (Plaid/Teller) for the caller's org, maps each fetched transaction to a posting and books it idempotently, then advances that connector's cursor so the next sync resumes where this one stopped.
  ///
  /// Pulls every connected bank (Plaid/Teller) for the caller's org, maps each fetched transaction to a posting and books it idempotently, then advances that connector's cursor so the next sync resumes where this one stopped. One connector's outage is skipped rather than failing the whole sync. It reports the batch: how many transactions were seen, how many vouchers posted, how many inflows reconciled against the processor clearing account, how many raised a question, how many were own-account transfers, and how many were already-processed no-ops. It is READ-ONLY against the bank — it ingests, it never sends money.
  Future<BankTally?> postBooksBankSync() async {
    final response = await postBooksBankSyncWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BankTally',) as BankTally;
    
    }
    return null;
  }

  /// Begin connecting a bank account (not yet available)
  ///
  /// ANSWERS 501 UNCONDITIONALLY. It is the intended first hop of the bank-linking handshake — mint the short-lived session token a browser hands to the provider's link widget — and nothing on the HTTP path reaches an implementation today.  The connectors behind it are written and tested; only the wiring is missing, so an org cannot connect a bank through the API at all. Until that lands, bank data reaches the books by statement import.  It is documented as refusing rather than declared with a success body precisely because it has never sent one. A response schema here would be invention: every generated SDK would carry a return type for a call that has only ever failed. A caller with no principal gets 401 before the 501.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postBooksBankTokenWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/books/bank/token';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Begin connecting a bank account (not yet available)
  ///
  /// ANSWERS 501 UNCONDITIONALLY. It is the intended first hop of the bank-linking handshake — mint the short-lived session token a browser hands to the provider's link widget — and nothing on the HTTP path reaches an implementation today.  The connectors behind it are written and tested; only the wiring is missing, so an org cannot connect a bank through the API at all. Until that lands, bank data reaches the books by statement import.  It is documented as refusing rather than declared with a success body precisely because it has never sent one. A response schema here would be invention: every generated SDK would carry a return type for a call that has only ever failed. A caller with no principal gets 401 before the 501.
  Future<void> postBooksBankToken() async {
    final response = await postBooksBankTokenWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Queue a document for later scanning
  ///
  /// Takes a document as RAW BYTES and queues it in the caller org's inbox as `unsorted`, answering the queued item. It is the drop box: get the paperwork in now, read it later.  It EXTRACTS NOTHING and calls no model — that is what separates it from the scan. Nothing is proposed and nothing is posted; the item simply waits to be scanned, and a booked document leaves the queue.  IDEMPOTENT BY CONTENT: the item's id is the file hash, so re-uploading the same bytes answers the existing item rather than adding a duplicate row — and it is the same id a scan of those bytes uses, which is how the two routes address one document. Scoped to the caller's own org from the validated principal and refused without one; `sandbox=true` targets the sandbox ledger, and `filename` is recorded for display. An empty or oversized upload is a 400.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] body:
  Future<Response> postBooksInboxWithHttpInfo({ MultipartFile? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/books/inbox';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/octet-stream'];


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

  /// Queue a document for later scanning
  ///
  /// Takes a document as RAW BYTES and queues it in the caller org's inbox as `unsorted`, answering the queued item. It is the drop box: get the paperwork in now, read it later.  It EXTRACTS NOTHING and calls no model — that is what separates it from the scan. Nothing is proposed and nothing is posted; the item simply waits to be scanned, and a booked document leaves the queue.  IDEMPOTENT BY CONTENT: the item's id is the file hash, so re-uploading the same bytes answers the existing item rather than adding a duplicate row — and it is the same id a scan of those bytes uses, which is how the two routes address one document. Scoped to the caller's own org from the validated principal and refused without one; `sandbox=true` targets the sandbox ledger, and `filename` is recorded for display. An empty or oversized upload is a 400.
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] body:
  Future<InboxItem?> postBooksInbox({ MultipartFile? body, }) async {
    final response = await postBooksInboxWithHttpInfo( body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxItem',) as InboxItem;
    
    }
    return null;
  }

  /// Creates or updates one auto-categorization rule, keyed by its pattern — writing a pattern that already exists REPLACES that row's category and priority.
  ///
  /// Creates or updates one auto-categorization rule, keyed by its pattern — writing a pattern that already exists REPLACES that row's category and priority. The category is normalized to a real COA expense account, and anything unrecognized becomes 5900 Uncategorized rather than a guessed real account. It answers the row exactly as stored, so the caller sees the normalization. A rule overrides a vendor's default category, so this is the standing instruction that decides how a future bill classifies.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Rule] rule (required):
  Future<Response> postBooksRulesWithHttpInfo(Rule rule,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/books/rules';

    // ignore: prefer_final_locals
    Object? postBody = rule;

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

  /// Creates or updates one auto-categorization rule, keyed by its pattern — writing a pattern that already exists REPLACES that row's category and priority.
  ///
  /// Creates or updates one auto-categorization rule, keyed by its pattern — writing a pattern that already exists REPLACES that row's category and priority. The category is normalized to a real COA expense account, and anything unrecognized becomes 5900 Uncategorized rather than a guessed real account. It answers the row exactly as stored, so the caller sees the normalization. A rule overrides a vendor's default category, so this is the standing instruction that decides how a future bill classifies.
  ///
  /// Parameters:
  ///
  /// * [Rule] rule (required):
  Future<Rule?> postBooksRules(Rule rule,) async {
    final response = await postBooksRulesWithHttpInfo(rule,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Rule',) as Rule;
    
    }
    return null;
  }

  /// Scan a receipt or invoice into a proposed voucher
  ///
  /// Takes a receipt or invoice as RAW BYTES — a PDF, an image or plain text, uploaded under its own content type, not wrapped in JSON — extracts what the document says, resolves the vendor's expense category, and answers a DRAFT carrying a balanced voucher proposed for it.  NOTHING IS POSTED. That split is the whole design: the model only ever produces a structured reading of the document, the voucher is assembled deterministically in Go from that reading, and the ledger is written only by the separate book call a human confirms. So a misread scan can propose a wrong draft; it cannot move money. Amounts are exact integer cents end to end — the extraction returns cents, never a decimal — so no rounding enters the ledger.  The draft's id is the FILE HASH, and that is what makes booking idempotent: re-scanning the same bytes addresses the same draft rather than queuing a second one. A row is written to the org's document inbox as a side effect, moving it from unsorted to draft. Scoped to the caller's own org from the validated principal and refused without one; `sandbox=true` targets the sandbox ledger, and `filename` is recorded for the inbox. An empty or oversized upload is a 400, and a deployment with no scanner model answers 501.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] body:
  Future<Response> postBooksScanWithHttpInfo({ MultipartFile? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/books/scan';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/octet-stream'];


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

  /// Scan a receipt or invoice into a proposed voucher
  ///
  /// Takes a receipt or invoice as RAW BYTES — a PDF, an image or plain text, uploaded under its own content type, not wrapped in JSON — extracts what the document says, resolves the vendor's expense category, and answers a DRAFT carrying a balanced voucher proposed for it.  NOTHING IS POSTED. That split is the whole design: the model only ever produces a structured reading of the document, the voucher is assembled deterministically in Go from that reading, and the ledger is written only by the separate book call a human confirms. So a misread scan can propose a wrong draft; it cannot move money. Amounts are exact integer cents end to end — the extraction returns cents, never a decimal — so no rounding enters the ledger.  The draft's id is the FILE HASH, and that is what makes booking idempotent: re-scanning the same bytes addresses the same draft rather than queuing a second one. A row is written to the org's document inbox as a side effect, moving it from unsorted to draft. Scoped to the caller's own org from the validated principal and refused without one; `sandbox=true` targets the sandbox ledger, and `filename` is recorded for the inbox. An empty or oversized upload is a 400, and a deployment with no scanner model answers 501.
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] body:
  Future<ScanDraft?> postBooksScan({ MultipartFile? body, }) async {
    final response = await postBooksScanWithHttpInfo( body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScanDraft',) as ScanDraft;
    
    }
    return null;
  }

  /// Posts a reviewed scanned bill to the ledger.
  ///
  /// Posts a reviewed scanned bill to the ledger. It is the scanner's ONLY write: the voucher goes through the same post() choke point every other source uses, so it is checked to balance (Σdebit == Σcredit) and is idempotent by (scan, scanId) — re-booking the same scan answers posted=false and writes nothing. A bill whose economic identity (vendor, total, issue date) already posted under a DIFFERENT scan is refused 409 unless override is set, which is what stops the same receipt re-scanned into a new file hash from double-booking. An unbalanced voucher is refused 400.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BookRequest] bookRequest (required):
  Future<Response> postBooksScanBookWithHttpInfo(BookRequest bookRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/books/scan/book';

    // ignore: prefer_final_locals
    Object? postBody = bookRequest;

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

  /// Posts a reviewed scanned bill to the ledger.
  ///
  /// Posts a reviewed scanned bill to the ledger. It is the scanner's ONLY write: the voucher goes through the same post() choke point every other source uses, so it is checked to balance (Σdebit == Σcredit) and is idempotent by (scan, scanId) — re-booking the same scan answers posted=false and writes nothing. A bill whose economic identity (vendor, total, issue date) already posted under a DIFFERENT scan is refused 409 unless override is set, which is what stops the same receipt re-scanned into a new file hash from double-booking. An unbalanced voucher is refused 400.
  ///
  /// Parameters:
  ///
  /// * [BookRequest] bookRequest (required):
  Future<BookResponse?> postBooksScanBook(BookRequest bookRequest,) async {
    final response = await postBooksScanBookWithHttpInfo(bookRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BookResponse',) as BookResponse;
    
    }
    return null;
  }

  /// Sync ingests the caller's OWN org from commerce into BOTH ledgers (live and sandbox) and reports how many new vouchers posted to each.
  ///
  /// Sync ingests the caller's OWN org from commerce into BOTH ledgers (live and sandbox) and reports how many new vouchers posted to each. It is idempotent — money that has already been booked posts nothing on a repeat — and it is read-only against commerce: it never mints a deposit, a credit or a payout, only the accounting twin of money that already moved.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postBooksSyncWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/books/sync';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Sync ingests the caller's OWN org from commerce into BOTH ledgers (live and sandbox) and reports how many new vouchers posted to each.
  ///
  /// Sync ingests the caller's OWN org from commerce into BOTH ledgers (live and sandbox) and reports how many new vouchers posted to each. It is idempotent — money that has already been booked posts nothing on a repeat — and it is read-only against commerce: it never mints a deposit, a credit or a payout, only the accounting twin of money that already moved.
  Future<SyncTally?> postBooksSync() async {
    final response = await postBooksSyncWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SyncTally',) as SyncTally;
    
    }
    return null;
  }

  /// Creates or updates one vendor in the org's vendor book, keyed by its canonical name — writing a canonical name that already exists REPLACES that row's aliases and default category.
  ///
  /// Creates or updates one vendor in the org's vendor book, keyed by its canonical name — writing a canonical name that already exists REPLACES that row's aliases and default category. A category given as a slug (\"software\") is normalized to its real COA expense account, and anything unrecognized becomes 5900 Uncategorized rather than a guessed real account. It answers the row exactly as stored, so the caller sees the normalization. Recording a vendor is what makes future bills from it self-classify instead of asking again.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [VendorRow] vendorRow (required):
  Future<Response> postBooksVendorsWithHttpInfo(VendorRow vendorRow,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/books/vendors';

    // ignore: prefer_final_locals
    Object? postBody = vendorRow;

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

  /// Creates or updates one vendor in the org's vendor book, keyed by its canonical name — writing a canonical name that already exists REPLACES that row's aliases and default category.
  ///
  /// Creates or updates one vendor in the org's vendor book, keyed by its canonical name — writing a canonical name that already exists REPLACES that row's aliases and default category. A category given as a slug (\"software\") is normalized to its real COA expense account, and anything unrecognized becomes 5900 Uncategorized rather than a guessed real account. It answers the row exactly as stored, so the caller sees the normalization. Recording a vendor is what makes future bills from it self-classify instead of asking again.
  ///
  /// Parameters:
  ///
  /// * [VendorRow] vendorRow (required):
  Future<VendorRow?> postBooksVendors(VendorRow vendorRow,) async {
    final response = await postBooksVendorsWithHttpInfo(vendorRow,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VendorRow',) as VendorRow;
    
    }
    return null;
  }
}
