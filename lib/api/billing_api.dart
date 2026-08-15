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
  Future<CollectOut?> collectInvoice(String id,) async {
    final response = await collectInvoiceWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CollectOut',) as CollectOut;
    
    }
    return null;
  }

  /// Remove one of your org's spend caps
  ///
  /// Deletes the addressed cap and answers 204. Requires an ORG ADMIN, a platform admin, or the internal service token — deleting a cap uncaps the org's spend, so a plain member is refused 403. Ownership is checked per row and a cap the caller does not own is refused as 404 rather than 403, so the response cannot confirm that another org's id exists.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
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

  /// Remove one of your org's spend caps
  ///
  /// Deletes the addressed cap and answers 204. Requires an ORG ADMIN, a platform admin, or the internal service token — deleting a cap uncaps the org's spend, so a plain member is refused 403. Ownership is checked per row and a cap the caller does not own is refused as 404 rather than 403, so the response cannot confirm that another org's id exists.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteBillingAlertsById(String id,) async {
    final response = await deleteBillingAlertsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Remove one of your saved cards
  ///
  /// Detaches the addressed card: the stored reference is removed here AND withdrawn from the processor's vault, so nothing is left that a later charge could bill.  The customer twin of DELETE /v1/billing/portal/methods/{id}. The id is resolved INSIDE your own org namespace, so a card that is not yours is simply not found there and answers 404 — never 403, which would confirm the id exists.  Removing the card an auto-recharge or a running lease bills leaves that arrangement with nothing to charge; that is yours to decide.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
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

  /// Remove one of your saved cards
  ///
  /// Detaches the addressed card: the stored reference is removed here AND withdrawn from the processor's vault, so nothing is left that a later charge could bill.  The customer twin of DELETE /v1/billing/portal/methods/{id}. The id is resolved INSIDE your own org namespace, so a card that is not yours is simply not found there and answers 404 — never 403, which would confirm the id exists.  Removing the card an auto-recharge or a running lease bills leaves that arrangement with nothing to charge; that is yours to decide.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteBillingMethodsById(String id,) async {
    final response = await deleteBillingMethodsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Remove a saved card — the portal detach
  ///
  /// Detaches the addressed card: the stored reference is removed here AND withdrawn from the processor's vault, so nothing is left that a later charge could bill.  The service-token twin of the customer's DELETE /v1/billing/methods/{id}, at its own address for the same reason the portal list is — a different principal, on the same rows, in this same process.  The id is resolved INSIDE the caller's org namespace, so another tenant's card is not found there and answers 404 — never 403, which would confirm the id exists. That bound holds for the service token too: it may act for any subject within the org the gateway pinned, and for no subject outside it.  Removing the card an auto-recharge or a running lease bills leaves that arrangement with nothing to charge; that is the customer's call to make.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
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

  /// Remove a saved card — the portal detach
  ///
  /// Detaches the addressed card: the stored reference is removed here AND withdrawn from the processor's vault, so nothing is left that a later charge could bill.  The service-token twin of the customer's DELETE /v1/billing/methods/{id}, at its own address for the same reason the portal list is — a different principal, on the same rows, in this same process.  The id is resolved INSIDE the caller's org namespace, so another tenant's card is not found there and answers 404 — never 403, which would confirm the id exists. That bound holds for the service token too: it may act for any subject within the org the gateway pinned, and for no subject outside it.  Removing the card an auto-recharge or a running lease bills leaves that arrangement with nothing to charge; that is the customer's call to make.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteBillingPortalMethodsById(String id,) async {
    final response = await deleteBillingPortalMethodsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The billing account you are signed in to
  ///
  /// Returns the billing accounts visible to the caller. One organisation is exactly one billing account here, so an authenticated caller sees precisely one: their own. The list shape is the honest one — it is what a caller with access to several would receive — rather than a promise that more will ever appear for a token scoped to a single org.  The account is derived from the validated org claim and from nothing the caller sends, so there is no account parameter and a cross-tenant read is not expressible. An unauthenticated call is 401.
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

  /// The billing account you are signed in to
  ///
  /// Returns the billing accounts visible to the caller. One organisation is exactly one billing account here, so an authenticated caller sees precisely one: their own. The list shape is the honest one — it is what a caller with access to several would receive — rather than a promise that more will ever appear for a token scoped to a single org.  The account is derived from the validated org claim and from nothing the caller sends, so there is no account parameter and a cross-tenant read is not expressible. An unauthenticated call is 401.
  Future<void> getBillingAccounts() async {
    final response = await getBillingAccountsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Who is on a billing account
  ///
  /// Returns the members of one billing account. The id must be the caller's OWN account — the handler compares it against the org resolved from the token and answers 403 when they differ, which is what guards this route: unlike its siblings it carries no subject key for the pin to overwrite, so it checks the path segment itself.  The roster it can answer is currently the requesting user alone. Membership lives in IAM, not in the ledger, and this operation reports what commerce actually holds rather than inventing a roster from a source it does not read. An unauthenticated call is 401.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
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

  /// Who is on a billing account
  ///
  /// Returns the members of one billing account. The id must be the caller's OWN account — the handler compares it against the org resolved from the token and answers 403 when they differ, which is what guards this route: unlike its siblings it carries no subject key for the pin to overwrite, so it checks the path segment itself.  The roster it can answer is currently the requesting user alone. Membership lives in IAM, not in the ledger, and this operation reports what commerce actually holds rather than inventing a roster from a source it does not read. An unauthenticated call is 401.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> getBillingAccountsByIdMembers(String id,) async {
    final response = await getBillingAccountsByIdMembersWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List your org's spend caps and rate limits
  ///
  /// Returns the caps and alerts keyed to the caller's own billing subject, each with its threshold, enforcement flag, soft-warning percentage and current period spend. Any authenticated member of the org may read them — only the writes require an admin. The rows are keyed on the org subject the enforcement gate itself reads, which is why a cap created here is the one that actually binds. A caller with no resolvable org or subject gets an empty list, never another tenant's caps.
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

  /// List your org's spend caps and rate limits
  ///
  /// Returns the caps and alerts keyed to the caller's own billing subject, each with its threshold, enforcement flag, soft-warning percentage and current period spend. Any authenticated member of the org may read them — only the writes require an admin. The rows are keyed on the org subject the enforcement gate itself reads, which is why a cap created here is the one that actually binds. A caller with no resolvable org or subject gets an empty list, never another tenant's caps.
  Future<void> getBillingAlerts() async {
    final response = await getBillingAlertsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The per-request spend-cap verdict the metering gate consumes
  ///
  /// Answers allow, reason, capCents, spentCents and warnPct for a proposed amount against a (project, service) scope — the verdict the request-edge metering gate reads before admitting a call. It evaluates EVERY covering cap and the most restrictive enforcing one wins; soft caps and an enforcing project cap whose project axis is not validated never block, they only raise the warning utilization. It is a service-to-service read authenticated by the internal service token with the org pinned by the gateway, not a browser call. Two rules matter: the spend it scores comes from the finance ledger's current-month total, and it FAILS OPEN on unknown spend — a transient read failure allows rather than denies, so a backend blip never bills-blocks an under-cap customer, while a known overage still denies.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBillingAlertsAuthorizeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/alerts/authorize';

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

  /// The per-request spend-cap verdict the metering gate consumes
  ///
  /// Answers allow, reason, capCents, spentCents and warnPct for a proposed amount against a (project, service) scope — the verdict the request-edge metering gate reads before admitting a call. It evaluates EVERY covering cap and the most restrictive enforcing one wins; soft caps and an enforcing project cap whose project axis is not validated never block, they only raise the warning utilization. It is a service-to-service read authenticated by the internal service token with the org pinned by the gateway, not a browser call. Two rules matter: the spend it scores comes from the finance ledger's current-month total, and it FAILS OPEN on unknown spend — a transient read failure allows rather than denies, so a backend blip never bills-blocks an under-cap customer, while a known overage still denies.
  Future<void> getBillingAlertsAuthorize() async {
    final response = await getBillingAlertsAuthorizeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
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

  /// What is left of your credit, as one number
  ///
  /// Returns the total credit still available to the caller's own subject — the sum of what the grants have left, which is the figure the console shows above the usage meter. It is the balance a metered act draws down, so it answers the one question a customer asks before spending: how much is there.  Like every read in this family the subject is pinned to the caller before the handler runs, so the userId parameter the handler reads can never name another tenant. For the grants BEHIND this number — each with its original amount and its expiry — read /v1/billing/credits. A subject with no credit is zero, which is an answer and not an error.
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

  /// What is left of your credit, as one number
  ///
  /// Returns the total credit still available to the caller's own subject — the sum of what the grants have left, which is the figure the console shows above the usage meter. It is the balance a metered act draws down, so it answers the one question a customer asks before spending: how much is there.  Like every read in this family the subject is pinned to the caller before the handler runs, so the userId parameter the handler reads can never name another tenant. For the grants BEHIND this number — each with its original amount and its expiry — read /v1/billing/credits. A subject with no credit is zero, which is an answer and not an error.
  Future<void> getBillingCreditBalance() async {
    final response = await getBillingCreditBalanceWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List the credit grants on your org's balance
  ///
  /// Returns the caller org's credit grants — each with its original amount, what remains and when it expires — so a customer can see what was given and what is left before metered spend draws it down. It is a READ of the caller's own subject, pinned before the handler runs, so a grant belonging to another tenant is simply absent. Granting credit is not this route and never has been: minting lands on the mint-gated POST /v1/billing/credit, which no browser can reach. Reading an empty balance is an empty array, not an error.
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

  /// List the credit grants on your org's balance
  ///
  /// Returns the caller org's credit grants — each with its original amount, what remains and when it expires — so a customer can see what was given and what is left before metered spend draws it down. It is a READ of the caller's own subject, pinned before the handler runs, so a grant belonging to another tenant is simply absent. Granting credit is not this route and never has been: minting lands on the mint-gated POST /v1/billing/credit, which no browser can reach. Reading an empty balance is an empty array, not an error.
  Future<void> getBillingCredits() async {
    final response = await getBillingCreditsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Follow one crypto deposit to settlement
  ///
  /// Answers the addressed deposit intent's current state — pending until a transfer is seen, confirming while the chain buries it, succeeded once it is credited — so a payment page can poll one deposit rather than the whole balance.  Scoped to the caller: an intent belonging to another payer is not found and answers 404, never another account's state. The credit itself is the chain watcher's to make; this read reports it and never performs it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
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

  /// Follow one crypto deposit to settlement
  ///
  /// Answers the addressed deposit intent's current state — pending until a transfer is seen, confirming while the chain buries it, succeeded once it is credited — so a payment page can poll one deposit rather than the whole balance.  Scoped to the caller: an intent belonging to another payer is not found and answers 404, never another account's state. The credit itself is the chain watcher's to make; this read reports it and never performs it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> getBillingCryptoDepositById(String id,) async {
    final response = await getBillingCryptoDepositByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Which chains and tokens a crypto top-up can use
  ///
  /// Answers the custody processor's LIVE capability list — the chains and the tokens on each that this deployment can actually take a deposit on. A payment page renders its asset picker straight from it rather than from a list of its own, so a chain the processor stops supporting disappears from the picker instead of minting an address nothing watches.  It is a capability read, not an account read: it says what may be paid with, never anything about this caller's balance or deposits.
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

  /// Which chains and tokens a crypto top-up can use
  ///
  /// Answers the custody processor's LIVE capability list — the chains and the tokens on each that this deployment can actually take a deposit on. A payment page renders its asset picker straight from it rather than from a list of its own, so a chain the processor stops supporting disappears from the picker instead of minting an address nothing watches.  It is a capability read, not an account read: it says what may be paid with, never anything about this caller's balance or deposits.
  Future<void> getBillingCryptoOptions() async {
    final response = await getBillingCryptoOptionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List your org's billing invoices
  ///
  /// Returns the caller org's invoices with a count, read from that org's own namespaced store, narrowable by userId, status or subscriptionId. The org is the one the gateway validated and the caller's billing subject is pinned into the query before the handler runs, so a read can never widen past the caller. A request that carries no resolvable org gets an honest empty list rather than an error or another tenant's rows.
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

  /// List your org's billing invoices
  ///
  /// Returns the caller org's invoices with a count, read from that org's own namespaced store, narrowable by userId, status or subscriptionId. The org is the one the gateway validated and the caller's billing subject is pinned into the query before the handler runs, so a read can never widen past the caller. A request that carries no resolvable org gets an honest empty list rather than an error or another tenant's rows.
  Future<void> getBillingInvoices() async {
    final response = await getBillingInvoicesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Download one invoice as a PDF attachment
  ///
  /// Renders the addressed invoice as a single-page PDF and answers it as an attachment named after the invoice number. The render is a pure function of the invoice — no timestamps, no random ids — so the same invoice always produces identical bytes and a re-download is stable. The invoice is resolved inside the caller org's own namespace, so an id belonging to another tenant is simply absent and reads as 404; a caller with no validated org gets 401 rather than a document.
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

  /// Download one invoice as a PDF attachment
  ///
  /// Renders the addressed invoice as a single-page PDF and answers it as an attachment named after the invoice number. The render is a pure function of the invoice — no timestamps, no random ids — so the same invoice always produces identical bytes and a re-download is stable. The invoice is resolved inside the caller org's own namespace, so an id belonging to another tenant is simply absent and reads as 404; a caller with no validated org gets 401 rather than a document.
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

  /// Your saved cards, masked — the customer read
  ///
  /// Answers the cards saved against your own account as masked descriptors: brand, last four, expiry and the processor's reusable reference. No card number and no security code exist here to return; both live at the processor and never enter this system. It is what a checkout prefills its payment step from.  The customer face of the list a service token reads at /v1/billing/portal/methods — same rows, different principal, no hop between them.  The subject filter is pinned to the VALIDATED caller before the handler runs, so the answer is your own account's cards whatever customerId the request carries, and another org's rows are outside the namespace entirely. A caller who is not signed in is refused before the read.
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

  /// Your saved cards, masked — the customer read
  ///
  /// Answers the cards saved against your own account as masked descriptors: brand, last four, expiry and the processor's reusable reference. No card number and no security code exist here to return; both live at the processor and never enter this system. It is what a checkout prefills its payment step from.  The customer face of the list a service token reads at /v1/billing/portal/methods — same rows, different principal, no hop between them.  The subject filter is pinned to the VALIDATED caller before the handler runs, so the answer is your own account's cards whatever customerId the request carries, and another org's rows are outside the namespace entirely. A caller who is not signed in is refused before the read.
  Future<void> getBillingMethods() async {
    final response = await getBillingMethodsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List your org's payouts, newest first
  ///
  /// Returns the caller org's payout records ordered by creation time descending, read from that org's own namespaced store. The org is the gateway-validated one and the caller's billing subject is pinned before the handler runs, so the list is the caller's own and cannot be widened. A request with no resolvable org gets an empty array rather than an error.
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

  /// List your org's payouts, newest first
  ///
  /// Returns the caller org's payout records ordered by creation time descending, read from that org's own namespaced store. The org is the gateway-validated one and the caller's billing subject is pinned before the handler runs, so the list is the caller's own and cannot be widened. A request with no resolvable org gets an empty array rather than an error.
  Future<void> getBillingPayouts() async {
    final response = await getBillingPayoutsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The public plan catalog, annotated with the active platform promotion
  ///
  /// Returns every subscription tier a buyer can choose, each carrying the platform promo currently in effect, optionally narrowed with the category query. Prices come from the admin-editable plan authority in the database; the embedded catalog is only a loud-failing fallback, so a failed seed or a query error serves the known plans rather than a silently blank list. It is a catalog read, not an entitlement read — it says what may be bought, never what this caller has.
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

  /// The public plan catalog, annotated with the active platform promotion
  ///
  /// Returns every subscription tier a buyer can choose, each carrying the platform promo currently in effect, optionally narrowed with the category query. Prices come from the admin-editable plan authority in the database; the embedded catalog is only a loud-failing fallback, so a failed seed or a query error serves the known plans rather than a silently blank list. It is a catalog read, not an entitlement read — it says what may be bought, never what this caller has.
  Future<void> getBillingPlans() async {
    final response = await getBillingPlansWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Cards saved against the caller's org, masked — the portal read
  ///
  /// Answers the org's saved payment methods as masked descriptors: brand, last four, expiry and the processor's reusable reference. No card number and no security code exist here to return; both live at the processor and never enter this system.  This is the SERVICE-TOKEN face of the same list a customer reads at /v1/billing/methods. Both are served here, in this process, and answer the same rows; they are two addresses because they admit two different principals, not because either forwards to the other.  The customer filter is pinned to the VALIDATED caller before the handler runs, so a browser sees only its own subject's cards whatever customerId it sends; only a caller holding the internal service token may name the subject, and the org it may name it within is fixed by the gateway. Cross-tenant is closed by the org namespace for both, so an id or a subject from another org resolves to nothing. A caller who is neither is refused before the read.
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

  /// Cards saved against the caller's org, masked — the portal read
  ///
  /// Answers the org's saved payment methods as masked descriptors: brand, last four, expiry and the processor's reusable reference. No card number and no security code exist here to return; both live at the processor and never enter this system.  This is the SERVICE-TOKEN face of the same list a customer reads at /v1/billing/methods. Both are served here, in this process, and answer the same rows; they are two addresses because they admit two different principals, not because either forwards to the other.  The customer filter is pinned to the VALIDATED caller before the handler runs, so a browser sees only its own subject's cards whatever customerId it sends; only a caller holding the internal service token may name the subject, and the org it may name it within is fixed by the gateway. Cross-tenant is closed by the org namespace for both, so an id or a subject from another org resolves to nothing. A caller who is neither is refused before the read.
  Future<void> getBillingPortalMethods() async {
    final response = await getBillingPortalMethodsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The public payment-provider config your card form needs to initialize
  ///
  /// Answers the Square application id, location id, environment and live flag the browser's card iframe boots against — public values only, never a secret. Resolution lives in one place shared with the public tenant projection, so the card form can never initialize against a different Square application than the one commerce will actually charge. It deliberately does NOT hydrate credentials from KMS: the dialog blocks on this call, so it answers from the org and the deployment environment without a round trip, and an org with no per-org credentials gets the deployment's own public app id.
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

  /// The public payment-provider config your card form needs to initialize
  ///
  /// Answers the Square application id, location id, environment and live flag the browser's card iframe boots against — public values only, never a secret. Resolution lives in one place shared with the public tenant projection, so the card form can never initialize against a different Square application than the one commerce will actually charge. It deliberately does NOT hydrate credentials from KMS: the dialog blocks on this call, so it answers from the org and the deployment environment without a round trip, and an org with no per-org credentials gets the deployment's own public app id.
  Future<void> getBillingSettings() async {
    final response = await getBillingSettingsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List your org's subscriptions
  ///
  /// Returns the caller org's subscriptions with a count, narrowable by userId or status, read from that org's own namespaced store. The org is the gateway-validated one and the caller's billing subject is pinned before the handler runs. A request with no resolvable org gets an empty list and a zero count rather than an error.
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

  /// List your org's subscriptions
  ///
  /// Returns the caller org's subscriptions with a count, narrowable by userId or status, read from that org's own namespaced store. The org is the gateway-validated one and the caller's billing subject is pinned before the handler runs. A request with no resolvable org gets an empty list and a zero count rather than an error.
  Future<void> getBillingSubscriptions() async {
    final response = await getBillingSubscriptionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The subject's plan tier and the balance a metered call is admitted on
  ///
  /// Answers one subject's resolved tier — name, display name, agent ceiling and allowed models — with the balance that admits their next metered call: prepaidAvailable, creditsRemaining, dailyRemaining and the effectiveAvailable those fold into. The ai router reads it per request to pick that caller's rate-limit tier. It sits on the org-resolving chain because a tier is org state, and the subject keys are pinned to the validated caller before the handler runs, so a browser read is always the caller's own; user is required, which only a service-to-service caller can omit and be refused 400 for. The tier is an upstream tier claim, or an explicit tier override, when either is present — that is the service-to-service contract — and is otherwise DERIVED from the org's active and trialing subscriptions, the highest one winning, its paid-ness read from the plan catalog by slug rather than from the subscription's own stored copy. The rule to get right is effectiveAvailable and not prepaidAvailable: granted credits spend too, credits first, so an account funded only by a grant reads zero prepaid while holding real spendable credit — and with the daily term zero on every tier there is no free allowance behind it, so a zero-balance account is gated. A subscription-store error answers 500 rather than downgrading to free, so a transient failure never reports a paid subscriber as unsubscribed.
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

  /// The subject's plan tier and the balance a metered call is admitted on
  ///
  /// Answers one subject's resolved tier — name, display name, agent ceiling and allowed models — with the balance that admits their next metered call: prepaidAvailable, creditsRemaining, dailyRemaining and the effectiveAvailable those fold into. The ai router reads it per request to pick that caller's rate-limit tier. It sits on the org-resolving chain because a tier is org state, and the subject keys are pinned to the validated caller before the handler runs, so a browser read is always the caller's own; user is required, which only a service-to-service caller can omit and be refused 400 for. The tier is an upstream tier claim, or an explicit tier override, when either is present — that is the service-to-service contract — and is otherwise DERIVED from the org's active and trialing subscriptions, the highest one winning, its paid-ness read from the plan catalog by slug rather than from the subscription's own stored copy. The rule to get right is effectiveAvailable and not prepaidAvailable: granted credits spend too, credits first, so an account funded only by a grant reads zero prepaid while holding real spendable credit — and with the daily term zero on every tier there is no free allowance behind it, so a zero-balance account is gated. A subscription-store error answers 500 rather than downgrading to free, so a transient failure never reports a paid subscriber as unsubscribed.
  Future<void> getBillingTier() async {
    final response = await getBillingTierWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List the movements on your own balance, newest first
  ///
  /// Returns the caller's own ledger movements — every credit and debit against the subject the usage gate charges — newest first, with a count and the subject they belong to, so a customer can reconcile a bill against the acts that produced it. Paging is limit and offset, and the currency can be narrowed.  The subject is NOT the caller's to choose. The handler filters on a user parameter, and that parameter is overwritten with the caller's own billing subject before the handler runs — so naming another subject returns your own rows rather than theirs, and the read can never disagree with the wallet it describes. An unauthenticated call is 401 rather than 403, because a browser re-authenticates on the first and only reports the second. No movements is an empty list, not an error.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBillingTransactionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/transactions';

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

  /// List the movements on your own balance, newest first
  ///
  /// Returns the caller's own ledger movements — every credit and debit against the subject the usage gate charges — newest first, with a count and the subject they belong to, so a customer can reconcile a bill against the acts that produced it. Paging is limit and offset, and the currency can be narrowed.  The subject is NOT the caller's to choose. The handler filters on a user parameter, and that parameter is overwritten with the caller's own billing subject before the handler runs — so naming another subject returns your own rows rather than theirs, and the read can never disagree with the wallet it describes. An unauthenticated call is 401 rather than 403, because a browser re-authenticates on the first and only reports the second. No movements is an empty list, not an error.
  Future<void> getBillingTransactions() async {
    final response = await getBillingTransactionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
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

  /// Where to wire funds, and the reference that credits them to you
  ///
  /// Answers the receiving bank details for the brand this deployment serves — the account the funds actually land in, hydrated per brand rather than hard-coded — together with the payment reference to put on the transfer.  THE REFERENCE IS THE POINT. It carries your own billing key, and it is how an arriving wire is attributed to your account; a transfer sent without it arrives as an unidentified receipt. That is why this read is gated at all: an unpinned caller would be handed an unattributable reference.  Reading it credits nothing and reserves nothing. A wire is settled by an operator when the bank shows the funds, so the balance moves on receipt, not on this call.
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

  /// Where to wire funds, and the reference that credits them to you
  ///
  /// Answers the receiving bank details for the brand this deployment serves — the account the funds actually land in, hydrated per brand rather than hard-coded — together with the payment reference to put on the transfer.  THE REFERENCE IS THE POINT. It carries your own billing key, and it is how an arriving wire is attributed to your account; a transfer sent without it arrives as an unidentified receipt. That is why this read is gated at all: an unpinned caller would be handed an unattributable reference.  Reading it credits nothing and reserves nothing. A wire is settled by an operator when the bank shows the funds, so the balance moves on receipt, not on this call.
  Future<void> getBillingWire() async {
    final response = await getBillingWireWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
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
  Future<InvoiceOut?> getInvoice(String id,) async {
    final response = await getInvoiceWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InvoiceOut',) as InvoiceOut;
    
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
  Future<InvoiceOut?> issueInvoice(String id,) async {
    final response = await issueInvoiceWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InvoiceOut',) as InvoiceOut;
    
    }
    return null;
  }

  /// Change one of your org's spend caps
  ///
  /// Applies only the fields the body actually carries — title, threshold, project, service, enforce, softPct, rateLimitRpm — and leaves the rest as stored, answering the merged row with its current period spend. Requires an ORG ADMIN, a platform admin, or the internal service token, for the same reason creation does: a member who could edit the cap could raise it to nothing or drop it to a punitive floor. Ownership is checked per row and a cap the caller does not own is refused as 404, never 403, so the id space cannot be probed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> patchBillingAlertsByIdWithHttpInfo(String id,) async {
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
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Change one of your org's spend caps
  ///
  /// Applies only the fields the body actually carries — title, threshold, project, service, enforce, softPct, rateLimitRpm — and leaves the rest as stored, answering the merged row with its current period spend. Requires an ORG ADMIN, a platform admin, or the internal service token, for the same reason creation does: a member who could edit the cap could raise it to nothing or drop it to a punitive floor. Ownership is checked per row and a cap the caller does not own is refused as 404, never 403, so the id space cannot be probed.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> patchBillingAlertsById(String id,) async {
    final response = await patchBillingAlertsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Set a spend cap or rate limit on your org
  ///
  /// Creates a cap for the caller's own org and answers the stored row with its current period spend. A spend cap is a FINANCIAL SAFETY control, so writing one requires an ORG ADMIN, a platform admin, or the internal service token — a plain authenticated member is refused 403, because a member who could delete the cap could uncap the org's spend and a member who could set a one-cent enforcing cap could deny the whole org. The cap is always keyed to the caller's own billing subject: a userId in the body is overwritten, never honored, so a cap cannot be planted on another subject. At least one of a positive threshold or a positive rateLimitRpm is required, softPct must be within 0 to 100, and an org that has reached its row limit is refused 400.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postBillingAlertsWithHttpInfo() async {
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Set a spend cap or rate limit on your org
  ///
  /// Creates a cap for the caller's own org and answers the stored row with its current period spend. A spend cap is a FINANCIAL SAFETY control, so writing one requires an ORG ADMIN, a platform admin, or the internal service token — a plain authenticated member is refused 403, because a member who could delete the cap could uncap the org's spend and a member who could set a one-cent enforcing cap could deny the whole org. The cap is always keyed to the caller's own billing subject: a userId in the body is overwritten, never honored, so a cap cannot be planted on another subject. At least one of a positive threshold or a positive rateLimitRpm is required, softPct must be within 0 to 100, and an org that has reached its row limit is refused 400.
  Future<void> postBillingAlerts() async {
    final response = await postBillingAlertsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get a deposit address for a crypto top-up
  ///
  /// Mints a deposit address held by the MPC signer fleet — no single party holds the key — on the chain and token you name, and returns it with the intent that tracks it.  The account credited is the PINNED caller's, never a value in the body, so a deposit cannot be aimed at someone else's balance. A caller who already has an open intent gets that same address back rather than a new one, so reloading the page cannot spray keygens across the signer fleet.  NO BALANCE MOVES HERE. This hands out an address; the chain watcher credits the account when a real transfer confirms, which is also why an address handed out and never funded costs nothing and expires nothing.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postBillingCryptoDepositWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/crypto/deposit';

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

  /// Get a deposit address for a crypto top-up
  ///
  /// Mints a deposit address held by the MPC signer fleet — no single party holds the key — on the chain and token you name, and returns it with the intent that tracks it.  The account credited is the PINNED caller's, never a value in the body, so a deposit cannot be aimed at someone else's balance. A caller who already has an open intent gets that same address back rather than a new one, so reloading the page cannot spray keygens across the signer fleet.  NO BALANCE MOVES HERE. This hands out an address; the chain watcher credits the account when a real transfer confirms, which is also why an address handed out and never funded costs nothing and expires nothing.
  Future<void> postBillingCryptoDeposit() async {
    final response = await postBillingCryptoDepositWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Save a card for later charges
  ///
  /// Vaults the card the processor already holds — you send its one-time reference, never a card number — as a reusable card on file, and stores the billing address with it. That vaulted card is what a subscription renewal or an auto-recharge charges later, which is why saving one is the step that makes a monthly plan billable at all.  It charges nothing. Saving a card moves no money; the first charge is whatever arrangement you then attach it to.  The subject is pinned from the validated caller and OVERWRITES the customerId in the body while leaving the card fields untouched, so a card can only ever be attached to the caller's OWN account whatever the body claims. That pin is the whole control on this write, not decoration: this is the one handler in the family that reads its subject from the body.
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

  /// Save a card for later charges
  ///
  /// Vaults the card the processor already holds — you send its one-time reference, never a card number — as a reusable card on file, and stores the billing address with it. That vaulted card is what a subscription renewal or an auto-recharge charges later, which is why saving one is the step that makes a monthly plan billable at all.  It charges nothing. Saving a card moves no money; the first charge is whatever arrangement you then attach it to.  The subject is pinned from the validated caller and OVERWRITES the customerId in the body while leaving the card fields untouched, so a card can only ever be attached to the caller's OWN account whatever the body claims. That pin is the whole control on this write, not decoration: this is the one handler in the family that reads its subject from the body.
  Future<void> postBillingMethods() async {
    final response = await postBillingMethodsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Move an org between sandbox and live billing
  ///
  /// Flips the org's live flag, which is the single authority for both the payment environment and the ledger bucket its transactions land in. This is a money-MINT control, not a customer action: it is gated on the internal service token AND platform scope, so an ORG ADMIN CANNOT move their own org — otherwise a tenant could drop itself into sandbox and stop paying. The rule most callers get wrong is the default: an org that has never been flipped transacts in SANDBOX, which is why a production-credentialled deployment can still hand a buyer a sandbox card form. When the deployment pins the payment environment explicitly, that pin governs and this flag only marks the transactions.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postBillingModeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/mode';

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

  /// Move an org between sandbox and live billing
  ///
  /// Flips the org's live flag, which is the single authority for both the payment environment and the ledger bucket its transactions land in. This is a money-MINT control, not a customer action: it is gated on the internal service token AND platform scope, so an ORG ADMIN CANNOT move their own org — otherwise a tenant could drop itself into sandbox and stop paying. The rule most callers get wrong is the default: an org that has never been flipped transacts in SANDBOX, which is why a production-credentialled deployment can still hand a buyer a sandbox card form. When the deployment pins the payment environment explicitly, that pin governs and this flag only marks the transactions.
  Future<void> postBillingMode() async {
    final response = await postBillingModeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Save a card on a subject's behalf — the portal attach
  ///
  /// The service-token twin of POST /v1/billing/methods: it vaults the processor's one-time reference as a reusable card on file for the named subject, with its billing address, and moves no money doing it.  It exists so an internal caller can complete the family it can already read and detach. The subject it may name is pinned to the org the gateway fixed, so the service token acts WITHIN one tenant and never across tenants; a caller holding no service token is refused before the write.
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

  /// Save a card on a subject's behalf — the portal attach
  ///
  /// The service-token twin of POST /v1/billing/methods: it vaults the processor's one-time reference as a reusable card on file for the named subject, with its billing address, and moves no money doing it.  It exists so an internal caller can complete the family it can already read and detach. The subject it may name is pinned to the org the gateway fixed, so the service token acts WITHIN one tenant and never across tenants; a caller holding no service token is refused before the write.
  Future<void> postBillingPortalMethods() async {
    final response = await postBillingPortalMethodsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Platform sweep: top up every org whose balance has fallen below its own threshold
  ///
  /// Walks every organization and, for those that enabled auto-recharge and whose available balance (balance minus holds) has fallen under their configured threshold, charges their default payment method off-session and credits the balance, answering a per-org result row for each one it touched. This is the platform cron's door, not a customer's: it is gated on the internal service token AND platform scope, so an org admin cannot run the fleet-wide sweep. An org above its threshold is skipped silently; an org with no default payment method is reported as an uncharged row with the reason rather than failing the whole run.
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

  /// Platform sweep: top up every org whose balance has fallen below its own threshold
  ///
  /// Walks every organization and, for those that enabled auto-recharge and whose available balance (balance minus holds) has fallen under their configured threshold, charges their default payment method off-session and credits the balance, answering a per-org result row for each one it touched. This is the platform cron's door, not a customer's: it is gated on the internal service token AND platform scope, so an org admin cannot run the fleet-wide sweep. An org above its threshold is skipped silently; an org with no default payment method is reported as an uncharged row with the reason rather than failing the whole run.
  Future<void> postBillingRechargeRunAll() async {
    final response = await postBillingRechargeRunAllWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Subscribe to a paid plan with a card, charged for the first period immediately
  ///
  /// Vaults the tokenized card as a reusable card-on-file, charges the first period, and creates the subscription — answering the subscription and invoice ids with the amount charged. The price is SERVER-AUTHORITATIVE: it is the plan's catalog price times billable seats and a client-supplied amount is never consulted, so a scripted request cannot underpay; a per-seat plan below its minimum seats is refused, and a free plan is refused outright because this address is the paid path. The card PAN never reaches this service — the browser tokenizes it and only the single-use nonce arrives here. The subject is the caller's own org, with an in-org user honored only inside that bound, and an idempotency key (or, absent one, the nonce itself) makes a retry replay the first result instead of charging twice.
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

  /// Subscribe to a paid plan with a card, charged for the first period immediately
  ///
  /// Vaults the tokenized card as a reusable card-on-file, charges the first period, and creates the subscription — answering the subscription and invoice ids with the amount charged. The price is SERVER-AUTHORITATIVE: it is the plan's catalog price times billable seats and a client-supplied amount is never consulted, so a scripted request cannot underpay; a per-seat plan below its minimum seats is refused, and a free plan is refused outright because this address is the paid path. The card PAN never reaches this service — the browser tokenizes it and only the single-use nonce arrives here. The subject is the caller's own org, with an in-org user honored only inside that bound, and an idempotency key (or, absent one, the nonce itself) makes a retry replay the first result instead of charging twice.
  Future<void> postBillingSubscribeCard() async {
    final response = await postBillingSubscribeCardWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Cancel a subscription, at period end by default
  ///
  /// Cancels the addressed subscription and answers its updated state, emitting the cancellation event the rest of the platform keys on. The default is to cancel AT PERIOD END — a body that fails to parse falls back to it — so the customer keeps what they paid for unless atPeriodEnd is explicitly false. The subscription is resolved inside the caller's own org namespace, so another tenant's id is a 404, and the write carries the browser anti-CSRF gate because it is reachable with an ambient cookie.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> postBillingSubscriptionsByIdCancelWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/subscriptions/{id}/cancel'
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

  /// Cancel a subscription, at period end by default
  ///
  /// Cancels the addressed subscription and answers its updated state, emitting the cancellation event the rest of the platform keys on. The default is to cancel AT PERIOD END — a body that fails to parse falls back to it — so the customer keeps what they paid for unless atPeriodEnd is explicitly false. The subscription is resolved inside the caller's own org namespace, so another tenant's id is a 404, and the write carries the browser anti-CSRF gate because it is reachable with an ambient cookie.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> postBillingSubscriptionsByIdCancel(String id,) async {
    final response = await postBillingSubscriptionsByIdCancelWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Undo a pending cancellation and keep the subscription running
  ///
  /// Clears the scheduled cancellation on the addressed subscription and answers its updated state. It is the inverse of cancel and applies to a subscription that is still within its period; one the engine will not reactivate is refused 400 with the reason. The subscription is resolved inside the caller's own org namespace, so another tenant's id reads as 404, and the write carries the browser anti-CSRF gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> postBillingSubscriptionsByIdReactivateWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/subscriptions/{id}/reactivate'
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

  /// Undo a pending cancellation and keep the subscription running
  ///
  /// Clears the scheduled cancellation on the addressed subscription and answers its updated state. It is the inverse of cancel and applies to a subscription that is still within its period; one the engine will not reactivate is refused 400 with the reason. The subscription is resolved inside the caller's own org namespace, so another tenant's id reads as 404, and the write carries the browser anti-CSRF gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> postBillingSubscriptionsByIdReactivate(String id,) async {
    final response = await postBillingSubscriptionsByIdReactivateWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Add credit to your balance by charging one of your saved cards
  ///
  /// Charges a card the caller already has on file, named by paymentMethodId, and credits the caller's own balance — the SAVED-card twin of topup/token, sharing the one charge-and-credit core the auto-recharge cron runs on. The credit lands on the caller's OWN billing subject: the request body's subject field is pinned to the caller before the handler sees it, so a top-up can never be redirected to another subject or outside the caller's org. It is screened for risk before any money moves, exactly as the token path is, because both credit the SPENDABLE wallet. The rule most callers get wrong is that paymentMethodId is NOT covered by that subject pin — it is a card id, not a subject key — so it is checked separately, and a card belonging to any other subject answers 404 rather than 403: a permission error would confirm the id exists, which is an ownership oracle over other people's cards.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postBillingTopupWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/topup';

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

  /// Add credit to your balance by charging one of your saved cards
  ///
  /// Charges a card the caller already has on file, named by paymentMethodId, and credits the caller's own balance — the SAVED-card twin of topup/token, sharing the one charge-and-credit core the auto-recharge cron runs on. The credit lands on the caller's OWN billing subject: the request body's subject field is pinned to the caller before the handler sees it, so a top-up can never be redirected to another subject or outside the caller's org. It is screened for risk before any money moves, exactly as the token path is, because both credit the SPENDABLE wallet. The rule most callers get wrong is that paymentMethodId is NOT covered by that subject pin — it is a card id, not a subject key — so it is checked separately, and a card belonging to any other subject answers 404 rather than 403: a permission error would confirm the id exists, which is an ownership oracle over other people's cards.
  Future<void> postBillingTopup() async {
    final response = await postBillingTopupWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Add credit to your balance by charging a tokenized card once
  ///
  /// Charges the single-use card token for the given amount and credits the caller's own balance, answering the transaction id and the new balance — the one-time top-up path, with no payment method saved. The amount is bounded SERVER-SIDE (roughly a one dollar floor and a five thousand dollar ceiling by deployment policy) and the check runs before any money moves, because the browser cap is not a control against a scripted request. The credit lands on the caller's OWN billing subject — the same key the usage gate debits — and can never be redirected outside the caller's org. Retries are safe: an idempotency key, or absent one the amount within a short window, replays the first result, and if that guard store is unreachable the call is refused with 503 rather than risking a second real charge.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postBillingTopupTokenWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/topup/token';

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

  /// Add credit to your balance by charging a tokenized card once
  ///
  /// Charges the single-use card token for the given amount and credits the caller's own balance, answering the transaction id and the new balance — the one-time top-up path, with no payment method saved. The amount is bounded SERVER-SIDE (roughly a one dollar floor and a five thousand dollar ceiling by deployment policy) and the check runs before any money moves, because the browser cap is not a control against a scripted request. The credit lands on the caller's OWN billing subject — the same key the usage gate debits — and can never be redirected outside the caller's org. Retries are safe: an idempotency key, or absent one the amount within a short window, replays the first result, and if that guard store is unreachable the call is refused with 503 rather than risking a second real charge.
  Future<void> postBillingTopupToken() async {
    final response = await postBillingTopupTokenWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Payment-provider webhook intake for settlement and subscription lifecycle events
  ///
  /// Accepts a payment provider's event, verifies it, records it for audit, and applies subscription lifecycle changes to the matching local row. There is no bearer here and there cannot be: the provider's SIGNATURE over the body IS the authentication, so a request with no recognized signature header is 400 and one whose signature does not verify is 401. The provider path segment is only a hint for dashboard configuration — verification picks the processor regardless of what the URL says. Redelivery is safe: an event id already recorded is acknowledged as a duplicate without re-applying any side effect, which matters because providers retry for days until they see a 2xx.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  Future<Response> postBillingWebhooksByProviderWithHttpInfo(String provider,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/webhooks/{provider}'
      .replaceAll('{provider}', provider);

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

  /// Payment-provider webhook intake for settlement and subscription lifecycle events
  ///
  /// Accepts a payment provider's event, verifies it, records it for audit, and applies subscription lifecycle changes to the matching local row. There is no bearer here and there cannot be: the provider's SIGNATURE over the body IS the authentication, so a request with no recognized signature header is 400 and one whose signature does not verify is 401. The provider path segment is only a hint for dashboard configuration — verification picks the processor regardless of what the URL says. Redelivery is safe: an event id already recorded is acknowledged as a duplicate without re-applying any side effect, which matters because providers retry for days until they see a 2xx.
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  Future<void> postBillingWebhooksByProvider(String provider,) async {
    final response = await postBillingWebhooksByProviderWithHttpInfo(provider,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Raise a draft invoice against a customer
  ///
  /// Raises a DRAFT invoice against a customer in the caller's own org.  The invoice is not collectible yet: a draft exists so it can be read and corrected, and issueInvoice is the separate act that turns it into a demand for payment. The subtotal and amount due are computed from the lines, so there is no total to send and none to get wrong.  The billing org is the caller's, taken from the validated principal, so an invoice can only ever be raised on the caller's own books.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RaiseInvoiceIn] raiseInvoiceIn (required):
  Future<Response> raiseInvoiceWithHttpInfo(RaiseInvoiceIn raiseInvoiceIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/billing/invoices';

    // ignore: prefer_final_locals
    Object? postBody = raiseInvoiceIn;

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
  /// * [RaiseInvoiceIn] raiseInvoiceIn (required):
  Future<InvoiceOut?> raiseInvoice(RaiseInvoiceIn raiseInvoiceIn,) async {
    final response = await raiseInvoiceWithHttpInfo(raiseInvoiceIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InvoiceOut',) as InvoiceOut;
    
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
  Future<InvoiceOut?> voidInvoice(String id,) async {
    final response = await voidInvoiceWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InvoiceOut',) as InvoiceOut;
    
    }
    return null;
  }
}
