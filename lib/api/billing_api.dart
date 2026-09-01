//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class BillingApi {
  BillingApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// End a subscription
  ///
  /// Ends a subscription.  It cancels at the END OF THE PAID PERIOD by default, because a customer who cancels has already paid for the period they are in and taking it away is taking money for nothing. `atPeriodEnd: false` ends it at once, which is the caller asking for that.  A subscription from another org is not found rather than refused, so an id cannot be probed for existence.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [SubscriptionRef] subscriptionRef (required):
  Future<Response> cancelSubscriptionWithHttpInfo(String id, SubscriptionRef subscriptionRef,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/subscriptions/{id}/cancel'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = subscriptionRef;

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

  /// End a subscription
  ///
  /// Ends a subscription.  It cancels at the END OF THE PAID PERIOD by default, because a customer who cancels has already paid for the period they are in and taking it away is taking money for nothing. `atPeriodEnd: false` ends it at once, which is the caller asking for that.  A subscription from another org is not found rather than refused, so an id cannot be probed for existence.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [SubscriptionRef] subscriptionRef (required):
  Future<Subscription?> cancelSubscription(String id, SubscriptionRef subscriptionRef,) async {
    final response = await cancelSubscriptionWithHttpInfo(id, subscriptionRef,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Subscription',) as Subscription;
    
    }
    return null;
  }

  /// Collect an issued invoice from credits, balance, then card
  ///
  /// Collects an issued invoice: credit grants first, then prepaid balance, then the card on file — the same waterfall the dunning workflow runs.  A DECLINE IS NOT AN ERROR. It answers with paid=false, a reason, and the invoice still open, because a declined collection is a normal business outcome that must remain retryable — and because sealing it as a failure would wedge dunning behind a replayed decline. Only a successful collection is sealed, so a retry of a paid invoice replays the receipt instead of charging again.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the invoice id.
  Future<Response> collectInvoiceWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/invoices/{id}/collect'
      .replaceAll('{id}', id);

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

  /// Collect an issued invoice from credits, balance, then card
  ///
  /// Collects an issued invoice: credit grants first, then prepaid balance, then the card on file — the same waterfall the dunning workflow runs.  A DECLINE IS NOT AN ERROR. It answers with paid=false, a reason, and the invoice still open, because a declined collection is a normal business outcome that must remain retryable — and because sealing it as a failure would wedge dunning behind a replayed decline. Only a successful collection is sealed, so a retry of a paid invoice replays the receipt instead of charging again.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the invoice id.
  Future<Collected?> collectInvoice(String id,) async {
    final response = await collectInvoiceWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Collected',) as Collected;
    
    }
    return null;
  }

  /// Removes one of the caller's spend caps and answers 204.
  ///
  /// Removes one of the caller's spend caps and answers 204.  Removing a cap RAISES what the org may spend, so it takes the same authority setting one does. The caps that remain still bind: this drops one, never the whole policy.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the cap to remove, from the path.
  Future<Response> deleteBillingAlertsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/alerts/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Removes one of the caller's spend caps and answers 204.
  ///
  /// Removes one of the caller's spend caps and answers 204.  Removing a cap RAISES what the org may spend, so it takes the same authority setting one does. The caps that remain still bind: this drops one, never the whole policy.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the cap to remove, from the path.
  Future<void> deleteBillingAlertsById(String id,) async {
    final response = await deleteBillingAlertsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes one card or account the caller has saved.
  ///
  /// Removes one card or account the caller has saved.  It detaches only the CALLER'S own — the wallet this request bills from, resolved server-side — so an id belonging to another customer of the same org is not something this operation can reach. A platform or service caller detaches on the subject's behalf, and that authority is decided HERE, where the credential is, and travels as a value: authority decided twice is authority that eventually disagrees with itself.  The card is vaulted at the processor, so what goes is our token for it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the saved method to detach, from the path.
  Future<Response> deleteBillingMethodsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/methods/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Removes one card or account the caller has saved.
  ///
  /// Removes one card or account the caller has saved.  It detaches only the CALLER'S own — the wallet this request bills from, resolved server-side — so an id belonging to another customer of the same org is not something this operation can reach. A platform or service caller detaches on the subject's behalf, and that authority is decided HERE, where the credential is, and travels as a value: authority decided twice is authority that eventually disagrees with itself.  The card is vaulted at the processor, so what goes is our token for it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the saved method to detach, from the path.
  Future<Detachment?> deleteBillingMethodsById(String id,) async {
    final response = await deleteBillingMethodsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Detachment',) as Detachment;
    
    }
    return null;
  }

  /// DetachPortalMethod is DetachMethod at the address a hosted checkout addresses it by.
  ///
  /// DetachPortalMethod is DetachMethod at the address a hosted checkout addresses it by. One set of rows, two spellings: a card detached at either is gone from both, because there is one store behind them.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the saved method to detach, from the path.
  Future<Response> deleteBillingPortalMethodsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/portal/methods/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// DetachPortalMethod is DetachMethod at the address a hosted checkout addresses it by.
  ///
  /// DetachPortalMethod is DetachMethod at the address a hosted checkout addresses it by. One set of rows, two spellings: a card detached at either is gone from both, because there is one store behind them.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the saved method to detach, from the path.
  Future<Detachment?> deleteBillingPortalMethodsById(String id,) async {
    final response = await deleteBillingPortalMethodsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Detachment',) as Detachment;
    
    }
    return null;
  }

  /// Answers the caller's billing accounts: the org itself, its currency, when it was opened, and the caller's own standing in it.
  ///
  /// Answers the caller's billing accounts: the org itself, its currency, when it was opened, and the caller's own standing in it.  The standing is the caller's, resolved from the validated principal here and sent to the store rather than looked up there — the membership roster is IAM's and commerce keeps none, so a callee that answered \"what role is this\" would be inventing it. An anonymous read gets the account with no role rather than an implied membership.  Scoped to the caller's own org, which is the whole tenancy story: there is no org field on the wire and none on the input.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBillingAccountsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/accounts';

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

  /// Answers the caller's billing accounts: the org itself, its currency, when it was opened, and the caller's own standing in it.
  ///
  /// Answers the caller's billing accounts: the org itself, its currency, when it was opened, and the caller's own standing in it.  The standing is the caller's, resolved from the validated principal here and sent to the store rather than looked up there — the membership roster is IAM's and commerce keeps none, so a callee that answered \"what role is this\" would be inventing it. An anonymous read gets the account with no role rather than an implied membership.  Scoped to the caller's own org, which is the whole tenancy story: there is no org field on the wire and none on the input.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  Future<List<BillingAccount>?> getBillingAccounts() async {
    final response = await getBillingAccountsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<BillingAccount>') as List)
        .cast<BillingAccount>()
        .toList(growable: false);

    }
    return null;
  }

  /// Answers one billing account's roster.
  ///
  /// Answers one billing account's roster.  commerce stores no roster — that is IAM's — so the only member it can name is the caller, and that is what comes back. What it does enforce is that the account named in the path is the caller's own: a foreign id is 403, not an empty list, because \"no members\" and \"not your account\" are different answers.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the billing account id, which for this store is the org's own id.
  Future<Response> getBillingAccountsByIdMembersWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/accounts/{id}/members'
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

  /// Answers one billing account's roster.
  ///
  /// Answers one billing account's roster.  commerce stores no roster — that is IAM's — so the only member it can name is the caller, and that is what comes back. What it does enforce is that the account named in the path is the caller's own: a foreign id is 403, not an empty list, because \"no members\" and \"not your account\" are different answers.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the billing account id, which for this store is the org's own id.
  Future<List<Holder>?> getBillingAccountsByIdMembers(String id,) async {
    final response = await getBillingAccountsByIdMembersWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Holder>') as List)
        .cast<Holder>()
        .toList(growable: false);

    }
    return null;
  }

  /// Lists this org's spend caps: the ceiling, its scope, whether it enforces, and how much of it has been spent this period.
  ///
  /// Lists this org's spend caps: the ceiling, its scope, whether it enforces, and how much of it has been spent this period.  `periodSpentCents`, `over` and `warn` are ABSENT rather than zero when the spend could not be read, because \"nothing spent\" and \"spend unknown\" are different answers and a customer acting on the first when the second is true would be reading a ceiling that is not there. The policy row is reported either way.  The period is the UTC calendar month and `resetsAt` is when the count starts again, so a surface can say \"resets on\" without a second call.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBillingAlertsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/alerts';

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

  /// Lists this org's spend caps: the ceiling, its scope, whether it enforces, and how much of it has been spent this period.
  ///
  /// Lists this org's spend caps: the ceiling, its scope, whether it enforces, and how much of it has been spent this period.  `periodSpentCents`, `over` and `warn` are ABSENT rather than zero when the spend could not be read, because \"nothing spent\" and \"spend unknown\" are different answers and a customer acting on the first when the second is true would be reading a ceiling that is not there. The policy row is reported either way.  The period is the UTC calendar month and `resetsAt` is when the count starts again, so a surface can say \"resets on\" without a second call.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  Future<List<Alert>?> getBillingAlerts() async {
    final response = await getBillingAlertsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Alert>') as List)
        .cast<Alert>()
        .toList(growable: false);

    }
    return null;
  }

  /// Answers whether one proposed spend fits inside this org's caps.
  ///
  /// Answers whether one proposed spend fits inside this org's caps.  It is the per-request verdict the metering edge consumes before every priced call, and its caller is a SERVICE rather than a person: a service token plus the gateway-pinned org, with no user behind it. So this admits that principal where the CRUD beside it does not.  Every covering row is evaluated, most-restrictive-wins, and the tightest one is what `capCents`, `spentCents` and `reason` describe. Soft rows never deny; nor does a project-scoped enforcing row whose project axis the caller could not establish — `pv=1` is how a caller states that it did, and an unproven claim must not be able to refuse traffic.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project:
  ///   Project narrows the verdict to one project's caps. Empty is the org-wide row.
  ///
  /// * [String] service:
  ///   Service narrows it to one service's caps. Empty is every service.
  ///
  /// * [String] amount:
  ///   Amount is the proposed spend in cents.
  ///
  /// * [String] pv:
  ///   PV is \"1\" when the caller ESTABLISHED the project rather than merely carrying a claim of one. An unproven project may not deny traffic.
  Future<Response> getBillingAlertsAuthorizeWithHttpInfo({ String? project, String? service, String? amount, String? pv, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/alerts/authorize';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (project != null) {
      queryParams.addAll(_queryParams('', 'project', project));
    }
    if (service != null) {
      queryParams.addAll(_queryParams('', 'service', service));
    }
    if (amount != null) {
      queryParams.addAll(_queryParams('', 'amount', amount));
    }
    if (pv != null) {
      queryParams.addAll(_queryParams('', 'pv', pv));
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

  /// Answers whether one proposed spend fits inside this org's caps.
  ///
  /// Answers whether one proposed spend fits inside this org's caps.  It is the per-request verdict the metering edge consumes before every priced call, and its caller is a SERVICE rather than a person: a service token plus the gateway-pinned org, with no user behind it. So this admits that principal where the CRUD beside it does not.  Every covering row is evaluated, most-restrictive-wins, and the tightest one is what `capCents`, `spentCents` and `reason` describe. Soft rows never deny; nor does a project-scoped enforcing row whose project axis the caller could not establish — `pv=1` is how a caller states that it did, and an unproven claim must not be able to refuse traffic.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Parameters:
  ///
  /// * [String] project:
  ///   Project narrows the verdict to one project's caps. Empty is the org-wide row.
  ///
  /// * [String] service:
  ///   Service narrows it to one service's caps. Empty is every service.
  ///
  /// * [String] amount:
  ///   Amount is the proposed spend in cents.
  ///
  /// * [String] pv:
  ///   PV is \"1\" when the caller ESTABLISHED the project rather than merely carrying a claim of one. An unproven project may not deny traffic.
  Future<CapVerdict?> getBillingAlertsAuthorize({ String? project, String? service, String? amount, String? pv, }) async {
    final response = await getBillingAlertsAuthorizeWithHttpInfo( project: project, service: service, amount: amount, pv: pv, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CapVerdict',) as CapVerdict;
    
    }
    return null;
  }

  /// Prepaid credit the caller's org can still spend
  ///
  /// Answers the spendable prepaid balance of the wallet this caller bills from — the same wallet the AI prepaid gate reads before admitting a paid request, the edge meter debits, and a top-up credits.  The wallet is an ADDRESS, not an org: `account` echoes the key resolved within the ledger — the org's shared pool for a tenant org, a personal account for a member of the shared signup org. The echo is the point. A browser could only GUESS its own payer by decoding its own token, and a guess that disagrees with the server is how money lands in an account the gate never reads.  `balance`, `holds` and `available` are whole USD cents, ROUNDED from the ledger's exact 18-decimal value. On the co-resident ledger `holds` is 0 and `available` equals `balance`: the gate's reservations live in its own pod and are never posted, so the settled balance IS the spendable one.  The ledger is the caller's own org, taken from the VALIDATED IAM owner claim and never from a client header. No validated principal is 401 — with one exception, the trusted in-process service token the AI gate itself presents, which reads the gateway-pinned org and nothing it could name. A balance that cannot be READ is 502, never 0: unknown is not broke.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBillingBalanceWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/balance';

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

  /// Prepaid credit the caller's org can still spend
  ///
  /// Answers the spendable prepaid balance of the wallet this caller bills from — the same wallet the AI prepaid gate reads before admitting a paid request, the edge meter debits, and a top-up credits.  The wallet is an ADDRESS, not an org: `account` echoes the key resolved within the ledger — the org's shared pool for a tenant org, a personal account for a member of the shared signup org. The echo is the point. A browser could only GUESS its own payer by decoding its own token, and a guess that disagrees with the server is how money lands in an account the gate never reads.  `balance`, `holds` and `available` are whole USD cents, ROUNDED from the ledger's exact 18-decimal value. On the co-resident ledger `holds` is 0 and `available` equals `balance`: the gate's reservations live in its own pod and are never posted, so the settled balance IS the spendable one.  The ledger is the caller's own org, taken from the VALIDATED IAM owner claim and never from a client header. No validated principal is 401 — with one exception, the trusted in-process service token the AI gate itself presents, which reads the gateway-pinned org and nothing it could name. A balance that cannot be READ is 502, never 0: unknown is not broke.
  Future<void> getBillingBalance() async {
    final response = await getBillingBalanceWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Answers what the caller can spend right now, one entry per currency.
  ///
  /// Answers what the caller can spend right now, one entry per currency.  Only ACTIVE grants count: a voided, exhausted or lapsed grant contributes nothing, which is why this number can be smaller than the grant list suggests and why the two reads exist separately. It is credit, not prepaid balance — /v1/billing/balance is the wallet, and the two are added by the gate, never by a reader.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBillingCreditBalanceWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/credit-balance';

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

  /// Answers what the caller can spend right now, one entry per currency.
  ///
  /// Answers what the caller can spend right now, one entry per currency.  Only ACTIVE grants count: a voided, exhausted or lapsed grant contributes nothing, which is why this number can be smaller than the grant list suggests and why the two reads exist separately. It is credit, not prepaid balance — /v1/billing/balance is the wallet, and the two are added by the gate, never by a reader.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  Future<CreditBalance?> getBillingCreditBalance() async {
    final response = await getBillingCreditBalanceWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreditBalance',) as CreditBalance;
    
    }
    return null;
  }

  /// Answers that same spendable credit split by grant tag, with the earliest expiry under each and the total across all of them.
  ///
  /// Answers that same spendable credit split by grant tag, with the earliest expiry under each and the total across all of them.  The split is the point: it is how trial credit is told apart from bought credit, which is what a surface asks before it decides whether to spend any. An unregistered address answers 404 and a caller reads that as \"no credit\", so this being served is the difference between a customer with a trial grant being offered their trial and being told they have none.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBillingCreditBalanceBreakdownWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/credit-balance/breakdown';

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

  /// Answers that same spendable credit split by grant tag, with the earliest expiry under each and the total across all of them.
  ///
  /// Answers that same spendable credit split by grant tag, with the earliest expiry under each and the total across all of them.  The split is the point: it is how trial credit is told apart from bought credit, which is what a surface asks before it decides whether to spend any. An unregistered address answers 404 and a caller reads that as \"no credit\", so this being served is the difference between a customer with a trial grant being offered their trial and being told they have none.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  Future<Object?> getBillingCreditBalanceBreakdown() async {
    final response = await getBillingCreditBalanceBreakdownWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Lists the caller's credit grants — every one of them, spent and lapsed and voided included.
  ///
  /// Lists the caller's credit grants — every one of them, spent and lapsed and voided included.  That is deliberate and it is what makes the list useful: a grant list is a LEDGER, and one that hid its spent rows could not be reconciled against a burn-down. What is spendable right now is the sibling read, /v1/billing/ credit-balance, and the two are different questions.  Scoped to the caller's own wallet, resolved server-side.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBillingCreditsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/credits';

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

  /// Lists the caller's credit grants — every one of them, spent and lapsed and voided included.
  ///
  /// Lists the caller's credit grants — every one of them, spent and lapsed and voided included.  That is deliberate and it is what makes the list useful: a grant list is a LEDGER, and one that hid its spent rows could not be reconciled against a burn-down. What is spendable right now is the sibling read, /v1/billing/ credit-balance, and the two are different questions.  Scoped to the caller's own wallet, resolved server-side.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  Future<CreditGrants?> getBillingCredits() async {
    final response = await getBillingCreditsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreditGrants',) as CreditGrants;
    
    }
    return null;
  }

  /// Reads one of the caller's own deposit intents back — pending, confirming, or succeeded.
  ///
  /// Reads one of the caller's own deposit intents back — pending, confirming, or succeeded.  An intent belonging to another payer answers 404, exactly as an id that names nothing, so a guessed id cannot confirm that somebody else's deposit exists.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the deposit intent id.
  Future<Response> getBillingCryptoDepositByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/crypto/deposit/{id}'
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

  /// Reads one of the caller's own deposit intents back — pending, confirming, or succeeded.
  ///
  /// Reads one of the caller's own deposit intents back — pending, confirming, or succeeded.  An intent belonging to another payer answers 404, exactly as an id that names nothing, so a guessed id cannot confirm that somebody else's deposit exists.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the deposit intent id.
  Future<CryptoDeposit?> getBillingCryptoDepositById(String id,) async {
    final response = await getBillingCryptoDepositByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CryptoDeposit',) as CryptoDeposit;
    
    }
    return null;
  }

  /// Answers which chains and tokens the crypto rail accepts — what an asset picker renders.
  ///
  /// Answers which chains and tokens the crypto rail accepts — what an asset picker renders.  It is the intersection of two live facts rather than a configured list: an asset appears only if something is WATCHING it and the custody processor supports it. An address nobody watches credits nobody, so offering one would take a customer's money and lose it. A rail with nothing armed answers 503, not an empty menu — \"no rail\" and \"no assets\" are different, and only one of them means try again later.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBillingCryptoOptionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/crypto/options';

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

  /// Answers which chains and tokens the crypto rail accepts — what an asset picker renders.
  ///
  /// Answers which chains and tokens the crypto rail accepts — what an asset picker renders.  It is the intersection of two live facts rather than a configured list: an asset appears only if something is WATCHING it and the custody processor supports it. An address nobody watches credits nobody, so offering one would take a customer's money and lose it. A rail with nothing armed answers 503, not an empty menu — \"no rail\" and \"no assets\" are different, and only one of them means try again later.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  Future<CryptoOptions?> getBillingCryptoOptions() async {
    final response = await getBillingCryptoOptionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CryptoOptions',) as CryptoOptions;
    
    }
    return null;
  }

  /// Lists the caller's invoices, newest first, with the count beside them.
  ///
  /// Lists the caller's invoices, newest first, with the count beside them.  It is scoped to the caller's own billing subject — the wallet this request bills from, resolved server-side — so a query cannot widen it to another customer of the same org. An org with no invoices is an empty list, not a refusal.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBillingInvoicesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/invoices';

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

  /// Lists the caller's invoices, newest first, with the count beside them.
  ///
  /// Lists the caller's invoices, newest first, with the count beside them.  It is scoped to the caller's own billing subject — the wallet this request bills from, resolved server-side — so a query cannot widen it to another customer of the same org. An org with no invoices is an empty list, not a refusal.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  Future<Invoices?> getBillingInvoices() async {
    final response = await getBillingInvoicesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Invoices',) as Invoices;
    
    }
    return null;
  }

  /// Download one invoice as a PDF
  ///
  /// Answers the invoice as an attachment — `application/pdf` under a Content-Disposition naming the invoice number — rather than as a JSON value, which is why this one route is untyped where its five siblings are typed: a PDF is bytes with a filename, and the two headers are the whole contract.  The render is a PURE function of the invoice: one page, no timestamps and no random ids, so the same invoice renders the same bytes however often it is asked for and a retry after a dropped connection costs a re-render and nothing else.  The invoice is read from the caller's own org, taken from the VALIDATED IAM owner claim and never from a client header, and the lookup is scoped at the storage layer — so an id belonging to another customer resolves to nothing and answers 404 rather than being found and then refused.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getBillingInvoicesByIdPdfWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/invoices/{id}/pdf'
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

  /// Download one invoice as a PDF
  ///
  /// Answers the invoice as an attachment — `application/pdf` under a Content-Disposition naming the invoice number — rather than as a JSON value, which is why this one route is untyped where its five siblings are typed: a PDF is bytes with a filename, and the two headers are the whole contract.  The render is a PURE function of the invoice: one page, no timestamps and no random ids, so the same invoice renders the same bytes however often it is asked for and a retry after a dropped connection costs a re-render and nothing else.  The invoice is read from the caller's own org, taken from the VALIDATED IAM owner claim and never from a client header, and the lookup is scoped at the storage layer — so an id belonging to another customer resolves to nothing and answers 404 rather than being found and then refused.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> getBillingInvoicesByIdPdf(String id,) async {
    final response = await getBillingInvoicesByIdPdfWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Answers the org's own postings inside `range=`, each as a signed entry: a DEPOSIT CREDITS the wallet (positive, account `credits:<org>`) and every other posting DEBITS it (negative, account `usage:<org>`), described by its notes or its tags.
  ///
  /// Answers the org's own postings inside `range=`, each as a signed entry: a DEPOSIT CREDITS the wallet (positive, account `credits:<org>`) and every other posting DEBITS it (negative, account `usage:<org>`), described by its notes or its tags. The sign is the posting's own meaning, read through ONE vocabulary shared with the ledger that wrote it — a reader with its own spelling for `deposit` rendered a customer's grant as a charge.  This is the closest projection of the truth. The org's double-entry postings are the source of record — balanced, only ever appended, one file per org — and this lane is that list, wider than either half of it: the deposits are the grants /v1/billing/credits lists and the debits are the spend /v1/billing/usage rolls up. It answers 503 where this deployment runs no ledger, rather than reporting an empty wallet.  A row whose timestamp will not parse is KEPT rather than dropped — a malformed date must show up in a money list, not vanish from it. `balanceCents` is omitted: these are MOVEMENTS, and the standing balance is /v1/billing/balance.  Cents are ROUNDED from the ledger's exact 18-decimal USD. Scoped to the caller's own org, where the org's ledger file is the tenant boundary; 401 without a validated principal.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range is the window: 24h, 7d, 30d or 90d. Anything else — including absent — is 30d, so a typo silently widens the window to a month rather than failing.
  Future<Response> getBillingLedgerWithHttpInfo({ String? range, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/ledger';

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
  /// Answers the org's own postings inside `range=`, each as a signed entry: a DEPOSIT CREDITS the wallet (positive, account `credits:<org>`) and every other posting DEBITS it (negative, account `usage:<org>`), described by its notes or its tags. The sign is the posting's own meaning, read through ONE vocabulary shared with the ledger that wrote it — a reader with its own spelling for `deposit` rendered a customer's grant as a charge.  This is the closest projection of the truth. The org's double-entry postings are the source of record — balanced, only ever appended, one file per org — and this lane is that list, wider than either half of it: the deposits are the grants /v1/billing/credits lists and the debits are the spend /v1/billing/usage rolls up. It answers 503 where this deployment runs no ledger, rather than reporting an empty wallet.  A row whose timestamp will not parse is KEPT rather than dropped — a malformed date must show up in a money list, not vanish from it. `balanceCents` is omitted: these are MOVEMENTS, and the standing balance is /v1/billing/balance.  Cents are ROUNDED from the ledger's exact 18-decimal USD. Scoped to the caller's own org, where the org's ledger file is the tenant boundary; 401 without a validated principal.
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range is the window: 24h, 7d, 30d or 90d. Anything else — including absent — is 30d, so a typo silently widens the window to a month rather than failing.
  Future<List<FinanceLedgerEntry>?> getBillingLedger({ String? range, }) async {
    final response = await getBillingLedgerWithHttpInfo( range: range, );
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

  /// Cards and accounts on file for the caller
  ///
  /// Answers every payment method the caller has saved, newest first.  A saved method is a card or account VAULTED at the processor: what is stored here is the processor's token for it plus the last four digits and the expiry a customer recognises it by, never a card number.  The list is the caller's OWN — the wallet this request bills from, resolved server-side — so a query cannot widen it to another customer of the same org.  `/v1/billing/portal/methods` answers the same list under the name a hosted checkout addresses it by. One set of rows, two spellings; a card added at either is present at both.  A store that cannot be read answers an EMPTY LIST rather than a failure: the saved-cards panel renders empty instead of breaking the page around it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBillingMethodsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/methods';

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

  /// Cards and accounts on file for the caller
  ///
  /// Answers every payment method the caller has saved, newest first.  A saved method is a card or account VAULTED at the processor: what is stored here is the processor's token for it plus the last four digits and the expiry a customer recognises it by, never a card number.  The list is the caller's OWN — the wallet this request bills from, resolved server-side — so a query cannot widen it to another customer of the same org.  `/v1/billing/portal/methods` answers the same list under the name a hosted checkout addresses it by. One set of rows, two spellings; a card added at either is present at both.  A store that cannot be read answers an EMPTY LIST rather than a failure: the saved-cards panel renders empty instead of breaking the page around it.
  Future<void> getBillingMethods() async {
    final response = await getBillingMethodsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Answers the org's outbound payouts, newest first — amount, destination, status, and the failure reason where one applies.
  ///
  /// Answers the org's outbound payouts, newest first — amount, destination, status, and the failure reason where one applies.  A payout is ORG-scoped rather than subject-scoped, so there is nothing to pin beyond the tenant the caller already is, and no query can widen it.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBillingPayoutsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/payouts';

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

  /// Answers the org's outbound payouts, newest first — amount, destination, status, and the failure reason where one applies.
  ///
  /// Answers the org's outbound payouts, newest first — amount, destination, status, and the failure reason where one applies.  A payout is ORG-scoped rather than subject-scoped, so there is nothing to pin beyond the tenant the caller already is, and no query can widen it.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  Future<List<Payout>?> getBillingPayouts() async {
    final response = await getBillingPayoutsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Payout>') as List)
        .cast<Payout>()
        .toList(growable: false);

    }
    return null;
  }

  /// The plan catalog, priced with whatever offer is in force
  ///
  /// Answers every plan on sale — its price, what it includes, and the limits it carries — optionally narrowed to one `?category=`.  The prices are what the CHECKOUT will charge: any active promotion is applied before they leave the store, so a reader never applies a discount a second time and a quote can never disagree with the sale.  It is the public catalog and needs no tenant: this is what anyone may buy.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBillingPlansWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/plans';

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

  /// The plan catalog, priced with whatever offer is in force
  ///
  /// Answers every plan on sale — its price, what it includes, and the limits it carries — optionally narrowed to one `?category=`.  The prices are what the CHECKOUT will charge: any active promotion is applied before they leave the store, so a reader never applies a discount a second time and a quote can never disagree with the sale.  It is the public catalog and needs no tenant: this is what anyone may buy.
  Future<void> getBillingPlans() async {
    final response = await getBillingPlansWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Cards and accounts on file for the caller
  ///
  /// Answers every payment method the caller has saved, newest first.  A saved method is a card or account VAULTED at the processor: what is stored here is the processor's token for it plus the last four digits and the expiry a customer recognises it by, never a card number.  The list is the caller's OWN — the wallet this request bills from, resolved server-side — so a query cannot widen it to another customer of the same org.  `/v1/billing/portal/methods` answers the same list under the name a hosted checkout addresses it by. One set of rows, two spellings; a card added at either is present at both.  A store that cannot be read answers an EMPTY LIST rather than a failure: the saved-cards panel renders empty instead of breaking the page around it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBillingPortalMethodsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/portal/methods';

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

  /// Cards and accounts on file for the caller
  ///
  /// Answers every payment method the caller has saved, newest first.  A saved method is a card or account VAULTED at the processor: what is stored here is the processor's token for it plus the last four digits and the expiry a customer recognises it by, never a card number.  The list is the caller's OWN — the wallet this request bills from, resolved server-side — so a query cannot widen it to another customer of the same org.  `/v1/billing/portal/methods` answers the same list under the name a hosted checkout addresses it by. One set of rows, two spellings; a card added at either is present at both.  A store that cannot be read answers an EMPTY LIST rather than a failure: the saved-cards panel renders empty instead of breaking the page around it.
  Future<void> getBillingPortalMethods() async {
    final response = await getBillingPortalMethodsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Reads the caller's auto-reload rule: top the balance up by `amountCents` whenever it falls below `thresholdCents`, charging the card on file off-session.
  ///
  /// Reads the caller's auto-reload rule: top the balance up by `amountCents` whenever it falls below `thresholdCents`, charging the card on file off-session. It is the same setting every prepaid AI account calls auto-reload.  An org that has never set one reads as disabled with zeroes rather than as an error — \"no rule\" answers the question — and `stored` is how a caller tells never-configured from deliberately-off.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBillingRechargeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/recharge';

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

  /// Reads the caller's auto-reload rule: top the balance up by `amountCents` whenever it falls below `thresholdCents`, charging the card on file off-session.
  ///
  /// Reads the caller's auto-reload rule: top the balance up by `amountCents` whenever it falls below `thresholdCents`, charging the card on file off-session. It is the same setting every prepaid AI account calls auto-reload.  An org that has never set one reads as disabled with zeroes rather than as an error — \"no rule\" answers the question — and `stored` is how a caller tells never-configured from deliberately-off.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  Future<AutoRecharge?> getBillingRecharge() async {
    final response = await getBillingRechargeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AutoRecharge',) as AutoRecharge;
    
    }
    return null;
  }

  /// Answers the PUBLIC half of this org's processor configuration — the ids a browser needs to tokenize a card, and the environment it must tokenize against.
  ///
  /// Answers the PUBLIC half of this org's processor configuration — the ids a browser needs to tokenize a card, and the environment it must tokenize against.  It carries no secret: an application id is published to every checkout page by design. What matters is that it names the SAME processor account the charge will be made on, because a card vaulted against one account and charged against another is a card that saves and then cannot be used.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBillingSettingsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/settings';

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

  /// Answers the PUBLIC half of this org's processor configuration — the ids a browser needs to tokenize a card, and the environment it must tokenize against.
  ///
  /// Answers the PUBLIC half of this org's processor configuration — the ids a browser needs to tokenize a card, and the environment it must tokenize against.  It carries no secret: an application id is published to every checkout page by design. What matters is that it names the SAME processor account the charge will be made on, because a card vaulted against one account and charged against another is a card that saves and then cannot be used.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  Future<PaymentConfig?> getBillingSettings() async {
    final response = await getBillingSettingsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaymentConfig',) as PaymentConfig;
    
    }
    return null;
  }

  /// Lists the plans the caller holds, with the count beside them.
  ///
  /// Lists the plans the caller holds, with the count beside them.  It is scoped to the caller's own org, so a query cannot widen it to another customer's. An org on nothing is an empty list, not a refusal — being on no plan is an answer.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBillingSubscriptionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/subscriptions';

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

  /// Lists the plans the caller holds, with the count beside them.
  ///
  /// Lists the plans the caller holds, with the count beside them.  It is scoped to the caller's own org, so a query cannot widen it to another customer's. An org on nothing is an empty list, not a refusal — being on no plan is an answer.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  Future<Subscriptions?> getBillingSubscriptions() async {
    final response = await getBillingSubscriptionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Subscriptions',) as Subscriptions;
    
    }
    return null;
  }

  /// Answers which tier the caller is on, what it allows, and what is left to spend.
  ///
  /// Answers which tier the caller is on, what it allows, and what is left to spend.  `effectiveAvailable` is the ONLY figure to compare against zero. The others are its parts — prepaid money, granted credits and the daily term are three sources of one spend, not three balances to add up a second time.  A tier that cannot be READ is an error, never Free. The router in front of the models maps any non-2xx to Free, so answering Free from a question nobody could answer would pin every paying customer to the most restrictive row with nothing anywhere to find.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBillingTierWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/tier';

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

  /// Answers which tier the caller is on, what it allows, and what is left to spend.
  ///
  /// Answers which tier the caller is on, what it allows, and what is left to spend.  `effectiveAvailable` is the ONLY figure to compare against zero. The others are its parts — prepaid money, granted credits and the daily term are three sources of one spend, not three balances to add up a second time.  A tier that cannot be READ is an error, never Free. The router in front of the models maps any non-2xx to Free, so answering Free from a question nobody could answer would pin every paying customer to the most restrictive row with nothing anywhere to find.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  Future<Tier?> getBillingTier() async {
    final response = await getBillingTierWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Tier',) as Tier;
    
    }
    return null;
  }

  /// Answers one page of the caller's own ledger, newest first: what moved, how much, when, and what it was tagged with.
  ///
  /// Answers one page of the caller's own ledger, newest first: what moved, how much, when, and what it was tagged with.  `count` is the size of the WHOLE history rather than of the page, which is how a reader knows there is more to ask for, and `user` echoes the wallet the page was read for — the same subject the spend gate debits, so a customer can see which account answered rather than guessing from their own token.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] currency:
  ///   Currency filters to one currency. Empty reads every currency.
  ///
  /// * [String] limit:
  ///   Limit is the page size; absent or non-positive takes the default 100.
  ///
  /// * [String] offset:
  ///   Offset is how far into the history the page starts.
  Future<Response> getBillingTransactionsWithHttpInfo({ String? currency, String? limit, String? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/transactions';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (currency != null) {
      queryParams.addAll(_queryParams('', 'currency', currency));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
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

  /// Answers one page of the caller's own ledger, newest first: what moved, how much, when, and what it was tagged with.
  ///
  /// Answers one page of the caller's own ledger, newest first: what moved, how much, when, and what it was tagged with.  `count` is the size of the WHOLE history rather than of the page, which is how a reader knows there is more to ask for, and `user` echoes the wallet the page was read for — the same subject the spend gate debits, so a customer can see which account answered rather than guessing from their own token.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Parameters:
  ///
  /// * [String] currency:
  ///   Currency filters to one currency. Empty reads every currency.
  ///
  /// * [String] limit:
  ///   Limit is the page size; absent or non-positive takes the default 100.
  ///
  /// * [String] offset:
  ///   Offset is how far into the history the page starts.
  Future<Transactions?> getBillingTransactions({ String? currency, String? limit, String? offset, }) async {
    final response = await getBillingTransactionsWithHttpInfo( currency: currency, limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Transactions',) as Transactions;
    
    }
    return null;
  }

  /// Reads one ledger entry by its id.
  ///
  /// Reads one ledger entry by its id.  It is the MEMBER of the collection beside it rather than a second way to ask — the same rows GET /v1/billing/transactions lists, addressed one at a time. A top-up receipt is read here, because a receipt IS a ledger entry: the id this takes is the `transactionId` a top-up hands back.  The read is narrower than the list: commerce's core loads the row and refuses anything that is not a deposit, so a row that exists but is not a top-up answers 404. That asymmetry is stated rather than closed, because widening a money read to make two shapes match is not a change worth making for symmetry.  The books are the caller's own and cannot be named, so a guessed id misses rather than reaching another tenant's ledger.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getBillingTransactionsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/transactions/{id}'
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

  /// Reads one ledger entry by its id.
  ///
  /// Reads one ledger entry by its id.  It is the MEMBER of the collection beside it rather than a second way to ask — the same rows GET /v1/billing/transactions lists, addressed one at a time. A top-up receipt is read here, because a receipt IS a ledger entry: the id this takes is the `transactionId` a top-up hands back.  The read is narrower than the list: commerce's core loads the row and refuses anything that is not a deposit, so a row that exists but is not a top-up answers 404. That asymmetry is stated rather than closed, because widening a money read to make two shapes match is not a change worth making for symmetry.  The books are the caller's own and cannot be named, so a guessed id misses rather than reaching another tenant's ledger.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Transaction?> getBillingTransactionsById(String id,) async {
    final response = await getBillingTransactionsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Transaction',) as Transaction;
    
    }
    return null;
  }

  /// Every billed call the caller's org made, attributed to a product
  ///
  /// Answers one row per BILLED call against the caller's org — transaction id, amount, timestamp and the metered unit. This is the raw charged ledger, not a rollup.  Each row is stamped with a canonical `metadata.product` derived from what the meter persisted: `agent` becomes agents, `provisioning` becomes the provisioned kind, a token-metered row becomes inference, anything else keeps its metering surface. The ledger has no product field of its own, so this read is where that dimension is made real — from the SAME charged rows, never a second meter. A row that already carries its own product WINS, so the derivation stops the day the meter records one.  `product=<id>` filters to one product server-side. `groupBy=product` reduces to `{product,requests,amountCents}` rollups instead of rows.  `amount` is whole USD cents, ROUNDED; `decimal` beside it is the SAME debit exact, as an 18-decimal USD string. Sum `decimal`. A page of sub-cent token calls totals correctly there and totals ZERO in `amount` — that difference is real money.  Scoped to the caller's own org's books, where the org's ledger file IS the tenant boundary; no client-supplied subject is ever forwarded. 401 without a validated principal. The co-resident read returns the 2000 most recent debits, newest first; `start` and `end` narrow the window only on the split-deploy upstream.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBillingUsageWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/usage';

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

  /// Every billed call the caller's org made, attributed to a product
  ///
  /// Answers one row per BILLED call against the caller's org — transaction id, amount, timestamp and the metered unit. This is the raw charged ledger, not a rollup.  Each row is stamped with a canonical `metadata.product` derived from what the meter persisted: `agent` becomes agents, `provisioning` becomes the provisioned kind, a token-metered row becomes inference, anything else keeps its metering surface. The ledger has no product field of its own, so this read is where that dimension is made real — from the SAME charged rows, never a second meter. A row that already carries its own product WINS, so the derivation stops the day the meter records one.  `product=<id>` filters to one product server-side. `groupBy=product` reduces to `{product,requests,amountCents}` rollups instead of rows.  `amount` is whole USD cents, ROUNDED; `decimal` beside it is the SAME debit exact, as an 18-decimal USD string. Sum `decimal`. A page of sub-cent token calls totals correctly there and totals ZERO in `amount` — that difference is real money.  Scoped to the caller's own org's books, where the org's ledger file IS the tenant boundary; no client-supplied subject is ever forwarded. 401 without a validated principal. The co-resident read returns the 2000 most recent debits, newest first; `start` and `end` narrow the window only on the split-deploy upstream.
  Future<void> getBillingUsage() async {
    final response = await getBillingUsageWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Answers per-account totals for the linked provider accounts the gateway ROUTED this caller's traffic through — requests, prompt and completion tokens, recorded cost — plus their honest sum.
  ///
  /// Answers per-account totals for the linked provider accounts the gateway ROUTED this caller's traffic through — requests, prompt and completion tokens, recorded cost — plus their honest sum.  This is the one read in the billing namespace scoped to the PERSON, not the org. Rows are keyed on (validated org, validated user), so a caller sees the accounts THEY linked and never a colleague's, even inside one org — everything else under /v1/billing is org-wide. Neither key is ever read from the request body or the query.  It is a ROUTING counter, not the money ledger. `costCents` is 0 for an account billed by its own subscription, where the plan pays the provider directly, so these totals do not reconcile against what the org was charged. /v1/billing/usage is the charged ledger.  401 without a validated principal. Where the linked-account plane is not resident the answer is an honest 501 — never an empty breakdown, which would read as no usage.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBillingUsageAccountsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/usage/accounts';

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

  /// Answers per-account totals for the linked provider accounts the gateway ROUTED this caller's traffic through — requests, prompt and completion tokens, recorded cost — plus their honest sum.
  ///
  /// Answers per-account totals for the linked provider accounts the gateway ROUTED this caller's traffic through — requests, prompt and completion tokens, recorded cost — plus their honest sum.  This is the one read in the billing namespace scoped to the PERSON, not the org. Rows are keyed on (validated org, validated user), so a caller sees the accounts THEY linked and never a colleague's, even inside one org — everything else under /v1/billing is org-wide. Neither key is ever read from the request body or the query.  It is a ROUTING counter, not the money ledger. `costCents` is 0 for an account billed by its own subscription, where the plan pays the provider directly, so these totals do not reconcile against what the org was charged. /v1/billing/usage is the charged ledger.  401 without a validated principal. Where the linked-account plane is not resident the answer is an honest 501 — never an empty breakdown, which would read as no usage.
  Future<Accounts?> getBillingUsageAccounts() async {
    final response = await getBillingUsageAccountsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Accounts',) as Accounts;
    
    }
    return null;
  }

  /// Answers the caller's month: what their plan includes, what has been consumed against it, and the wallet beside it.
  ///
  /// Answers the caller's month: what their plan includes, what has been consumed against it, and the wallet beside it.  The two blocks are SEPARATE monies and are never added. One is usage a plan granted; the other is prepaid credit bought with a card. Their sum is not a number anyone holds, and a reader that formed it would be inventing a balance.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBillingUsageRollupWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/usage/rollup';

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

  /// Answers the caller's month: what their plan includes, what has been consumed against it, and the wallet beside it.
  ///
  /// Answers the caller's month: what their plan includes, what has been consumed against it, and the wallet beside it.  The two blocks are SEPARATE monies and are never added. One is usage a plan granted; the other is prepaid credit bought with a card. Their sum is not a number anyone holds, and a reader that formed it would be inventing a balance.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  Future<Rollup?> getBillingUsageRollup() async {
    final response = await getBillingUsageRollupWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Rollup',) as Rollup;
    
    }
    return null;
  }

  /// Answers where to send a wire top-up: the receiving bank details, with the caller's own payment reference.
  ///
  /// Answers where to send a wire top-up: the receiving bank details, with the caller's own payment reference.  The account is the SERVING BRAND'S — resolved from the host the customer is paying on, so paying on one brand never shows another's bank — and the reference carries the caller's billing key, which is how an arriving wire names who it credits. Nothing mints here; a receipt is settled by an operator once the bank confirms it.  It is all-or-nothing: no configured account is 503 rather than a partial form, because nobody can wire to three fields out of five.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBillingWireWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/wire';

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

  /// Answers where to send a wire top-up: the receiving bank details, with the caller's own payment reference.
  ///
  /// Answers where to send a wire top-up: the receiving bank details, with the caller's own payment reference.  The account is the SERVING BRAND'S — resolved from the host the customer is paying on, so paying on one brand never shows another's bank — and the reference carries the caller's billing key, which is how an arriving wire names who it credits. Nothing mints here; a receipt is settled by an operator once the bank confirms it.  It is all-or-nothing: no configured account is 503 rather than a partial form, because nobody can wire to three fields out of five.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  Future<WireInstructions?> getBillingWire() async {
    final response = await getBillingWireWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WireInstructions',) as WireInstructions;
    
    }
    return null;
  }

  /// Read one invoice
  ///
  /// Reads one invoice out of the caller's org.  The org scopes the read by construction — the store is namespaced to it — so an id belonging to another tenant is not found rather than found and then filtered.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the invoice id.
  Future<Response> getInvoiceWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/invoices/{id}'
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

  /// Read one invoice
  ///
  /// Reads one invoice out of the caller's org.  The org scopes the read by construction — the store is namespaced to it — so an id belonging to another tenant is not found rather than found and then filtered.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the invoice id.
  Future<Invoice?> getInvoice(String id,) async {
    final response = await getInvoiceWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Invoice',) as Invoice;
    
    }
    return null;
  }

  /// Issue a draft invoice, making it collectible
  ///
  /// Issues a draft invoice: moves it to OPEN, assigns its number, and makes it collectible.  Only a draft can be issued. An invoice already open, paid or void is refused with the state machine's own reason rather than being silently re-issued, which would mint a second number for one debt.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the invoice id.
  Future<Response> issueInvoiceWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/invoices/{id}/issue'
      .replaceAll('{id}', id);

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

  /// Issue a draft invoice, making it collectible
  ///
  /// Issues a draft invoice: moves it to OPEN, assigns its number, and makes it collectible.  Only a draft can be issued. An invoice already open, paid or void is refused with the state machine's own reason rather than being silently re-issued, which would mint a second number for one debt.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the invoice id.
  Future<Invoice?> issueInvoice(String id,) async {
    final response = await issueInvoiceWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Invoice',) as Invoice;
    
    }
    return null;
  }

  /// Changes one spend cap: raise or lower the ceiling, flip enforcement, retune the rate limit.
  ///
  /// Changes one spend cap: raise or lower the ceiling, flip enforcement, retune the rate limit.  Only the fields the body carries move. Every mutable field is optional, and an absent one is PRESERVED rather than reset — so a change that flips enforcement cannot silently wipe the threshold it enforces.  A cap belonging to another org is a 404, not a 403: a guessed id must not become an oracle for what anyone else holds.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [AlertPatch] alertPatch (required):
  Future<Response> patchBillingAlertsByIdWithHttpInfo(String id, AlertPatch alertPatch,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/alerts/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = alertPatch;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Changes one spend cap: raise or lower the ceiling, flip enforcement, retune the rate limit.
  ///
  /// Changes one spend cap: raise or lower the ceiling, flip enforcement, retune the rate limit.  Only the fields the body carries move. Every mutable field is optional, and an absent one is PRESERVED rather than reset — so a change that flips enforcement cannot silently wipe the threshold it enforces.  A cap belonging to another org is a 404, not a 403: a guessed id must not become an oracle for what anyone else holds.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [AlertPatch] alertPatch (required):
  Future<Alert?> patchBillingAlertsById(String id, AlertPatch alertPatch,) async {
    final response = await patchBillingAlertsByIdWithHttpInfo(id, alertPatch,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Alert',) as Alert;
    
    }
    return null;
  }

  /// Opens a spend cap on the caller's own org.
  ///
  /// Opens a spend cap on the caller's own org.  At least one limit must mean something: a threshold above zero (a spend cap) or a requests-per-minute above zero (a rate limit). A row that bounds neither is refused rather than stored, because a ceiling nothing measures against is a ceiling a customer believes in and does not have.  The cap is keyed on the caller's own billing subject, resolved server-side — the SAME key the verdict looks it up under, which is what makes enforcement bind rather than merely record.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AlertSpec] alertSpec (required):
  Future<Response> postBillingAlertsWithHttpInfo(AlertSpec alertSpec,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/alerts';

    // ignore: prefer_final_locals
    Object? postBody = alertSpec;

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

  /// Opens a spend cap on the caller's own org.
  ///
  /// Opens a spend cap on the caller's own org.  At least one limit must mean something: a threshold above zero (a spend cap) or a requests-per-minute above zero (a rate limit). A row that bounds neither is refused rather than stored, because a ceiling nothing measures against is a ceiling a customer believes in and does not have.  The cap is keyed on the caller's own billing subject, resolved server-side — the SAME key the verdict looks it up under, which is what makes enforcement bind rather than merely record.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Parameters:
  ///
  /// * [AlertSpec] alertSpec (required):
  Future<Alert?> postBillingAlerts(AlertSpec alertSpec,) async {
    final response = await postBillingAlertsWithHttpInfo(alertSpec,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Alert',) as Alert;
    
    }
    return null;
  }

  /// Issues a deposit address the caller can send crypto to, on the asset they ask for.
  ///
  /// Issues a deposit address the caller can send crypto to, on the asset they ask for.  The address credits the CALLER'S own wallet and nobody else's: the payer is the validated principal, never a body value. Asking again reuses the caller's open intent rather than minting a second address, so a refresh cannot spray key generations — and a payer who sent to the address they saw earlier is still credited.  No balance moves here. The chain watcher credits on real confirmations, so what comes back is an address and a status, not a receipt.  An asset this rail cannot mint on is 400 — ask for another. A rail that is shut for that asset is 503 — nothing sent now can be credited.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CryptoAsset] cryptoAsset (required):
  Future<Response> postBillingCryptoDepositWithHttpInfo(CryptoAsset cryptoAsset,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/crypto/deposit';

    // ignore: prefer_final_locals
    Object? postBody = cryptoAsset;

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

  /// Issues a deposit address the caller can send crypto to, on the asset they ask for.
  ///
  /// Issues a deposit address the caller can send crypto to, on the asset they ask for.  The address credits the CALLER'S own wallet and nobody else's: the payer is the validated principal, never a body value. Asking again reuses the caller's open intent rather than minting a second address, so a refresh cannot spray key generations — and a payer who sent to the address they saw earlier is still credited.  No balance moves here. The chain watcher credits on real confirmations, so what comes back is an address and a status, not a receipt.  An asset this rail cannot mint on is 400 — ask for another. A rail that is shut for that asset is 503 — nothing sent now can be credited.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Parameters:
  ///
  /// * [CryptoAsset] cryptoAsset (required):
  Future<CryptoDeposit?> postBillingCryptoDeposit(CryptoAsset cryptoAsset,) async {
    final response = await postBillingCryptoDepositWithHttpInfo(cryptoAsset,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CryptoDeposit',) as CryptoDeposit;
    
    }
    return null;
  }

  /// Save a card or account for the caller
  ///
  /// Vaults the instrument at the processor and stores the row.  A saved method is a card or account VAULTED at the processor: what is stored here is the processor's token for it plus the last four digits and the expiry a customer recognises it by, never a card number.  The list is the caller's OWN — the wallet this request bills from, resolved server-side — so a query cannot widen it to another customer of the same org.  `/v1/billing/portal/methods` answers the same list under the name a hosted checkout addresses it by. One set of rows, two spellings; a card added at either is present at both.  Saving a card ALREADY on file answers with the row that already holds it rather than stacking a duplicate — 200 for that, 201 for a genuinely new row, so a client can tell which happened. A card the processor declines is 402 and nothing is stored.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postBillingMethodsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/methods';

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

  /// Save a card or account for the caller
  ///
  /// Vaults the instrument at the processor and stores the row.  A saved method is a card or account VAULTED at the processor: what is stored here is the processor's token for it plus the last four digits and the expiry a customer recognises it by, never a card number.  The list is the caller's OWN — the wallet this request bills from, resolved server-side — so a query cannot widen it to another customer of the same org.  `/v1/billing/portal/methods` answers the same list under the name a hosted checkout addresses it by. One set of rows, two spellings; a card added at either is present at both.  Saving a card ALREADY on file answers with the row that already holds it rather than stacking a duplicate — 200 for that, 201 for a genuinely new row, so a client can tell which happened. A card the processor declines is 402 and nothing is stored.
  Future<void> postBillingMethods() async {
    final response = await postBillingMethodsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Moves this org between sandbox money and real money.
  ///
  /// Moves this org between sandbox money and real money.  It decides whether a charge hits a real card, so it is the one posture change that is not self-service: the platform bar, never an org owner, because an org that could put itself in test mode could take priced work for free.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ModeIn] modeIn (required):
  Future<Response> postBillingModeWithHttpInfo(ModeIn modeIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/mode';

    // ignore: prefer_final_locals
    Object? postBody = modeIn;

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

  /// Moves this org between sandbox money and real money.
  ///
  /// Moves this org between sandbox money and real money.  It decides whether a charge hits a real card, so it is the one posture change that is not self-service: the platform bar, never an org owner, because an org that could put itself in test mode could take priced work for free.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Parameters:
  ///
  /// * [ModeIn] modeIn (required):
  Future<Mode?> postBillingMode(ModeIn modeIn,) async {
    final response = await postBillingModeWithHttpInfo(modeIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Mode',) as Mode;
    
    }
    return null;
  }

  /// Save a card or account for the caller
  ///
  /// Vaults the instrument at the processor and stores the row.  A saved method is a card or account VAULTED at the processor: what is stored here is the processor's token for it plus the last four digits and the expiry a customer recognises it by, never a card number.  The list is the caller's OWN — the wallet this request bills from, resolved server-side — so a query cannot widen it to another customer of the same org.  `/v1/billing/portal/methods` answers the same list under the name a hosted checkout addresses it by. One set of rows, two spellings; a card added at either is present at both.  Saving a card ALREADY on file answers with the row that already holds it rather than stacking a duplicate — 200 for that, 201 for a genuinely new row, so a client can tell which happened. A card the processor declines is 402 and nothing is stored.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postBillingPortalMethodsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/portal/methods';

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

  /// Save a card or account for the caller
  ///
  /// Vaults the instrument at the processor and stores the row.  A saved method is a card or account VAULTED at the processor: what is stored here is the processor's token for it plus the last four digits and the expiry a customer recognises it by, never a card number.  The list is the caller's OWN — the wallet this request bills from, resolved server-side — so a query cannot widen it to another customer of the same org.  `/v1/billing/portal/methods` answers the same list under the name a hosted checkout addresses it by. One set of rows, two spellings; a card added at either is present at both.  Saving a card ALREADY on file answers with the row that already holds it rather than stacking a duplicate — 200 for that, 201 for a genuinely new row, so a client can tell which happened. A card the processor declines is 402 and nothing is stored.
  Future<void> postBillingPortalMethods() async {
    final response = await postBillingPortalMethodsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Sweeps every org's auto-recharge and answers what it did.
  ///
  /// Sweeps every org's auto-recharge and answers what it did.  PLATFORM AUTHORITY ONLY. It charges saved cards across every tenant, so an org owner reaching it could sweep-charge the estate; a caller without it is refused before anything is charged.  The answer explains a sweep that charged nobody as readily as one that charged: it names how many orgs were considered and how many needed charging, with a row each.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postBillingRechargeRunAllWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/recharge/run-all';

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

  /// Sweeps every org's auto-recharge and answers what it did.
  ///
  /// Sweeps every org's auto-recharge and answers what it did.  PLATFORM AUTHORITY ONLY. It charges saved cards across every tenant, so an org owner reaching it could sweep-charge the estate; a caller without it is refused before anything is charged.  The answer explains a sweep that charged nobody as readily as one that charged: it names how many orgs were considered and how many needed charging, with a row each.
  Future<Recharge?> postBillingRechargeRunAll() async {
    final response = await postBillingRechargeRunAllWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Recharge',) as Recharge;
    
    }
    return null;
  }

  /// Buy a plan with a card
  ///
  /// Vaults the card (or reuses one already on file), charges the plan's FIRST period at the catalog price, and opens the subscription — one act, all of it server-side.  There is NO AMOUNT in the request. `level` picks which of the plan's published prices to buy at — an index, never a number — so what the card is charged is decided by the catalog and underpaying cannot be expressed.  A fresh sale answers 201 with the receipt. An identical retry answers 200 with the FIRST sale's body, byte for byte, so a client cannot read a replay as a second subscription having been opened. A caller already on a paid plan is 409 rather than charged again.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postBillingSubscribeCardWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/subscribe/card';

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

  /// Buy a plan with a card
  ///
  /// Vaults the card (or reuses one already on file), charges the plan's FIRST period at the catalog price, and opens the subscription — one act, all of it server-side.  There is NO AMOUNT in the request. `level` picks which of the plan's published prices to buy at — an index, never a number — so what the card is charged is decided by the catalog and underpaying cannot be expressed.  A fresh sale answers 201 with the receipt. An identical retry answers 200 with the FIRST sale's body, byte for byte, so a client cannot read a replay as a second subscription having been opened. A caller already on a paid plan is 409 rather than charged again.
  Future<void> postBillingSubscribeCard() async {
    final response = await postBillingSubscribeCardWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Charges a card the caller already saved and credits the balance.
  ///
  /// Charges a card the caller already saved and credits the balance. Same receipt and the same retry safety as the token endpoint; the only difference is which card, so a caller topping up from a saved method never re-enters one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TopupIn] topupIn (required):
  ///
  /// * [String] xIdempotencyKey:
  Future<Response> postBillingTopupWithHttpInfo(TopupIn topupIn, { String? xIdempotencyKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/topup';

    // ignore: prefer_final_locals
    Object? postBody = topupIn;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (xIdempotencyKey != null) {
      headerParams[r'X-Idempotency-Key'] = parameterToString(xIdempotencyKey);
    }

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

  /// Charges a card the caller already saved and credits the balance.
  ///
  /// Charges a card the caller already saved and credits the balance. Same receipt and the same retry safety as the token endpoint; the only difference is which card, so a caller topping up from a saved method never re-enters one.
  ///
  /// Parameters:
  ///
  /// * [TopupIn] topupIn (required):
  ///
  /// * [String] xIdempotencyKey:
  Future<Charged?> postBillingTopup(TopupIn topupIn, { String? xIdempotencyKey, }) async {
    final response = await postBillingTopupWithHttpInfo(topupIn,  xIdempotencyKey: xIdempotencyKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Charged',) as Charged;
    
    }
    return null;
  }

  /// Charges a single-use card token and credits the caller's balance.
  ///
  /// Charges a single-use card token and credits the caller's balance.  The token comes from the payment form and is vaulted as part of the charge, so no card number reaches this service and none is stored here. The receipt names the ledger entry, the new balance, and the PROCESSOR's own reference — which is the only field that proves money moved at the gateway rather than only in our ledger.  Retry-safe on X-Idempotency-Key: the same key settles one charge and returns the first receipt.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TopupIn] topupIn (required):
  ///
  /// * [String] xIdempotencyKey:
  Future<Response> postBillingTopupTokenWithHttpInfo(TopupIn topupIn, { String? xIdempotencyKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/topup/token';

    // ignore: prefer_final_locals
    Object? postBody = topupIn;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (xIdempotencyKey != null) {
      headerParams[r'X-Idempotency-Key'] = parameterToString(xIdempotencyKey);
    }

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

  /// Charges a single-use card token and credits the caller's balance.
  ///
  /// Charges a single-use card token and credits the caller's balance.  The token comes from the payment form and is vaulted as part of the charge, so no card number reaches this service and none is stored here. The receipt names the ledger entry, the new balance, and the PROCESSOR's own reference — which is the only field that proves money moved at the gateway rather than only in our ledger.  Retry-safe on X-Idempotency-Key: the same key settles one charge and returns the first receipt.
  ///
  /// Parameters:
  ///
  /// * [TopupIn] topupIn (required):
  ///
  /// * [String] xIdempotencyKey:
  Future<Charged?> postBillingTopupToken(TopupIn topupIn, { String? xIdempotencyKey, }) async {
    final response = await postBillingTopupTokenWithHttpInfo(topupIn,  xIdempotencyKey: xIdempotencyKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Charged',) as Charged;
    
    }
    return null;
  }

  /// Sets the caller's auto-reload rule, and answers with the rule as stored.
  ///
  /// Sets the caller's auto-reload rule, and answers with the rule as stored.  ENABLING REQUIRES A CARD ON FILE (400), because the sweep charges off-session: a rule naming no chargeable method is a promise the schedule cannot keep. A non-positive amount and a negative threshold are refused the same way, each naming the field that was wrong.  The rule is the caller's OWN. The org comes from the validated principal and the body names none, so there is no field a write could be steered through onto another tenant's schedule.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AutoRechargeEdit] autoRechargeEdit (required):
  Future<Response> putBillingRechargeWithHttpInfo(AutoRechargeEdit autoRechargeEdit,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/recharge';

    // ignore: prefer_final_locals
    Object? postBody = autoRechargeEdit;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Sets the caller's auto-reload rule, and answers with the rule as stored.
  ///
  /// Sets the caller's auto-reload rule, and answers with the rule as stored.  ENABLING REQUIRES A CARD ON FILE (400), because the sweep charges off-session: a rule naming no chargeable method is a promise the schedule cannot keep. A non-positive amount and a negative threshold are refused the same way, each naming the field that was wrong.  The rule is the caller's OWN. The org comes from the validated principal and the body names none, so there is no field a write could be steered through onto another tenant's schedule.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Parameters:
  ///
  /// * [AutoRechargeEdit] autoRechargeEdit (required):
  Future<AutoRecharge?> putBillingRecharge(AutoRechargeEdit autoRechargeEdit,) async {
    final response = await putBillingRechargeWithHttpInfo(autoRechargeEdit,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AutoRecharge',) as AutoRecharge;
    
    }
    return null;
  }

  /// Raise a draft invoice against a customer
  ///
  /// Raises a DRAFT invoice against a customer in the caller's own org.  The invoice is not collectible yet: a draft exists so it can be read and corrected, and issueInvoice is the separate act that turns it into a demand for payment. The subtotal and amount due are computed from the lines, so there is no total to send and none to get wrong.  The billing org is the caller's, taken from the validated principal, so an invoice can only ever be raised on the caller's own books.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RaiseIn] raiseIn (required):
  Future<Response> raiseInvoiceWithHttpInfo(RaiseIn raiseIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/invoices';

    // ignore: prefer_final_locals
    Object? postBody = raiseIn;

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

  /// Raise a draft invoice against a customer
  ///
  /// Raises a DRAFT invoice against a customer in the caller's own org.  The invoice is not collectible yet: a draft exists so it can be read and corrected, and issueInvoice is the separate act that turns it into a demand for payment. The subtotal and amount due are computed from the lines, so there is no total to send and none to get wrong.  The billing org is the caller's, taken from the validated principal, so an invoice can only ever be raised on the caller's own books.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Parameters:
  ///
  /// * [RaiseIn] raiseIn (required):
  Future<Invoice?> raiseInvoice(RaiseIn raiseIn,) async {
    final response = await raiseInvoiceWithHttpInfo(raiseIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Invoice',) as Invoice;
    
    }
    return null;
  }

  /// Put a canceled subscription back on its plan
  ///
  /// Puts a canceled subscription back on its plan.  What asks for this is usually a recovered payment method or a support tool rather than a browser, which is most of the argument for it having an address at all. The engine decides whether the move is legal; a row it will not reactivate comes back with its own reason.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [SubscriptionRef] subscriptionRef (required):
  Future<Response> reactivateSubscriptionWithHttpInfo(String id, SubscriptionRef subscriptionRef,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/subscriptions/{id}/reactivate'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = subscriptionRef;

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

  /// Put a canceled subscription back on its plan
  ///
  /// Puts a canceled subscription back on its plan.  What asks for this is usually a recovered payment method or a support tool rather than a browser, which is most of the argument for it having an address at all. The engine decides whether the move is legal; a row it will not reactivate comes back with its own reason.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [SubscriptionRef] subscriptionRef (required):
  Future<Subscription?> reactivateSubscription(String id, SubscriptionRef subscriptionRef,) async {
    final response = await reactivateSubscriptionWithHttpInfo(id, subscriptionRef,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Subscription',) as Subscription;
    
    }
    return null;
  }

  /// Void a draft or issued invoice
  ///
  /// Voids a draft or issued invoice — the cancel.  A paid invoice cannot be voided: money has moved, and the correction for that is a refund, not an erasure. The state machine refuses it and that refusal is the answer.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the invoice id.
  Future<Response> voidInvoiceWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/invoices/{id}/void'
      .replaceAll('{id}', id);

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

  /// Void a draft or issued invoice
  ///
  /// Voids a draft or issued invoice — the cancel.  A paid invoice cannot be voided: money has moved, and the correction for that is a refund, not an erasure. The state machine refuses it and that refusal is the answer.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the invoice id.
  Future<Invoice?> voidInvoice(String id,) async {
    final response = await voidInvoiceWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Invoice',) as Invoice;
    
    }
    return null;
  }
}
