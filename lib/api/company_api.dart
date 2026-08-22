//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class CompanyApi {
  CompanyApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get returns the caller org's formation and the stages reachable from it, or 404 when the org has not begun one.
  ///
  /// Get returns the caller org's formation and the stages reachable from it, or 404 when the org has not begun one.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCompanyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/company';

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

  /// Get returns the caller org's formation and the stages reachable from it, or 404 when the org has not begun one.
  ///
  /// Get returns the caller org's formation and the stages reachable from it, or 404 when the org has not begun one.
  Future<FormationView?> getCompany() async {
    final response = await getCompanyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormationView',) as FormationView;
    
    }
    return null;
  }

  /// Returns the platform's whole formation register, newest activity first — every org's formation, not the caller's.
  ///
  /// Returns the platform's whole formation register, newest activity first — every org's formation, not the caller's. It is a Hanzo platform operation: a caller who is not a platform reviewer gets 403.  Filter by stage and structure, page with limit and offset. An unknown stage is refused with 400 rather than returning a silently empty page.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] stage:
  ///   Stage keeps only formations at that stage. Empty means any.
  ///
  /// * [String] structure:
  ///   Structure keeps only formations of that entity kind. Empty means any.
  ///
  /// * [int] limit:
  ///   Limit bounds the page; 0 or less means the default of 200.
  ///
  /// * [int] offset:
  ///   Offset skips that many rows.
  Future<Response> getCompanyRegisterWithHttpInfo({ String? stage, String? structure, int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/company/register';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (stage != null) {
      queryParams.addAll(_queryParams('', 'stage', stage));
    }
    if (structure != null) {
      queryParams.addAll(_queryParams('', 'structure', structure));
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

  /// Returns the platform's whole formation register, newest activity first — every org's formation, not the caller's.
  ///
  /// Returns the platform's whole formation register, newest activity first — every org's formation, not the caller's. It is a Hanzo platform operation: a caller who is not a platform reviewer gets 403.  Filter by stage and structure, page with limit and offset. An unknown stage is refused with 400 rather than returning a silently empty page.
  ///
  /// Parameters:
  ///
  /// * [String] stage:
  ///   Stage keeps only formations at that stage. Empty means any.
  ///
  /// * [String] structure:
  ///   Structure keeps only formations of that entity kind. Empty means any.
  ///
  /// * [int] limit:
  ///   Limit bounds the page; 0 or less means the default of 200.
  ///
  /// * [int] offset:
  ///   Offset skips that many rows.
  Future<RegisterPage?> getCompanyRegister({ String? stage, String? structure, int? limit, int? offset, }) async {
    final response = await getCompanyRegisterWithHttpInfo( stage: stage, structure: structure, limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RegisterPage',) as RegisterPage;
    
    }
    return null;
  }

  /// Counts the platform's formations by stage — the register's shape in one read, so a queue that is growing is visible as a number rather than inferred by paging the list.
  ///
  /// Counts the platform's formations by stage — the register's shape in one read, so a queue that is growing is visible as a number rather than inferred by paging the list. A Hanzo platform operation: a caller who is not a platform reviewer gets 403.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCompanyRegisterSummaryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/company/register/summary';

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

  /// Counts the platform's formations by stage — the register's shape in one read, so a queue that is growing is visible as a number rather than inferred by paging the list.
  ///
  /// Counts the platform's formations by stage — the register's shape in one read, so a queue that is growing is visible as a number rather than inferred by paging the list. A Hanzo platform operation: a caller who is not a platform reviewer gets 403.
  Future<RegisterCounts?> getCompanyRegisterSummary() async {
    final response = await getCompanyRegisterSummaryWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RegisterCounts',) as RegisterCounts;
    
    }
    return null;
  }

  /// Reports the founders whose KYC is not yet settled, oldest formation first, so the queue drains in the order founders have been waiting.
  ///
  /// Reports the founders whose KYC is not yet settled, oldest formation first, so the queue drains in the order founders have been waiting. A Hanzo platform operation: a caller who is not a platform reviewer gets 403.  It only says who is waiting; the decision itself is POST /v1/company/kyc/decision.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit bounds how many formations are scanned; 0 or less means the default of 200.
  Future<Response> getCompanyReviewWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/company/review';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Reports the founders whose KYC is not yet settled, oldest formation first, so the queue drains in the order founders have been waiting.
  ///
  /// Reports the founders whose KYC is not yet settled, oldest formation first, so the queue drains in the order founders have been waiting. A Hanzo platform operation: a caller who is not a platform reviewer gets 403.  It only says who is waiting; the decision itself is POST /v1/company/kyc/decision.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit bounds how many formations are scanned; 0 or less means the default of 200.
  Future<ReviewQueue?> getCompanyReview({ int? limit, }) async {
    final response = await getCompanyReviewWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReviewQueue',) as ReviewQueue;
    
    }
    return null;
  }

  /// Begin starts the org's one formation and returns it with the stages reachable from it.
  ///
  /// Begin starts the org's one formation and returns it with the stages reachable from it. It is idempotent: an org that already has a formation gets that one back with 200, while a first call creates it and answers 201.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BeginIn] beginIn (required):
  Future<Response> postCompanyWithHttpInfo(BeginIn beginIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/company';

    // ignore: prefer_final_locals
    Object? postBody = beginIn;

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

  /// Begin starts the org's one formation and returns it with the stages reachable from it.
  ///
  /// Begin starts the org's one formation and returns it with the stages reachable from it. It is idempotent: an org that already has a formation gets that one back with 200, while a first call creates it and answers 201.
  ///
  /// Parameters:
  ///
  /// * [BeginIn] beginIn (required):
  Future<FormationView?> postCompany(BeginIn beginIn,) async {
    final response = await postCompanyWithHttpInfo(beginIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormationView',) as FormationView;
    
    }
    return null;
  }

  /// Advance runs the ONE guarded transition of the formation machine.
  ///
  /// Advance runs the ONE guarded transition of the formation machine. It is the only door between stages: the actions populate data, this decides ordering.  An edge the machine does not define answers 409; an edge whose guard is not yet satisfied answers 422 naming what is missing. Reaching the terminal `company` stage also records the incorporation on the canonical cap table, and that must succeed before the transition is persisted.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AdvanceIn] advanceIn (required):
  Future<Response> postCompanyAdvanceWithHttpInfo(AdvanceIn advanceIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/company/advance';

    // ignore: prefer_final_locals
    Object? postBody = advanceIn;

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

  /// Advance runs the ONE guarded transition of the formation machine.
  ///
  /// Advance runs the ONE guarded transition of the formation machine. It is the only door between stages: the actions populate data, this decides ordering.  An edge the machine does not define answers 409; an edge whose guard is not yet satisfied answers 422 naming what is missing. Reaching the terminal `company` stage also records the incorporation on the canonical cap table, and that must succeed before the transition is persisted.
  ///
  /// Parameters:
  ///
  /// * [AdvanceIn] advanceIn (required):
  Future<FormationView?> postCompanyAdvance(AdvanceIn advanceIn,) async {
    final response = await postCompanyAdvanceWithHttpInfo(advanceIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormationView',) as FormationView;
    
    }
    return null;
  }

  /// Renders the formation documents for the chosen structure and jurisdiction, ingests each into the org's data room, and submits the state filing through the filing seam.
  ///
  /// Renders the formation documents for the chosen structure and jurisdiction, ingests each into the org's data room, and submits the state filing through the filing seam.  With no filing partner wired the filing is recorded honestly as \"manual\" — no filing id is fabricated. Available only at the documents stage.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCompanyDocumentsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/company/documents';

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

  /// Renders the formation documents for the chosen structure and jurisdiction, ingests each into the org's data room, and submits the state filing through the filing seam.
  ///
  /// Renders the formation documents for the chosen structure and jurisdiction, ingests each into the org's data room, and submits the state filing through the filing seam.  With no filing partner wired the filing is recorded honestly as \"manual\" — no filing id is fabricated. Available only at the documents stage.
  Future<FormationView?> postCompanyDocuments() async {
    final response = await postCompanyDocumentsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormationView',) as FormationView;
    
    }
    return null;
  }

  /// Opens the EIN application and answers what it owes.
  ///
  /// Opens the EIN application and answers what it owes.  The answer states whether it can be filed ONLINE, because that is the fact deciding whether the customer waits a sitting or several weeks — and it names each form with what that form is for, so nobody has to already know what an SS-4 is to understand why they are signing one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EinIn] einIn (required):
  Future<Response> postCompanyEinWithHttpInfo(EinIn einIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/company/ein';

    // ignore: prefer_final_locals
    Object? postBody = einIn;

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

  /// Opens the EIN application and answers what it owes.
  ///
  /// Opens the EIN application and answers what it owes.  The answer states whether it can be filed ONLINE, because that is the fact deciding whether the customer waits a sitting or several weeks — and it names each form with what that form is for, so nobody has to already know what an SS-4 is to understand why they are signing one.
  ///
  /// Parameters:
  ///
  /// * [EinIn] einIn (required):
  Future<EIN?> postCompanyEin(EinIn einIn,) async {
    final response = await postCompanyEinWithHttpInfo(einIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EIN',) as EIN;
    
    }
    return null;
  }

  /// Sends the generated formation documents for signature by every founder and records the provider's reference on the formation.
  ///
  /// Sends the generated formation documents for signature by every founder and records the provider's reference on the formation. Available only at the esign stage.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCompanyEsignWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/company/esign';

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

  /// Sends the generated formation documents for signature by every founder and records the provider's reference on the formation.
  ///
  /// Sends the generated formation documents for signature by every founder and records the provider's reference on the formation. Available only at the esign stage.
  Future<EsignOut?> postCompanyEsign() async {
    final response = await postCompanyEsignWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EsignOut',) as EsignOut;
    
    }
    return null;
  }

  /// Records whether the formation documents have been signed.
  ///
  /// Records whether the formation documents have been signed. It consults the e-signature provider, which a real provider's webhook drives; the signal is idempotent.  An explicit `signed` in the request overrides the provider's answer, which is the manual path for the stub provider that never self-completes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EsignCompleteIn] esignCompleteIn (required):
  Future<Response> postCompanyEsignCompleteWithHttpInfo(EsignCompleteIn esignCompleteIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/company/esign/complete';

    // ignore: prefer_final_locals
    Object? postBody = esignCompleteIn;

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

  /// Records whether the formation documents have been signed.
  ///
  /// Records whether the formation documents have been signed. It consults the e-signature provider, which a real provider's webhook drives; the signal is idempotent.  An explicit `signed` in the request overrides the provider's answer, which is the manual path for the stub provider that never self-completes.
  ///
  /// Parameters:
  ///
  /// * [EsignCompleteIn] esignCompleteIn (required):
  Future<FormationView?> postCompanyEsignComplete(EsignCompleteIn esignCompleteIn,) async {
    final response = await postCompanyEsignCompleteWithHttpInfo(esignCompleteIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormationView',) as FormationView;
    
    }
    return null;
  }

  /// Replaces the formation's founders.
  ///
  /// Replaces the formation's founders. Each founder needs a name, an email and an equity share in basis points; every founder is (re)set to pending KYC, so a previously settled decision does not survive a change of the list.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FoundersIn] foundersIn (required):
  Future<Response> postCompanyFoundersWithHttpInfo(FoundersIn foundersIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/company/founders';

    // ignore: prefer_final_locals
    Object? postBody = foundersIn;

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

  /// Replaces the formation's founders.
  ///
  /// Replaces the formation's founders. Each founder needs a name, an email and an equity share in basis points; every founder is (re)set to pending KYC, so a previously settled decision does not survive a change of the list.
  ///
  /// Parameters:
  ///
  /// * [FoundersIn] foundersIn (required):
  Future<FormationView?> postCompanyFounders(FoundersIn foundersIn,) async {
    final response = await postCompanyFoundersWithHttpInfo(foundersIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormationView',) as FormationView;
    
    }
    return null;
  }

  /// Share a pitch deck in the org's data room
  ///
  /// Stores the request body as a document in the caller org's data room and answers with the data room id to reference it by. The deck is RAW BYTES of whatever content type is sent — a PDF, a slide export — not a JSON document: the Content-Type header is carried through to the data room as given, and `?name=` names the document, defaulting to `pitch-deck`.  Scoped to the caller's validated org, and only after incorporation: a formation still short of stage `company` is refused 409 and an org that never began one is 404. The route is registered AHEAD of the surface's JSON body cap deliberately, so a deck's size ceiling is the edge's rather than the cap meant for small structured records. An empty body is 400; a data room that will not take the bytes is 502.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] body:
  Future<Response> postCompanyFundraiseDeckWithHttpInfo({ MultipartFile? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/company/fundraise/deck';

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

  /// Share a pitch deck in the org's data room
  ///
  /// Stores the request body as a document in the caller org's data room and answers with the data room id to reference it by. The deck is RAW BYTES of whatever content type is sent — a PDF, a slide export — not a JSON document: the Content-Type header is carried through to the data room as given, and `?name=` names the document, defaulting to `pitch-deck`.  Scoped to the caller's validated org, and only after incorporation: a formation still short of stage `company` is refused 409 and an org that never began one is 404. The route is registered AHEAD of the surface's JSON body cap deliberately, so a deck's size ceiling is the edge's rather than the cap meant for small structured records. An empty body is 400; a data room that will not take the bytes is 502.
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] body:
  Future<DeckOut?> postCompanyFundraiseDeck({ MultipartFile? body, }) async {
    final response = await postCompanyFundraiseDeckWithHttpInfo( body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeckOut',) as DeckOut;
    
    }
    return null;
  }

  /// Records a fundraising round on the org's canonical cap table.
  ///
  /// Records a fundraising round on the org's canonical cap table. Available only after incorporation (stage company); roundType defaults to PRICED.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RoundInput] roundInput (required):
  Future<Response> postCompanyFundraiseRoundWithHttpInfo(RoundInput roundInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/company/fundraise/round';

    // ignore: prefer_final_locals
    Object? postBody = roundInput;

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

  /// Records a fundraising round on the org's canonical cap table.
  ///
  /// Records a fundraising round on the org's canonical cap table. Available only after incorporation (stage company); roundType defaults to PRICED.
  ///
  /// Parameters:
  ///
  /// * [RoundInput] roundInput (required):
  Future<RoundOut?> postCompanyFundraiseRound(RoundInput roundInput,) async {
    final response = await postCompanyFundraiseRoundWithHttpInfo(roundInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RoundOut',) as RoundOut;
    
    }
    return null;
  }

  /// Raises an e-signature request over documents already in the org's data room — a SAFE, a convertible note, or any other fundraising paper.
  ///
  /// Raises an e-signature request over documents already in the org's data room — a SAFE, a convertible note, or any other fundraising paper. Available only after incorporation (stage company).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SafeIn] safeIn (required):
  Future<Response> postCompanyFundraiseSafeWithHttpInfo(SafeIn safeIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/company/fundraise/safe';

    // ignore: prefer_final_locals
    Object? postBody = safeIn;

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

  /// Raises an e-signature request over documents already in the org's data room — a SAFE, a convertible note, or any other fundraising paper.
  ///
  /// Raises an e-signature request over documents already in the org's data room — a SAFE, a convertible note, or any other fundraising paper. Available only after incorporation (stage company).
  ///
  /// Parameters:
  ///
  /// * [SafeIn] safeIn (required):
  Future<SafeOut?> postCompanyFundraiseSafe(SafeIn safeIn,) async {
    final response = await postCompanyFundraiseSafeWithHttpInfo(safeIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SafeOut',) as SafeOut;
    
    }
    return null;
  }

  /// Seeds the canonical cap table with the founding allocation (stakeholders, a common share class, issued shares) and anchors the deterministic equity-genesis root on-chain.
  ///
  /// Seeds the canonical cap table with the founding allocation (stakeholders, a common share class, issued shares) and anchors the deterministic equity-genesis root on-chain.  It is idempotent: once a root is recorded the cap table is NOT re-seeded, which would double-issue founder share certificates. The root is persisted even when the on-chain submit fails, because the root is the tamper-evident witness and must not be recomputed on retry. Available only at the genesis stage.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCompanyGenesisWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/company/genesis';

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

  /// Seeds the canonical cap table with the founding allocation (stakeholders, a common share class, issued shares) and anchors the deterministic equity-genesis root on-chain.
  ///
  /// Seeds the canonical cap table with the founding allocation (stakeholders, a common share class, issued shares) and anchors the deterministic equity-genesis root on-chain.  It is idempotent: once a root is recorded the cap table is NOT re-seeded, which would double-issue founder share certificates. The root is persisted even when the on-chain submit fails, because the root is the tamper-evident witness and must not be recomputed on retry. Available only at the genesis stage.
  Future<FormationView?> postCompanyGenesis() async {
    final response = await postCompanyGenesisWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormationView',) as FormationView;
    
    }
    return null;
  }

  /// Reads an existing company's cap table from a Google Sheet and adds its stakeholders to the canonical cap table.
  ///
  /// Reads an existing company's cap table from a Google Sheet and adds its stakeholders to the canonical cap table.  The first row is a header and columns are matched by name (case-insensitive): name and email are required, type/relationship/institution optional. A sheet without name and email columns, or with no usable data rows, is refused with 400. Available only at the import stage.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ImportCapTableIn] importCapTableIn (required):
  Future<Response> postCompanyImportCaptableWithHttpInfo(ImportCapTableIn importCapTableIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/company/import/captable';

    // ignore: prefer_final_locals
    Object? postBody = importCapTableIn;

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

  /// Reads an existing company's cap table from a Google Sheet and adds its stakeholders to the canonical cap table.
  ///
  /// Reads an existing company's cap table from a Google Sheet and adds its stakeholders to the canonical cap table.  The first row is a header and columns are matched by name (case-insensitive): name and email are required, type/relationship/institution optional. A sheet without name and email columns, or with no usable data rows, is refused with 400. Available only at the import stage.
  ///
  /// Parameters:
  ///
  /// * [ImportCapTableIn] importCapTableIn (required):
  Future<ImportCapTableOut?> postCompanyImportCaptable(ImportCapTableIn importCapTableIn,) async {
    final response = await postCompanyImportCaptableWithHttpInfo(importCapTableIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ImportCapTableOut',) as ImportCapTableOut;
    
    }
    return null;
  }

  /// Ingests an existing company's corporate documents from a Google Drive folder into the org's data room.
  ///
  /// Ingests an existing company's corporate documents from a Google Drive folder into the org's data room. The import is shallow — sub-folders are skipped, not walked — and available only at the import stage.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ImportDocumentsIn] importDocumentsIn (required):
  Future<Response> postCompanyImportDocumentsWithHttpInfo(ImportDocumentsIn importDocumentsIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/company/import/documents';

    // ignore: prefer_final_locals
    Object? postBody = importDocumentsIn;

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

  /// Ingests an existing company's corporate documents from a Google Drive folder into the org's data room.
  ///
  /// Ingests an existing company's corporate documents from a Google Drive folder into the org's data room. The import is shallow — sub-folders are skipped, not walked — and available only at the import stage.
  ///
  /// Parameters:
  ///
  /// * [ImportDocumentsIn] importDocumentsIn (required):
  Future<ImportDocumentsOut?> postCompanyImportDocuments(ImportDocumentsIn importDocumentsIn,) async {
    final response = await postCompanyImportDocumentsWithHttpInfo(importDocumentsIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ImportDocumentsOut',) as ImportDocumentsOut;
    
    }
    return null;
  }

  /// StartKYC opens an identity-verification session for every founder with the wired provider and records each session's reference on the formation.
  ///
  /// StartKYC opens an identity-verification session for every founder with the wired provider and records each session's reference on the formation.  A start is never a decision: any terminal status the provider reports at inquiry time is clamped back to pending, so the payment gate can never open here. A terminal status arrives only from POST /v1/company/kyc/refresh (the provider) or POST /v1/company/kyc/decision (a Hanzo platform reviewer).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCompanyKycWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/company/kyc';

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

  /// StartKYC opens an identity-verification session for every founder with the wired provider and records each session's reference on the formation.
  ///
  /// StartKYC opens an identity-verification session for every founder with the wired provider and records each session's reference on the formation.  A start is never a decision: any terminal status the provider reports at inquiry time is clamped back to pending, so the payment gate can never open here. A terminal status arrives only from POST /v1/company/kyc/refresh (the provider) or POST /v1/company/kyc/decision (a Hanzo platform reviewer).
  Future<KycStartOut?> postCompanyKyc() async {
    final response = await postCompanyKycWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KycStartOut',) as KycStartOut;
    
    }
    return null;
  }

  /// DecideKYC records a privileged reviewer's MANUAL decision on a founder's KYC — the human-in-the-loop path, and the ONLY route to a pass when no real provider is wired.
  ///
  /// DecideKYC records a privileged reviewer's MANUAL decision on a founder's KYC — the human-in-the-loop path, and the ONLY route to a pass when no real provider is wired. It produces a DISTINCT reviewer_confirmed, never a provider \"verified\".  Because Hanzo forms the entity and carries the formation KYC/AML obligation, the reviewer is a HANZO platform reviewer (SuperAdmin), and the decision is ATTRIBUTED to them.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DecisionIn] decisionIn (required):
  Future<Response> postCompanyKycDecisionWithHttpInfo(DecisionIn decisionIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/company/kyc/decision';

    // ignore: prefer_final_locals
    Object? postBody = decisionIn;

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

  /// DecideKYC records a privileged reviewer's MANUAL decision on a founder's KYC — the human-in-the-loop path, and the ONLY route to a pass when no real provider is wired.
  ///
  /// DecideKYC records a privileged reviewer's MANUAL decision on a founder's KYC — the human-in-the-loop path, and the ONLY route to a pass when no real provider is wired. It produces a DISTINCT reviewer_confirmed, never a provider \"verified\".  Because Hanzo forms the entity and carries the formation KYC/AML obligation, the reviewer is a HANZO platform reviewer (SuperAdmin), and the decision is ATTRIBUTED to them.
  ///
  /// Parameters:
  ///
  /// * [DecisionIn] decisionIn (required):
  Future<FormationView?> postCompanyKycDecision(DecisionIn decisionIn,) async {
    final response = await postCompanyKycDecisionWithHttpInfo(decisionIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormationView',) as FormationView;
    
    }
    return null;
  }

  /// RefreshKYC reconciles each pending founder's KYC with the WIRED provider — the PULL path to a provider-reported terminal status.
  ///
  /// RefreshKYC reconciles each pending founder's KYC with the WIRED provider — the PULL path to a provider-reported terminal status. For the manual provider the check stays pending; for a real provider it reflects the settled decision, ATTRIBUTED to the provider.  It NEVER trusts a client-asserted status — the status comes from the provider seam — so a client cannot force a pass here, and an already-passing founder (e.g. a reviewer confirmation) is left untouched.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCompanyKycRefreshWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/company/kyc/refresh';

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

  /// RefreshKYC reconciles each pending founder's KYC with the WIRED provider — the PULL path to a provider-reported terminal status.
  ///
  /// RefreshKYC reconciles each pending founder's KYC with the WIRED provider — the PULL path to a provider-reported terminal status. For the manual provider the check stays pending; for a real provider it reflects the settled decision, ATTRIBUTED to the provider.  It NEVER trusts a client-asserted status — the status comes from the provider seam — so a client cannot force a pass here, and an already-passing founder (e.g. a reviewer confirmation) is left untouched.
  Future<KycRefreshOut?> postCompanyKycRefresh() async {
    final response = await postCompanyKycRefreshWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KycRefreshOut',) as KycRefreshOut;
    
    }
    return null;
  }

  /// Charges the caller's own org the one-time Hanzo Company formation fee.
  ///
  /// Charges the caller's own org the one-time Hanzo Company formation fee.  It is $999 unless the deployment sets another, and the answer is the formation record carrying its paid flag and the charge reference. It takes no body: the org is the validated tenant and the amount is the platform's, never the caller's to assert.  IDEMPOTENT on the formation rather than on the request: an already-paid formation answers 200 with the same record and is not charged again, so a retry or a double-clicked button costs nothing. Available only at the `payment` stage (409 anywhere else) and only for an org that has begun a formation (404 otherwise).  A denial answers the fleet-wide billing contract — 402 insufficient_balance, 402 spend_cap_exceeded, 503 balance_unavailable — carried by cloud.Denied, which is the money wire's own {\"error\":{\"code\",\"message\"}} body rather than a second vocabulary invented for this surface.  The gate is the LAST thing it does, after the stage check and the paid short-circuit, so a caller the machine is about to refuse is never charged. That ordering is why the gate cannot lift into middleware, where it would run first. Both facts are pinned: TestPaymentDenialWire, TestPaymentChargesLast.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCompanyPaymentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/company/payment';

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

  /// Charges the caller's own org the one-time Hanzo Company formation fee.
  ///
  /// Charges the caller's own org the one-time Hanzo Company formation fee.  It is $999 unless the deployment sets another, and the answer is the formation record carrying its paid flag and the charge reference. It takes no body: the org is the validated tenant and the amount is the platform's, never the caller's to assert.  IDEMPOTENT on the formation rather than on the request: an already-paid formation answers 200 with the same record and is not charged again, so a retry or a double-clicked button costs nothing. Available only at the `payment` stage (409 anywhere else) and only for an org that has begun a formation (404 otherwise).  A denial answers the fleet-wide billing contract — 402 insufficient_balance, 402 spend_cap_exceeded, 503 balance_unavailable — carried by cloud.Denied, which is the money wire's own {\"error\":{\"code\",\"message\"}} body rather than a second vocabulary invented for this surface.  The gate is the LAST thing it does, after the stage check and the paid short-circuit, so a caller the machine is about to refuse is never charged. That ordering is why the gate cannot lift into middleware, where it would run first. Both facts are pinned: TestPaymentDenialWire, TestPaymentChargesLast.
  Future<FormationView?> postCompanyPayment() async {
    final response = await postCompanyPaymentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormationView',) as FormationView;
    
    }
    return null;
  }

  /// Skip marks the org as already incorporated and moves it onto the import path, so an existing company brings its documents and cap table in instead of forming a new entity.
  ///
  /// Skip marks the org as already incorporated and moves it onto the import path, so an existing company brings its documents and cap table in instead of forming a new entity. Available only at the structure stage.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCompanySkipWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/company/skip';

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

  /// Skip marks the org as already incorporated and moves it onto the import path, so an existing company brings its documents and cap table in instead of forming a new entity.
  ///
  /// Skip marks the org as already incorporated and moves it onto the import path, so an existing company brings its documents and cap table in instead of forming a new entity. Available only at the structure stage.
  Future<FormationView?> postCompanySkip() async {
    final response = await postCompanySkipWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormationView',) as FormationView;
    
    }
    return null;
  }

  /// Itemises what a formation costs before anyone commits to it.
  ///
  /// Itemises what a formation costs before anyone commits to it.  It answers what is due now and what recurs, as separate figures, and marks the state's filing fee as money we collect and remit rather than keep. A caller can therefore show a payer the whole bill — which is the point of quoting at all, and was impossible while the fee was one number in an error string.  A jurisdiction whose filing fee this deployment has not been told REFUSES, naming the setting that fixes it. Quoting our half as though it were the total is the one answer that would be worse than no answer.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TariffIn] tariffIn (required):
  Future<Response> postCompanyTariffWithHttpInfo(TariffIn tariffIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/company/tariff';

    // ignore: prefer_final_locals
    Object? postBody = tariffIn;

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

  /// Itemises what a formation costs before anyone commits to it.
  ///
  /// Itemises what a formation costs before anyone commits to it.  It answers what is due now and what recurs, as separate figures, and marks the state's filing fee as money we collect and remit rather than keep. A caller can therefore show a payer the whole bill — which is the point of quoting at all, and was impossible while the fee was one number in an error string.  A jurisdiction whose filing fee this deployment has not been told REFUSES, naming the setting that fixes it. Quoting our half as though it were the total is the one answer that would be worse than no answer.
  ///
  /// Parameters:
  ///
  /// * [TariffIn] tariffIn (required):
  Future<Tariff?> postCompanyTariff(TariffIn tariffIn,) async {
    final response = await postCompanyTariffWithHttpInfo(tariffIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Tariff',) as Tariff;
    
    }
    return null;
  }

  /// Records the entity kind, the state of formation and the proposed name.
  ///
  /// Records the entity kind, the state of formation and the proposed name. Available only at the structure stage; an unknown structure or jurisdiction, or an empty name, is refused with 400.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [StructureIn] structureIn (required):
  Future<Response> putCompanyStructureWithHttpInfo(StructureIn structureIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/company/structure';

    // ignore: prefer_final_locals
    Object? postBody = structureIn;

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

  /// Records the entity kind, the state of formation and the proposed name.
  ///
  /// Records the entity kind, the state of formation and the proposed name. Available only at the structure stage; an unknown structure or jurisdiction, or an empty name, is refused with 400.
  ///
  /// Parameters:
  ///
  /// * [StructureIn] structureIn (required):
  Future<FormationView?> putCompanyStructure(StructureIn structureIn,) async {
    final response = await putCompanyStructureWithHttpInfo(structureIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormationView',) as FormationView;
    
    }
    return null;
  }
}
