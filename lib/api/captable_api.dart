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

  /// Amend a share class
  ///
  /// Rewrites one share class — the amendment path for a class whose authorized count, price, seniority or preference terms have changed.  It REPLACES the class rather than merging into it: every field is taken from this body, so an omitted field resets to the create-time default instead of keeping its current value. Send the full class. The index and the derived prefix are unchanged by an amendment. An id that is not this company's is not found.  Writes the caller's OWN cap table: the org resolved from the validated principal selects the tenant's store and scopes every row, so there is no field by which a caller can write into another company's table; a request with no validated org is refused. The whole write runs in one transaction, so a refusal leaves nothing behind. Validation is the cap-table bundle's and so is its refusal: a bad body comes back as {success:false, message, errors:[…]} with the failing fields listed, and numeric fields accept a number OR a numeric string. Bodies are capped at 1 MiB.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> patchCaptableClassesByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/classes/{id}'
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

  /// Amend a share class
  ///
  /// Rewrites one share class — the amendment path for a class whose authorized count, price, seniority or preference terms have changed.  It REPLACES the class rather than merging into it: every field is taken from this body, so an omitted field resets to the create-time default instead of keeping its current value. Send the full class. The index and the derived prefix are unchanged by an amendment. An id that is not this company's is not found.  Writes the caller's OWN cap table: the org resolved from the validated principal selects the tenant's store and scopes every row, so there is no field by which a caller can write into another company's table; a request with no validated org is refused. The whole write runs in one transaction, so a refusal leaves nothing behind. Validation is the cap-table bundle's and so is its refusal: a bad body comes back as {success:false, message, errors:[…]} with the failing fields listed, and numeric fields accept a number OR a numeric string. Bodies are capped at 1 MiB.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> patchCaptableClassesById(String id,) async {
    final response = await patchCaptableClassesByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
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

  /// Define a share class
  ///
  /// Creates a class of stock — its authorized share count, votes per share, par and issue price, seniority, conversion rights and liquidation/participation multiples — which is what shares, priced rounds and equity plans are then issued against.  Two fields are the company's to assign, not the caller's: the class index auto-increments per company, and the certificate prefix is DERIVED from the class type (CS for COMMON, PS for anything else), so a prefix in the body is ignored.  Writes the caller's OWN cap table: the org resolved from the validated principal selects the tenant's store and scopes every row, so there is no field by which a caller can write into another company's table; a request with no validated org is refused. The whole write runs in one transaction, so a refusal leaves nothing behind. Validation is the cap-table bundle's and so is its refusal: a bad body comes back as {success:false, message, errors:[…]} with the failing fields listed, and numeric fields accept a number OR a numeric string. Bodies are capped at 1 MiB.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCaptableClassesWithHttpInfo() async {
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Define a share class
  ///
  /// Creates a class of stock — its authorized share count, votes per share, par and issue price, seniority, conversion rights and liquidation/participation multiples — which is what shares, priced rounds and equity plans are then issued against.  Two fields are the company's to assign, not the caller's: the class index auto-increments per company, and the certificate prefix is DERIVED from the class type (CS for COMMON, PS for anything else), so a prefix in the body is ignored.  Writes the caller's OWN cap table: the org resolved from the validated principal selects the tenant's store and scopes every row, so there is no field by which a caller can write into another company's table; a request with no validated org is refused. The whole write runs in one transaction, so a refusal leaves nothing behind. Validation is the cap-table bundle's and so is its refusal: a bad body comes back as {success:false, message, errors:[…]} with the failing fields listed, and numeric fields accept a number OR a numeric string. Bodies are capped at 1 MiB.
  Future<void> postCaptableClasses() async {
    final response = await postCaptableClassesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Record a convertible note
  ///
  /// Records a convertible note held by a stakeholder: the principal, the conversion cap, discount and interest rate, MFN, and the issue and board-approval dates.  The stakeholder must already exist in this company, and the note's public id must be unused there — a reused id is a conflict rather than an overwrite. Like a SAFE, this records the instrument only; conversion is not performed here.  Writes the caller's OWN cap table: the org resolved from the validated principal selects the tenant's store and scopes every row, so there is no field by which a caller can write into another company's table; a request with no validated org is refused. The whole write runs in one transaction, so a refusal leaves nothing behind. Validation is the cap-table bundle's and so is its refusal: a bad body comes back as {success:false, message, errors:[…]} with the failing fields listed, and numeric fields accept a number OR a numeric string. Bodies are capped at 1 MiB.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCaptableConvertiblesWithHttpInfo() async {
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Record a convertible note
  ///
  /// Records a convertible note held by a stakeholder: the principal, the conversion cap, discount and interest rate, MFN, and the issue and board-approval dates.  The stakeholder must already exist in this company, and the note's public id must be unused there — a reused id is a conflict rather than an overwrite. Like a SAFE, this records the instrument only; conversion is not performed here.  Writes the caller's OWN cap table: the org resolved from the validated principal selects the tenant's store and scopes every row, so there is no field by which a caller can write into another company's table; a request with no validated org is refused. The whole write runs in one transaction, so a refusal leaves nothing behind. Validation is the cap-table bundle's and so is its refusal: a bad body comes back as {success:false, message, errors:[…]} with the failing fields listed, and numeric fields accept a number OR a numeric string. Bodies are capped at 1 MiB.
  Future<void> postCaptableConvertibles() async {
    final response = await postCaptableConvertiblesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Grant options from an equity plan
  ///
  /// Records an option grant to a stakeholder under an equity plan — quantity, exercise price, ISO/NSO type, cliff and vesting years, and the issue, expiration, vesting-start, board-approval and Rule 144 dates.  The stakeholder and the equity plan must both already exist in this company, and the grant id must be unused there — a reused grant id is a conflict, so a grant can never be overwritten by a later one carrying the same number.  Writes the caller's OWN cap table: the org resolved from the validated principal selects the tenant's store and scopes every row, so there is no field by which a caller can write into another company's table; a request with no validated org is refused. The whole write runs in one transaction, so a refusal leaves nothing behind. Validation is the cap-table bundle's and so is its refusal: a bad body comes back as {success:false, message, errors:[…]} with the failing fields listed, and numeric fields accept a number OR a numeric string. Bodies are capped at 1 MiB.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCaptableOptionsWithHttpInfo() async {
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Grant options from an equity plan
  ///
  /// Records an option grant to a stakeholder under an equity plan — quantity, exercise price, ISO/NSO type, cliff and vesting years, and the issue, expiration, vesting-start, board-approval and Rule 144 dates.  The stakeholder and the equity plan must both already exist in this company, and the grant id must be unused there — a reused grant id is a conflict, so a grant can never be overwritten by a later one carrying the same number.  Writes the caller's OWN cap table: the org resolved from the validated principal selects the tenant's store and scopes every row, so there is no field by which a caller can write into another company's table; a request with no validated org is refused. The whole write runs in one transaction, so a refusal leaves nothing behind. Validation is the cap-table bundle's and so is its refusal: a bad body comes back as {success:false, message, errors:[…]} with the failing fields listed, and numeric fields accept a number OR a numeric string. Bodies are capped at 1 MiB.
  Future<void> postCaptableOptions() async {
    final response = await postCaptableOptionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Open an equity incentive plan
  ///
  /// Reserves a pool of shares out of a share class for option grants, with the board approval and effective dates and what happens to cancelled options.  The share class must already exist in this company — a plan cannot reserve out of nothing. Note the field name the bundle reads for the cancellation behaviour is `defaultCancellatonBehavior`; that spelling is the wire, and a correctly spelled key is simply not seen.  Writes the caller's OWN cap table: the org resolved from the validated principal selects the tenant's store and scopes every row, so there is no field by which a caller can write into another company's table; a request with no validated org is refused. The whole write runs in one transaction, so a refusal leaves nothing behind. Validation is the cap-table bundle's and so is its refusal: a bad body comes back as {success:false, message, errors:[…]} with the failing fields listed, and numeric fields accept a number OR a numeric string. Bodies are capped at 1 MiB.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCaptablePlansWithHttpInfo() async {
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Open an equity incentive plan
  ///
  /// Reserves a pool of shares out of a share class for option grants, with the board approval and effective dates and what happens to cancelled options.  The share class must already exist in this company — a plan cannot reserve out of nothing. Note the field name the bundle reads for the cancellation behaviour is `defaultCancellatonBehavior`; that spelling is the wire, and a correctly spelled key is simply not seen.  Writes the caller's OWN cap table: the org resolved from the validated principal selects the tenant's store and scopes every row, so there is no field by which a caller can write into another company's table; a request with no validated org is refused. The whole write runs in one transaction, so a refusal leaves nothing behind. Validation is the cap-table bundle's and so is its refusal: a bad body comes back as {success:false, message, errors:[…]} with the failing fields listed, and numeric fields accept a number OR a numeric string. Bodies are capped at 1 MiB.
  Future<void> postCaptablePlans() async {
    final response = await postCaptablePlansWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Open a funding round
  ///
  /// Opens a round with its name, type and target amount. It starts OPEN with nothing raised; investments are then added to it, and closing it is its own call.  A PRICED round is the constrained case: it requires a share class that exists in this company and a price per share above zero, because that price is what converts each investment into issued shares. Its pre-money valuation is optional. A non-priced round carries none of the three.  Writes the caller's OWN cap table: the org resolved from the validated principal selects the tenant's store and scopes every row, so there is no field by which a caller can write into another company's table; a request with no validated org is refused. The whole write runs in one transaction, so a refusal leaves nothing behind. Validation is the cap-table bundle's and so is its refusal: a bad body comes back as {success:false, message, errors:[…]} with the failing fields listed, and numeric fields accept a number OR a numeric string. Bodies are capped at 1 MiB.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCaptableRoundsWithHttpInfo() async {
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Open a funding round
  ///
  /// Opens a round with its name, type and target amount. It starts OPEN with nothing raised; investments are then added to it, and closing it is its own call.  A PRICED round is the constrained case: it requires a share class that exists in this company and a price per share above zero, because that price is what converts each investment into issued shares. Its pre-money valuation is optional. A non-priced round carries none of the three.  Writes the caller's OWN cap table: the org resolved from the validated principal selects the tenant's store and scopes every row, so there is no field by which a caller can write into another company's table; a request with no validated org is refused. The whole write runs in one transaction, so a refusal leaves nothing behind. Validation is the cap-table bundle's and so is its refusal: a bad body comes back as {success:false, message, errors:[…]} with the failing fields listed, and numeric fields accept a number OR a numeric string. Bodies are capped at 1 MiB.
  Future<void> postCaptableRounds() async {
    final response = await postCaptableRoundsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
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

  /// Record an investment into a round
  ///
  /// Records what a stakeholder put into a round and adds it to the round's raised total.  On a PRICED round this ISSUES SHARES as well as recording the money: the amount is divided by the round's price per share, rounded DOWN to whole shares, and a new certificate for them is issued to the investor in the round's share class — so an amount too small to buy one whole share is refused rather than recorded as a zero-share investment. On a non-priced round the money is recorded and no shares are issued.  The round must exist in this company and still be OPEN — a closed round refuses further investment — and the investor must already be a stakeholder here. The date defaults to today when omitted.  Writes the caller's OWN cap table: the org resolved from the validated principal selects the tenant's store and scopes every row, so there is no field by which a caller can write into another company's table; a request with no validated org is refused. The whole write runs in one transaction, so a refusal leaves nothing behind. Validation is the cap-table bundle's and so is its refusal: a bad body comes back as {success:false, message, errors:[…]} with the failing fields listed, and numeric fields accept a number OR a numeric string. Bodies are capped at 1 MiB.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> postCaptableRoundsByIdInvestmentsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/rounds/{id}/investments'
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

  /// Record an investment into a round
  ///
  /// Records what a stakeholder put into a round and adds it to the round's raised total.  On a PRICED round this ISSUES SHARES as well as recording the money: the amount is divided by the round's price per share, rounded DOWN to whole shares, and a new certificate for them is issued to the investor in the round's share class — so an amount too small to buy one whole share is refused rather than recorded as a zero-share investment. On a non-priced round the money is recorded and no shares are issued.  The round must exist in this company and still be OPEN — a closed round refuses further investment — and the investor must already be a stakeholder here. The date defaults to today when omitted.  Writes the caller's OWN cap table: the org resolved from the validated principal selects the tenant's store and scopes every row, so there is no field by which a caller can write into another company's table; a request with no validated org is refused. The whole write runs in one transaction, so a refusal leaves nothing behind. Validation is the cap-table bundle's and so is its refusal: a bad body comes back as {success:false, message, errors:[…]} with the failing fields listed, and numeric fields accept a number OR a numeric string. Bodies are capped at 1 MiB.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> postCaptableRoundsByIdInvestments(String id,) async {
    final response = await postCaptableRoundsByIdInvestmentsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Record a SAFE
  ///
  /// Records a Simple Agreement for Future Equity held by a stakeholder: the capital in, the valuation cap and discount, MFN and pro-rata rights, pre- or post-money type, and the issue and board-approval dates.  The stakeholder must already exist in this company, and the SAFE's public id must be unused there — a reused id is a conflict rather than an overwrite. This records the instrument; it does not convert it, so nothing is issued against a share class until a round does that.  Writes the caller's OWN cap table: the org resolved from the validated principal selects the tenant's store and scopes every row, so there is no field by which a caller can write into another company's table; a request with no validated org is refused. The whole write runs in one transaction, so a refusal leaves nothing behind. Validation is the cap-table bundle's and so is its refusal: a bad body comes back as {success:false, message, errors:[…]} with the failing fields listed, and numeric fields accept a number OR a numeric string. Bodies are capped at 1 MiB.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCaptableSafesWithHttpInfo() async {
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Record a SAFE
  ///
  /// Records a Simple Agreement for Future Equity held by a stakeholder: the capital in, the valuation cap and discount, MFN and pro-rata rights, pre- or post-money type, and the issue and board-approval dates.  The stakeholder must already exist in this company, and the SAFE's public id must be unused there — a reused id is a conflict rather than an overwrite. This records the instrument; it does not convert it, so nothing is issued against a share class until a round does that.  Writes the caller's OWN cap table: the org resolved from the validated principal selects the tenant's store and scopes every row, so there is no field by which a caller can write into another company's table; a request with no validated org is refused. The whole write runs in one transaction, so a refusal leaves nothing behind. Validation is the cap-table bundle's and so is its refusal: a bad body comes back as {success:false, message, errors:[…]} with the failing fields listed, and numeric fields accept a number OR a numeric string. Bodies are capped at 1 MiB.
  Future<void> postCaptableSafes() async {
    final response = await postCaptableSafesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Issue a share certificate
  ///
  /// Issues shares of a class to a stakeholder as a certificate: quantity, price and capital contributed, the vesting cliff and term, the legends on the certificate, and the issue, Rule 144, vesting-start and board-approval dates.  Both the stakeholder and the share class must already exist in this company, and the certificate id must be unused there — a reused id is a conflict, never a silent overwrite of an existing certificate.  Writes the caller's OWN cap table: the org resolved from the validated principal selects the tenant's store and scopes every row, so there is no field by which a caller can write into another company's table; a request with no validated org is refused. The whole write runs in one transaction, so a refusal leaves nothing behind. Validation is the cap-table bundle's and so is its refusal: a bad body comes back as {success:false, message, errors:[…]} with the failing fields listed, and numeric fields accept a number OR a numeric string. Bodies are capped at 1 MiB.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCaptableSharesWithHttpInfo() async {
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Issue a share certificate
  ///
  /// Issues shares of a class to a stakeholder as a certificate: quantity, price and capital contributed, the vesting cliff and term, the legends on the certificate, and the issue, Rule 144, vesting-start and board-approval dates.  Both the stakeholder and the share class must already exist in this company, and the certificate id must be unused there — a reused id is a conflict, never a silent overwrite of an existing certificate.  Writes the caller's OWN cap table: the org resolved from the validated principal selects the tenant's store and scopes every row, so there is no field by which a caller can write into another company's table; a request with no validated org is refused. The whole write runs in one transaction, so a refusal leaves nothing behind. Validation is the cap-table bundle's and so is its refusal: a bad body comes back as {success:false, message, errors:[…]} with the failing fields listed, and numeric fields accept a number OR a numeric string. Bodies are capped at 1 MiB.
  Future<void> postCaptableShares() async {
    final response = await postCaptableSharesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Transfer shares to another stakeholder
  ///
  /// Moves shares from one certificate to another stakeholder, in one atomic step.  OMITTING `quantity` transfers the WHOLE certificate, which simply reassigns it and answers newShareId null — that is the difference between a full and a partial transfer, and it is why quantity is absent rather than zero. A partial transfer shrinks the source certificate and issues a NEW one to the recipient, so it requires a `certificateId` for that new certificate and refuses a reused one. The quantity must be between 1 and what the source certificate actually holds; the recipient must be a stakeholder of this same company.  Writes the caller's OWN cap table: the org resolved from the validated principal selects the tenant's store and scopes every row, so there is no field by which a caller can write into another company's table; a request with no validated org is refused. The whole write runs in one transaction, so a refusal leaves nothing behind. Validation is the cap-table bundle's and so is its refusal: a bad body comes back as {success:false, message, errors:[…]} with the failing fields listed, and numeric fields accept a number OR a numeric string. Bodies are capped at 1 MiB.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCaptableSharesTransferWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/captable/shares/transfer';

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

  /// Transfer shares to another stakeholder
  ///
  /// Moves shares from one certificate to another stakeholder, in one atomic step.  OMITTING `quantity` transfers the WHOLE certificate, which simply reassigns it and answers newShareId null — that is the difference between a full and a partial transfer, and it is why quantity is absent rather than zero. A partial transfer shrinks the source certificate and issues a NEW one to the recipient, so it requires a `certificateId` for that new certificate and refuses a reused one. The quantity must be between 1 and what the source certificate actually holds; the recipient must be a stakeholder of this same company.  Writes the caller's OWN cap table: the org resolved from the validated principal selects the tenant's store and scopes every row, so there is no field by which a caller can write into another company's table; a request with no validated org is refused. The whole write runs in one transaction, so a refusal leaves nothing behind. Validation is the cap-table bundle's and so is its refusal: a bad body comes back as {success:false, message, errors:[…]} with the failing fields listed, and numeric fields accept a number OR a numeric string. Bodies are capped at 1 MiB.
  Future<void> postCaptableSharesTransfer() async {
    final response = await postCaptableSharesTransferWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
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
