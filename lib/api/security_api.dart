//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class SecurityApi {
  SecurityApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Is the org's findings — rule, severity, path, line, masked preview and fingerprint — newest first, across scans or within one.
  ///
  /// Is the org's findings — rule, severity, path, line, masked preview and fingerprint — newest first, across scans or within one.  A minSeverity outside critical|high|medium|low is refused rather than quietly ignored, so a filter typo cannot read as \"no findings\". Strictly org-scoped, and a caller with no validated org is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] scanId:
  ///   ScanID narrows to a single scan.
  ///
  /// * [String] minSeverity:
  ///   MinSeverity drops everything below that rank: critical, high, medium or low. A value outside that set is refused rather than quietly ignored, so a filter typo cannot read as \"no findings\".
  ///
  /// * [int] limit:
  ///   Limit caps the page.
  Future<Response> getSecurityFindingsWithHttpInfo({ String? scanId, String? minSeverity, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/security/findings';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (scanId != null) {
      queryParams.addAll(_queryParams('', 'scanId', scanId));
    }
    if (minSeverity != null) {
      queryParams.addAll(_queryParams('', 'minSeverity', minSeverity));
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

  /// Is the org's findings — rule, severity, path, line, masked preview and fingerprint — newest first, across scans or within one.
  ///
  /// Is the org's findings — rule, severity, path, line, masked preview and fingerprint — newest first, across scans or within one.  A minSeverity outside critical|high|medium|low is refused rather than quietly ignored, so a filter typo cannot read as \"no findings\". Strictly org-scoped, and a caller with no validated org is refused.
  ///
  /// Parameters:
  ///
  /// * [String] scanId:
  ///   ScanID narrows to a single scan.
  ///
  /// * [String] minSeverity:
  ///   MinSeverity drops everything below that rank: critical, high, medium or low. A value outside that set is refused rather than quietly ignored, so a filter typo cannot read as \"no findings\".
  ///
  /// * [int] limit:
  ///   Limit caps the page.
  Future<FindingList?> getSecurityFindings({ String? scanId, String? minSeverity, int? limit, }) async {
    final response = await getSecurityFindingsWithHttpInfo( scanId: scanId, minSeverity: minSeverity, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FindingList',) as FindingList;
    
    }
    return null;
  }

  /// Returns a single finding: which rule fired, where (path and line), the masked preview and the SHA-256 fingerprint of the secret — the raw secret is not stored and cannot be read back.
  ///
  /// Returns a single finding: which rule fired, where (path and line), the masked preview and the SHA-256 fingerprint of the secret — the raw secret is not stored and cannot be read back.  Scoped to the caller's org, and a finding belonging to another org is the same 404 as one that never existed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the finding the URL names.
  Future<Response> getSecurityFindingsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/security/findings/{id}'
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

  /// Returns a single finding: which rule fired, where (path and line), the masked preview and the SHA-256 fingerprint of the secret — the raw secret is not stored and cannot be read back.
  ///
  /// Returns a single finding: which rule fired, where (path and line), the masked preview and the SHA-256 fingerprint of the secret — the raw secret is not stored and cannot be read back.  Scoped to the caller's org, and a finding belonging to another org is the same 404 as one that never existed.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the finding the URL names.
  Future<FindingView?> getSecurityFindingsById(String id,) async {
    final response = await getSecurityFindingsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FindingView',) as FindingView;
    
    }
    return null;
  }

  /// Reports that the scanning subsystem is serving and how many secret-detection rules the engine holds.
  ///
  /// Reports that the scanning subsystem is serving and how many secret-detection rules the engine holds.  It has no external dependency — the answer is ok whenever the findings store opened — so it measures this process rather than anything downstream. It reads no tenant: a prober that sends no principal is answered, not refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSecurityHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/security/health';

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

  /// Reports that the scanning subsystem is serving and how many secret-detection rules the engine holds.
  ///
  /// Reports that the scanning subsystem is serving and how many secret-detection rules the engine holds.  It has no external dependency — the answer is ok whenever the findings store opened — so it measures this process rather than anything downstream. It reads no tenant: a prober that sends no principal is answered, not refused.
  Future<Ruleset?> getSecurityHealth() async {
    final response = await getSecurityHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Ruleset',) as Ruleset;
    
    }
    return null;
  }

  /// Is the secret-detection catalog the engine scans with.
  ///
  /// Is the secret-detection catalog the engine scans with.  It returns every rule a scan can fire — the id, name and severity a finding cites — so a caller can render or triage results without hard-coding the catalog. It is the same for everyone and discloses nothing tenant-specific, so it carries no org scope.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSecurityRulesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/security/rules';

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

  /// Is the secret-detection catalog the engine scans with.
  ///
  /// Is the secret-detection catalog the engine scans with.  It returns every rule a scan can fire — the id, name and severity a finding cites — so a caller can render or triage results without hard-coding the catalog. It is the same for everyone and discloses nothing tenant-specific, so it carries no org scope.
  Future<RuleList?> getSecurityRules() async {
    final response = await getSecurityRulesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RuleList',) as RuleList;
    
    }
    return null;
  }

  /// Is the org's scan history, newest first, each as the same summary the submission answered — files read, findings fired, tally by severity.
  ///
  /// Is the org's scan history, newest first, each as the same summary the submission answered — files read, findings fired, tally by severity.  Strictly org-scoped: a caller only ever sees its own scans, and one with no validated org is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the page.
  Future<Response> getSecurityScansWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/security/scans';

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

  /// Is the org's scan history, newest first, each as the same summary the submission answered — files read, findings fired, tally by severity.
  ///
  /// Is the org's scan history, newest first, each as the same summary the submission answered — files read, findings fired, tally by severity.  Strictly org-scoped: a caller only ever sees its own scans, and one with no validated org is refused.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the page.
  Future<ScanList?> getSecurityScans({ int? limit, }) async {
    final response = await getSecurityScansWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScanList',) as ScanList;
    
    }
    return null;
  }

  /// Returns one scan together with every finding on it, so the detail view is one round-trip rather than a list call per scan.
  ///
  /// Returns one scan together with every finding on it, so the detail view is one round-trip rather than a list call per scan. The findings carry masked previews and fingerprints, never secrets.  Scoped to the caller's org: a scan id belonging to another org is the same 404 as an id that never existed, so a ruleset learns nothing about what exists elsewhere. No validated org is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the scan the URL names.
  Future<Response> getSecurityScansByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/security/scans/{id}'
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

  /// Returns one scan together with every finding on it, so the detail view is one round-trip rather than a list call per scan.
  ///
  /// Returns one scan together with every finding on it, so the detail view is one round-trip rather than a list call per scan. The findings carry masked previews and fingerprints, never secrets.  Scoped to the caller's org: a scan id belonging to another org is the same 404 as an id that never existed, so a ruleset learns nothing about what exists elsewhere. No validated org is refused.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the scan the URL names.
  Future<ScanDetail?> getSecurityScansById(String id,) async {
    final response = await getSecurityScansByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScanDetail',) as ScanDetail;
    
    }
    return null;
  }

  /// Runs the detection engine over a batch of files and answers 201 with the scan summary: how many files were read, how many findings fired, and the tally by severity.
  ///
  /// Runs the detection engine over a batch of files and answers 201 with the scan summary: how many files were read, how many findings fired, and the tally by severity.  THE SUBMITTED CONTENT IS NEVER STORED. It is scanned in memory; what persists is the finding — its rule, its path and line, a MASKED preview (first and last characters kept, the middle starred) and the SHA-256 fingerprint of the raw secret. The fingerprint is what makes the same secret recognisable across scans and after rotation without the secret ever being written down.  It requires a validated org, which scopes the stored scan and every finding on it; a caller with no org is refused. Bounded at 500 files and 8 MiB of total content per submission — split a larger tree across scans. One scan is one metered unit, and the scan is recorded in the audit log with its tally, never with its findings.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SubmitReq] submitReq (required):
  Future<Response> postSecurityScansWithHttpInfo(SubmitReq submitReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/security/scans';

    // ignore: prefer_final_locals
    Object? postBody = submitReq;

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

  /// Runs the detection engine over a batch of files and answers 201 with the scan summary: how many files were read, how many findings fired, and the tally by severity.
  ///
  /// Runs the detection engine over a batch of files and answers 201 with the scan summary: how many files were read, how many findings fired, and the tally by severity.  THE SUBMITTED CONTENT IS NEVER STORED. It is scanned in memory; what persists is the finding — its rule, its path and line, a MASKED preview (first and last characters kept, the middle starred) and the SHA-256 fingerprint of the raw secret. The fingerprint is what makes the same secret recognisable across scans and after rotation without the secret ever being written down.  It requires a validated org, which scopes the stored scan and every finding on it; a caller with no org is refused. Bounded at 500 files and 8 MiB of total content per submission — split a larger tree across scans. One scan is one metered unit, and the scan is recorded in the audit log with its tally, never with its findings.
  ///
  /// Parameters:
  ///
  /// * [SubmitReq] submitReq (required):
  Future<ScanView?> postSecurityScans(SubmitReq submitReq,) async {
    final response = await postSecurityScansWithHttpInfo(submitReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScanView',) as ScanView;
    
    }
    return null;
  }
}
