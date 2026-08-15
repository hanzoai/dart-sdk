//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class DomainApi {
  DomainApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Checks exact names rather than searching for them, and answers the same quote shape search does — purchasable, premium, first-term and renewal price in cents.
  ///
  /// Checks exact names rather than searching for them, and answers the same quote shape search does — purchasable, premium, first-term and renewal price in cents.  It requires a validated principal; 403 without one. Nothing is charged and nothing is held. A deployment with no registrar credentials answers 503.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domain (required):
  ///   Domain is one name, or several comma-separated, to check in one call. Names are lowercased. It is required.
  Future<Response> getDomainAvailabilityWithHttpInfo(String domain,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/domain/availability';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'domain', domain));

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

  /// Checks exact names rather than searching for them, and answers the same quote shape search does — purchasable, premium, first-term and renewal price in cents.
  ///
  /// Checks exact names rather than searching for them, and answers the same quote shape search does — purchasable, premium, first-term and renewal price in cents.  It requires a validated principal; 403 without one. Nothing is charged and nothing is held. A deployment with no registrar credentials answers 503.
  ///
  /// Parameters:
  ///
  /// * [String] domain (required):
  ///   Domain is one name, or several comma-separated, to check in one call. Names are lowercased. It is required.
  Future<QuoteList?> getDomainAvailability(String domain,) async {
    final response = await getDomainAvailabilityWithHttpInfo(domain,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QuoteList',) as QuoteList;
    
    }
    return null;
  }

  /// Is the domains your org has bought here, newest registration first, each carrying the name, when it was registered, when it expires, what the org paid, the registrar order id and the nameservers it points at.
  ///
  /// Is the domains your org has bought here, newest registration first, each carrying the name, when it was registered, when it expires, what the org paid, the registrar order id and the nameservers it points at.  Scoped to the validated principal's org — 403 without one, and there is no parameter that reaches another org's holdings.  This is the deployment's OWN ownership record, not a query to the registrar: it lists what was bought THROUGH this surface, so a domain the org holds elsewhere is not here. The default store is in-process, so a deployment that has not swapped in a durable store answers from what this process registered.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDomainDomainsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/domain/domains';

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

  /// Is the domains your org has bought here, newest registration first, each carrying the name, when it was registered, when it expires, what the org paid, the registrar order id and the nameservers it points at.
  ///
  /// Is the domains your org has bought here, newest registration first, each carrying the name, when it was registered, when it expires, what the org paid, the registrar order id and the nameservers it points at.  Scoped to the validated principal's org — 403 without one, and there is no parameter that reaches another org's holdings.  This is the deployment's OWN ownership record, not a query to the registrar: it lists what was bought THROUGH this surface, so a domain the org holds elsewhere is not here. The default store is in-process, so a deployment that has not swapped in a durable store answers from what this process registered.
  Future<Holdings?> getDomainDomains() async {
    final response = await getDomainDomainsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Holdings',) as Holdings;
    
    }
    return null;
  }

  /// Reports registrar reachability honestly: ok only when the wholesale credentials are present AND name.com accepted them on a live call made while you waited.
  ///
  /// Reports registrar reachability honestly: ok only when the wholesale credentials are present AND name.com accepted them on a live call made while you waited.  Missing credentials or an unreachable registrar is 503 carrying configured, reachable and the reason, so an operator reads the blocker instead of guessing at it. It takes no principal, like every subsystem health probe.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDomainHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/domain/health';

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

  /// Reports registrar reachability honestly: ok only when the wholesale credentials are present AND name.com accepted them on a live call made while you waited.
  ///
  /// Reports registrar reachability honestly: ok only when the wholesale credentials are present AND name.com accepted them on a live call made while you waited.  Missing credentials or an unreachable registrar is 503 carrying configured, reachable and the reason, so an operator reads the blocker instead of guessing at it. It takes no principal, like every subsystem health probe.
  Future<Reachability?> getDomainHealth() async {
    final response = await getDomainHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Reachability',) as Reachability;
    
    }
    return null;
  }

  /// Finds names built from the keyword q, plus the registrar's alternate-TLD suggestions, and answers a quote for each: the name, whether it is purchasable, whether it is premium, the first-term and renewal price in cents, and the TLD.
  ///
  /// Finds names built from the keyword q, plus the registrar's alternate-TLD suggestions, and answers a quote for each: the name, whether it is purchasable, whether it is premium, the first-term and renewal price in cents, and the TLD.  Prices are RETAIL — this deployment's markup is already applied and the wholesale cost is never on the wire.  It requires a validated principal; 403 without one. Nothing is charged and nothing is held — a quote is not a reservation, and the price is re-quoted at purchase, so a name quoted here can be gone or dearer by the time you buy it. A deployment with no registrar credentials answers 503.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] q (required):
  ///   Q is the keyword to build names from. It is required.
  ///
  /// * [String] tld:
  ///   TLD narrows the search to a comma-separated set of top-level domains.
  Future<Response> getDomainSearchWithHttpInfo(String q, { String? tld, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/domain/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'q', q));
    if (tld != null) {
      queryParams.addAll(_queryParams('', 'tld', tld));
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

  /// Finds names built from the keyword q, plus the registrar's alternate-TLD suggestions, and answers a quote for each: the name, whether it is purchasable, whether it is premium, the first-term and renewal price in cents, and the TLD.
  ///
  /// Finds names built from the keyword q, plus the registrar's alternate-TLD suggestions, and answers a quote for each: the name, whether it is purchasable, whether it is premium, the first-term and renewal price in cents, and the TLD.  Prices are RETAIL — this deployment's markup is already applied and the wholesale cost is never on the wire.  It requires a validated principal; 403 without one. Nothing is charged and nothing is held — a quote is not a reservation, and the price is re-quoted at purchase, so a name quoted here can be gone or dearer by the time you buy it. A deployment with no registrar credentials answers 503.
  ///
  /// Parameters:
  ///
  /// * [String] q (required):
  ///   Q is the keyword to build names from. It is required.
  ///
  /// * [String] tld:
  ///   TLD narrows the search to a comma-separated set of top-level domains.
  Future<QuoteList?> getDomainSearch(String q, { String? tld, }) async {
    final response = await getDomainSearchWithHttpInfo(q,  tld: tld, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QuoteList',) as QuoteList;
    
    }
    return null;
  }

  /// Buys a domain for your org and answers the ownership record together with the quote it was bought at.
  ///
  /// Buys a domain for your org and answers the ownership record together with the quote it was bought at.  The order of operations is the product guarantee: quote, refuse anything unpurchasable or unpriced, AUTHORIZE the org's prepaid balance, provision the authoritative zone in Hanzo DNS, register at the registrar already pointing at Hanzo's nameservers, and only then CAPTURE the charge and record ownership. A registrar failure therefore leaves the balance untouched — the org is never billed for a domain it did not get.  It requires a validated principal; that principal's org owns the domain and is the ledger the charge lands on. Re-buying a name the org already holds is 409, not a second purchase.  Refusals are distinct on purpose: 402 when the prepaid balance cannot cover the quoted price, 409 when the name is not available, 503 when the deployment has no registrar credentials, and the registrar's own message with its own 4xx — or 502 for its 5xx — when it rejects the purchase. Zone provisioning is best-effort: if the zone service is down the domain is still registered against Hanzo's nameservers and the zone reconciles afterwards, rather than the purchase failing.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Order] order (required):
  Future<Response> postDomainRegisterWithHttpInfo(Order order,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/domain/register';

    // ignore: prefer_final_locals
    Object? postBody = order;

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

  /// Buys a domain for your org and answers the ownership record together with the quote it was bought at.
  ///
  /// Buys a domain for your org and answers the ownership record together with the quote it was bought at.  The order of operations is the product guarantee: quote, refuse anything unpurchasable or unpriced, AUTHORIZE the org's prepaid balance, provision the authoritative zone in Hanzo DNS, register at the registrar already pointing at Hanzo's nameservers, and only then CAPTURE the charge and record ownership. A registrar failure therefore leaves the balance untouched — the org is never billed for a domain it did not get.  It requires a validated principal; that principal's org owns the domain and is the ledger the charge lands on. Re-buying a name the org already holds is 409, not a second purchase.  Refusals are distinct on purpose: 402 when the prepaid balance cannot cover the quoted price, 409 when the name is not available, 503 when the deployment has no registrar credentials, and the registrar's own message with its own 4xx — or 502 for its 5xx — when it rejects the purchase. Zone provisioning is best-effort: if the zone service is down the domain is still registered against Hanzo's nameservers and the zone reconciles afterwards, rather than the purchase failing.
  ///
  /// Parameters:
  ///
  /// * [Order] order (required):
  Future<RegisterResult?> postDomainRegister(Order order,) async {
    final response = await postDomainRegisterWithHttpInfo(order,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RegisterResult',) as RegisterResult;
    
    }
    return null;
  }

  /// Extends a domain your org already owns and answers the updated record with its new expiry alongside what was paid.
  ///
  /// Extends a domain your org already owns and answers the updated record with its new expiry alongside what was paid.  Ownership is the gate: a name the caller's org does not hold is 404, so a renewal can never reach another tenant's domain.  The price is re-quoted at the CURRENT renewal rate rather than the one paid at purchase. If the registrar returns no renewal price the org's original price is charged instead, so a renewal is never accidentally free. The balance is authorized before the registrar is called and captured after it confirms — 402 when the prepaid balance cannot cover it, 503 when the deployment has no registrar credentials. Requires a validated principal.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RenewReq] renewReq (required):
  Future<Response> postDomainRenewWithHttpInfo(RenewReq renewReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/domain/renew';

    // ignore: prefer_final_locals
    Object? postBody = renewReq;

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

  /// Extends a domain your org already owns and answers the updated record with its new expiry alongside what was paid.
  ///
  /// Extends a domain your org already owns and answers the updated record with its new expiry alongside what was paid.  Ownership is the gate: a name the caller's org does not hold is 404, so a renewal can never reach another tenant's domain.  The price is re-quoted at the CURRENT renewal rate rather than the one paid at purchase. If the registrar returns no renewal price the org's original price is charged instead, so a renewal is never accidentally free. The balance is authorized before the registrar is called and captured after it confirms — 402 when the prepaid balance cannot cover it, 503 when the deployment has no registrar credentials. Requires a validated principal.
  ///
  /// Parameters:
  ///
  /// * [RenewReq] renewReq (required):
  Future<RenewResult?> postDomainRenew(RenewReq renewReq,) async {
    final response = await postDomainRenewWithHttpInfo(renewReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RenewResult',) as RenewResult;
    
    }
    return null;
  }

  /// Moves a domain you own at another registrar onto your org here, using its authCode, and answers the same record-plus-quote a purchase does.
  ///
  /// Moves a domain you own at another registrar onto your org here, using its authCode, and answers the same record-plus-quote a purchase does.  It is priced and charged exactly like a registration: authorize the org's prepaid balance, ask the registrar for the transfer, capture only after the registrar accepts. A name the registrar will not price is 409, an insufficient balance is 402, and a deployment with no registrar credentials is 503.  It requires a validated principal; the ownership record is written under that org as soon as the registrar ACCEPTS the request, which is not the same instant the transfer completes at the losing registrar. Unlike a registration this does not provision a zone, so the record carries this deployment's configured nameservers.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TransferReq] transferReq (required):
  Future<Response> postDomainTransferWithHttpInfo(TransferReq transferReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/domain/transfer';

    // ignore: prefer_final_locals
    Object? postBody = transferReq;

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

  /// Moves a domain you own at another registrar onto your org here, using its authCode, and answers the same record-plus-quote a purchase does.
  ///
  /// Moves a domain you own at another registrar onto your org here, using its authCode, and answers the same record-plus-quote a purchase does.  It is priced and charged exactly like a registration: authorize the org's prepaid balance, ask the registrar for the transfer, capture only after the registrar accepts. A name the registrar will not price is 409, an insufficient balance is 402, and a deployment with no registrar credentials is 503.  It requires a validated principal; the ownership record is written under that org as soon as the registrar ACCEPTS the request, which is not the same instant the transfer completes at the losing registrar. Unlike a registration this does not provision a zone, so the record carries this deployment's configured nameservers.
  ///
  /// Parameters:
  ///
  /// * [TransferReq] transferReq (required):
  Future<RegisterResult?> postDomainTransfer(TransferReq transferReq,) async {
    final response = await postDomainTransferWithHttpInfo(transferReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RegisterResult',) as RegisterResult;
    
    }
    return null;
  }
}
