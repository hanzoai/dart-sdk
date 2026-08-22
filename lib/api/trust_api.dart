//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class TrustApi {
  TrustApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Removes one record from a section of your organization's trust centre.
  ///
  /// Removes one record from a section of your organization's trust centre. A record that is not there is a 404, never a silent success. A control that belongs to the deployment's own inventory is removed by a commit, not by a request.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] kind (required):
  ///   Kind is the section — profile, control, document, subprocessor, policy, faq, update or risk. Anything else is not found. The URL is the authority: a value here is bound from the path, which zip binds last.
  ///
  /// * [String] id (required):
  ///   ID is the record's id within that section. The single-valued sections (profile, risk) hold one record whatever id is named.
  Future<Response> deleteTrustByKindByIdWithHttpInfo(String kind, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trust/{kind}/{id}'
      .replaceAll('{kind}', kind)
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

  /// Removes one record from a section of your organization's trust centre.
  ///
  /// Removes one record from a section of your organization's trust centre. A record that is not there is a 404, never a silent success. A control that belongs to the deployment's own inventory is removed by a commit, not by a request.
  ///
  /// Parameters:
  ///
  /// * [String] kind (required):
  ///   Kind is the section — profile, control, document, subprocessor, policy, faq, update or risk. Anything else is not found. The URL is the authority: a value here is bound from the path, which zip binds last.
  ///
  /// * [String] id (required):
  ///   ID is the record's id within that section. The single-valued sections (profile, risk) hold one record whatever id is named.
  Future<Dropped?> deleteTrustByKindById(String kind, String id,) async {
    final response = await deleteTrustByKindByIdWithHttpInfo(kind, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Dropped',) as Dropped;
    
    }
    return null;
  }

  /// Reads YOUR organization's whole trust centre, including the addresses of your own gated documents.
  ///
  /// Reads YOUR organization's whole trust centre, including the addresses of your own gated documents. Same shape as the published door; the difference is that this one is resolved from your validated bearer and shows you your own artifacts.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTrustWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trust';

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

  /// Reads YOUR organization's whole trust centre, including the addresses of your own gated documents.
  ///
  /// Reads YOUR organization's whole trust centre, including the addresses of your own gated documents. Same shape as the published door; the difference is that this one is resolved from your validated bearer and shows you your own artifacts.
  Future<Centre?> getTrust() async {
    final response = await getTrustWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Centre',) as Centre;
    
    }
    return null;
  }

  /// Lists every control your organization publishes, with the counts.
  ///
  /// Lists every control your organization publishes, with the counts.  A control names what it asserts, the mechanism behind it, the repository and file where that mechanism is enforced, how it is verified, and the framework clauses it maps to. Status is automated, partial or absent — and an absent one still names the clause it would satisfy, which is a roadmap, while never moving a coverage number.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTrustControlsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trust/controls';

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

  /// Lists every control your organization publishes, with the counts.
  ///
  /// Lists every control your organization publishes, with the counts.  A control names what it asserts, the mechanism behind it, the repository and file where that mechanism is enforced, how it is verified, and the framework clauses it maps to. Status is automated, partial or absent — and an absent one still names the clause it would satisfy, which is a roadmap, while never moving a coverage number.
  Future<ControlList?> getTrustControls() async {
    final response = await getTrustControlsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ControlList',) as ControlList;
    
    }
    return null;
  }

  /// Reads one control by id.
  ///
  /// Reads one control by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the control's id, dotted lowercase — \"iam.pkce.s256\".
  Future<Response> getTrustControlsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trust/controls/{id}'
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

  /// Reads one control by id.
  ///
  /// Reads one control by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the control's id, dotted lowercase — \"iam.pkce.s256\".
  Future<Object?> getTrustControlsById(String id,) async {
    final response = await getTrustControlsByIdWithHttpInfo(id,);
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

  /// Reads coverage: per framework, how many clauses have an automated control behind them, how many are partial, and how many have none — each carrying the unit it is counted in, because \"12 of 20\" is not a fact until you know what the 20 are.
  ///
  /// Reads coverage: per framework, how many clauses have an automated control behind them, how many are partial, and how many have none — each carrying the unit it is counted in, because \"12 of 20\" is not a fact until you know what the 20 are.  Nothing here is a verdict. There is no boolean, and a control that only a person has read counts one rung weaker than it claims to be, because only a check that can FAIL is evidence.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTrustCoverageWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trust/coverage';

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

  /// Reads coverage: per framework, how many clauses have an automated control behind them, how many are partial, and how many have none — each carrying the unit it is counted in, because \"12 of 20\" is not a fact until you know what the 20 are.
  ///
  /// Reads coverage: per framework, how many clauses have an automated control behind them, how many are partial, and how many have none — each carrying the unit it is counted in, because \"12 of 20\" is not a fact until you know what the 20 are.  Nothing here is a verdict. There is no boolean, and a control that only a person has read counts one rung weaker than it claims to be, because only a check that can FAIL is evidence.
  Future<TrustCoverage?> getTrustCoverage() async {
    final response = await getTrustCoverageWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TrustCoverage',) as TrustCoverage;
    
    }
    return null;
  }

  /// Reads one framework clause by clause: every clause the standard publishes, what covers it, and which controls stand behind it — so a coverage number can be checked line by line rather than taken on trust.
  ///
  /// Reads one framework clause by clause: every clause the standard publishes, what covers it, and which controls stand behind it — so a coverage number can be checked line by line rather than taken on trust.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] framework (required):
  ///   Framework is the framework id — \"soc2\", \"iso27001\", \"nist80053\".
  Future<Response> getTrustCoverageByFrameworkWithHttpInfo(String framework,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trust/coverage/{framework}'
      .replaceAll('{framework}', framework);

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

  /// Reads one framework clause by clause: every clause the standard publishes, what covers it, and which controls stand behind it — so a coverage number can be checked line by line rather than taken on trust.
  ///
  /// Reads one framework clause by clause: every clause the standard publishes, what covers it, and which controls stand behind it — so a coverage number can be checked line by line rather than taken on trust.
  ///
  /// Parameters:
  ///
  /// * [String] framework (required):
  ///   Framework is the framework id — \"soc2\", \"iso27001\", \"nist80053\".
  Future<ClauseCoverage?> getTrustCoverageByFramework(String framework,) async {
    final response = await getTrustCoverageByFrameworkWithHttpInfo(framework,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClauseCoverage',) as ClauseCoverage;
    
    }
    return null;
  }

  /// Lists your organization's documents.
  ///
  /// Lists your organization's documents. Because this is your own centre, a gated artifact carries its address here; through the published door it does not.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTrustDocumentsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trust/documents';

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

  /// Lists your organization's documents.
  ///
  /// Lists your organization's documents. Because this is your own centre, a gated artifact carries its address here; through the published door it does not.
  Future<TrustDocuments?> getTrustDocuments() async {
    final response = await getTrustDocumentsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TrustDocuments',) as TrustDocuments;
    
    }
    return null;
  }

  /// Reads the audit rows that stand behind one control, over a window.
  ///
  /// Reads the audit rows that stand behind one control, over a window.  The inventory decides what evidences what: a control names the audit actions that are its trail, and this resolves the control id to those actions and reads them. So evidence cannot drift from the inventory, and it is scoped to your own organization — the query carries no organization field for a caller to fill in.  A control that nothing in the trail evidences says so plainly rather than answering an empty page, because an empty page reads like a clean quarter. A deployment with no audit store answers 501 and says the trail was not read, for the same reason.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] control:
  ///   Control is the control id whose trail to read. Required.
  ///
  /// * [String] from:
  ///   From is the inclusive lower bound, an RFC 3339 date or instant (\"2026-01-01\" or \"2026-01-01T00:00:00Z\"). Empty leaves it unbounded. A malformed bound is refused rather than silently widening the window.
  ///
  /// * [String] to:
  ///   To is the upper bound, same form and same tolerance.
  ///
  /// * [String] limit:
  ///   Limit caps the rows returned, 1..1000, default 100. It is a string because an unparseable value is refused rather than read as zero.
  Future<Response> getTrustEvidenceWithHttpInfo({ String? control, String? from, String? to, String? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trust/evidence';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (control != null) {
      queryParams.addAll(_queryParams('', 'control', control));
    }
    if (from != null) {
      queryParams.addAll(_queryParams('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_queryParams('', 'to', to));
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

  /// Reads the audit rows that stand behind one control, over a window.
  ///
  /// Reads the audit rows that stand behind one control, over a window.  The inventory decides what evidences what: a control names the audit actions that are its trail, and this resolves the control id to those actions and reads them. So evidence cannot drift from the inventory, and it is scoped to your own organization — the query carries no organization field for a caller to fill in.  A control that nothing in the trail evidences says so plainly rather than answering an empty page, because an empty page reads like a clean quarter. A deployment with no audit store answers 501 and says the trail was not read, for the same reason.
  ///
  /// Parameters:
  ///
  /// * [String] control:
  ///   Control is the control id whose trail to read. Required.
  ///
  /// * [String] from:
  ///   From is the inclusive lower bound, an RFC 3339 date or instant (\"2026-01-01\" or \"2026-01-01T00:00:00Z\"). Empty leaves it unbounded. A malformed bound is refused rather than silently widening the window.
  ///
  /// * [String] to:
  ///   To is the upper bound, same form and same tolerance.
  ///
  /// * [String] limit:
  ///   Limit caps the rows returned, 1..1000, default 100. It is a string because an unparseable value is refused rather than read as zero.
  Future<Object?> getTrustEvidence({ String? control, String? from, String? to, String? limit, }) async {
    final response = await getTrustEvidenceWithHttpInfo( control: control, from: from, to: to, limit: limit, );
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

  /// Lists your knowledge base — the questions a reviewer asks, answered once.
  ///
  /// Lists your knowledge base — the questions a reviewer asks, answered once.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTrustFaqWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trust/faq';

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

  /// Lists your knowledge base — the questions a reviewer asks, answered once.
  ///
  /// Lists your knowledge base — the questions a reviewer asks, answered once.
  Future<FaqList?> getTrustFaq() async {
    final response = await getTrustFaqWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FaqList',) as FaqList;
    
    }
    return null;
  }

  /// Lists the frameworks coverage is computed against, and how many clauses each publishes.
  ///
  /// Lists the frameworks coverage is computed against, and how many clauses each publishes. That count is the denominator of every coverage number, which is what keeps an uncovered clause visible instead of dropping out of the fraction.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTrustFrameworksWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trust/frameworks';

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

  /// Lists the frameworks coverage is computed against, and how many clauses each publishes.
  ///
  /// Lists the frameworks coverage is computed against, and how many clauses each publishes. That count is the denominator of every coverage number, which is what keeps an uncovered clause visible instead of dropping out of the fraction.
  Future<FrameworkList?> getTrustFrameworks() async {
    final response = await getTrustFrameworksWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FrameworkList',) as FrameworkList;
    
    }
    return null;
  }

  /// Lists your organization's published policies.
  ///
  /// Lists your organization's published policies.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTrustPoliciesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trust/policies';

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

  /// Lists your organization's published policies.
  ///
  /// Lists your organization's published policies.
  Future<PolicyList?> getTrustPolicies() async {
    final response = await getTrustPoliciesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PolicyList',) as PolicyList;
    
    }
    return null;
  }

  /// Reads your organization's trust-centre profile — the name, tagline and summary a visitor sees, whether the centre is published, and where to send somebody who wants a gated document.
  ///
  /// Reads your organization's trust-centre profile — the name, tagline and summary a visitor sees, whether the centre is published, and where to send somebody who wants a gated document.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTrustProfileWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trust/profile';

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

  /// Reads your organization's trust-centre profile — the name, tagline and summary a visitor sees, whether the centre is published, and where to send somebody who wants a gated document.
  ///
  /// Reads your organization's trust-centre profile — the name, tagline and summary a visitor sees, whether the centre is published, and where to send somebody who wants a gated document.
  Future<Object?> getTrustProfile() async {
    final response = await getTrustProfileWithHttpInfo();
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

  /// Reads a published trust centre — the whole thing in one answer: the organization's profile, its control inventory, coverage computed against each framework's whole published clause list, its documents, subprocessors, policies, knowledge base, updates and risk profile.
  ///
  /// Reads a published trust centre — the whole thing in one answer: the organization's profile, its control inventory, coverage computed against each framework's whole published clause list, its documents, subprocessors, policies, knowledge base, updates and risk profile.  This is the PUBLIC door and needs no credential, because a published trust centre is a public document. It answers only for an organization that has published one — an organization that has not is not found rather than empty, since an empty centre and a centre nobody meant to show read the same and are not the same thing.  A gated document appears here with its title, its type and its date and NO address: the listing says the artifact exists and that reading it takes a grant. Nothing an independent auditor signed is ever released through this door.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///   Org is the organization's slug — the name in its address.
  Future<Response> getTrustPublishedByOrgWithHttpInfo(String org,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trust/published/{org}'
      .replaceAll('{org}', org);

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

  /// Reads a published trust centre — the whole thing in one answer: the organization's profile, its control inventory, coverage computed against each framework's whole published clause list, its documents, subprocessors, policies, knowledge base, updates and risk profile.
  ///
  /// Reads a published trust centre — the whole thing in one answer: the organization's profile, its control inventory, coverage computed against each framework's whole published clause list, its documents, subprocessors, policies, knowledge base, updates and risk profile.  This is the PUBLIC door and needs no credential, because a published trust centre is a public document. It answers only for an organization that has published one — an organization that has not is not found rather than empty, since an empty centre and a centre nobody meant to show read the same and are not the same thing.  A gated document appears here with its title, its type and its date and NO address: the listing says the artifact exists and that reading it takes a grant. Nothing an independent auditor signed is ever released through this door.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///   Org is the organization's slug — the name in its address.
  Future<Centre?> getTrustPublishedByOrg(String org,) async {
    final response = await getTrustPublishedByOrgWithHttpInfo(org,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Centre',) as Centre;
    
    }
    return null;
  }

  /// Reads your risk profile — the label and value pairs describing what your organization handles and how.
  ///
  /// Reads your risk profile — the label and value pairs describing what your organization handles and how.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTrustRiskWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trust/risk';

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

  /// Reads your risk profile — the label and value pairs describing what your organization handles and how.
  ///
  /// Reads your risk profile — the label and value pairs describing what your organization handles and how.
  Future<Object?> getTrustRisk() async {
    final response = await getTrustRiskWithHttpInfo();
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

  /// Lists the third parties your organization sends data to, each naming what it is for.
  ///
  /// Lists the third parties your organization sends data to, each naming what it is for.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTrustSubprocessorsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trust/subprocessors';

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

  /// Lists the third parties your organization sends data to, each naming what it is for.
  ///
  /// Lists the third parties your organization sends data to, each naming what it is for.
  Future<SubprocessorList?> getTrustSubprocessors() async {
    final response = await getTrustSubprocessorsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SubprocessorList',) as SubprocessorList;
    
    }
    return null;
  }

  /// Lists your trust-centre updates, newest as you ordered them.
  ///
  /// Lists your trust-centre updates, newest as you ordered them.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTrustUpdatesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trust/updates';

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

  /// Lists your trust-centre updates, newest as you ordered them.
  ///
  /// Lists your trust-centre updates, newest as you ordered them.
  Future<UpdateList?> getTrustUpdates() async {
    final response = await getTrustUpdatesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UpdateList',) as UpdateList;
    
    }
    return null;
  }

  /// Writes one record into a section of YOUR organization's trust centre — profile, control, document, subprocessor, policy, faq, update or risk.
  ///
  /// Writes one record into a section of YOUR organization's trust centre — profile, control, document, subprocessor, policy, faq, update or risk.  A control written here is held to exactly the rule a control committed to the deployment's own inventory is held to, by the same validator: its prose may not claim a certificate and may not name a framework (a framework belongs in the mappings, where it arrives attached to a number), anything short of automated must say what is missing, and a mapping to a clause no framework declares is refused rather than scored as nothing.  A document defaults to GATED. An artifact an independent auditor signed — a SOC 2 report, an ISO certificate, a penetration test, an auditor letter — cannot be made public at all; it is released through a grant. A self-assessment can, because the organization is the one attesting it.  The deployment's OWN control inventory is governed in git and is not writable here: naming one of its ids is a conflict, not an overwrite.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] kind (required):
  ///   Kind is the section being written. The URL is the authority.
  ///
  /// * [String] id (required):
  ///   ID is the record's id. Omit it on a create and one is minted; the single-valued sections (profile, risk) hold one record whatever is named.
  ///
  /// * [SectionWrite] sectionWrite (required):
  Future<Response> putTrustByKindByIdWithHttpInfo(String kind, String id, SectionWrite sectionWrite,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trust/{kind}/{id}'
      .replaceAll('{kind}', kind)
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = sectionWrite;

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

  /// Writes one record into a section of YOUR organization's trust centre — profile, control, document, subprocessor, policy, faq, update or risk.
  ///
  /// Writes one record into a section of YOUR organization's trust centre — profile, control, document, subprocessor, policy, faq, update or risk.  A control written here is held to exactly the rule a control committed to the deployment's own inventory is held to, by the same validator: its prose may not claim a certificate and may not name a framework (a framework belongs in the mappings, where it arrives attached to a number), anything short of automated must say what is missing, and a mapping to a clause no framework declares is refused rather than scored as nothing.  A document defaults to GATED. An artifact an independent auditor signed — a SOC 2 report, an ISO certificate, a penetration test, an auditor letter — cannot be made public at all; it is released through a grant. A self-assessment can, because the organization is the one attesting it.  The deployment's OWN control inventory is governed in git and is not writable here: naming one of its ids is a conflict, not an overwrite.
  ///
  /// Parameters:
  ///
  /// * [String] kind (required):
  ///   Kind is the section being written. The URL is the authority.
  ///
  /// * [String] id (required):
  ///   ID is the record's id. Omit it on a create and one is minted; the single-valued sections (profile, risk) hold one record whatever is named.
  ///
  /// * [SectionWrite] sectionWrite (required):
  Future<Written?> putTrustByKindById(String kind, String id, SectionWrite sectionWrite,) async {
    final response = await putTrustByKindByIdWithHttpInfo(kind, id, sectionWrite,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Written',) as Written;
    
    }
    return null;
  }
}
