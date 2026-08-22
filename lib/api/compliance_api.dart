//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class ComplianceApi {
  ComplianceApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns the org's tracked accreditation-state records, newest first — evidence entries the org keeps, never a platform certification.
  ///
  /// Returns the org's tracked accreditation-state records, newest first — evidence entries the org keeps, never a platform certification.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned; non-positive means the server default.
  Future<Response> getComplianceAccreditationWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/compliance/accreditation';

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

  /// Returns the org's tracked accreditation-state records, newest first — evidence entries the org keeps, never a platform certification.
  ///
  /// Returns the org's tracked accreditation-state records, newest first — evidence entries the org keeps, never a platform certification.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned; non-positive means the server default.
  Future<AccList?> getComplianceAccreditation({ int? limit, }) async {
    final response = await getComplianceAccreditationWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccList',) as AccList;
    
    }
    return null;
  }

  /// Returns one tracked accreditation record.
  ///
  /// Returns one tracked accreditation record.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the accreditation record to read, from the path.
  Future<Response> getComplianceAccreditationByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/compliance/accreditation/{id}'
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

  /// Returns one tracked accreditation record.
  ///
  /// Returns one tracked accreditation record.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the accreditation record to read, from the path.
  Future<AccView?> getComplianceAccreditationById(String id,) async {
    final response = await getComplianceAccreditationByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccView',) as AccView;
    
    }
    return null;
  }

  /// AuditRead is the compliance read of the SHARED tamper-evident audit plane — the SOC 2 posture surface (privileged actions: who started/decided what, when).
  ///
  /// AuditRead is the compliance read of the SHARED tamper-evident audit plane — the SOC 2 posture surface (privileged actions: who started/decided what, when). The org is PINNED to the caller's validated org and the rows are narrowed to compliance.* actions. Fail-closed: no principal is a 403, no configured audit store a 501.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] result:
  ///   Result filters rows by outcome result: success, deny, or error; empty means all.
  Future<Response> getComplianceAuditWithHttpInfo({ String? result, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/compliance/audit';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (result != null) {
      queryParams.addAll(_queryParams('', 'result', result));
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

  /// AuditRead is the compliance read of the SHARED tamper-evident audit plane — the SOC 2 posture surface (privileged actions: who started/decided what, when).
  ///
  /// AuditRead is the compliance read of the SHARED tamper-evident audit plane — the SOC 2 posture surface (privileged actions: who started/decided what, when). The org is PINNED to the caller's validated org and the rows are narrowed to compliance.* actions. Fail-closed: no principal is a 403, no configured audit store a 501.
  ///
  /// Parameters:
  ///
  /// * [String] result:
  ///   Result filters rows by outcome result: success, deny, or error; empty means all.
  Future<AuditList?> getComplianceAudit({ String? result, }) async {
    final response = await getComplianceAuditWithHttpInfo( result: result, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuditList',) as AuditList;
    
    }
    return null;
  }

  /// Health reports subsystem liveness and the wired verification provider.
  ///
  /// Health reports subsystem liveness and the wired verification provider. Fail-open on purpose: it never probes the external provider, so a provider outage cannot fail liveness.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getComplianceHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/compliance/health';

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

  /// Health reports subsystem liveness and the wired verification provider.
  ///
  /// Health reports subsystem liveness and the wired verification provider. Fail-open on purpose: it never probes the external provider, so a provider outage cannot fail liveness.
  Future<HealthView?> getComplianceHealth() async {
    final response = await getComplianceHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HealthView',) as HealthView;
    
    }
    return null;
  }

  /// ListRecords is the unified compliance-record view for the org: its verifications and accreditation records together, each provider-reported or tracked, never platform-asserted.
  ///
  /// ListRecords is the unified compliance-record view for the org: its verifications and accreditation records together, each provider-reported or tracked, never platform-asserted. PII stays in the subject store; records carry only opaque ids and statuses.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned; non-positive means the server default.
  Future<Response> getComplianceRecordsWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/compliance/records';

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

  /// ListRecords is the unified compliance-record view for the org: its verifications and accreditation records together, each provider-reported or tracked, never platform-asserted.
  ///
  /// ListRecords is the unified compliance-record view for the org: its verifications and accreditation records together, each provider-reported or tracked, never platform-asserted. PII stays in the subject store; records carry only opaque ids and statuses.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned; non-positive means the server default.
  Future<RecordList?> getComplianceRecords({ int? limit, }) async {
    final response = await getComplianceRecordsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RecordList',) as RecordList;
    
    }
    return null;
  }

  /// Status is the org's honest posture read: the wired provider and the per-status tally of its verifications.
  ///
  /// Status is the org's honest posture read: the wired provider and the per-status tally of its verifications. It is deliberately NOT a boolean \"compliant\" — it reports counts of provider-reported states and carries the boundary disclaimer.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getComplianceStatusWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/compliance/status';

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

  /// Status is the org's honest posture read: the wired provider and the per-status tally of its verifications.
  ///
  /// Status is the org's honest posture read: the wired provider and the per-status tally of its verifications. It is deliberately NOT a boolean \"compliant\" — it reports counts of provider-reported states and carries the boundary disclaimer.
  Future<StatusView?> getComplianceStatus() async {
    final response = await getComplianceStatusWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StatusView',) as StatusView;
    
    }
    return null;
  }

  /// Returns the org's subjects as PII-MINIMIZED summaries — no name or email, only whether an email is on file.
  ///
  /// Returns the org's subjects as PII-MINIMIZED summaries — no name or email, only whether an email is on file. The full record is returned only by the explicit single-subject read.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned; non-positive means the server default.
  Future<Response> getComplianceSubjectsWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/compliance/subjects';

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

  /// Returns the org's subjects as PII-MINIMIZED summaries — no name or email, only whether an email is on file.
  ///
  /// Returns the org's subjects as PII-MINIMIZED summaries — no name or email, only whether an email is on file. The full record is returned only by the explicit single-subject read.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned; non-positive means the server default.
  Future<SubjectList?> getComplianceSubjects({ int? limit, }) async {
    final response = await getComplianceSubjectsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SubjectList',) as SubjectList;
    
    }
    return null;
  }

  /// Returns one subject WITH its contact PII — the only surface that returns it, and only to the owning org.
  ///
  /// Returns one subject WITH its contact PII — the only surface that returns it, and only to the owning org. The response is never cached by any intermediary.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the subject to read, from the path.
  Future<Response> getComplianceSubjectsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/compliance/subjects/{id}'
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

  /// Returns one subject WITH its contact PII — the only surface that returns it, and only to the owning org.
  ///
  /// Returns one subject WITH its contact PII — the only surface that returns it, and only to the owning org. The response is never cached by any intermediary.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the subject to read, from the path.
  Future<Subject?> getComplianceSubjectsById(String id,) async {
    final response = await getComplianceSubjectsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Subject',) as Subject;
    
    }
    return null;
  }

  /// Returns the org's KYC/KYB verifications, newest first — opaque subject references and provider-reported statuses only, no subject PII.
  ///
  /// Returns the org's KYC/KYB verifications, newest first — opaque subject references and provider-reported statuses only, no subject PII.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned; non-positive means the server default.
  Future<Response> getComplianceVerificationsWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/compliance/verifications';

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

  /// Returns the org's KYC/KYB verifications, newest first — opaque subject references and provider-reported statuses only, no subject PII.
  ///
  /// Returns the org's KYC/KYB verifications, newest first — opaque subject references and provider-reported statuses only, no subject PII.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned; non-positive means the server default.
  Future<CheckList?> getComplianceVerifications({ int? limit, }) async {
    final response = await getComplianceVerificationsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CheckList',) as CheckList;
    
    }
    return null;
  }

  /// Returns one verification — its opaque subject reference and provider-reported status, no subject PII.
  ///
  /// Returns one verification — its opaque subject reference and provider-reported status, no subject PII.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the verification to act on, from the path.
  Future<Response> getComplianceVerificationsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/compliance/verifications/{id}'
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

  /// Returns one verification — its opaque subject reference and provider-reported status, no subject PII.
  ///
  /// Returns one verification — its opaque subject reference and provider-reported status, no subject PII.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the verification to act on, from the path.
  Future<CheckView?> getComplianceVerificationsById(String id,) async {
    final response = await getComplianceVerificationsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CheckView',) as CheckView;
    
    }
    return null;
  }

  /// Records an ASSERTED accreditation state for a subject — the subject's own assertion, with no verifier.
  ///
  /// Records an ASSERTED accreditation state for a subject — the subject's own assertion, with no verifier. Every CONFIRMED state (provider_verified, reviewer_confirmed) and every rejected/expired state is a DECISION recorded via the decision endpoint, attributed to the reviewer — a create can never stamp a confirmation. The underlying figures (income, net worth) are never stored; only the method, category, and state.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AccreditationReq] accreditationReq (required):
  Future<Response> postComplianceAccreditationWithHttpInfo(AccreditationReq accreditationReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/compliance/accreditation';

    // ignore: prefer_final_locals
    Object? postBody = accreditationReq;

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

  /// Records an ASSERTED accreditation state for a subject — the subject's own assertion, with no verifier.
  ///
  /// Records an ASSERTED accreditation state for a subject — the subject's own assertion, with no verifier. Every CONFIRMED state (provider_verified, reviewer_confirmed) and every rejected/expired state is a DECISION recorded via the decision endpoint, attributed to the reviewer — a create can never stamp a confirmation. The underlying figures (income, net worth) are never stored; only the method, category, and state.
  ///
  /// Parameters:
  ///
  /// * [AccreditationReq] accreditationReq (required):
  Future<AccView?> postComplianceAccreditation(AccreditationReq accreditationReq,) async {
    final response = await postComplianceAccreditationWithHttpInfo(accreditationReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccView',) as AccView;
    
    }
    return null;
  }

  /// Records an org reviewer's decision on an accreditation record — a reviewer confirmation, a provider verification the reviewer has evidence of (a CPA/attorney letter, a verifier report), a rejection, or an expiry.
  ///
  /// Records an org reviewer's decision on an accreditation record — a reviewer confirmation, a provider verification the reviewer has evidence of (a CPA/attorney letter, a verifier report), a rejection, or an expiry. ROLE-GATED (an org admin or platform reviewer) and ATTRIBUTED: the reviewer's identity is recorded as ReviewerSub and audited. Human-in-the-loop: the platform never confirms on its own, and even a provider_verified state carries the reviewer who recorded it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the accreditation record to decide, from the path.
  ///
  /// * [AccreditationDecision] accreditationDecision (required):
  Future<Response> postComplianceAccreditationByIdDecisionWithHttpInfo(String id, AccreditationDecision accreditationDecision,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/compliance/accreditation/{id}/decision'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = accreditationDecision;

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

  /// Records an org reviewer's decision on an accreditation record — a reviewer confirmation, a provider verification the reviewer has evidence of (a CPA/attorney letter, a verifier report), a rejection, or an expiry.
  ///
  /// Records an org reviewer's decision on an accreditation record — a reviewer confirmation, a provider verification the reviewer has evidence of (a CPA/attorney letter, a verifier report), a rejection, or an expiry. ROLE-GATED (an org admin or platform reviewer) and ATTRIBUTED: the reviewer's identity is recorded as ReviewerSub and audited. Human-in-the-loop: the platform never confirms on its own, and even a provider_verified state carries the reviewer who recorded it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the accreditation record to decide, from the path.
  ///
  /// * [AccreditationDecision] accreditationDecision (required):
  Future<AccView?> postComplianceAccreditationByIdDecision(String id, AccreditationDecision accreditationDecision,) async {
    final response = await postComplianceAccreditationByIdDecisionWithHttpInfo(id, accreditationDecision,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccView',) as AccView;
    
    }
    return null;
  }

  /// Records a party the org is verifying as part of its own onboarding/compliance — a team member, vendor, customer, or counterparty.
  ///
  /// Records a party the org is verifying as part of its own onboarding/compliance — a team member, vendor, customer, or counterparty. The subject's contact PII (name/email) is sealed at rest and returned only to the owning org; downstream records reference the subject by opaque id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SubjectReq] subjectReq (required):
  Future<Response> postComplianceSubjectsWithHttpInfo(SubjectReq subjectReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/compliance/subjects';

    // ignore: prefer_final_locals
    Object? postBody = subjectReq;

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

  /// Records a party the org is verifying as part of its own onboarding/compliance — a team member, vendor, customer, or counterparty.
  ///
  /// Records a party the org is verifying as part of its own onboarding/compliance — a team member, vendor, customer, or counterparty. The subject's contact PII (name/email) is sealed at rest and returned only to the owning org; downstream records reference the subject by opaque id.
  ///
  /// Parameters:
  ///
  /// * [SubjectReq] subjectReq (required):
  Future<Subject?> postComplianceSubjects(SubjectReq subjectReq,) async {
    final response = await postComplianceSubjectsWithHttpInfo(subjectReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Subject',) as Subject;
    
    }
    return null;
  }

  /// Begins a KYC/KYB verification of a subject through the wired provider — an existing subject by id, or one created inline from the request.
  ///
  /// Begins a KYC/KYB verification of a subject through the wired provider — an existing subject by id, or one created inline from the request. The returned status is provider-reported and never terminal on a fresh start: starting a verification can never yield a verified record, and a provider error is a 502, never a verification.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [VerificationReq] verificationReq (required):
  Future<Response> postComplianceVerificationsWithHttpInfo(VerificationReq verificationReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/compliance/verifications';

    // ignore: prefer_final_locals
    Object? postBody = verificationReq;

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

  /// Begins a KYC/KYB verification of a subject through the wired provider — an existing subject by id, or one created inline from the request.
  ///
  /// Begins a KYC/KYB verification of a subject through the wired provider — an existing subject by id, or one created inline from the request. The returned status is provider-reported and never terminal on a fresh start: starting a verification can never yield a verified record, and a provider error is a 502, never a verification.
  ///
  /// Parameters:
  ///
  /// * [VerificationReq] verificationReq (required):
  Future<CheckView?> postComplianceVerifications(VerificationReq verificationReq,) async {
    final response = await postComplianceVerificationsWithHttpInfo(verificationReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CheckView',) as CheckView;
    
    }
    return null;
  }

  /// Records a privileged reviewer's MANUAL decision on a verification — the human-in-the-loop path, and the ONLY route to a passing status when no real provider is wired.
  ///
  /// Records a privileged reviewer's MANUAL decision on a verification — the human-in-the-loop path, and the ONLY route to a passing status when no real provider is wired. It produces a DISTINCT reviewer_confirmed, never a provider_verified (a provider decision is the provider's to report, via the webhook or a reconcile), and it is ROLE-GATED (an org admin or platform reviewer) AND ATTRIBUTED (the reviewer's user id is DecidedBy), so a manual pass is always accountable.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the verification to decide, from the path.
  ///
  /// * [VerificationDecision] verificationDecision (required):
  Future<Response> postComplianceVerificationsByIdDecisionWithHttpInfo(String id, VerificationDecision verificationDecision,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/compliance/verifications/{id}/decision'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = verificationDecision;

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

  /// Records a privileged reviewer's MANUAL decision on a verification — the human-in-the-loop path, and the ONLY route to a passing status when no real provider is wired.
  ///
  /// Records a privileged reviewer's MANUAL decision on a verification — the human-in-the-loop path, and the ONLY route to a passing status when no real provider is wired. It produces a DISTINCT reviewer_confirmed, never a provider_verified (a provider decision is the provider's to report, via the webhook or a reconcile), and it is ROLE-GATED (an org admin or platform reviewer) AND ATTRIBUTED (the reviewer's user id is DecidedBy), so a manual pass is always accountable.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the verification to decide, from the path.
  ///
  /// * [VerificationDecision] verificationDecision (required):
  Future<CheckView?> postComplianceVerificationsByIdDecision(String id, VerificationDecision verificationDecision,) async {
    final response = await postComplianceVerificationsByIdDecisionWithHttpInfo(id, verificationDecision,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CheckView',) as CheckView;
    
    }
    return null;
  }

  /// Polls the wired provider for its current decision and records it, ATTRIBUTED to the provider — the internal PULL reconcile.
  ///
  /// Polls the wired provider for its current decision and records it, ATTRIBUTED to the provider — the internal PULL reconcile. For the Manual provider the check stays pending; for a hosted provider it reflects the provider's settled status. A poll error is a 502, never a verification.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the verification to act on, from the path.
  Future<Response> postComplianceVerificationsByIdRefreshWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/compliance/verifications/{id}/refresh'
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

  /// Polls the wired provider for its current decision and records it, ATTRIBUTED to the provider — the internal PULL reconcile.
  ///
  /// Polls the wired provider for its current decision and records it, ATTRIBUTED to the provider — the internal PULL reconcile. For the Manual provider the check stays pending; for a hosted provider it reflects the provider's settled status. A poll error is a 502, never a verification.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the verification to act on, from the path.
  Future<CheckView?> postComplianceVerificationsByIdRefresh(String id,) async {
    final response = await postComplianceVerificationsByIdRefreshWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CheckView',) as CheckView;
    
    }
    return null;
  }

  /// Provider push that settles a verification, authenticated by HMAC signature
  ///
  /// The external PUSH reconcile: a verification provider (or a Hanzo relay) signals that a check settled, and the reconciled check comes back. It authenticates by an HMAC SIGNATURE over the RAW body bytes rather than by a principal — an external caller has no validated org — and the org is then resolved FROM the record the signed provider reference matches, so a call can only ever touch the one tenant that owns that reference.  The body carries NO trusted decision. A valid signature cannot force a status: the reference only says WHICH check to re-read, and the status is then pulled from the wired provider, which stays the source of truth. With no real provider configured a check stays pending, and the only route to a passing status is the role-gated, attributed reviewer decision.  An unknown reference is a benign 200 `{\"ignored\": ...}` no-op, not an error, so a provider replaying stale events neither retry-storms nor learns whether a reference exists in some other tenant. Fails closed otherwise: 501 unless a webhook secret is configured, 401 on a signature that does not verify, 400 with no provider reference, 413 over 1 MiB, and 502 if the secret or the provider is unreachable.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postComplianceVerificationsWebhookWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/compliance/verifications/webhook';

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

  /// Provider push that settles a verification, authenticated by HMAC signature
  ///
  /// The external PUSH reconcile: a verification provider (or a Hanzo relay) signals that a check settled, and the reconciled check comes back. It authenticates by an HMAC SIGNATURE over the RAW body bytes rather than by a principal — an external caller has no validated org — and the org is then resolved FROM the record the signed provider reference matches, so a call can only ever touch the one tenant that owns that reference.  The body carries NO trusted decision. A valid signature cannot force a status: the reference only says WHICH check to re-read, and the status is then pulled from the wired provider, which stays the source of truth. With no real provider configured a check stays pending, and the only route to a passing status is the role-gated, attributed reviewer decision.  An unknown reference is a benign 200 `{\"ignored\": ...}` no-op, not an error, so a provider replaying stale events neither retry-storms nor learns whether a reference exists in some other tenant. Fails closed otherwise: 501 unless a webhook secret is configured, 401 on a signature that does not verify, 400 with no provider reference, 413 over 1 MiB, and 502 if the secret or the provider is unreachable.
  Future<void> postComplianceVerificationsWebhook() async {
    final response = await postComplianceVerificationsWebhookWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
