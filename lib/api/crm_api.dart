//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class CrmApi {
  CrmApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Removes one of the caller org's companies and answers 204.
  ///
  /// Removes one of the caller org's companies and answers 204. Any contact or opportunity in the org that referenced it keeps existing with the reference cleared, so nothing is left pointing at a company that is gone.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the record to act on, from the path.
  Future<Response> deleteCrmCompaniesByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/crm/companies/{id}'
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

  /// Removes one of the caller org's companies and answers 204.
  ///
  /// Removes one of the caller org's companies and answers 204. Any contact or opportunity in the org that referenced it keeps existing with the reference cleared, so nothing is left pointing at a company that is gone.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the record to act on, from the path.
  Future<void> deleteCrmCompaniesById(String id,) async {
    final response = await deleteCrmCompaniesByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes one of the caller org's contacts and answers 204.
  ///
  /// Removes one of the caller org's contacts and answers 204. Any opportunity in the org that named it point of contact keeps existing with that reference cleared.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the record to act on, from the path.
  Future<Response> deleteCrmContactsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/crm/contacts/{id}'
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

  /// Removes one of the caller org's contacts and answers 204.
  ///
  /// Removes one of the caller org's contacts and answers 204. Any opportunity in the org that named it point of contact keeps existing with that reference cleared.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the record to act on, from the path.
  Future<void> deleteCrmContactsById(String id,) async {
    final response = await deleteCrmContactsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes one of the caller org's deals and answers 204.
  ///
  /// Removes one of the caller org's deals and answers 204.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the record to act on, from the path.
  Future<Response> deleteCrmOpportunitiesByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/crm/opportunities/{id}'
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

  /// Removes one of the caller org's deals and answers 204.
  ///
  /// Removes one of the caller org's deals and answers 204.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the record to act on, from the path.
  Future<void> deleteCrmOpportunitiesById(String id,) async {
    final response = await deleteCrmOpportunitiesByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the org's Startup Program applications, newest first.
  ///
  /// Returns the org's Startup Program applications, newest first. Each carries its AI screen and its stage history; a stage narrows the page to one pipeline stage.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] stage:
  ///   Stage returns only the applications at that pipeline stage when set: applied, screened, qualified, credits-offered, onboarded or rejected.
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned: 200 by default, 1000 at most.
  Future<Response> getCrmApplicationsWithHttpInfo({ String? stage, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/crm/applications';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (stage != null) {
      queryParams.addAll(_queryParams('', 'stage', stage));
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

  /// Returns the org's Startup Program applications, newest first.
  ///
  /// Returns the org's Startup Program applications, newest first. Each carries its AI screen and its stage history; a stage narrows the page to one pipeline stage.
  ///
  /// Parameters:
  ///
  /// * [String] stage:
  ///   Stage returns only the applications at that pipeline stage when set: applied, screened, qualified, credits-offered, onboarded or rejected.
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned: 200 by default, 1000 at most.
  Future<ApplicationList?> getCrmApplications({ String? stage, int? limit, }) async {
    final response = await getCrmApplicationsWithHttpInfo( stage: stage, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApplicationList',) as ApplicationList;
    
    }
    return null;
  }

  /// Returns one Startup Program application with its AI screen and stage history.
  ///
  /// Returns one Startup Program application with its AI screen and stage history. An id belonging to another org reads as not found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the record to act on, from the path.
  Future<Response> getCrmApplicationsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/crm/applications/{id}'
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

  /// Returns one Startup Program application with its AI screen and stage history.
  ///
  /// Returns one Startup Program application with its AI screen and stage history. An id belonging to another org reads as not found.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the record to act on, from the path.
  Future<ProgramApplication?> getCrmApplicationsById(String id,) async {
    final response = await getCrmApplicationsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProgramApplication',) as ProgramApplication;
    
    }
    return null;
  }

  /// Returns the caller org's companies, most recently updated first.
  ///
  /// Returns the caller org's companies, most recently updated first.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned: 200 by default, 1000 at most.
  Future<Response> getCrmCompaniesWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/crm/companies';

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

  /// Returns the caller org's companies, most recently updated first.
  ///
  /// Returns the caller org's companies, most recently updated first.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned: 200 by default, 1000 at most.
  Future<CompanyList?> getCrmCompanies({ int? limit, }) async {
    final response = await getCrmCompaniesWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CompanyList',) as CompanyList;
    
    }
    return null;
  }

  /// Returns one of the caller org's companies.
  ///
  /// Returns one of the caller org's companies. An id belonging to another org reads as not found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the record to act on, from the path.
  Future<Response> getCrmCompaniesByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/crm/companies/{id}'
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

  /// Returns one of the caller org's companies.
  ///
  /// Returns one of the caller org's companies. An id belonging to another org reads as not found.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the record to act on, from the path.
  Future<Company?> getCrmCompaniesById(String id,) async {
    final response = await getCrmCompaniesByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Company',) as Company;
    
    }
    return null;
  }

  /// Returns the caller org's contacts, most recently updated first.
  ///
  /// Returns the caller org's contacts, most recently updated first. A companyId narrows the page to the people at that company.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] companyId:
  ///   CompanyID returns only the contacts at that company when set.
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned: 200 by default, 1000 at most.
  Future<Response> getCrmContactsWithHttpInfo({ String? companyId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/crm/contacts';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (companyId != null) {
      queryParams.addAll(_queryParams('', 'companyId', companyId));
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

  /// Returns the caller org's contacts, most recently updated first.
  ///
  /// Returns the caller org's contacts, most recently updated first. A companyId narrows the page to the people at that company.
  ///
  /// Parameters:
  ///
  /// * [String] companyId:
  ///   CompanyID returns only the contacts at that company when set.
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned: 200 by default, 1000 at most.
  Future<ContactList?> getCrmContacts({ String? companyId, int? limit, }) async {
    final response = await getCrmContactsWithHttpInfo( companyId: companyId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ContactList',) as ContactList;
    
    }
    return null;
  }

  /// Returns one of the caller org's contacts.
  ///
  /// Returns one of the caller org's contacts. An id belonging to another org reads as not found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the record to act on, from the path.
  Future<Response> getCrmContactsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/crm/contacts/{id}'
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

  /// Returns one of the caller org's contacts.
  ///
  /// Returns one of the caller org's contacts. An id belonging to another org reads as not found.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the record to act on, from the path.
  Future<Contact?> getCrmContactsById(String id,) async {
    final response = await getCrmContactsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Contact',) as Contact;
    
    }
    return null;
  }

  /// Returns the caller org's deals, most recently updated first.
  ///
  /// Returns the caller org's deals, most recently updated first. A stage narrows the page to one pipeline stage.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] stage:
  ///   Stage returns only the opportunities at that pipeline stage when set (NEW, SCREENING, MEETING, PROPOSAL or CUSTOMER; case-insensitive).
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned: 200 by default, 1000 at most.
  Future<Response> getCrmOpportunitiesWithHttpInfo({ String? stage, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/crm/opportunities';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (stage != null) {
      queryParams.addAll(_queryParams('', 'stage', stage));
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

  /// Returns the caller org's deals, most recently updated first.
  ///
  /// Returns the caller org's deals, most recently updated first. A stage narrows the page to one pipeline stage.
  ///
  /// Parameters:
  ///
  /// * [String] stage:
  ///   Stage returns only the opportunities at that pipeline stage when set (NEW, SCREENING, MEETING, PROPOSAL or CUSTOMER; case-insensitive).
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned: 200 by default, 1000 at most.
  Future<OppList?> getCrmOpportunities({ String? stage, int? limit, }) async {
    final response = await getCrmOpportunitiesWithHttpInfo( stage: stage, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OppList',) as OppList;
    
    }
    return null;
  }

  /// Returns one of the caller org's deals.
  ///
  /// Returns one of the caller org's deals. An id belonging to another org reads as not found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the record to act on, from the path.
  Future<Response> getCrmOpportunitiesByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/crm/opportunities/{id}'
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

  /// Returns one of the caller org's deals.
  ///
  /// Returns one of the caller org's deals. An id belonging to another org reads as not found.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the record to act on, from the path.
  Future<Opportunity?> getCrmOpportunitiesById(String id,) async {
    final response = await getCrmOpportunitiesByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Opportunity',) as Opportunity;
    
    }
    return null;
  }

  /// Summary counts the caller org's CRM records: companies, contacts, opportunities.
  ///
  /// Summary counts the caller org's CRM records: companies, contacts, opportunities.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCrmSummaryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/crm/summary';

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

  /// Summary counts the caller org's CRM records: companies, contacts, opportunities.
  ///
  /// Summary counts the caller org's CRM records: companies, contacts, opportunities.
  Future<CrmSummary?> getCrmSummary() async {
    final response = await getCrmSummaryWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CrmSummary',) as CrmSummary;
    
    }
    return null;
  }

  /// Moves one Startup Program application through the pipeline.
  ///
  /// Moves one Startup Program application through the pipeline. The move is recorded on the application's timeline, attributed to the calling staff user: it may advance exactly one stage, go back to any earlier stage, reject from any non-rejected stage, or reopen a rejected application to `applied`; anything else is refused. Rejecting requires a reason. A note with no stage change is still recorded.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the application to move, from the path.
  ///
  /// * [PatchApplicationIn] patchApplicationIn (required):
  Future<Response> patchCrmApplicationsByIdWithHttpInfo(String id, PatchApplicationIn patchApplicationIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/crm/applications/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = patchApplicationIn;

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

  /// Moves one Startup Program application through the pipeline.
  ///
  /// Moves one Startup Program application through the pipeline. The move is recorded on the application's timeline, attributed to the calling staff user: it may advance exactly one stage, go back to any earlier stage, reject from any non-rejected stage, or reopen a rejected application to `applied`; anything else is refused. Rejecting requires a reason. A note with no stage change is still recorded.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the application to move, from the path.
  ///
  /// * [PatchApplicationIn] patchApplicationIn (required):
  Future<ProgramApplication?> patchCrmApplicationsById(String id, PatchApplicationIn patchApplicationIn,) async {
    final response = await patchCrmApplicationsByIdWithHttpInfo(id, patchApplicationIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProgramApplication',) as ProgramApplication;
    
    }
    return null;
  }

  /// Apply to the Startup Program from the public form
  ///
  /// Files an application to the Startup Program and answers the id and pipeline stage it landed at.  This is the ONE unauthenticated route in crm. It takes no principal and never reads a caller org: the application is filed against the DEPLOYMENT's own program org — the brand, hanzo unless white-labelled — so there is no tenant to name and none to leak. Reading the application back is staff-only and lives elsewhere.  company, contactName and a parseable email are required; everything else is optional context. Re-submitting the same (email, company) REFRESHES the existing application instead of filing a second one, so an impatient applicant cannot duplicate their own lead — that is a 200 where a first submission is a 201. A filled `hp` honeypot field is answered exactly like a success and stored nowhere, so a bot cannot tell a drop from an accept.  Filing is not screening: the application lands at stage `applied` with its AI screen still pending, and the screen runs afterwards on its own clock. A company and contact are also projected into the program org's ordinary CRM lists, best-effort — that projection failing does not fail the application. Bodies over 64 KiB are refused, and submissions are rate-limited.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCrmApplicationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/crm/applications';

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

  /// Apply to the Startup Program from the public form
  ///
  /// Files an application to the Startup Program and answers the id and pipeline stage it landed at.  This is the ONE unauthenticated route in crm. It takes no principal and never reads a caller org: the application is filed against the DEPLOYMENT's own program org — the brand, hanzo unless white-labelled — so there is no tenant to name and none to leak. Reading the application back is staff-only and lives elsewhere.  company, contactName and a parseable email are required; everything else is optional context. Re-submitting the same (email, company) REFRESHES the existing application instead of filing a second one, so an impatient applicant cannot duplicate their own lead — that is a 200 where a first submission is a 201. A filled `hp` honeypot field is answered exactly like a success and stored nowhere, so a bot cannot tell a drop from an accept.  Filing is not screening: the application lands at stage `applied` with its AI screen still pending, and the screen runs afterwards on its own clock. A company and contact are also projected into the program org's ordinary CRM lists, best-effort — that projection failing does not fail the application. Bodies over 64 KiB are refused, and submissions are rate-limited.
  Future<void> postCrmApplications() async {
    final response = await postCrmApplicationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Adds a company to the caller's org and answers 201 with the stored record.
  ///
  /// Adds a company to the caller's org and answers 201 with the stored record. A name is required; an empty currency defaults to USD.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CompanyReq] companyReq (required):
  Future<Response> postCrmCompaniesWithHttpInfo(CompanyReq companyReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/crm/companies';

    // ignore: prefer_final_locals
    Object? postBody = companyReq;

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

  /// Adds a company to the caller's org and answers 201 with the stored record.
  ///
  /// Adds a company to the caller's org and answers 201 with the stored record. A name is required; an empty currency defaults to USD.
  ///
  /// Parameters:
  ///
  /// * [CompanyReq] companyReq (required):
  Future<Company?> postCrmCompanies(CompanyReq companyReq,) async {
    final response = await postCrmCompaniesWithHttpInfo(companyReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Company',) as Company;
    
    }
    return null;
  }

  /// Adds a person to the caller's org and answers 201 with the stored record.
  ///
  /// Adds a person to the caller's org and answers 201 with the stored record. One of firstName, lastName or email is required, and a companyId must name a company in the same org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ContactReq] contactReq (required):
  Future<Response> postCrmContactsWithHttpInfo(ContactReq contactReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/crm/contacts';

    // ignore: prefer_final_locals
    Object? postBody = contactReq;

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

  /// Adds a person to the caller's org and answers 201 with the stored record.
  ///
  /// Adds a person to the caller's org and answers 201 with the stored record. One of firstName, lastName or email is required, and a companyId must name a company in the same org.
  ///
  /// Parameters:
  ///
  /// * [ContactReq] contactReq (required):
  Future<Contact?> postCrmContacts(ContactReq contactReq,) async {
    final response = await postCrmContactsWithHttpInfo(contactReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Contact',) as Contact;
    
    }
    return null;
  }

  /// Adds a deal to the caller's org and answers 201 with the stored record.
  ///
  /// Adds a deal to the caller's org and answers 201 with the stored record. A name is required; the stage defaults to NEW; companyId and pointOfContactId must name records in the same org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [OppReq] oppReq (required):
  Future<Response> postCrmOpportunitiesWithHttpInfo(OppReq oppReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/crm/opportunities';

    // ignore: prefer_final_locals
    Object? postBody = oppReq;

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

  /// Adds a deal to the caller's org and answers 201 with the stored record.
  ///
  /// Adds a deal to the caller's org and answers 201 with the stored record. A name is required; the stage defaults to NEW; companyId and pointOfContactId must name records in the same org.
  ///
  /// Parameters:
  ///
  /// * [OppReq] oppReq (required):
  Future<Opportunity?> postCrmOpportunities(OppReq oppReq,) async {
    final response = await postCrmOpportunitiesWithHttpInfo(oppReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Opportunity',) as Opportunity;
    
    }
    return null;
  }

  /// Replaces one of the caller org's companies.
  ///
  /// Replaces one of the caller org's companies. Every writable field is taken from the request, so a field the request omits is CLEARED — send the whole record. A name is required.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID names the company to update and comes from the path. A create ignores it: the server mints the id.
  ///
  /// * [CompanyReq] companyReq (required):
  Future<Response> putCrmCompaniesByIdWithHttpInfo(String id, CompanyReq companyReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/crm/companies/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = companyReq;

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

  /// Replaces one of the caller org's companies.
  ///
  /// Replaces one of the caller org's companies. Every writable field is taken from the request, so a field the request omits is CLEARED — send the whole record. A name is required.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID names the company to update and comes from the path. A create ignores it: the server mints the id.
  ///
  /// * [CompanyReq] companyReq (required):
  Future<Company?> putCrmCompaniesById(String id, CompanyReq companyReq,) async {
    final response = await putCrmCompaniesByIdWithHttpInfo(id, companyReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Company',) as Company;
    
    }
    return null;
  }

  /// Replaces one of the caller org's contacts.
  ///
  /// Replaces one of the caller org's contacts. Every writable field is taken from the request, so a field the request omits is CLEARED — send the whole record. One of firstName, lastName or email is required.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID names the contact to update and comes from the path. A create ignores it: the server mints the id.
  ///
  /// * [ContactReq] contactReq (required):
  Future<Response> putCrmContactsByIdWithHttpInfo(String id, ContactReq contactReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/crm/contacts/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = contactReq;

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

  /// Replaces one of the caller org's contacts.
  ///
  /// Replaces one of the caller org's contacts. Every writable field is taken from the request, so a field the request omits is CLEARED — send the whole record. One of firstName, lastName or email is required.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID names the contact to update and comes from the path. A create ignores it: the server mints the id.
  ///
  /// * [ContactReq] contactReq (required):
  Future<Contact?> putCrmContactsById(String id, ContactReq contactReq,) async {
    final response = await putCrmContactsByIdWithHttpInfo(id, contactReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Contact',) as Contact;
    
    }
    return null;
  }

  /// Replaces one of the caller org's deals.
  ///
  /// Replaces one of the caller org's deals. Every writable field is taken from the request, so a field the request omits is CLEARED — send the whole record. A name is required and the stage must be a pipeline stage.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID names the opportunity to update and comes from the path. A create ignores it: the server mints the id.
  ///
  /// * [OppReq] oppReq (required):
  Future<Response> putCrmOpportunitiesByIdWithHttpInfo(String id, OppReq oppReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/crm/opportunities/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = oppReq;

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

  /// Replaces one of the caller org's deals.
  ///
  /// Replaces one of the caller org's deals. Every writable field is taken from the request, so a field the request omits is CLEARED — send the whole record. A name is required and the stage must be a pipeline stage.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID names the opportunity to update and comes from the path. A create ignores it: the server mints the id.
  ///
  /// * [OppReq] oppReq (required):
  Future<Opportunity?> putCrmOpportunitiesById(String id, OppReq oppReq,) async {
    final response = await putCrmOpportunitiesByIdWithHttpInfo(id, oppReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Opportunity',) as Opportunity;
    
    }
    return null;
  }
}
