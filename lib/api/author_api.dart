//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class AuthorApi {
  AuthorApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns the caller's author-program dashboard: enrolment status, linked forge login, verified repositories and owner-wide claims, recorded deploys, accrued / pending / paid royalty, and the payout history.
  ///
  /// Returns the caller's author-program dashboard: enrolment status, linked forge login, verified repositories and owner-wide claims, recorded deploys, accrued / pending / paid royalty, and the payout history.  It answers ONE OF TWO SHAPES from this address. An org that has never connected gets {\"isAuthor\": false, \"defaultShareBps\", \"badgeBase\"} — an honest \"not enrolled\" rather than a 404, so the console can render the connect form. An enrolled org gets the dashboard: isAuthor, id, status, githubLogin, verified, verifyCode, verifyFile, verifySnippet, shareBps, badgeBase, repos, orgs, deploys, accruedCents, pendingCents, paidCents, payouts and ledger.  For an APPROVED author this read ALSO runs the accrual sweep opportunistically, so the dashboard is self-updating. That is why the royalty AUDIT lives at its own address: an audit must not move the money it is auditing.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAuthorWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/author';

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

  /// Returns the caller's author-program dashboard: enrolment status, linked forge login, verified repositories and owner-wide claims, recorded deploys, accrued / pending / paid royalty, and the payout history.
  ///
  /// Returns the caller's author-program dashboard: enrolment status, linked forge login, verified repositories and owner-wide claims, recorded deploys, accrued / pending / paid royalty, and the payout history.  It answers ONE OF TWO SHAPES from this address. An org that has never connected gets {\"isAuthor\": false, \"defaultShareBps\", \"badgeBase\"} — an honest \"not enrolled\" rather than a 404, so the console can render the connect form. An enrolled org gets the dashboard: isAuthor, id, status, githubLogin, verified, verifyCode, verifyFile, verifySnippet, shareBps, badgeBase, repos, orgs, deploys, accruedCents, pendingCents, paidCents, payouts and ledger.  For an APPROVED author this read ALSO runs the accrual sweep opportunistically, so the dashboard is self-updating. That is why the royalty AUDIT lives at its own address: an audit must not move the money it is auditing.
  Future<Map<String, Object>?> getAuthor() async {
    final response = await getAuthorWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Returns the AUDIT TRAIL behind the caller's own royalty: every ledger row with the spend it was computed from, the share applied at the time, the platform's matching half, whether each row satisfies the formula, and the attribution edges that already existed when the row was written.
  ///
  /// Returns the AUDIT TRAIL behind the caller's own royalty: every ledger row with the spend it was computed from, the share applied at the time, the platform's matching half, whether each row satisfies the formula, and the attribution edges that already existed when the row was written.  It answers ONE OF TWO SHAPES. An org that has never connected gets {\"isAuthor\": false, \"defaultShareBps\"} — never a 404, which would answer \"is this org an author?\" for anyone who asked. An enrolled org gets the basis: isAuthor, id, status, asOf, shareBps, platformShareBps, defaultShareBps, shareSource, settlesTo, method (the formula, the rate card and the sizing), ledger, reconciliation, window, and period when one was requested.  This read NEVER sweeps, and that is the point of it being a separate address from the dashboard: an audit must not move the money it is auditing, so calling it N times leaves the balances and the ledger byte-identical.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] period:
  ///   Period is the UTC accrual month, YYYY-MM. Empty means every period; any other shape is refused with 400, because the period is echoed back and used as a SQL filter and is only ever accepted in the one form the accrual latch mints.
  Future<Response> getAuthorBasisWithHttpInfo({ String? period, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/author/basis';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (period != null) {
      queryParams.addAll(_queryParams('', 'period', period));
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

  /// Returns the AUDIT TRAIL behind the caller's own royalty: every ledger row with the spend it was computed from, the share applied at the time, the platform's matching half, whether each row satisfies the formula, and the attribution edges that already existed when the row was written.
  ///
  /// Returns the AUDIT TRAIL behind the caller's own royalty: every ledger row with the spend it was computed from, the share applied at the time, the platform's matching half, whether each row satisfies the formula, and the attribution edges that already existed when the row was written.  It answers ONE OF TWO SHAPES. An org that has never connected gets {\"isAuthor\": false, \"defaultShareBps\"} — never a 404, which would answer \"is this org an author?\" for anyone who asked. An enrolled org gets the basis: isAuthor, id, status, asOf, shareBps, platformShareBps, defaultShareBps, shareSource, settlesTo, method (the formula, the rate card and the sizing), ledger, reconciliation, window, and period when one was requested.  This read NEVER sweeps, and that is the point of it being a separate address from the dashboard: an audit must not move the money it is auditing, so calling it N times leaves the balances and the ledger byte-identical.
  ///
  /// Parameters:
  ///
  /// * [String] period:
  ///   Period is the UTC accrual month, YYYY-MM. Empty means every period; any other shape is refused with 400, because the period is echoed back and used as a SQL filter and is only ever accepted in the one form the accrual latch mints.
  Future<Map<String, Object>?> getAuthorBasis({ String? period, }) async {
    final response = await getAuthorBasisWithHttpInfo( period: period, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Enrols the caller's org in the author program at status \"connected\" and returns its enrolment, including the verify code the file method needs.
  ///
  /// Enrols the caller's org in the author program at status \"connected\" and returns its enrolment, including the verify code the file method needs. It is IDEMPOTENT: a second call returns the same enrolment rather than a conflict.  The forge login is taken from IAM's LINKED account for the provider when there is one — that is identity proof, not a claim — and only otherwise from the login in the body, which then has to be proven per repository. Connecting does not admit an org to earning: a platform reviewer approves that separately.  Answers 201 when it enrolled the org and 200 when it found an existing enrolment.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ConnectRequest] connectRequest (required):
  Future<Response> postAuthorConnectWithHttpInfo(ConnectRequest connectRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/author/connect';

    // ignore: prefer_final_locals
    Object? postBody = connectRequest;

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

  /// Enrols the caller's org in the author program at status \"connected\" and returns its enrolment, including the verify code the file method needs.
  ///
  /// Enrols the caller's org in the author program at status \"connected\" and returns its enrolment, including the verify code the file method needs. It is IDEMPOTENT: a second call returns the same enrolment rather than a conflict.  The forge login is taken from IAM's LINKED account for the provider when there is one — that is identity proof, not a claim — and only otherwise from the login in the body, which then has to be proven per repository. Connecting does not admit an org to earning: a platform reviewer approves that separately.  Answers 201 when it enrolled the org and 200 when it found an existing enrolment.
  ///
  /// Parameters:
  ///
  /// * [ConnectRequest] connectRequest (required):
  Future<Enrolment?> postAuthorConnect(ConnectRequest connectRequest,) async {
    final response = await postAuthorConnectWithHttpInfo(connectRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Enrolment',) as Enrolment;
    
    }
    return null;
  }

  /// Records that the caller's org deployed a project built from a source repository, which is the edge that makes an author's work earn royalty.
  ///
  /// Records that the caller's org deployed a project built from a source repository, which is the edge that makes an author's work earn royalty.  It is deliberately NOT an error for a deploy to attribute to nobody: a project built from no repository, or from one no author has verified, answers {\"recorded\": false, \"reason\"} so a deploy pipeline can fire this on every deploy without branching. Attribution resolves per-repository first, then owner-wide, so a repository with its own claim always earns for its own author.  A deploy of a Hanzo-maintained template attributes to the platform treasury, and a self-deploy (the author's own org deploying its own repository) is recorded for provenance but excluded from accrual. The edge is idempotent per repository+project+org.  Answers 201 when it recorded a new edge and 200 otherwise.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DeployRequest] deployRequest (required):
  Future<Response> postAuthorDeploysRecordWithHttpInfo(DeployRequest deployRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/author/deploys/record';

    // ignore: prefer_final_locals
    Object? postBody = deployRequest;

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

  /// Records that the caller's org deployed a project built from a source repository, which is the edge that makes an author's work earn royalty.
  ///
  /// Records that the caller's org deployed a project built from a source repository, which is the edge that makes an author's work earn royalty.  It is deliberately NOT an error for a deploy to attribute to nobody: a project built from no repository, or from one no author has verified, answers {\"recorded\": false, \"reason\"} so a deploy pipeline can fire this on every deploy without branching. Attribution resolves per-repository first, then owner-wide, so a repository with its own claim always earns for its own author.  A deploy of a Hanzo-maintained template attributes to the platform treasury, and a self-deploy (the author's own org deploying its own repository) is recorded for provenance but excluded from accrual. The edge is idempotent per repository+project+org.  Answers 201 when it recorded a new edge and 200 otherwise.
  ///
  /// Parameters:
  ///
  /// * [DeployRequest] deployRequest (required):
  Future<DeployRecord?> postAuthorDeploysRecord(DeployRequest deployRequest,) async {
    final response = await postAuthorDeploysRecordWithHttpInfo(deployRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeployRecord',) as DeployRecord;
    
    }
    return null;
  }

  /// Proves that the caller owns a repository — or a whole OWNER — and records the claim, which is what makes deploys of that code earn royalty.
  ///
  /// Proves that the caller owns a repository — or a whole OWNER — and records the claim, which is what makes deploys of that code earn royalty.  Ownership is proven the SAME two ways in both cases, tried in order: an IAM-linked forge token with admin or push permission, or a hanzo.json on the default branch carrying the author's verify code. Claiming an OWNER proves it against that owner's \".github\" control repository, and is exactly as strong as a per-repository claim — an owner the caller cannot prove is refused with 422, never assumed.  A per-repository claim wins over an owner-wide one, so a specifically-claimed repository always earns for its own author. A repository another author has already verified is a 409. The org must have connected first.  Answers 201 when it recorded a new claim and 200 when the claim already existed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [VerifyRequest] verifyRequest (required):
  Future<Response> postAuthorReposVerifyWithHttpInfo(VerifyRequest verifyRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/author/repos/verify';

    // ignore: prefer_final_locals
    Object? postBody = verifyRequest;

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

  /// Proves that the caller owns a repository — or a whole OWNER — and records the claim, which is what makes deploys of that code earn royalty.
  ///
  /// Proves that the caller owns a repository — or a whole OWNER — and records the claim, which is what makes deploys of that code earn royalty.  Ownership is proven the SAME two ways in both cases, tried in order: an IAM-linked forge token with admin or push permission, or a hanzo.json on the default branch carrying the author's verify code. Claiming an OWNER proves it against that owner's \".github\" control repository, and is exactly as strong as a per-repository claim — an owner the caller cannot prove is refused with 422, never assumed.  A per-repository claim wins over an owner-wide one, so a specifically-claimed repository always earns for its own author. A repository another author has already verified is a 409. The org must have connected first.  Answers 201 when it recorded a new claim and 200 when the claim already existed.
  ///
  /// Parameters:
  ///
  /// * [VerifyRequest] verifyRequest (required):
  Future<Claim?> postAuthorReposVerify(VerifyRequest verifyRequest,) async {
    final response = await postAuthorReposVerifyWithHttpInfo(verifyRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Claim',) as Claim;
    
    }
    return null;
  }
}
