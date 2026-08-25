//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class CaptableApi {
  CaptableApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Removes one of the caller org's convertible notes, taking its principal out of the cap table's unconverted-instrument totals.
  ///
  /// Removes one of the caller org's convertible notes, taking its principal out of the cap table's unconverted-instrument totals. An id this org does not hold is not found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the convertible note to delete.
  Future<Response> deleteCaptableConvertiblesByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/convertibles/{id}'
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

  /// Removes one of the caller org's convertible notes, taking its principal out of the cap table's unconverted-instrument totals.
  ///
  /// Removes one of the caller org's convertible notes, taking its principal out of the cap table's unconverted-instrument totals. An id this org does not hold is not found.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the convertible note to delete.
  Future<CaptableDeleted?> deleteCaptableConvertiblesById(String id,) async {
    final response = await deleteCaptableConvertiblesByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptableDeleted',) as CaptableDeleted;
    
    }
    return null;
  }

  /// Removes one of the caller org's option grants, taking its shares out of the cap table's granted-options and fully-diluted counts.
  ///
  /// Removes one of the caller org's option grants, taking its shares out of the cap table's granted-options and fully-diluted counts. An id this org does not hold is not found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the option grant to delete.
  Future<Response> deleteCaptableOptionsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/options/{id}'
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

  /// Removes one of the caller org's option grants, taking its shares out of the cap table's granted-options and fully-diluted counts.
  ///
  /// Removes one of the caller org's option grants, taking its shares out of the cap table's granted-options and fully-diluted counts. An id this org does not hold is not found.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the option grant to delete.
  Future<CaptableDeleted?> deleteCaptableOptionsById(String id,) async {
    final response = await deleteCaptableOptionsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptableDeleted',) as CaptableDeleted;
    
    }
    return null;
  }

  /// Removes one of the caller org's SAFEs, taking its capital out of the cap table's unconverted-instrument totals.
  ///
  /// Removes one of the caller org's SAFEs, taking its capital out of the cap table's unconverted-instrument totals. An id this org does not hold is not found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the SAFE to delete.
  Future<Response> deleteCaptableSafesByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/safes/{id}'
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

  /// Removes one of the caller org's SAFEs, taking its capital out of the cap table's unconverted-instrument totals.
  ///
  /// Removes one of the caller org's SAFEs, taking its capital out of the cap table's unconverted-instrument totals. An id this org does not hold is not found.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the SAFE to delete.
  Future<CaptableDeleted?> deleteCaptableSafesById(String id,) async {
    final response = await deleteCaptableSafesByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptableDeleted',) as CaptableDeleted;
    
    }
    return null;
  }

  /// Removes one of the caller org's share certificates, taking its shares out of the cap table's outstanding and fully-diluted counts.
  ///
  /// Removes one of the caller org's share certificates, taking its shares out of the cap table's outstanding and fully-diluted counts. An id this org does not hold is not found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the share certificate to delete.
  Future<Response> deleteCaptableSharesByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/shares/{id}'
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

  /// Removes one of the caller org's share certificates, taking its shares out of the cap table's outstanding and fully-diluted counts.
  ///
  /// Removes one of the caller org's share certificates, taking its shares out of the cap table's outstanding and fully-diluted counts. An id this org does not hold is not found.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the share certificate to delete.
  Future<CaptableDeleted?> deleteCaptableSharesById(String id,) async {
    final response = await deleteCaptableSharesByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptableDeleted',) as CaptableDeleted;
    
    }
    return null;
  }

  /// Removes one of the caller org's stakeholders.
  ///
  /// Removes one of the caller org's stakeholders. It REFUSES to orphan issued equity: a holder that still holds share certificates or option grants cannot be deleted, and answers 400 saying so — release or transfer the holdings first. An id this org does not hold is not found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the stakeholder to delete.
  Future<Response> deleteCaptableStakeholdersByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/stakeholders/{id}'
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

  /// Removes one of the caller org's stakeholders.
  ///
  /// Removes one of the caller org's stakeholders. It REFUSES to orphan issued equity: a holder that still holds share certificates or option grants cannot be deleted, and answers 400 saying so — release or transfer the holdings first. An id this org does not hold is not found.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the stakeholder to delete.
  Future<CaptableDeleted?> deleteCaptableStakeholdersById(String id,) async {
    final response = await deleteCaptableStakeholdersByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptableDeleted',) as CaptableDeleted;
    
    }
    return null;
  }

  /// Returns the caller org's share classes, in creation order.
  ///
  /// Returns the caller org's share classes, in creation order. A share class is what a certificate is issued in, and every class the company has authorized appears. The response is a bare JSON array, not an envelope.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCaptableClassesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/classes';

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

  /// Returns the caller org's share classes, in creation order.
  ///
  /// Returns the caller org's share classes, in creation order. A share class is what a certificate is issued in, and every class the company has authorized appears. The response is a bare JSON array, not an envelope.
  Future<List<CaptableShareClass>?> getCaptableClasses() async {
    final response = await getCaptableClassesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CaptableShareClass>') as List)
        .cast<CaptableShareClass>()
        .toList(growable: false);

    }
    return null;
  }

  /// Returns the caller org's cap-table company record.
  ///
  /// Returns the caller org's cap-table company record. The row is seeded when the tenant's store first opens, so it always exists; its name and incorporation details are set with PUT /v1/captable/company.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCaptableCompanyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/company';

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

  /// Returns the caller org's cap-table company record.
  ///
  /// Returns the caller org's cap-table company record. The row is seeded when the tenant's store first opens, so it always exists; its name and incorporation details are set with PUT /v1/captable/company.
  Future<CaptableCompany?> getCaptableCompany() async {
    final response = await getCaptableCompanyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptableCompany',) as CaptableCompany;
    
    }
    return null;
  }

  /// Returns the caller org's convertible notes, newest first.
  ///
  /// Returns the caller org's convertible notes, newest first. A note's principal sits OUTSIDE issued equity until it converts, so it is not part of the share counts.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCaptableConvertiblesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/convertibles';

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

  /// Returns the caller org's convertible notes, newest first.
  ///
  /// Returns the caller org's convertible notes, newest first. A note's principal sits OUTSIDE issued equity until it converts, so it is not part of the share counts.
  Future<CaptableNotes?> getCaptableConvertibles() async {
    final response = await getCaptableConvertiblesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptableNotes',) as CaptableNotes;
    
    }
    return null;
  }

  /// Returns the caller org's investments, newest first.
  ///
  /// Returns the caller org's investments, newest first. It spans every round, so it is the flat ledger of cheques written into the company, each naming its investor and the round it went into.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCaptableInvestmentsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/investments';

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

  /// Returns the caller org's investments, newest first.
  ///
  /// Returns the caller org's investments, newest first. It spans every round, so it is the flat ledger of cheques written into the company, each naming its investor and the round it went into.
  Future<CaptableInvestments?> getCaptableInvestments() async {
    final response = await getCaptableInvestmentsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptableInvestments',) as CaptableInvestments;
    
    }
    return null;
  }

  /// Returns the caller org's option grants, newest first.
  ///
  /// Returns the caller org's option grants, newest first. Each row is joined to its grantee and its equity plan. Grants that are EXERCISED, EXPIRED or CANCELLED are listed here but do not dilute the cap table.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCaptableOptionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/options';

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

  /// Returns the caller org's option grants, newest first.
  ///
  /// Returns the caller org's option grants, newest first. Each row is joined to its grantee and its equity plan. Grants that are EXERCISED, EXPIRED or CANCELLED are listed here but do not dilute the cap table.
  Future<CaptableOptions?> getCaptableOptions() async {
    final response = await getCaptableOptionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptableOptions',) as CaptableOptions;
    
    }
    return null;
  }

  /// Returns the caller org's equity plans, newest first.
  ///
  /// Returns the caller org's equity plans, newest first. An equity plan is an option pool: a reserve of shares, drawn from one share class, that option grants are written against.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCaptablePlansWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/plans';

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

  /// Returns the caller org's equity plans, newest first.
  ///
  /// Returns the caller org's equity plans, newest first. An equity plan is an option pool: a reserve of shares, drawn from one share class, that option grants are written against.
  Future<CaptableEquityPlans?> getCaptablePlans() async {
    final response = await getCaptablePlansWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptableEquityPlans',) as CaptableEquityPlans;
    
    }
    return null;
  }

  /// Returns the caller org's fundraising rounds, newest first.
  ///
  /// Returns the caller org's fundraising rounds, newest first. A round groups a fundraising event; a PRICED round also carries the share class and price per share it issues at.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCaptableRoundsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/rounds';

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

  /// Returns the caller org's fundraising rounds, newest first.
  ///
  /// Returns the caller org's fundraising rounds, newest first. A round groups a fundraising event; a PRICED round also carries the share class and price per share it issues at.
  Future<CaptableRounds?> getCaptableRounds() async {
    final response = await getCaptableRoundsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptableRounds',) as CaptableRounds;
    
    }
    return null;
  }

  /// Returns one of the caller org's fundraising rounds together with every investment written into it, oldest first.
  ///
  /// Returns one of the caller org's fundraising rounds together with every investment written into it, oldest first. A round id that does not exist in the caller's org is not found — including one that exists in another tenant, since the org comes from the caller's principal and is part of the lookup.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the round to read. It is the path segment: the URL is the addressing authority, and the org it is resolved in comes from the caller's principal, so an id from another tenant is simply not found.
  Future<Response> getCaptableRoundsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/rounds/{id}'
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

  /// Returns one of the caller org's fundraising rounds together with every investment written into it, oldest first.
  ///
  /// Returns one of the caller org's fundraising rounds together with every investment written into it, oldest first. A round id that does not exist in the caller's org is not found — including one that exists in another tenant, since the org comes from the caller's principal and is part of the lookup.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the round to read. It is the path segment: the URL is the addressing authority, and the org it is resolved in comes from the caller's principal, so an id from another tenant is simply not found.
  Future<CaptableRoundDetail?> getCaptableRoundsById(String id,) async {
    final response = await getCaptableRoundsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptableRoundDetail',) as CaptableRoundDetail;
    
    }
    return null;
  }

  /// Returns the caller org's SAFEs, newest first.
  ///
  /// Returns the caller org's SAFEs, newest first. A SAFE is a simple agreement for future equity: its capital sits OUTSIDE issued equity until it converts, so it is not part of the share counts.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCaptableSafesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/safes';

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

  /// Returns the caller org's SAFEs, newest first.
  ///
  /// Returns the caller org's SAFEs, newest first. A SAFE is a simple agreement for future equity: its capital sits OUTSIDE issued equity until it converts, so it is not part of the share counts.
  Future<CaptableSafes?> getCaptableSafes() async {
    final response = await getCaptableSafesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptableSafes',) as CaptableSafes;
    
    }
    return null;
  }

  /// Returns the caller org's share certificates, newest first.
  ///
  /// Returns the caller org's share certificates, newest first. Each row is joined to its holder and its share class, so a certificate names who holds it and what class it is in without a second call.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCaptableSharesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/shares';

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

  /// Returns the caller org's share certificates, newest first.
  ///
  /// Returns the caller org's share certificates, newest first. Each row is joined to its holder and its share class, so a certificate names who holds it and what class it is in without a second call.
  Future<CaptableShares?> getCaptableShares() async {
    final response = await getCaptableSharesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptableShares',) as CaptableShares;
    
    }
    return null;
  }

  /// Returns the caller org's stakeholders, newest first.
  ///
  /// Returns the caller org's stakeholders, newest first. The response is a bare JSON array, not an envelope. Each row carries the holder's contact and address fields alongside the company's name.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCaptableStakeholdersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/stakeholders';

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

  /// Returns the caller org's stakeholders, newest first.
  ///
  /// Returns the caller org's stakeholders, newest first. The response is a bare JSON array, not an envelope. Each row carries the holder's contact and address fields alongside the company's name.
  Future<List<CaptableStakeholder>?> getCaptableStakeholders() async {
    final response = await getCaptableStakeholdersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CaptableStakeholder>') as List)
        .cast<CaptableStakeholder>()
        .toList(growable: false);

    }
    return null;
  }

  /// Computes the caller org's cap table.
  ///
  /// Computes the caller org's cap table. It answers who owns what on a fully-diluted basis: outstanding shares, granted options, per-stakeholder ownership percentages, each share class's authorized versus issued position, and the capital sitting on SAFEs and convertible notes that have not yet converted. Only non-terminal option grants dilute — EXERCISED, EXPIRED and CANCELLED grants are excluded, so equity issued through an exercised option is never counted twice.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCaptableSummaryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/summary';

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

  /// Computes the caller org's cap table.
  ///
  /// Computes the caller org's cap table. It answers who owns what on a fully-diluted basis: outstanding shares, granted options, per-stakeholder ownership percentages, each share class's authorized versus issued position, and the capital sitting on SAFEs and convertible notes that have not yet converted. Only non-terminal option grants dilute — EXERCISED, EXPIRED and CANCELLED grants are excluded, so equity issued through an exercised option is never counted twice.
  Future<CaptableSummary?> getCaptableSummary() async {
    final response = await getCaptableSummaryWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptableSummary',) as CaptableSummary;
    
    }
    return null;
  }

  /// Replaces one share class's terms.
  ///
  /// Replaces one share class's terms.  It is a full REPLACE and not a merge, despite the PATCH: every field is written as sent, so a field omitted is written empty rather than left alone. Send the whole class. The method is PATCH because the resource is addressed by id, not because the body is partial — and getting that backwards silently blanks terms every later issuance prices against.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID addresses the resource. The URL is the addressing authority — a path segment binds after the body and after the query — so the address decides which row is written whatever a body claims.
  ///
  /// * [CaptableShareClassAmend] captableShareClassAmend (required):
  Future<Response> patchCaptableClassesByIdWithHttpInfo(String id, CaptableShareClassAmend captableShareClassAmend,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/classes/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = captableShareClassAmend;

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

  /// Replaces one share class's terms.
  ///
  /// Replaces one share class's terms.  It is a full REPLACE and not a merge, despite the PATCH: every field is written as sent, so a field omitted is written empty rather than left alone. Send the whole class. The method is PATCH because the resource is addressed by id, not because the body is partial — and getting that backwards silently blanks terms every later issuance prices against.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID addresses the resource. The URL is the addressing authority — a path segment binds after the body and after the query — so the address decides which row is written whatever a body claims.
  ///
  /// * [CaptableShareClassAmend] captableShareClassAmend (required):
  Future<CaptableUpdated?> patchCaptableClassesById(String id, CaptableShareClassAmend captableShareClassAmend,) async {
    final response = await patchCaptableClassesByIdWithHttpInfo(id, captableShareClassAmend,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptableUpdated',) as CaptableUpdated;
    
    }
    return null;
  }

  /// Changes one of the caller org's stakeholders.
  ///
  /// Changes one of the caller org's stakeholders. It is a PARTIAL update: only the fields the request names are written, and a field sent as null clears that column. A request that names no updatable field is refused, and an id this org does not hold is not found.  The values are stored as sent. Unlike adding a stakeholder, this route does not check the email's shape or the type and relationship vocabularies, so it can record a value that adding one would have rejected.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the stakeholder to update. It is the path segment: the URL is the addressing authority, and the org it is resolved in comes from the caller's principal, so an id from another tenant is simply not found.
  ///
  /// * [CaptableStakeholderPatch] captableStakeholderPatch (required):
  Future<Response> patchCaptableStakeholdersByIdWithHttpInfo(String id, CaptableStakeholderPatch captableStakeholderPatch,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/stakeholders/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = captableStakeholderPatch;

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

  /// Changes one of the caller org's stakeholders.
  ///
  /// Changes one of the caller org's stakeholders. It is a PARTIAL update: only the fields the request names are written, and a field sent as null clears that column. A request that names no updatable field is refused, and an id this org does not hold is not found.  The values are stored as sent. Unlike adding a stakeholder, this route does not check the email's shape or the type and relationship vocabularies, so it can record a value that adding one would have rejected.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the stakeholder to update. It is the path segment: the URL is the addressing authority, and the org it is resolved in comes from the caller's principal, so an id from another tenant is simply not found.
  ///
  /// * [CaptableStakeholderPatch] captableStakeholderPatch (required):
  Future<CaptableUpdated?> patchCaptableStakeholdersById(String id, CaptableStakeholderPatch captableStakeholderPatch,) async {
    final response = await patchCaptableStakeholdersByIdWithHttpInfo(id, captableStakeholderPatch,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptableUpdated',) as CaptableUpdated;
    
    }
    return null;
  }

  /// Defines a new class of shares.
  ///
  /// Defines a new class of shares.  Every field but convertsToShareClassId is required — a class is the instrument every later issuance prices against, so a partially-specified one would silently mis-value every share issued into it. `seniority` orders liquidation preference with LOWER first.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CaptableShareClassIn] captableShareClassIn (required):
  Future<Response> postCaptableClassesWithHttpInfo(CaptableShareClassIn captableShareClassIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/classes';

    // ignore: prefer_final_locals
    Object? postBody = captableShareClassIn;

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

  /// Defines a new class of shares.
  ///
  /// Defines a new class of shares.  Every field but convertsToShareClassId is required — a class is the instrument every later issuance prices against, so a partially-specified one would silently mis-value every share issued into it. `seniority` orders liquidation preference with LOWER first.
  ///
  /// Parameters:
  ///
  /// * [CaptableShareClassIn] captableShareClassIn (required):
  Future<CaptableCreated?> postCaptableClasses(CaptableShareClassIn captableShareClassIn,) async {
    final response = await postCaptableClassesWithHttpInfo(captableShareClassIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptableCreated',) as CaptableCreated;
    
    }
    return null;
  }

  /// Records a convertible note.
  ///
  /// Records a convertible note.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CaptableConvertibleIn] captableConvertibleIn (required):
  Future<Response> postCaptableConvertiblesWithHttpInfo(CaptableConvertibleIn captableConvertibleIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/convertibles';

    // ignore: prefer_final_locals
    Object? postBody = captableConvertibleIn;

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

  /// Records a convertible note.
  ///
  /// Records a convertible note.
  ///
  /// Parameters:
  ///
  /// * [CaptableConvertibleIn] captableConvertibleIn (required):
  Future<CaptableCreated?> postCaptableConvertibles(CaptableConvertibleIn captableConvertibleIn,) async {
    final response = await postCaptableConvertiblesWithHttpInfo(captableConvertibleIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptableCreated',) as CaptableCreated;
    
    }
    return null;
  }

  /// Grants options to a stakeholder from an equity plan.
  ///
  /// Grants options to a stakeholder from an equity plan.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CaptableOptionIn] captableOptionIn (required):
  Future<Response> postCaptableOptionsWithHttpInfo(CaptableOptionIn captableOptionIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/options';

    // ignore: prefer_final_locals
    Object? postBody = captableOptionIn;

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

  /// Grants options to a stakeholder from an equity plan.
  ///
  /// Grants options to a stakeholder from an equity plan.
  ///
  /// Parameters:
  ///
  /// * [CaptableOptionIn] captableOptionIn (required):
  Future<CaptableCreated?> postCaptableOptions(CaptableOptionIn captableOptionIn,) async {
    final response = await postCaptableOptionsWithHttpInfo(captableOptionIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptableCreated',) as CaptableCreated;
    
    }
    return null;
  }

  /// Opens an equity plan that options are granted from.
  ///
  /// Opens an equity plan that options are granted from.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CaptableEquityPlanIn] captableEquityPlanIn (required):
  Future<Response> postCaptablePlansWithHttpInfo(CaptableEquityPlanIn captableEquityPlanIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/plans';

    // ignore: prefer_final_locals
    Object? postBody = captableEquityPlanIn;

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

  /// Opens an equity plan that options are granted from.
  ///
  /// Opens an equity plan that options are granted from.
  ///
  /// Parameters:
  ///
  /// * [CaptableEquityPlanIn] captableEquityPlanIn (required):
  Future<CaptableCreated?> postCaptablePlans(CaptableEquityPlanIn captableEquityPlanIn,) async {
    final response = await postCaptablePlansWithHttpInfo(captableEquityPlanIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptableCreated',) as CaptableCreated;
    
    }
    return null;
  }

  /// Opens a priced round that investments can be added to.
  ///
  /// Opens a priced round that investments can be added to.  The round opens OPEN; investing into a closed one is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CaptableRoundIn] captableRoundIn (required):
  Future<Response> postCaptableRoundsWithHttpInfo(CaptableRoundIn captableRoundIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/rounds';

    // ignore: prefer_final_locals
    Object? postBody = captableRoundIn;

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

  /// Opens a priced round that investments can be added to.
  ///
  /// Opens a priced round that investments can be added to.  The round opens OPEN; investing into a closed one is refused.
  ///
  /// Parameters:
  ///
  /// * [CaptableRoundIn] captableRoundIn (required):
  Future<CaptableCreated?> postCaptableRounds(CaptableRoundIn captableRoundIn,) async {
    final response = await postCaptableRoundsWithHttpInfo(captableRoundIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptableCreated',) as CaptableCreated;
    
    }
    return null;
  }

  /// Closes one of the caller org's fundraising rounds, recording the close date and moving its status to CLOSED.
  ///
  /// Closes one of the caller org's fundraising rounds, recording the close date and moving its status to CLOSED. Only an OPEN round can be closed: a round that is already closed — like an id this org does not hold — is not found. Closing a round does not change what was invested in it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the round to close. It is the path segment: the URL is the addressing authority, and the org it is resolved in comes from the caller's principal, so an id from another tenant is simply not found.
  ///
  /// * [CaptableRoundCloseRequest] captableRoundCloseRequest (required):
  Future<Response> postCaptableRoundsByIdCloseWithHttpInfo(String id, CaptableRoundCloseRequest captableRoundCloseRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/rounds/{id}/close'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = captableRoundCloseRequest;

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

  /// Closes one of the caller org's fundraising rounds, recording the close date and moving its status to CLOSED.
  ///
  /// Closes one of the caller org's fundraising rounds, recording the close date and moving its status to CLOSED. Only an OPEN round can be closed: a round that is already closed — like an id this org does not hold — is not found. Closing a round does not change what was invested in it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the round to close. It is the path segment: the URL is the addressing authority, and the org it is resolved in comes from the caller's principal, so an id from another tenant is simply not found.
  ///
  /// * [CaptableRoundCloseRequest] captableRoundCloseRequest (required):
  Future<CaptableUpdated?> postCaptableRoundsByIdClose(String id, CaptableRoundCloseRequest captableRoundCloseRequest,) async {
    final response = await postCaptableRoundsByIdCloseWithHttpInfo(id, captableRoundCloseRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptableUpdated',) as CaptableUpdated;
    
    }
    return null;
  }

  /// Records one investor's money into an open round.
  ///
  /// Records one investor's money into an open round.  The round must be OPEN; investing into a closed one is refused. Where the round carries a price per share, the investment also issues the shares it buys and the answer names them.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the round to invest in. The URL is the addressing authority — a path segment binds after the body and after the query — so the address decides which round is written whatever a body claims.
  ///
  /// * [CaptableInvestmentIn] captableInvestmentIn (required):
  Future<Response> postCaptableRoundsByIdInvestmentsWithHttpInfo(String id, CaptableInvestmentIn captableInvestmentIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/rounds/{id}/investments'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = captableInvestmentIn;

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

  /// Records one investor's money into an open round.
  ///
  /// Records one investor's money into an open round.  The round must be OPEN; investing into a closed one is refused. Where the round carries a price per share, the investment also issues the shares it buys and the answer names them.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the round to invest in. The URL is the addressing authority — a path segment binds after the body and after the query — so the address decides which round is written whatever a body claims.
  ///
  /// * [CaptableInvestmentIn] captableInvestmentIn (required):
  Future<CaptableInvested?> postCaptableRoundsByIdInvestments(String id, CaptableInvestmentIn captableInvestmentIn,) async {
    final response = await postCaptableRoundsByIdInvestmentsWithHttpInfo(id, captableInvestmentIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptableInvested',) as CaptableInvested;
    
    }
    return null;
  }

  /// Records a SAFE — a simple agreement for future equity.
  ///
  /// Records a SAFE — a simple agreement for future equity.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CaptableSafeIn] captableSafeIn (required):
  Future<Response> postCaptableSafesWithHttpInfo(CaptableSafeIn captableSafeIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/safes';

    // ignore: prefer_final_locals
    Object? postBody = captableSafeIn;

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

  /// Records a SAFE — a simple agreement for future equity.
  ///
  /// Records a SAFE — a simple agreement for future equity.
  ///
  /// Parameters:
  ///
  /// * [CaptableSafeIn] captableSafeIn (required):
  Future<CaptableCreated?> postCaptableSafes(CaptableSafeIn captableSafeIn,) async {
    final response = await postCaptableSafesWithHttpInfo(captableSafeIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptableCreated',) as CaptableCreated;
    
    }
    return null;
  }

  /// Issues a share certificate to a stakeholder.
  ///
  /// Issues a share certificate to a stakeholder.  The certificate id must be UNIQUE within the company — a duplicate is refused 409, not silently merged — and both the stakeholder and the share class must belong to this company, so an id from another tenant is a 400 rather than a cross-company issuance.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CaptableShareIn] captableShareIn (required):
  Future<Response> postCaptableSharesWithHttpInfo(CaptableShareIn captableShareIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/shares';

    // ignore: prefer_final_locals
    Object? postBody = captableShareIn;

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

  /// Issues a share certificate to a stakeholder.
  ///
  /// Issues a share certificate to a stakeholder.  The certificate id must be UNIQUE within the company — a duplicate is refused 409, not silently merged — and both the stakeholder and the share class must belong to this company, so an id from another tenant is a 400 rather than a cross-company issuance.
  ///
  /// Parameters:
  ///
  /// * [CaptableShareIn] captableShareIn (required):
  Future<CaptableCreated?> postCaptableShares(CaptableShareIn captableShareIn,) async {
    final response = await postCaptableSharesWithHttpInfo(captableShareIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptableCreated',) as CaptableCreated;
    
    }
    return null;
  }

  /// Moves shares from one stakeholder to another.
  ///
  /// Moves shares from one stakeholder to another.  Omit `quantity` to transfer the whole certificate, which REASSIGNS it and mints no new share. Send a quantity below the amount held to SPLIT it — the source certificate keeps the remainder, and a split additionally requires `certificateId` for the new certificate, which must be unique in the company. A quantity outside 1..held is refused, so a transfer can never over-issue.  Both outcomes answer 200: a transfer records a movement between holders and mints no security of its own, which is why this is not a 201 the way an investment is.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CaptableShareTransfer] captableShareTransfer (required):
  Future<Response> postCaptableSharesTransferWithHttpInfo(CaptableShareTransfer captableShareTransfer,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/shares/transfer';

    // ignore: prefer_final_locals
    Object? postBody = captableShareTransfer;

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

  /// Moves shares from one stakeholder to another.
  ///
  /// Moves shares from one stakeholder to another.  Omit `quantity` to transfer the whole certificate, which REASSIGNS it and mints no new share. Send a quantity below the amount held to SPLIT it — the source certificate keeps the remainder, and a split additionally requires `certificateId` for the new certificate, which must be unique in the company. A quantity outside 1..held is refused, so a transfer can never over-issue.  Both outcomes answer 200: a transfer records a movement between holders and mints no security of its own, which is why this is not a 201 the way an investment is.
  ///
  /// Parameters:
  ///
  /// * [CaptableShareTransfer] captableShareTransfer (required):
  Future<CaptableTransferred?> postCaptableSharesTransfer(CaptableShareTransfer captableShareTransfer,) async {
    final response = await postCaptableSharesTransferWithHttpInfo(captableShareTransfer,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptableTransferred',) as CaptableTransferred;
    
    }
    return null;
  }

  /// Add stakeholders to the cap table
  ///
  /// Records the people and institutions that can hold equity — the rows every share, option, SAFE, note and investment is issued to.  The body is ONE stakeholder object or an ARRAY of them, and the array is the point: a whole roster loads in a single call. Email is the identity within the company, so a stakeholder whose email is already on the table is SKIPPED rather than duplicated or rejected — the 201 reports how many rows were actually inserted, which is what makes re-running an import safe. Validation is all-or-nothing across the batch: one bad entry refuses the whole array.  Writes the caller's OWN cap table: the org resolved from the validated principal selects the tenant's store and scopes every row, so there is no field by which a caller can write into another company's table; a request with no validated org is refused. The whole write runs in one transaction, so a refusal leaves nothing behind. Validation is the cap-table bundle's and so is its refusal: a bad body comes back as {success:false, message, errors:[…]} with the failing fields listed, and numeric fields accept a number OR a numeric string. Bodies are capped at 1 MiB.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCaptableStakeholdersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/stakeholders';

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

  /// Add stakeholders to the cap table
  ///
  /// Records the people and institutions that can hold equity — the rows every share, option, SAFE, note and investment is issued to.  The body is ONE stakeholder object or an ARRAY of them, and the array is the point: a whole roster loads in a single call. Email is the identity within the company, so a stakeholder whose email is already on the table is SKIPPED rather than duplicated or rejected — the 201 reports how many rows were actually inserted, which is what makes re-running an import safe. Validation is all-or-nothing across the batch: one bad entry refuses the whole array.  Writes the caller's OWN cap table: the org resolved from the validated principal selects the tenant's store and scopes every row, so there is no field by which a caller can write into another company's table; a request with no validated org is refused. The whole write runs in one transaction, so a refusal leaves nothing behind. Validation is the cap-table bundle's and so is its refusal: a bad body comes back as {success:false, message, errors:[…]} with the failing fields listed, and numeric fields accept a number OR a numeric string. Bodies are capped at 1 MiB.
  Future<void> postCaptableStakeholders() async {
    final response = await postCaptableStakeholdersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Sets the caller org's company name and incorporation details.
  ///
  /// Sets the caller org's company name and incorporation details. The name is required; the three incorporation fields are optional and each is stored as empty when omitted, so a call that sends only a name CLEARS them. The company row itself is seeded when the tenant's store first opens, so this never creates one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CaptableCompanyUpdate] captableCompanyUpdate (required):
  Future<Response> putCaptableCompanyWithHttpInfo(CaptableCompanyUpdate captableCompanyUpdate,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/company';

    // ignore: prefer_final_locals
    Object? postBody = captableCompanyUpdate;

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

  /// Sets the caller org's company name and incorporation details.
  ///
  /// Sets the caller org's company name and incorporation details. The name is required; the three incorporation fields are optional and each is stored as empty when omitted, so a call that sends only a name CLEARS them. The company row itself is seeded when the tenant's store first opens, so this never creates one.
  ///
  /// Parameters:
  ///
  /// * [CaptableCompanyUpdate] captableCompanyUpdate (required):
  Future<CaptableUpdated?> putCaptableCompany(CaptableCompanyUpdate captableCompanyUpdate,) async {
    final response = await putCaptableCompanyWithHttpInfo(captableCompanyUpdate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptableUpdated',) as CaptableUpdated;
    
    }
    return null;
  }
}
