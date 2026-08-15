//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class ExperimentsApi {
  ExperimentsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Is every experiment in the caller's org, with its variants, status and decision, ordered by project then id.
  ///
  /// Is every experiment in the caller's org, with its variants, status and decision, ordered by project then id.  Scoped to the org resolved from the validated principal — a distinct org is a distinct physical store, so no query here can reach another tenant's rows — and further narrowed to the caller's project scope when the credential carries one. A principal with NO project scope sees the org's experiments across all of its projects, which is the answer a reader most often expects to be filtered and is not.  Requires a validated principal; refuses without one rather than answering an empty list.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getExperimentsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/experiments';

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

  /// Is every experiment in the caller's org, with its variants, status and decision, ordered by project then id.
  ///
  /// Is every experiment in the caller's org, with its variants, status and decision, ordered by project then id.  Scoped to the org resolved from the validated principal — a distinct org is a distinct physical store, so no query here can reach another tenant's rows — and further narrowed to the caller's project scope when the credential carries one. A principal with NO project scope sees the org's experiments across all of its projects, which is the answer a reader most often expects to be filtered and is not.  Requires a validated principal; refuses without one rather than answering an empty list.
  Future<ExperimentList?> getExperiments() async {
    final response = await getExperimentsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExperimentList',) as ExperimentList;
    
    }
    return null;
  }

  /// Is one experiment's definition and lifecycle: variants, weights, control arm, status and winner.
  ///
  /// Is one experiment's definition and lifecycle: variants, weights, control arm, status and winner.  It reads the registry row only — the definition and the decision, never live measurements. Assignment lives in the flags plane and outcomes in analytics; this is the value that names both.  Scoped to the caller's org and project from the validated principal, so another tenant's experiment of the same id is simply not found. An id that is not a legal slug is answered the same way, without a store read — the shape check and the existence check are one answer, so neither leaks the other.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the experiment the URL names.
  Future<Response> getExperimentsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/experiments/{id}'
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

  /// Is one experiment's definition and lifecycle: variants, weights, control arm, status and winner.
  ///
  /// Is one experiment's definition and lifecycle: variants, weights, control arm, status and winner.  It reads the registry row only — the definition and the decision, never live measurements. Assignment lives in the flags plane and outcomes in analytics; this is the value that names both.  Scoped to the caller's org and project from the validated principal, so another tenant's experiment of the same id is simply not found. An id that is not a legal slug is answered the same way, without a store read — the shape check and the existence check are one answer, so neither leaks the other.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the experiment the URL names.
  Future<Trial?> getExperimentsById(String id,) async {
    final response = await getExperimentsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Trial',) as Trial;
    
    }
    return null;
  }

  /// Is the variant one subject is bucketed into, and the payload that variant carries.
  ///
  /// Is the variant one subject is bucketed into, and the payload that variant carries.  The bucketing is a deterministic hash of the subject, so the same subject gets the same arm on every call for as long as the flag definition is unchanged — and this is a pure READ: it records nothing. In particular it does NOT record an exposure. The caller's SDK must emit the experiment's exposure event itself, or the analysis has an empty denominator and every arm measures zero.  An empty variant with on false is not an error — it means the flag returned nothing for this subject, so the subject is not enrolled. A flags engine that is unavailable refuses rather than defaulting to an arm. Requires a validated principal, and the experiment must exist in the caller's org and project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the experiment the URL names.
  ///
  /// * [String] subject (required):
  ///   Subject is the unit to bucket — a user, org, session or audience key, matching the experiment's subjectKind.
  ///
  /// * [String] props:
  ///   Props is a JSON object of person properties for targeting. A value that is not valid JSON is dropped rather than refused, so a malformed one changes the bucketing without saying so.
  Future<Response> getExperimentsByIdAssignWithHttpInfo(String id, String subject, { String? props, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/experiments/{id}/assign'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'subject', subject));
    if (props != null) {
      queryParams.addAll(_queryParams('', 'props', props));
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

  /// Is the variant one subject is bucketed into, and the payload that variant carries.
  ///
  /// Is the variant one subject is bucketed into, and the payload that variant carries.  The bucketing is a deterministic hash of the subject, so the same subject gets the same arm on every call for as long as the flag definition is unchanged — and this is a pure READ: it records nothing. In particular it does NOT record an exposure. The caller's SDK must emit the experiment's exposure event itself, or the analysis has an empty denominator and every arm measures zero.  An empty variant with on false is not an error — it means the flag returned nothing for this subject, so the subject is not enrolled. A flags engine that is unavailable refuses rather than defaulting to an arm. Requires a validated principal, and the experiment must exist in the caller's org and project.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the experiment the URL names.
  ///
  /// * [String] subject (required):
  ///   Subject is the unit to bucket — a user, org, session or audience key, matching the experiment's subjectKind.
  ///
  /// * [String] props:
  ///   Props is a JSON object of person properties for targeting. A value that is not valid JSON is dropped rather than refused, so a malformed one changes the bucketing without saying so.
  Future<Assignment?> getExperimentsByIdAssign(String id, String subject, { String? props, }) async {
    final response = await getExperimentsByIdAssignWithHttpInfo(id, subject,  props: props, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Assignment',) as Assignment;
    
    }
    return null;
  }

  /// Is whether the experiments subsystem is mounted and serving in this process.
  ///
  /// Is whether the experiments subsystem is mounted and serving in this process.  It answers unconditionally. It proves exactly one thing — that this binary registered the experiments routes and is dispatching them — and deliberately no more: it reads no principal, opens no per-org registry, and touches neither the flags engine nor the analytics plane, so a 200 here says nothing about whether a given tenant's store will open or whether an analysis can run. It is the only route on this surface that needs no org.  The static path is registered ahead of the /:id read, so it always wins the first-match scan. \"health\" is a legal experiment id, which means an experiment created under that id can never be fetched by id — pick another.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getExperimentsHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/experiments/health';

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

  /// Is whether the experiments subsystem is mounted and serving in this process.
  ///
  /// Is whether the experiments subsystem is mounted and serving in this process.  It answers unconditionally. It proves exactly one thing — that this binary registered the experiments routes and is dispatching them — and deliberately no more: it reads no principal, opens no per-org registry, and touches neither the flags engine nor the analytics plane, so a 200 here says nothing about whether a given tenant's store will open or whether an analysis can run. It is the only route on this surface that needs no org.  The static path is registered ahead of the /:id read, so it always wins the first-match scan. \"health\" is a legal experiment id, which means an experiment created under that id can never be fetched by id — pick another.
  Future<Health?> getExperimentsHealth() async {
    final response = await getExperimentsHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Health',) as Health;
    
    }
    return null;
  }

  /// Registers a controlled experiment AND puts its assignment flag live, in that order, so the arms start bucketing subjects the moment this returns 201 — the flag is created active at 100% rollout, with each variant weighted as declared.
  ///
  /// Registers a controlled experiment AND puts its assignment flag live, in that order, so the arms start bucketing subjects the moment this returns 201 — the flag is created active at 100% rollout, with each variant weighted as declared. There is no separate start call; creating IS starting.  A variant carries an opaque payload this primitive never interprets: a feature config, an ad-creative id, a subject line, a model id.  Requires a validated principal, and refuses without one. The org and project are taken from that principal and the creator is stamped from the credential — none of the three is a body field, so an experiment cannot be filed against another tenant. An id already used in this project is a conflict, never a silent overwrite: re-creating would stomp the assignment flag of a run in progress.  It fails closed on the flag write. An experiment whose assignment flag does not exist would assign nobody, so if that write fails nothing is registered.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateBody] createBody (required):
  Future<Response> postExperimentsWithHttpInfo(CreateBody createBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/experiments';

    // ignore: prefer_final_locals
    Object? postBody = createBody;

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

  /// Registers a controlled experiment AND puts its assignment flag live, in that order, so the arms start bucketing subjects the moment this returns 201 — the flag is created active at 100% rollout, with each variant weighted as declared.
  ///
  /// Registers a controlled experiment AND puts its assignment flag live, in that order, so the arms start bucketing subjects the moment this returns 201 — the flag is created active at 100% rollout, with each variant weighted as declared. There is no separate start call; creating IS starting.  A variant carries an opaque payload this primitive never interprets: a feature config, an ad-creative id, a subject line, a model id.  Requires a validated principal, and refuses without one. The org and project are taken from that principal and the creator is stamped from the credential — none of the three is a body field, so an experiment cannot be filed against another tenant. An id already used in this project is a conflict, never a silent overwrite: re-creating would stomp the assignment flag of a run in progress.  It fails closed on the flag write. An experiment whose assignment flag does not exist would assign nobody, so if that write fails nothing is registered.
  ///
  /// Parameters:
  ///
  /// * [CreateBody] createBody (required):
  Future<Trial?> postExperiments(CreateBody createBody,) async {
    final response = await postExperimentsWithHttpInfo(createBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Trial',) as Trial;
    
    }
    return null;
  }

  /// Is per-variant conversion, lift and statistical significance against the control arm.
  ///
  /// Is per-variant conversion, lift and statistical significance against the control arm.  It reads per-subject outcomes from the analytics plane over a window, folds them into per-variant samples, and returns each arm's exposed count, conversions, rate, lift versus control, two-proportion z, two-tailed p-value and whether it clears alpha. Arms with no data still appear with zero exposed, so the read is complete over the experiment's declared arms; the control arm sorts first. The pooled-variance estimator is used and the p-value is exact; a degenerate comparison (an empty arm, no variance) answers z 0 and p 1 — not significant, never an error.  Only EXPOSED subjects are counted, and each is joined to its arm by re-evaluating the assignment flag AT ANALYSIS TIME — not from what was in force during the window. That is the one rule to get right: analyzing an experiment after its winner has been promoted re-buckets every subject into the promoted arm, collapsing the control to zero exposed and making the result meaningless. Read the analysis before deciding. A subject the flag cannot place is dropped rather than allowed to poison the fold.  The winner in the response is ADVISORY — the significant, control-beating arm with the highest rate, or empty when inconclusive. It promotes nothing; the decision is a separate, explicit act.  Every plane read is scoped to the caller's org. Per-variant samples are also written to the research evidence plane as immutable ab rows, best-effort: the analysis is still returned if that write fails, because the samples are recomputable, and the failure is logged rather than swallowed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the experiment the URL names.
  ///
  /// * [AnalyzeQuery] analyzeQuery (required):
  Future<Response> postExperimentsByIdAnalyzeWithHttpInfo(String id, AnalyzeQuery analyzeQuery,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/experiments/{id}/analyze'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = analyzeQuery;

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

  /// Is per-variant conversion, lift and statistical significance against the control arm.
  ///
  /// Is per-variant conversion, lift and statistical significance against the control arm.  It reads per-subject outcomes from the analytics plane over a window, folds them into per-variant samples, and returns each arm's exposed count, conversions, rate, lift versus control, two-proportion z, two-tailed p-value and whether it clears alpha. Arms with no data still appear with zero exposed, so the read is complete over the experiment's declared arms; the control arm sorts first. The pooled-variance estimator is used and the p-value is exact; a degenerate comparison (an empty arm, no variance) answers z 0 and p 1 — not significant, never an error.  Only EXPOSED subjects are counted, and each is joined to its arm by re-evaluating the assignment flag AT ANALYSIS TIME — not from what was in force during the window. That is the one rule to get right: analyzing an experiment after its winner has been promoted re-buckets every subject into the promoted arm, collapsing the control to zero exposed and making the result meaningless. Read the analysis before deciding. A subject the flag cannot place is dropped rather than allowed to poison the fold.  The winner in the response is ADVISORY — the significant, control-beating arm with the highest rate, or empty when inconclusive. It promotes nothing; the decision is a separate, explicit act.  Every plane read is scoped to the caller's org. Per-variant samples are also written to the research evidence plane as immutable ab rows, best-effort: the analysis is still returned if that write fails, because the samples are recomputable, and the failure is logged rather than swallowed.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the experiment the URL names.
  ///
  /// * [AnalyzeQuery] analyzeQuery (required):
  Future<Analysis?> postExperimentsByIdAnalyze(String id, AnalyzeQuery analyzeQuery,) async {
    final response = await postExperimentsByIdAnalyzeWithHttpInfo(id, analyzeQuery,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Analysis',) as Analysis;
    
    }
    return null;
  }

  /// Promotes one variant to the whole rollout and records who decided.
  ///
  /// Promotes one variant to the whole rollout and records who decided.  It rewrites the assignment flag so the named winner serves 100% of the rollout and every other arm 0%, preserving the flag's targeting groups and payloads, then stamps the experiment decided with the winner, the deciding credential and the time. This is a production behaviour change that takes effect immediately for every subject the flag evaluates.  It requires an ORG ADMIN of the caller's own org — a stricter gate than the rest of this surface, matching the flags write plane, because promoting is a flag write. The admin check runs AFTER the experiment is found, so a caller from another tenant is answered not-found rather than forbidden and learns nothing about what exists.  An experiment whose assignment flag has gone missing is a conflict rather than a silent no-op — there is nothing to promote.  Deciding is NOT terminal. A second call re-promotes a different variant and re-stamps the row; the status stays decided and the previous winner is overwritten with no record that it was ever chosen. Nothing here reverts the flag to its original weights either, so an experiment cannot be un-decided through this route — restoring a split means writing the flag definition back through the flags plane.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [DecideBody] decideBody (required):
  Future<Response> postExperimentsByIdDecideWithHttpInfo(String id, DecideBody decideBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/experiments/{id}/decide'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = decideBody;

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

  /// Promotes one variant to the whole rollout and records who decided.
  ///
  /// Promotes one variant to the whole rollout and records who decided.  It rewrites the assignment flag so the named winner serves 100% of the rollout and every other arm 0%, preserving the flag's targeting groups and payloads, then stamps the experiment decided with the winner, the deciding credential and the time. This is a production behaviour change that takes effect immediately for every subject the flag evaluates.  It requires an ORG ADMIN of the caller's own org — a stricter gate than the rest of this surface, matching the flags write plane, because promoting is a flag write. The admin check runs AFTER the experiment is found, so a caller from another tenant is answered not-found rather than forbidden and learns nothing about what exists.  An experiment whose assignment flag has gone missing is a conflict rather than a silent no-op — there is nothing to promote.  Deciding is NOT terminal. A second call re-promotes a different variant and re-stamps the row; the status stays decided and the previous winner is overwritten with no record that it was ever chosen. Nothing here reverts the flag to its original weights either, so an experiment cannot be un-decided through this route — restoring a split means writing the flag definition back through the flags plane.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [DecideBody] decideBody (required):
  Future<Trial?> postExperimentsByIdDecide(String id, DecideBody decideBody,) async {
    final response = await postExperimentsByIdDecideWithHttpInfo(id, decideBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Trial',) as Trial;
    
    }
    return null;
  }
}
