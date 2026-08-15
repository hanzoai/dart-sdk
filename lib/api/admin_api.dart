//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class AdminApi {
  AdminApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Is the fleet AI board: LLM generations over gen_ai spans (count, cost, avg/p95 latency, per-model), per-model usage from the live cloud_usage ledger, and the eval plane (traces, scores, score names, runs, and the average-score trend).
  ///
  /// Is the fleet AI board: LLM generations over gen_ai spans (count, cost, avg/p95 latency, per-model), per-model usage from the live cloud_usage ledger, and the eval plane (traces, scores, score names, runs, and the average-score trend).  Every signal degrades INDEPENDENTLY — a table that is absent or errors contributes its zero value and the read still succeeds. Generation latency is a SEPARATE query from generations and cost on purpose: a duration/attribute mismatch there must not zero the two numbers that did read.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range is the lower time bound: 24h, 7d or 30d. Anything else reads as the board's own default.
  Future<Response> adminAIMetricsWithHttpInfo({ String? range, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/aimetrics';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (range != null) {
      queryParams.addAll(_queryParams('', 'range', range));
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

  /// Is the fleet AI board: LLM generations over gen_ai spans (count, cost, avg/p95 latency, per-model), per-model usage from the live cloud_usage ledger, and the eval plane (traces, scores, score names, runs, and the average-score trend).
  ///
  /// Is the fleet AI board: LLM generations over gen_ai spans (count, cost, avg/p95 latency, per-model), per-model usage from the live cloud_usage ledger, and the eval plane (traces, scores, score names, runs, and the average-score trend).  Every signal degrades INDEPENDENTLY — a table that is absent or errors contributes its zero value and the read still succeeds. Generation latency is a SEPARATE query from generations and cost on purpose: a duration/attribute mismatch there must not zero the two numbers that did read.
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range is the lower time bound: 24h, 7d or 30d. Anything else reads as the board's own default.
  Future<AimetricsOut?> adminAIMetrics({ String? range, }) async {
    final response = await adminAIMetricsWithHttpInfo( range: range, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AimetricsOut',) as AimetricsOut;
    
    }
    return null;
  }

  /// Is the SaaS product-analytics board over the caller's tenant window: active customers, new and churned, retention, MRR, ARPU, the usage trend and the top customers by spend — every number folded from the commerce ledger, not sampled.
  ///
  /// Is the SaaS product-analytics board over the caller's tenant window: active customers, new and churned, retention, MRR, ARPU, the usage trend and the top customers by spend — every number folded from the commerce ledger, not sampled.  The window is the caller's, not the fleet's: a SuperAdmin gets every org, a white-label admin only their own subtree (core.ScopedOrgs, the one scope predicate).  sources[] carries each upstream's freshness so a partial read is VISIBLE rather than silently low: a ledger that answered for only some orgs marks commerce-ledger degraded instead of publishing an undercount as healthy.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range is the lower time bound: 24h, 7d or 30d. Anything else reads as the board's own default.
  Future<Response> adminAnalyticsWithHttpInfo({ String? range, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/analytics';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (range != null) {
      queryParams.addAll(_queryParams('', 'range', range));
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

  /// Is the SaaS product-analytics board over the caller's tenant window: active customers, new and churned, retention, MRR, ARPU, the usage trend and the top customers by spend — every number folded from the commerce ledger, not sampled.
  ///
  /// Is the SaaS product-analytics board over the caller's tenant window: active customers, new and churned, retention, MRR, ARPU, the usage trend and the top customers by spend — every number folded from the commerce ledger, not sampled.  The window is the caller's, not the fleet's: a SuperAdmin gets every org, a white-label admin only their own subtree (core.ScopedOrgs, the one scope predicate).  sources[] carries each upstream's freshness so a partial read is VISIBLE rather than silently low: a ledger that answered for only some orgs marks commerce-ledger degraded instead of publishing an undercount as healthy.
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range is the lower time bound: 24h, 7d or 30d. Anything else reads as the board's own default.
  Future<AnalyticsOut?> adminAnalytics({ String? range, }) async {
    final response = await adminAnalyticsWithHttpInfo( range: range, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AnalyticsOut',) as AnalyticsOut;
    
    }
    return null;
  }

  /// Lists IAM applications for one owner org, forwarded VERBATIM from IAM's get-applications.
  ///
  /// Lists IAM applications for one owner org, forwarded VERBATIM from IAM's get-applications. These are the platform's OIDC clients — the console reads clientId off each row.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  ///   Owner is the org whose rows to read. Defaults to the admin org, which owns the platform's roles and applications.
  ///
  /// * [String] p:
  ///   Page is the 1-based page number. Forwarded only when set — IAM applies its own default otherwise.
  ///
  /// * [String] pageSize:
  ///   PageSize is rows per page. Forwarded only when set.
  Future<Response> adminApplicationsWithHttpInfo({ String? owner, String? p, String? pageSize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/applications';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (owner != null) {
      queryParams.addAll(_queryParams('', 'owner', owner));
    }
    if (p != null) {
      queryParams.addAll(_queryParams('', 'p', p));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
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

  /// Lists IAM applications for one owner org, forwarded VERBATIM from IAM's get-applications.
  ///
  /// Lists IAM applications for one owner org, forwarded VERBATIM from IAM's get-applications. These are the platform's OIDC clients — the console reads clientId off each row.
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  ///   Owner is the org whose rows to read. Defaults to the admin org, which owns the platform's roles and applications.
  ///
  /// * [String] p:
  ///   Page is the 1-based page number. Forwarded only when set — IAM applies its own default otherwise.
  ///
  /// * [String] pageSize:
  ///   PageSize is rows per page. Forwarded only when set.
  Future<IamRowsOut?> adminApplications({ String? owner, String? p, String? pageSize, }) async {
    final response = await adminApplicationsWithHttpInfo( owner: owner, p: p, pageSize: pageSize, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamRowsOut',) as IamRowsOut;
    
    }
    return null;
  }

  /// Reads cloud's tamper-evident audit trail, newest first, with the chain's live integrity attached so a listing can be badged as verified.
  ///
  /// Reads cloud's tamper-evident audit trail, newest first, with the chain's live integrity attached so a listing can be badged as verified.  When cloud has no local store configured it falls back to forwarding IAM's own get-records trail verbatim — a DIFFERENT trail, federated so the endpoint never regresses to an empty list. Those rows carry no integrity of ours, so the field is null there.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org:
  ///   Org restricts the trail to one tenant.
  ///
  /// * [String] sub:
  ///   Sub restricts it to one actor (the validated subject that made the request).
  ///
  /// * [String] action:
  ///   Action restricts it to one action name, e.g. \"admin.waitlist.grant\".
  ///
  /// * [String] resource:
  ///   Resource restricts it to one resource kind, e.g. \"credit-grant\".
  ///
  /// * [String] resourceId:
  ///   ResourceID restricts it to one resource instance.
  ///
  /// * [String] result:
  ///   Result restricts it to \"success\" or \"error\".
  ///
  /// * [String] since:
  ///   Since is the inclusive lower time bound, RFC3339. An unparseable value is ignored rather than refused — one malformed filter must not hide the trail.
  ///
  /// * [String] until:
  ///   Until is the upper time bound, RFC3339, with the same tolerance.
  ///
  /// * [String] pageSize:
  ///   PageSize is rows per page, default 100.
  ///
  /// * [String] p:
  ///   Page is the 1-based page number, driving the offset.
  Future<Response> adminAuditWithHttpInfo({ String? org, String? sub, String? action, String? resource, String? resourceId, String? result, String? since, String? until, String? pageSize, String? p, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/audit';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (org != null) {
      queryParams.addAll(_queryParams('', 'org', org));
    }
    if (sub != null) {
      queryParams.addAll(_queryParams('', 'sub', sub));
    }
    if (action != null) {
      queryParams.addAll(_queryParams('', 'action', action));
    }
    if (resource != null) {
      queryParams.addAll(_queryParams('', 'resource', resource));
    }
    if (resourceId != null) {
      queryParams.addAll(_queryParams('', 'resourceId', resourceId));
    }
    if (result != null) {
      queryParams.addAll(_queryParams('', 'result', result));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (until != null) {
      queryParams.addAll(_queryParams('', 'until', until));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
    }
    if (p != null) {
      queryParams.addAll(_queryParams('', 'p', p));
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

  /// Reads cloud's tamper-evident audit trail, newest first, with the chain's live integrity attached so a listing can be badged as verified.
  ///
  /// Reads cloud's tamper-evident audit trail, newest first, with the chain's live integrity attached so a listing can be badged as verified.  When cloud has no local store configured it falls back to forwarding IAM's own get-records trail verbatim — a DIFFERENT trail, federated so the endpoint never regresses to an empty list. Those rows carry no integrity of ours, so the field is null there.
  ///
  /// Parameters:
  ///
  /// * [String] org:
  ///   Org restricts the trail to one tenant.
  ///
  /// * [String] sub:
  ///   Sub restricts it to one actor (the validated subject that made the request).
  ///
  /// * [String] action:
  ///   Action restricts it to one action name, e.g. \"admin.waitlist.grant\".
  ///
  /// * [String] resource:
  ///   Resource restricts it to one resource kind, e.g. \"credit-grant\".
  ///
  /// * [String] resourceId:
  ///   ResourceID restricts it to one resource instance.
  ///
  /// * [String] result:
  ///   Result restricts it to \"success\" or \"error\".
  ///
  /// * [String] since:
  ///   Since is the inclusive lower time bound, RFC3339. An unparseable value is ignored rather than refused — one malformed filter must not hide the trail.
  ///
  /// * [String] until:
  ///   Until is the upper time bound, RFC3339, with the same tolerance.
  ///
  /// * [String] pageSize:
  ///   PageSize is rows per page, default 100.
  ///
  /// * [String] p:
  ///   Page is the 1-based page number, driving the offset.
  Future<RecordsOut?> adminAudit({ String? org, String? sub, String? action, String? resource, String? resourceId, String? result, String? since, String? until, String? pageSize, String? p, }) async {
    final response = await adminAuditWithHttpInfo( org: org, sub: sub, action: action, resource: resource, resourceId: resourceId, result: result, since: since, until: until, pageSize: pageSize, p: p, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RecordsOut',) as RecordsOut;
    
    }
    return null;
  }

  /// Walks the WHOLE hash chain and reports whether it is intact: how many records were checked, the head hash to pin externally against tail-truncation, and — when the chain is broken — the seq of the first bad record and why.
  ///
  /// Walks the WHOLE hash chain and reports whether it is intact: how many records were checked, the head hash to pin externally against tail-truncation, and — when the chain is broken — the seq of the first bad record and why.  brokenAt is -1 exactly when ok is true. An unconfigured store is an honest failure here rather than a fabricated pass.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> adminAuditVerifyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/audit/verify';

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

  /// Walks the WHOLE hash chain and reports whether it is intact: how many records were checked, the head hash to pin externally against tail-truncation, and — when the chain is broken — the seq of the first bad record and why.
  ///
  /// Walks the WHOLE hash chain and reports whether it is intact: how many records were checked, the head hash to pin externally against tail-truncation, and — when the chain is broken — the seq of the first bad record and why.  brokenAt is -1 exactly when ok is true. An unconfigured store is an honest failure here rather than a fabricated pass.
  Future<VerifyOut?> adminAuditVerify() async {
    final response = await adminAuditVerifyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VerifyOut',) as VerifyOut;
    
    }
    return null;
  }

  /// Lists the tenant Base instances in the caller's window — a SuperAdmin sees every tenant's, anyone else only their own subtree's.
  ///
  /// Lists the tenant Base instances in the caller's window — a SuperAdmin sees every tenant's, anyone else only their own subtree's.  The scope is enforced TWICE: the upstream is asked for the caller's org, AND every row it returns is re-checked against the resolved scope. An upstream that ignored the filter therefore degrades to empty, never to a cross-tenant leak.  The Base engine is being embedded into cloud; until it lands this proxies BASE_ADMIN_URL and, when that is unset, answers 200 with an empty list and msg saying so — the honest not-yet state, never fabricated instances.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> adminBasesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/bases';

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

  /// Lists the tenant Base instances in the caller's window — a SuperAdmin sees every tenant's, anyone else only their own subtree's.
  ///
  /// Lists the tenant Base instances in the caller's window — a SuperAdmin sees every tenant's, anyone else only their own subtree's.  The scope is enforced TWICE: the upstream is asked for the caller's org, AND every row it returns is re-checked against the resolved scope. An upstream that ignored the filter therefore degrades to empty, never to a cross-tenant leak.  The Base engine is being embedded into cloud; until it lands this proxies BASE_ADMIN_URL and, when that is unset, answers 200 with an empty list and msg saying so — the honest not-yet state, never fabricated instances.
  Future<BasesOut?> adminBases() async {
    final response = await adminBasesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BasesOut',) as BasesOut;
    
    }
    return null;
  }

  /// Reads one org's usage caps: its spend alerts plus the derived period spend, over/warn state and reset time.
  ///
  /// Reads one org's usage caps: its spend alerts plus the derived period spend, over/warn state and reset time.  These are the SAME rows the customer edits in their own console — a platform override and a customer budget are one model, not two.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org:
  ///   Org is the tenant to act on. Required for a SuperAdmin — they must name their target; ignored for a white-label admin, who always acts on their own org.
  ///
  /// * [String] id:
  ///   ID is the cap to edit or remove, from the path. Unused by the list and create ops.
  Future<Response> adminCapsWithHttpInfo({ String? org, String? id, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/caps';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (org != null) {
      queryParams.addAll(_queryParams('', 'org', org));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
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

  /// Reads one org's usage caps: its spend alerts plus the derived period spend, over/warn state and reset time.
  ///
  /// Reads one org's usage caps: its spend alerts plus the derived period spend, over/warn state and reset time.  These are the SAME rows the customer edits in their own console — a platform override and a customer budget are one model, not two.
  ///
  /// Parameters:
  ///
  /// * [String] org:
  ///   Org is the tenant to act on. Required for a SuperAdmin — they must name their target; ignored for a white-label admin, who always acts on their own org.
  ///
  /// * [String] id:
  ///   ID is the cap to edit or remove, from the path. Unused by the list and create ops.
  Future<RawOut?> adminCaps({ String? org, String? id, }) async {
    final response = await adminCapsWithHttpInfo( org: org, id: id, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RawOut',) as RawOut;
    
    }
    return null;
  }

  /// Rolls the fleet's compute usage up to one row per (org, app, project, kind): how many distinct machines ran in the window, how many are still active, what they billed, and when each group last emitted an event.
  ///
  /// Rolls the fleet's compute usage up to one row per (org, app, project, kind): how many distinct machines ran in the window, how many are still active, what they billed, and when each group last emitted an event. The console folds these into its org → app → project tree.  A machine counts as ACTIVE when its LATEST lifecycle event is not a terminal one (stop/destroy/terminate/delete/off/shutdown/expire and their past tenses) — the same fold the console applies, done in the warehouse so the count is over every machine and not just the page.  Honest-empty when the warehouse is not connected or hanzo.compute_usage is not provisioned yet: an empty list, never a fabricated fleet.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] kind:
  ///   Kind narrows to one workload class (bot | machine | cluster | nodepool | container | function | …). An OPEN spectrum matched as a plain string, lowercased to the warehouse's convention; empty means every kind.
  ///
  /// * [String] org:
  ///   Org narrows to one tenant. Empty means every tenant — this board is cross-tenant by nature.
  ///
  /// * [String] range:
  ///   Range is the lower time bound: 24h, 7d or 30d. Anything else reads as 30d.
  Future<Response> adminComputeWithHttpInfo({ String? kind, String? org, String? range, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/compute';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (kind != null) {
      queryParams.addAll(_queryParams('', 'kind', kind));
    }
    if (org != null) {
      queryParams.addAll(_queryParams('', 'org', org));
    }
    if (range != null) {
      queryParams.addAll(_queryParams('', 'range', range));
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

  /// Rolls the fleet's compute usage up to one row per (org, app, project, kind): how many distinct machines ran in the window, how many are still active, what they billed, and when each group last emitted an event.
  ///
  /// Rolls the fleet's compute usage up to one row per (org, app, project, kind): how many distinct machines ran in the window, how many are still active, what they billed, and when each group last emitted an event. The console folds these into its org → app → project tree.  A machine counts as ACTIVE when its LATEST lifecycle event is not a terminal one (stop/destroy/terminate/delete/off/shutdown/expire and their past tenses) — the same fold the console applies, done in the warehouse so the count is over every machine and not just the page.  Honest-empty when the warehouse is not connected or hanzo.compute_usage is not provisioned yet: an empty list, never a fabricated fleet.
  ///
  /// Parameters:
  ///
  /// * [String] kind:
  ///   Kind narrows to one workload class (bot | machine | cluster | nodepool | container | function | …). An OPEN spectrum matched as a plain string, lowercased to the warehouse's convention; empty means every kind.
  ///
  /// * [String] org:
  ///   Org narrows to one tenant. Empty means every tenant — this board is cross-tenant by nature.
  ///
  /// * [String] range:
  ///   Range is the lower time bound: 24h, 7d or 30d. Anything else reads as 30d.
  Future<ComputeOut?> adminCompute({ String? kind, String? org, String? range, }) async {
    final response = await adminComputeWithHttpInfo( kind: kind, org: org, range: range, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ComputeOut',) as ComputeOut;
    
    }
    return null;
  }

  /// Marks one cluster node unschedulable — or schedulable again — and can drain the pods already on it.
  ///
  /// Marks one cluster node unschedulable — or schedulable again — and can drain the pods already on it.  It is the ONE infra change that does not go through the run discipline, because there is no destructive verdict to check: cordoning is reversible and evicting respects the cluster's own PodDisruptionBudgets. It reads the cached board for the same reason. The outcome is audited either way, and the result reports how many pods were evicted.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the node's droplet id, from the path.
  ///
  /// * [CordonIn] cordonIn (required):
  Future<Response> adminCordonNodeWithHttpInfo(String id, CordonIn cordonIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/infra/nodes/{id}/cordon'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = cordonIn;

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

  /// Marks one cluster node unschedulable — or schedulable again — and can drain the pods already on it.
  ///
  /// Marks one cluster node unschedulable — or schedulable again — and can drain the pods already on it.  It is the ONE infra change that does not go through the run discipline, because there is no destructive verdict to check: cordoning is reversible and evicting respects the cluster's own PodDisruptionBudgets. It reads the cached board for the same reason. The outcome is audited either way, and the result reports how many pods were evicted.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the node's droplet id, from the path.
  ///
  /// * [CordonIn] cordonIn (required):
  Future<MutationOut?> adminCordonNode(String id, CordonIn cordonIn,) async {
    final response = await adminCordonNodeWithHttpInfo(id, cordonIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MutationOut',) as MutationOut;
    
    }
    return null;
  }

  /// Sets a usage cap on one org — a platform override of a customer budget, written to the customer's own spend-alert rows.
  ///
  /// Sets a usage cap on one org — a platform override of a customer budget, written to the customer's own spend-alert rows. The body is commerce's spend-alert contract, forwarded byte-for-byte.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CapIn] capIn (required):
  Future<Response> adminCreateCapWithHttpInfo(CapIn capIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/caps';

    // ignore: prefer_final_locals
    Object? postBody = capIn;

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

  /// Sets a usage cap on one org — a platform override of a customer budget, written to the customer's own spend-alert rows.
  ///
  /// Sets a usage cap on one org — a platform override of a customer budget, written to the customer's own spend-alert rows. The body is commerce's spend-alert contract, forwarded byte-for-byte.
  ///
  /// Parameters:
  ///
  /// * [CapIn] capIn (required):
  Future<RawOut?> adminCreateCap(CapIn capIn,) async {
    final response = await adminCreateCapWithHttpInfo(capIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RawOut',) as RawOut;
    
    }
    return null;
  }

  /// Answers GET /v1/admin/customers/:org.
  ///
  /// Answers GET /v1/admin/customers/:org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///   Org is the tenant slug from the path.
  Future<Response> adminCustomerWithHttpInfo(String org,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/customers/{org}'
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

  /// Answers GET /v1/admin/customers/:org.
  ///
  /// Answers GET /v1/admin/customers/:org.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///   Org is the tenant slug from the path.
  Future<CustomerDetailOut?> adminCustomer(String org,) async {
    final response = await adminCustomerWithHttpInfo(org,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CustomerDetailOut',) as CustomerDetailOut;
    
    }
    return null;
  }

  /// Lists every customer org at a glance, sorted by slug: owner email, plan, suspend status, member count, balance, month-to-date spend and MRR.
  ///
  /// Lists every customer org at a glance, sorted by slug: owner email, plan, suspend status, member count, balance, month-to-date spend and MRR.  Each row costs one IAM read plus the org's money reads, fanned out under a fixed concurrency ceiling so a large fleet cannot stampede the upstreams. Every read is best-effort per row: an upstream miss degrades THAT field to its honest zero rather than failing the fleet.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> adminCustomersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/customers';

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

  /// Lists every customer org at a glance, sorted by slug: owner email, plan, suspend status, member count, balance, month-to-date spend and MRR.
  ///
  /// Lists every customer org at a glance, sorted by slug: owner email, plan, suspend status, member count, balance, month-to-date spend and MRR.  Each row costs one IAM read plus the org's money reads, fanned out under a fixed concurrency ceiling so a large fleet cannot stampede the upstreams. Every read is best-effort per row: an upstream miss degrades THAT field to its honest zero rather than failing the fleet.
  Future<CustomersOut?> adminCustomers() async {
    final response = await adminCustomersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CustomersOut',) as CustomersOut;
    
    }
    return null;
  }

  /// Removes one cap by id, lifting the ceiling entirely.
  ///
  /// Removes one cap by id, lifting the ceiling entirely.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the cap to edit or remove, from the path. Unused by the list and create ops.
  ///
  /// * [String] org:
  ///   Org is the tenant to act on. Required for a SuperAdmin — they must name their target; ignored for a white-label admin, who always acts on their own org.
  Future<Response> adminDeleteCapWithHttpInfo(String id, { String? org, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/caps/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (org != null) {
      queryParams.addAll(_queryParams('', 'org', org));
    }

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

  /// Removes one cap by id, lifting the ceiling entirely.
  ///
  /// Removes one cap by id, lifting the ceiling entirely.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the cap to edit or remove, from the path. Unused by the list and create ops.
  ///
  /// * [String] org:
  ///   Org is the tenant to act on. Required for a SuperAdmin — they must name their target; ignored for a white-label admin, who always acts on their own org.
  Future<RawOut?> adminDeleteCap(String id, { String? org, }) async {
    final response = await adminDeleteCapWithHttpInfo(id,  org: org, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RawOut',) as RawOut;
    
    }
    return null;
  }

  /// Destroys a droplet the board has just proven is NOT a DOKS node.
  ///
  /// Destroys a droplet the board has just proven is NOT a DOKS node. There is no snapshot-first undo for a droplet the way there is for a volume: the local disk goes with it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the DO droplet id, from the path. Numeric.
  ///
  /// * [String] size:
  ///   Size is the target DigitalOcean size slug on resize, e.g. \"s-4vcpu-8gb\".
  ///
  /// * [bool] disk:
  ///   Disk requests a PERMANENT resize that grows the disk. DO can never resize such a droplet down again, so it defaults false — a CPU/RAM-only change, reversible.
  Future<Response> adminDeleteDropletWithHttpInfo(String id, { String? size, bool? disk, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/infra/droplets/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (disk != null) {
      queryParams.addAll(_queryParams('', 'disk', disk));
    }

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

  /// Destroys a droplet the board has just proven is NOT a DOKS node.
  ///
  /// Destroys a droplet the board has just proven is NOT a DOKS node. There is no snapshot-first undo for a droplet the way there is for a volume: the local disk goes with it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the DO droplet id, from the path. Numeric.
  ///
  /// * [String] size:
  ///   Size is the target DigitalOcean size slug on resize, e.g. \"s-4vcpu-8gb\".
  ///
  /// * [bool] disk:
  ///   Disk requests a PERMANENT resize that grows the disk. DO can never resize such a droplet down again, so it defaults false — a CPU/RAM-only change, reversible.
  Future<MutationOut?> adminDeleteDroplet(String id, { String? size, bool? disk, }) async {
    final response = await adminDeleteDropletWithHttpInfo(id,  size: size, disk: disk, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MutationOut',) as MutationOut;
    
    }
    return null;
  }

  /// Destroys a load balancer the board has just proven no live type=LoadBalancer Service in any cluster targets.
  ///
  /// Destroys a load balancer the board has just proven no live type=LoadBalancer Service in any cluster targets.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the DO load balancer id, from the path.
  Future<Response> adminDeleteLoadBalancerWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/infra/loadbalancers/{id}'
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

  /// Destroys a load balancer the board has just proven no live type=LoadBalancer Service in any cluster targets.
  ///
  /// Destroys a load balancer the board has just proven no live type=LoadBalancer Service in any cluster targets.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the DO load balancer id, from the path.
  Future<MutationOut?> adminDeleteLoadBalancer(String id,) async {
    final response = await adminDeleteLoadBalancerWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MutationOut',) as MutationOut;
    
    }
    return null;
  }

  /// Destroys a volume the board has just proven no PersistentVolume in any cluster references.
  ///
  /// Destroys a volume the board has just proven no PersistentVolume in any cluster references. Irreversible, so it snapshots first unless explicitly waived — the snapshot IS the undo.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the DO volume id, from the path.
  ///
  /// * [String] snapshot:
  ///   Snapshot is the snapshot-first switch on DELETE. Anything other than the literal \"false\" snapshots before destroying — the snapshot IS the undo, so waiving it is deliberate and explicit.
  ///
  /// * [String] name:
  ///   Name is the snapshot name on the snapshot action. Blank gets a deterministic \"<volume>-predelete-<unix>\" so the undo is findable in the DO console.
  ///
  /// * [int] sizeGiB:
  ///   SizeGiB is the target size on the resize action. A volume only ever grows — ExpandTo is the verdict that refuses a shrink, so this is not validated here.
  Future<Response> adminDeleteVolumeWithHttpInfo(String id, { String? snapshot, String? name, int? sizeGiB, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/infra/volumes/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (snapshot != null) {
      queryParams.addAll(_queryParams('', 'snapshot', snapshot));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (sizeGiB != null) {
      queryParams.addAll(_queryParams('', 'sizeGiB', sizeGiB));
    }

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

  /// Destroys a volume the board has just proven no PersistentVolume in any cluster references.
  ///
  /// Destroys a volume the board has just proven no PersistentVolume in any cluster references. Irreversible, so it snapshots first unless explicitly waived — the snapshot IS the undo.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the DO volume id, from the path.
  ///
  /// * [String] snapshot:
  ///   Snapshot is the snapshot-first switch on DELETE. Anything other than the literal \"false\" snapshots before destroying — the snapshot IS the undo, so waiving it is deliberate and explicit.
  ///
  /// * [String] name:
  ///   Name is the snapshot name on the snapshot action. Blank gets a deterministic \"<volume>-predelete-<unix>\" so the undo is findable in the DO console.
  ///
  /// * [int] sizeGiB:
  ///   SizeGiB is the target size on the resize action. A volume only ever grows — ExpandTo is the verdict that refuses a shrink, so this is not validated here.
  Future<MutationOut?> adminDeleteVolume(String id, { String? snapshot, String? name, int? sizeGiB, }) async {
    final response = await adminDeleteVolumeWithHttpInfo(id,  snapshot: snapshot, name: name, sizeGiB: sizeGiB, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MutationOut',) as MutationOut;
    
    }
    return null;
  }

  /// Stops the plugin.
  ///
  /// Stops the plugin. Its routes STAY REGISTERED and answer 503 — not 404.  That is zip's choice and this keeps it. Removing the routes would mutate the route table, and re-adding them on enable would grow it without bound across repeated cycles, which is the invariant that makes reloads flat in memory. It is also the better answer: 404 says \"no such API\" and a client may cache it and stop retrying, while 503 says \"this API exists and is down right now\", which is true and retryable. Which of the two 503s this is — deliberate stop or crash — is what the status's disabled flag reports.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the app, from the path.
  ///
  /// * [NameIn] nameIn (required):
  Future<Response> adminDisablePluginWithHttpInfo(String name, NameIn nameIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/plugins/{name}/disable'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = nameIn;

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

  /// Stops the plugin.
  ///
  /// Stops the plugin. Its routes STAY REGISTERED and answer 503 — not 404.  That is zip's choice and this keeps it. Removing the routes would mutate the route table, and re-adding them on enable would grow it without bound across repeated cycles, which is the invariant that makes reloads flat in memory. It is also the better answer: 404 says \"no such API\" and a client may cache it and stop retrying, while 503 says \"this API exists and is down right now\", which is true and retryable. Which of the two 503s this is — deliberate stop or crash — is what the status's disabled flag reports.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the app, from the path.
  ///
  /// * [NameIn] nameIn (required):
  Future<ActionOut?> adminDisablePlugin(String name, NameIn nameIn,) async {
    final response = await adminDisablePluginWithHttpInfo(name, nameIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ActionOut',) as ActionOut;
    
    }
    return null;
  }

  /// Brings a stopped or disabled plugin back on the artifact it already has: the zero Plugin names no new artifact, so Reload reuses the loaded spec and clears the disabled flag.
  ///
  /// Brings a stopped or disabled plugin back on the artifact it already has: the zero Plugin names no new artifact, so Reload reuses the loaded spec and clears the disabled flag. Named for what an operator means by it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the app, from the path.
  ///
  /// * [NameIn] nameIn (required):
  Future<Response> adminEnablePluginWithHttpInfo(String name, NameIn nameIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/plugins/{name}/enable'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = nameIn;

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

  /// Brings a stopped or disabled plugin back on the artifact it already has: the zero Plugin names no new artifact, so Reload reuses the loaded spec and clears the disabled flag.
  ///
  /// Brings a stopped or disabled plugin back on the artifact it already has: the zero Plugin names no new artifact, so Reload reuses the loaded spec and clears the disabled flag. Named for what an operator means by it.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the app, from the path.
  ///
  /// * [NameIn] nameIn (required):
  Future<ActionOut?> adminEnablePlugin(String name, NameIn nameIn,) async {
    final response = await adminEnablePluginWithHttpInfo(name, nameIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ActionOut',) as ActionOut;
    
    }
    return null;
  }

  /// Answers GET /v1/admin/finance.
  ///
  /// Answers GET /v1/admin/finance. It reads the multi-vendor COGS from commerce /v1/costs, the DO promo-credit/burn-down treasury view, and the fleet commerce revenue, then hands them to ComputeFinance. SuperAdmin only.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> adminFinanceWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/finance';

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

  /// Answers GET /v1/admin/finance.
  ///
  /// Answers GET /v1/admin/finance. It reads the multi-vendor COGS from commerce /v1/costs, the DO promo-credit/burn-down treasury view, and the fleet commerce revenue, then hands them to ComputeFinance. SuperAdmin only.
  Future<FinanceOut?> adminFinance() async {
    final response = await adminFinanceWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FinanceOut',) as FinanceOut;
    
    }
    return null;
  }

  /// Carries ONE org's current commerce prepaid balance into the native finance wallet — the one-time cutover between the two ledgers.
  ///
  /// Carries ONE org's current commerce prepaid balance into the native finance wallet — the one-time cutover between the two ledgers.  It is IDEMPOTENT: the deposit uses the fixed ref \"backfill:<org>\", so re-running it credits the wallet at most once. Safe to retry.  The pre-migration balance is read from the CO-RESIDENT commerce ledger, not over HTTP: the admin HTTP client dials an unroutable in-process address and would read $0, and a phantom zero would silently carry nothing while reporting success. When commerce is not co-resident this fails rather than migrating nothing.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BackfillIn] backfillIn (required):
  Future<Response> adminFinanceBackfillWithHttpInfo(BackfillIn backfillIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/finance/backfill';

    // ignore: prefer_final_locals
    Object? postBody = backfillIn;

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

  /// Carries ONE org's current commerce prepaid balance into the native finance wallet — the one-time cutover between the two ledgers.
  ///
  /// Carries ONE org's current commerce prepaid balance into the native finance wallet — the one-time cutover between the two ledgers.  It is IDEMPOTENT: the deposit uses the fixed ref \"backfill:<org>\", so re-running it credits the wallet at most once. Safe to retry.  The pre-migration balance is read from the CO-RESIDENT commerce ledger, not over HTTP: the admin HTTP client dials an unroutable in-process address and would read $0, and a phantom zero would silently carry nothing while reporting success. When commerce is not co-resident this fails rather than migrating nothing.
  ///
  /// Parameters:
  ///
  /// * [BackfillIn] backfillIn (required):
  Future<BackfillOut?> adminFinanceBackfill(BackfillIn backfillIn,) async {
    final response = await adminFinanceBackfillWithHttpInfo(backfillIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BackfillOut',) as BackfillOut;
    
    }
    return null;
  }

  /// Reads the platform control-plane board: every runtime launch/release switch (waitlist, public signup, subsystem activation, gateway limits, network ids) with its LIVE value and where that value came from — a stored definition or the compiled-in default.
  ///
  /// Reads the platform control-plane board: every runtime launch/release switch (waitlist, public signup, subsystem activation, gateway limits, network ids) with its LIVE value and where that value came from — a stored definition or the compiled-in default.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> adminFlagsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/flags';

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

  /// Reads the platform control-plane board: every runtime launch/release switch (waitlist, public signup, subsystem activation, gateway limits, network ids) with its LIVE value and where that value came from — a stored definition or the compiled-in default.
  ///
  /// Reads the platform control-plane board: every runtime launch/release switch (waitlist, public signup, subsystem activation, gateway limits, network ids) with its LIVE value and where that value came from — a stored definition or the compiled-in default.
  Future<FlagsOut?> adminFlags() async {
    final response = await adminFlagsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FlagsOut',) as FlagsOut;
    
    }
    return null;
  }

  /// Issues a staff credit grant to the org named in the path — a comp, refund or promo — through the ONE credit-write path core.ApplyGrant, which validates the amount against the per-grant cap, checks the org exists, moves the money and records the tamper-evident audit row.
  ///
  /// Issues a staff credit grant to the org named in the path — a comp, refund or promo — through the ONE credit-write path core.ApplyGrant, which validates the amount against the per-grant cap, checks the org exists, moves the money and records the tamper-evident audit row.  The credit lands on the account account.Payer resolves, NOT necessarily the org: name a member of a pooled org and the pool is credited. The receipt echoes the subject so the caller can see which.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///   Org is the tenant to credit. Required.
  ///
  /// * [GrantIn] grantIn (required):
  Future<Response> adminGrantCreditWithHttpInfo(String org, GrantIn grantIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/customers/{org}/credit'
      .replaceAll('{org}', org);

    // ignore: prefer_final_locals
    Object? postBody = grantIn;

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

  /// Issues a staff credit grant to the org named in the path — a comp, refund or promo — through the ONE credit-write path core.ApplyGrant, which validates the amount against the per-grant cap, checks the org exists, moves the money and records the tamper-evident audit row.
  ///
  /// Issues a staff credit grant to the org named in the path — a comp, refund or promo — through the ONE credit-write path core.ApplyGrant, which validates the amount against the per-grant cap, checks the org exists, moves the money and records the tamper-evident audit row.  The credit lands on the account account.Payer resolves, NOT necessarily the org: name a member of a pooled org and the pool is credited. The receipt echoes the subject so the caller can see which.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///   Org is the tenant to credit. Required.
  ///
  /// * [GrantIn] grantIn (required):
  Future<GrantOut?> adminGrantCredit(String org, GrantIn grantIn,) async {
    final response = await adminGrantCreditWithHttpInfo(org, grantIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrantOut',) as GrantOut;
    
    }
    return null;
  }

  /// Reads the credit-grant ledger across ALL orgs, newest first — who granted what to whom, when, and from which money bucket.
  ///
  /// Reads the credit-grant ledger across ALL orgs, newest first — who granted what to whom, when, and from which money bucket.  It is a PROJECTION of the tamper-evident audit trail, not a second store: every grant is written there as action \"admin.customer.credit\", so this view cannot drift from what actually happened, and FAILED grants appear too.  A deployment with no local audit store has no history to project, and says so with an empty list and a msg rather than an error.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org:
  ///   Org filters by the ACTOR's org (the staff org that issued the grant), which is rarely what a reader wants — the target org is a row field, not a filter.
  ///
  /// * [String] result:
  ///   Result filters by outcome: \"success\" or \"error\". Empty returns both, which is the point of this view — a refused grant is as interesting as a granted one.
  ///
  /// * [String] limit:
  ///   Limit caps the rows returned. Default 200.
  Future<Response> adminGrantsWithHttpInfo({ String? org, String? result, String? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/grants';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (org != null) {
      queryParams.addAll(_queryParams('', 'org', org));
    }
    if (result != null) {
      queryParams.addAll(_queryParams('', 'result', result));
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

  /// Reads the credit-grant ledger across ALL orgs, newest first — who granted what to whom, when, and from which money bucket.
  ///
  /// Reads the credit-grant ledger across ALL orgs, newest first — who granted what to whom, when, and from which money bucket.  It is a PROJECTION of the tamper-evident audit trail, not a second store: every grant is written there as action \"admin.customer.credit\", so this view cannot drift from what actually happened, and FAILED grants appear too.  A deployment with no local audit store has no history to project, and says so with an empty list and a msg rather than an error.
  ///
  /// Parameters:
  ///
  /// * [String] org:
  ///   Org filters by the ACTOR's org (the staff org that issued the grant), which is rarely what a reader wants — the target org is a row field, not a filter.
  ///
  /// * [String] result:
  ///   Result filters by outcome: \"success\" or \"error\". Empty returns both, which is the point of this view — a refused grant is as interesting as a granted one.
  ///
  /// * [String] limit:
  ///   Limit caps the rows returned. Default 200.
  Future<GrantsOut?> adminGrants({ String? org, String? result, String? limit, }) async {
    final response = await adminGrantsWithHttpInfo( org: org, result: result, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrantsOut',) as GrantsOut;
    
    }
    return null;
  }

  /// Serves the whole DigitalOcean infrastructure board: droplets, volumes, DOKS clusters and load balancers, each cross-referenced against every cluster's live Kubernetes state so the board can say what is safe to destroy and what is not.
  ///
  /// Serves the whole DigitalOcean infrastructure board: droplets, volumes, DOKS clusters and load balancers, each cross-referenced against every cluster's live Kubernetes state so the board can say what is safe to destroy and what is not.  It is cached for up to a minute because one read is a fan-out over the DO API plus a full pod/PV listing per cluster. Staleness is never load-bearing: every MUTATION re-scans from scratch and ignores this cache.  Only an unusable DO account is a hard failure. A partial read still produces a board, with the failing source named in sources[] — except for clusters and volumes, which the safety verdict depends on; without those the analysis degrades rather than classifying anything it cannot prove.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] refresh:
  ///   Refresh, when present, forces a full re-scan instead of serving the cached snapshot. Every MUTATION re-scans regardless — this is only for the reader.
  Future<Response> adminInfraWithHttpInfo({ String? refresh, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/infra';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (refresh != null) {
      queryParams.addAll(_queryParams('', 'refresh', refresh));
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

  /// Serves the whole DigitalOcean infrastructure board: droplets, volumes, DOKS clusters and load balancers, each cross-referenced against every cluster's live Kubernetes state so the board can say what is safe to destroy and what is not.
  ///
  /// Serves the whole DigitalOcean infrastructure board: droplets, volumes, DOKS clusters and load balancers, each cross-referenced against every cluster's live Kubernetes state so the board can say what is safe to destroy and what is not.  It is cached for up to a minute because one read is a fan-out over the DO API plus a full pod/PV listing per cluster. Staleness is never load-bearing: every MUTATION re-scans from scratch and ignores this cache.  Only an unusable DO account is a hard failure. A partial read still produces a board, with the failing source named in sources[] — except for clusters and volumes, which the safety verdict depends on; without those the analysis degrades rather than classifying anything it cannot prove.
  ///
  /// Parameters:
  ///
  /// * [String] refresh:
  ///   Refresh, when present, forces a full re-scan instead of serving the cached snapshot. Every MUTATION re-scans regardless — this is only for the reader.
  Future<ReadOut?> adminInfra({ String? refresh, }) async {
    final response = await adminInfraWithHttpInfo( refresh: refresh, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReadOut',) as ReadOut;
    
    }
    return null;
  }

  /// Answers GET /v1/admin/invoices.
  ///
  /// Answers GET /v1/admin/invoices.   GET /v1/admin/invoices?org=&status=&limit=
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   Status filters on the invoice's LATEST lifecycle status (paid, open, void, …), matched case-insensitively.
  ///
  /// * [String] org:
  ///   Org filters to one tenant, matched exactly.
  ///
  /// * [String] limit:
  ///   Limit caps the rows returned. total still reports the full match count.
  Future<Response> adminInvoicesWithHttpInfo({ String? status, String? org, String? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/invoices';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (org != null) {
      queryParams.addAll(_queryParams('', 'org', org));
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

  /// Answers GET /v1/admin/invoices.
  ///
  /// Answers GET /v1/admin/invoices.   GET /v1/admin/invoices?org=&status=&limit=
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   Status filters on the invoice's LATEST lifecycle status (paid, open, void, …), matched case-insensitively.
  ///
  /// * [String] org:
  ///   Org filters to one tenant, matched exactly.
  ///
  /// * [String] limit:
  ///   Limit caps the rows returned. total still reports the full match count.
  Future<InvoicesOut?> adminInvoices({ String? status, String? org, String? limit, }) async {
    final response = await adminInvoicesWithHttpInfo( status: status, org: org, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InvoicesOut',) as InvoicesOut;
    
    }
    return null;
  }

  /// Issues a credit grant to any org from the operator Grants view, with the target named in the body.
  ///
  /// Issues a credit grant to any org from the operator Grants view, with the target named in the body. It funnels through the SAME core.ApplyGrant that POST /v1/admin/customers/:org/credit uses, so there is exactly ONE credit-write path and one audit trail behind both.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GrantIn] grantIn (required):
  Future<Response> adminIssueGrantWithHttpInfo(GrantIn grantIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/grants';

    // ignore: prefer_final_locals
    Object? postBody = grantIn;

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

  /// Issues a credit grant to any org from the operator Grants view, with the target named in the body.
  ///
  /// Issues a credit grant to any org from the operator Grants view, with the target named in the body. It funnels through the SAME core.ApplyGrant that POST /v1/admin/customers/:org/credit uses, so there is exactly ONE credit-write path and one audit trail behind both.
  ///
  /// Parameters:
  ///
  /// * [GrantIn] grantIn (required):
  Future<GrantOut?> adminIssueGrant(GrantIn grantIn,) async {
    final response = await adminIssueGrantWithHttpInfo(grantIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrantOut',) as GrantOut;
    
    }
    return null;
  }

  /// Answers with the validated operator identity — who the console is signed in as, which tier they are, and how wide their tenant window is.
  ///
  /// Answers with the validated operator identity — who the console is signed in as, which tier they are, and how wide their tenant window is. The fields come from the sanitized identity headers the gate just read, so they are authoritative and never client-forgeable; nothing is looked up.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> adminMeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/me';

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

  /// Answers with the validated operator identity — who the console is signed in as, which tier they are, and how wide their tenant window is.
  ///
  /// Answers with the validated operator identity — who the console is signed in as, which tier they are, and how wide their tenant window is. The fields come from the sanitized identity headers the gate just read, so they are authoritative and never client-forgeable; nothing is looked up.
  Future<MeOut?> adminMe() async {
    final response = await adminMeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MeOut',) as MeOut;
    
    }
    return null;
  }

  /// Answers GET /v1/admin/metrics by aggregating commerce.events directly (fleet-wide, no per-org fan-out).
  ///
  /// Answers GET /v1/admin/metrics by aggregating commerce.events directly (fleet-wide, no per-org fan-out). SuperAdmin only.   GET /v1/admin/metrics?window=30d&limit=20
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] window:
  ///   Window is the movement window the new/churned MRR and the recent feed are measured over. Anything unrecognised falls back to the board default.
  ///
  /// * [String] limit:
  ///   Limit caps the top-customers table.
  Future<Response> adminMetricsWithHttpInfo({ String? window, String? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/metrics';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (window != null) {
      queryParams.addAll(_queryParams('', 'window', window));
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

  /// Answers GET /v1/admin/metrics by aggregating commerce.events directly (fleet-wide, no per-org fan-out).
  ///
  /// Answers GET /v1/admin/metrics by aggregating commerce.events directly (fleet-wide, no per-org fan-out). SuperAdmin only.   GET /v1/admin/metrics?window=30d&limit=20
  ///
  /// Parameters:
  ///
  /// * [String] window:
  ///   Window is the movement window the new/churned MRR and the recent feed are measured over. Anything unrecognised falls back to the board default.
  ///
  /// * [String] limit:
  ///   Limit caps the top-customers table.
  Future<MetricsOut?> adminMetrics({ String? window, String? limit, }) async {
    final response = await adminMetricsWithHttpInfo( window: window, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MetricsOut',) as MetricsOut;
    
    }
    return null;
  }

  /// moneyBoardHandler answers GET /v1/admin/money.
  ///
  /// moneyBoardHandler answers GET /v1/admin/money.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> adminMoneyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/money';

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

  /// moneyBoardHandler answers GET /v1/admin/money.
  ///
  /// moneyBoardHandler answers GET /v1/admin/money.
  Future<MoneyOut?> adminMoney() async {
    final response = await adminMoneyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MoneyOut',) as MoneyOut;
    
    }
    return null;
  }

  /// Is the fleet-wide observability board: LLM usage (requests, tokens, cost, errors, top orgs, top models), trace RED metrics (count, p50/p95/p99 latency in ms, error rate, top services), fleet log volume, and the O11yAI generation rollup — all aggregated across EVERY tenant, with no org filter applied.
  ///
  /// Is the fleet-wide observability board: LLM usage (requests, tokens, cost, errors, top orgs, top models), trace RED metrics (count, p50/p95/p99 latency in ms, error rate, top services), fleet log volume, and the O11yAI generation rollup — all aggregated across EVERY tenant, with no org filter applied.  Every signal degrades INDEPENDENTLY. A table that is absent or errors contributes its zero value and the read still succeeds, so the board renders exactly what the warehouse holds rather than failing whole because one of four sources is missing. Same when the warehouse is not connected at all: the zero board, never a fabricated fleet.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range is the lower time bound: 24h, 7d or 30d. Anything else reads as the board's own default.
  Future<Response> adminO11yWithHttpInfo({ String? range, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/o11y';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (range != null) {
      queryParams.addAll(_queryParams('', 'range', range));
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

  /// Is the fleet-wide observability board: LLM usage (requests, tokens, cost, errors, top orgs, top models), trace RED metrics (count, p50/p95/p99 latency in ms, error rate, top services), fleet log volume, and the O11yAI generation rollup — all aggregated across EVERY tenant, with no org filter applied.
  ///
  /// Is the fleet-wide observability board: LLM usage (requests, tokens, cost, errors, top orgs, top models), trace RED metrics (count, p50/p95/p99 latency in ms, error rate, top services), fleet log volume, and the O11yAI generation rollup — all aggregated across EVERY tenant, with no org filter applied.  Every signal degrades INDEPENDENTLY. A table that is absent or errors contributes its zero value and the read still succeeds, so the board renders exactly what the warehouse holds rather than failing whole because one of four sources is missing. Same when the warehouse is not connected at all: the zero board, never a fabricated fleet.
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range is the lower time bound: 24h, 7d or 30d. Anything else reads as the board's own default.
  Future<O11yOut?> adminO11y({ String? range, }) async {
    final response = await adminO11yWithHttpInfo( range: range, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yOut',) as O11yOut;
    
    }
    return null;
  }

  /// Lists the tenant directory one row per org, sorted by slug: member count and the org's month-to-date spend and credit balance, read live from IAM and commerce.
  ///
  /// Lists the tenant directory one row per org, sorted by slug: member count and the org's month-to-date spend and credit balance, read live from IAM and commerce.  The rows are the caller's tenant window, not the fleet: a SuperAdmin gets every org, a white-label admin only their own subtree. A per-org read that fails degrades THAT row to an honest zero — this panel carries no sources[] channel to report freshness on, so the alternative would be a fleet total that silently reads healthy.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> adminOrgsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/orgs';

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

  /// Lists the tenant directory one row per org, sorted by slug: member count and the org's month-to-date spend and credit balance, read live from IAM and commerce.
  ///
  /// Lists the tenant directory one row per org, sorted by slug: member count and the org's month-to-date spend and credit balance, read live from IAM and commerce.  The rows are the caller's tenant window, not the fleet: a SuperAdmin gets every org, a white-label admin only their own subtree. A per-org read that fails degrades THAT row to an honest zero — this panel carries no sources[] channel to report freshness on, so the alternative would be a fleet total that silently reads healthy.
  Future<OrgsOut?> adminOrgs() async {
    final response = await adminOrgsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrgsOut',) as OrgsOut;
    
    }
    return null;
  }

  /// Is the Platform Overview tiles: how many orgs and users are in the caller's tenant window, the fleet workload counts, and month-to-date spend and credits.
  ///
  /// Is the Platform Overview tiles: how many orgs and users are in the caller's tenant window, the fleet workload counts, and month-to-date spend and credits.  It ALWAYS answers 200 — a tile board that fails as a whole because one upstream is down is useless. Instead every upstream reports itself in sources[]: ok, degraded, or not-configured. A commerce read that failed for ANY org marks that source degraded, because the spend/credits totals are then an undercount and must not read healthy.  The AI tiles — 30-day spend and tokens — come from the AI ledger (ledger.go), the plane that owns \"what was served\". They used to come from the money plane with the token counter hardcoded to zero, so the board read $0.00 and 0 tokens over a month in which the fleet served fifteen thousand requests. Credits still come from commerce, which owns the wallet.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> adminOverviewWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/overview';

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

  /// Is the Platform Overview tiles: how many orgs and users are in the caller's tenant window, the fleet workload counts, and month-to-date spend and credits.
  ///
  /// Is the Platform Overview tiles: how many orgs and users are in the caller's tenant window, the fleet workload counts, and month-to-date spend and credits.  It ALWAYS answers 200 — a tile board that fails as a whole because one upstream is down is useless. Instead every upstream reports itself in sources[]: ok, degraded, or not-configured. A commerce read that failed for ANY org marks that source degraded, because the spend/credits totals are then an undercount and must not read healthy.  The AI tiles — 30-day spend and tokens — come from the AI ledger (ledger.go), the plane that owns \"what was served\". They used to come from the money plane with the token counter hardcoded to zero, so the board read $0.00 and 0 tokens over a month in which the fleet served fifteen thousand requests. Credits still come from commerce, which owns the wallet.
  Future<OverviewOut?> adminOverview() async {
    final response = await adminOverviewWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OverviewOut',) as OverviewOut;
    
    }
    return null;
  }

  /// Reports what each host is actually running: every loaded plugin with its version, pid, uptime, reload and restart counts, and its measured CPU, RSS, thread and fd cost — read from the kernel, which is only answerable at all because a plugin is a process.
  ///
  /// Reports what each host is actually running: every loaded plugin with its version, pid, uptime, reload and restart counts, and its measured CPU, RSS, thread and fd cost — read from the kernel, which is only answerable at all because a plugin is a process.  Reading this from deployment config would answer what was INTENDED. Only the process knows what is TRUE, and during a rolling upgrade the two disagree on purpose.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] scope:
  ///   Scope \"host\" answers for THIS host only. Default \"fleet\" fans out to every live peer. A peer answers a host-scoped read, which is what stops the fan-out recursing.
  Future<Response> adminPluginsWithHttpInfo({ String? scope, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/plugins';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (scope != null) {
      queryParams.addAll(_queryParams('', 'scope', scope));
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

  /// Reports what each host is actually running: every loaded plugin with its version, pid, uptime, reload and restart counts, and its measured CPU, RSS, thread and fd cost — read from the kernel, which is only answerable at all because a plugin is a process.
  ///
  /// Reports what each host is actually running: every loaded plugin with its version, pid, uptime, reload and restart counts, and its measured CPU, RSS, thread and fd cost — read from the kernel, which is only answerable at all because a plugin is a process.  Reading this from deployment config would answer what was INTENDED. Only the process knows what is TRUE, and during a rolling upgrade the two disagree on purpose.
  ///
  /// Parameters:
  ///
  /// * [String] scope:
  ///   Scope \"host\" answers for THIS host only. Default \"fleet\" fans out to every live peer. A peer answers a host-scoped read, which is what stops the fan-out recursing.
  Future<ListOut?> adminPlugins({ String? scope, }) async {
    final response = await adminPluginsWithHttpInfo( scope: scope, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListOut',) as ListOut;
    
    }
    return null;
  }

  /// Lists the fleet workload registry: every operator App CR across the platform namespaces with its declared vs running image tag, reconciled health/phase and drift verdict.
  ///
  /// Lists the fleet workload registry: every operator App CR across the platform namespaces with its declared vs running image tag, reconciled health/phase and drift verdict. Optionally narrowed by kind, tier or env, each an exact match.  The rows are the SAME observation /v1/platform/fleet renders — read through the in-process platform seam, not a second k8s client — so the two boards can never disagree about what the fleet is. A PaaS plane that is not co-resident yields an honestly empty registry, never a fabricated row.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] kind:
  ///   Kind matches the operator App CR's declared spec.role (sql|kv|generic|ingress).
  ///
  /// * [String] tier:
  ///   Tier matches the derived infra grouping (cloud|data|edge|daemon|paas|app).
  ///
  /// * [String] env:
  ///   Env matches the lifecycle namespace (main|test|dev).
  Future<Response> adminProductsWithHttpInfo({ String? kind, String? tier, String? env, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/products';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (kind != null) {
      queryParams.addAll(_queryParams('', 'kind', kind));
    }
    if (tier != null) {
      queryParams.addAll(_queryParams('', 'tier', tier));
    }
    if (env != null) {
      queryParams.addAll(_queryParams('', 'env', env));
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

  /// Lists the fleet workload registry: every operator App CR across the platform namespaces with its declared vs running image tag, reconciled health/phase and drift verdict.
  ///
  /// Lists the fleet workload registry: every operator App CR across the platform namespaces with its declared vs running image tag, reconciled health/phase and drift verdict. Optionally narrowed by kind, tier or env, each an exact match.  The rows are the SAME observation /v1/platform/fleet renders — read through the in-process platform seam, not a second k8s client — so the two boards can never disagree about what the fleet is. A PaaS plane that is not co-resident yields an honestly empty registry, never a fabricated row.
  ///
  /// Parameters:
  ///
  /// * [String] kind:
  ///   Kind matches the operator App CR's declared spec.role (sql|kv|generic|ingress).
  ///
  /// * [String] tier:
  ///   Tier matches the derived infra grouping (cloud|data|edge|daemon|paas|app).
  ///
  /// * [String] env:
  ///   Env matches the lifecycle namespace (main|test|dev).
  Future<ProductsOut?> adminProducts({ String? kind, String? tier, String? env, }) async {
    final response = await adminProductsWithHttpInfo( kind: kind, tier: tier, env: env, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProductsOut',) as ProductsOut;
    
    }
    return null;
  }

  /// Reads the current platform plan promo — the singleton discount offer, e.g.
  ///
  /// Reads the current platform plan promo — the singleton discount offer, e.g. the 50%-off launch promo. Commerce stores it in the reserved platform namespace, so the org sent with the read is the admin org and the service token is what passes commerce's own platform-admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> adminPromoWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/promos';

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

  /// Reads the current platform plan promo — the singleton discount offer, e.g.
  ///
  /// Reads the current platform plan promo — the singleton discount offer, e.g. the 50%-off launch promo. Commerce stores it in the reserved platform namespace, so the org sent with the read is the admin org and the service token is what passes commerce's own platform-admin gate.
  Future<RawOut?> adminPromo() async {
    final response = await adminPromoWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RawOut',) as RawOut;
    
    }
    return null;
  }

  /// Serves GET /v1/admin/providers/credit — the per-provider upstream credit ledger.
  ///
  /// Serves GET /v1/admin/providers/credit — the per-provider upstream credit ledger. SuperAdmin-guarded (see Routes).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> adminProvidersCreditWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/providers/credit';

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

  /// Serves GET /v1/admin/providers/credit — the per-provider upstream credit ledger.
  ///
  /// Serves GET /v1/admin/providers/credit — the per-provider upstream credit ledger. SuperAdmin-guarded (see Routes).
  Future<ProvidersCreditOut?> adminProvidersCredit() async {
    final response = await adminProvidersCreditWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProvidersCreditOut',) as ProvidersCreditOut;
    
    }
    return null;
  }

  /// Restores access for every member of the org, undoing a suspend.
  ///
  /// Restores access for every member of the org, undoing a suspend. It reports the same per-user breakdown.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///   Org is the tenant slug from the path.
  Future<Response> adminReactivateCustomerWithHttpInfo(String org,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/customers/{org}/reactivate'
      .replaceAll('{org}', org);

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

  /// Restores access for every member of the org, undoing a suspend.
  ///
  /// Restores access for every member of the org, undoing a suspend. It reports the same per-user breakdown.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///   Org is the tenant slug from the path.
  Future<AccessOut?> adminReactivateCustomer(String org,) async {
    final response = await adminReactivateCustomerWithHttpInfo(org,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccessOut',) as AccessOut;
    
    }
    return null;
  }

  /// Swaps a plugin for another build without dropping a request.
  ///
  /// Swaps a plugin for another build without dropping a request. The replacement is started and proven to be LISTENING before any traffic moves to it, so a bad build leaves the old one serving and returns an error rather than a hole; the old process then drains before it is killed.  With a version or url+sum it pins; naming a digest this host has run before is the rollback, and costs no network because the digest IS the cache key. With neither it restarts what is already loaded.  Fleet scope applies it to one host at a time and STOPS at the first failure, so a build that cannot come up reaches exactly one host.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the app, from the path. It must be one the manifest declares.
  ///
  /// * [ReloadIn] reloadIn (required):
  Future<Response> adminReloadPluginWithHttpInfo(String name, ReloadIn reloadIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/plugins/{name}/reload'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = reloadIn;

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

  /// Swaps a plugin for another build without dropping a request.
  ///
  /// Swaps a plugin for another build without dropping a request. The replacement is started and proven to be LISTENING before any traffic moves to it, so a bad build leaves the old one serving and returns an error rather than a hole; the old process then drains before it is killed.  With a version or url+sum it pins; naming a digest this host has run before is the rollback, and costs no network because the digest IS the cache key. With neither it restarts what is already loaded.  Fleet scope applies it to one host at a time and STOPS at the first failure, so a build that cannot come up reaches exactly one host.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the app, from the path. It must be one the manifest declares.
  ///
  /// * [ReloadIn] reloadIn (required):
  Future<ActionOut?> adminReloadPlugin(String name, ReloadIn reloadIn,) async {
    final response = await adminReloadPluginWithHttpInfo(name, reloadIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ActionOut',) as ActionOut;
    
    }
    return null;
  }

  /// Changes a droplet's plan.
  ///
  /// Changes a droplet's plan. Same refusal as delete and for the same reason: a DOKS node's size is the node pool's to declare.  disk=true is a PERMANENT resize — the disk grows and DO can never resize the droplet DOWN again. disk=false (the default) changes CPU/RAM only and is reversible. DO requires the droplet to be powered off and applies the change asynchronously, so the response carries the action to poll, not a completed change.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the DO droplet id, from the path. Numeric.
  ///
  /// * [DropletIn] dropletIn (required):
  Future<Response> adminResizeDropletWithHttpInfo(String id, DropletIn dropletIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/infra/droplets/{id}/resize'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = dropletIn;

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

  /// Changes a droplet's plan.
  ///
  /// Changes a droplet's plan. Same refusal as delete and for the same reason: a DOKS node's size is the node pool's to declare.  disk=true is a PERMANENT resize — the disk grows and DO can never resize the droplet DOWN again. disk=false (the default) changes CPU/RAM only and is reversible. DO requires the droplet to be powered off and applies the change asynchronously, so the response carries the action to poll, not a completed change.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the DO droplet id, from the path. Numeric.
  ///
  /// * [DropletIn] dropletIn (required):
  Future<MutationOut?> adminResizeDroplet(String id, DropletIn dropletIn,) async {
    final response = await adminResizeDropletWithHttpInfo(id, dropletIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MutationOut',) as MutationOut;
    
    }
    return null;
  }

  /// Grows a volume.
  ///
  /// Grows a volume. GROW ONLY — see Volume.ExpandTo for why the other direction is a data migration this board deliberately refuses to run.  The MECHANISM follows the volume's owner, because there is exactly one way to grow each kind completely. A volume a PVC claims is grown by patching the claim: the CSI driver then resizes the DigitalOcean device AND grows the filesystem on it, leaving claim, PV, device and filesystem all agreeing. Calling DigitalOcean directly for that volume would grow the device while the PV kept declaring the old capacity and the filesystem never grew at all. One operation, one correct mechanism per owner — not two ways to do it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the DO volume id, from the path.
  ///
  /// * [VolumeIn] volumeIn (required):
  Future<Response> adminResizeVolumeWithHttpInfo(String id, VolumeIn volumeIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/infra/volumes/{id}/resize'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = volumeIn;

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

  /// Grows a volume.
  ///
  /// Grows a volume. GROW ONLY — see Volume.ExpandTo for why the other direction is a data migration this board deliberately refuses to run.  The MECHANISM follows the volume's owner, because there is exactly one way to grow each kind completely. A volume a PVC claims is grown by patching the claim: the CSI driver then resizes the DigitalOcean device AND grows the filesystem on it, leaving claim, PV, device and filesystem all agreeing. Calling DigitalOcean directly for that volume would grow the device while the PV kept declaring the old capacity and the filesystem never grew at all. One operation, one correct mechanism per owner — not two ways to do it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the DO volume id, from the path.
  ///
  /// * [VolumeIn] volumeIn (required):
  Future<MutationOut?> adminResizeVolume(String id, VolumeIn volumeIn,) async {
    final response = await adminResizeVolumeWithHttpInfo(id, volumeIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MutationOut',) as MutationOut;
    
    }
    return null;
  }

  /// Is the fleet money board: total prepaid balances held, total realized spend, MRR, ARPU, a per-customer table sorted highest-revenue first, and a real 30-day spend trend from the usage ledger.
  ///
  /// Is the fleet money board: total prepaid balances held, total realized spend, MRR, ARPU, a per-customer table sorted highest-revenue first, and a real 30-day spend trend from the usage ledger.  ORTHOGONAL to /v1/admin/finance, which is the COGS/margin view of what WE pay vendors. This is the customer side: what each customer holds, spends and subscribes to.  arpu divides realized spend by PAYING customers, not by all of them — a fleet of free signups must not deflate the number. A customer counts as paying when it has spend or MRR.  An org whose money did not read degrades to honest zeros and marks the commerce source degraded in sources[], so a partial fleet read is visible instead of quietly low.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> adminRevenueWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/revenue';

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

  /// Is the fleet money board: total prepaid balances held, total realized spend, MRR, ARPU, a per-customer table sorted highest-revenue first, and a real 30-day spend trend from the usage ledger.
  ///
  /// Is the fleet money board: total prepaid balances held, total realized spend, MRR, ARPU, a per-customer table sorted highest-revenue first, and a real 30-day spend trend from the usage ledger.  ORTHOGONAL to /v1/admin/finance, which is the COGS/margin view of what WE pay vendors. This is the customer side: what each customer holds, spends and subscribes to.  arpu divides realized spend by PAYING customers, not by all of them — a fleet of free signups must not deflate the number. A customer counts as paying when it has spend or MRR.  An org whose money did not read degrades to honest zeros and marks the commerce source degraded in sources[], so a partial fleet read is visible instead of quietly low.
  Future<RevenueOut?> adminRevenue() async {
    final response = await adminRevenueWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RevenueOut',) as RevenueOut;
    
    }
    return null;
  }

  /// Lists IAM roles for one owner org, forwarded VERBATIM from IAM's get-roles.
  ///
  /// Lists IAM roles for one owner org, forwarded VERBATIM from IAM's get-roles.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  ///   Owner is the org whose rows to read. Defaults to the admin org, which owns the platform's roles and applications.
  ///
  /// * [String] p:
  ///   Page is the 1-based page number. Forwarded only when set — IAM applies its own default otherwise.
  ///
  /// * [String] pageSize:
  ///   PageSize is rows per page. Forwarded only when set.
  Future<Response> adminRolesWithHttpInfo({ String? owner, String? p, String? pageSize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/roles';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (owner != null) {
      queryParams.addAll(_queryParams('', 'owner', owner));
    }
    if (p != null) {
      queryParams.addAll(_queryParams('', 'p', p));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
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

  /// Lists IAM roles for one owner org, forwarded VERBATIM from IAM's get-roles.
  ///
  /// Lists IAM roles for one owner org, forwarded VERBATIM from IAM's get-roles.
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  ///   Owner is the org whose rows to read. Defaults to the admin org, which owns the platform's roles and applications.
  ///
  /// * [String] p:
  ///   Page is the 1-based page number. Forwarded only when set — IAM applies its own default otherwise.
  ///
  /// * [String] pageSize:
  ///   PageSize is rows per page. Forwarded only when set.
  Future<IamRowsOut?> adminRoles({ String? owner, String? p, String? pageSize, }) async {
    final response = await adminRolesWithHttpInfo( owner: owner, p: p, pageSize: pageSize, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IamRowsOut',) as IamRowsOut;
    
    }
    return null;
  }

  /// Sets a node pool's node count — the ONE correct way to change how many nodes a DOKS cluster has.
  ///
  /// Sets a node pool's node count — the ONE correct way to change how many nodes a DOKS cluster has.  The response states what the board could NOT prove: DOKS picks which nodes a shrink removes, so no particular pod is shown to survive one. See NodePool.ScaleTo.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the DOKS cluster id, from the path.
  ///
  /// * [String] pool (required):
  ///   Pool is the node pool, from the path. Its DO id or its name — both are unique within a cluster, and an operator reads the name off the board.
  ///
  /// * [ScaleIn] scaleIn (required):
  Future<Response> adminScaleNodePoolWithHttpInfo(String id, String pool, ScaleIn scaleIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/infra/clusters/{id}/nodepools/{pool}/scale'
      .replaceAll('{id}', id)
      .replaceAll('{pool}', pool);

    // ignore: prefer_final_locals
    Object? postBody = scaleIn;

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

  /// Sets a node pool's node count — the ONE correct way to change how many nodes a DOKS cluster has.
  ///
  /// Sets a node pool's node count — the ONE correct way to change how many nodes a DOKS cluster has.  The response states what the board could NOT prove: DOKS picks which nodes a shrink removes, so no particular pod is shown to survive one. See NodePool.ScaleTo.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the DOKS cluster id, from the path.
  ///
  /// * [String] pool (required):
  ///   Pool is the node pool, from the path. Its DO id or its name — both are unique within a cluster, and an operator reads the name off the board.
  ///
  /// * [ScaleIn] scaleIn (required):
  Future<MutationOut?> adminScaleNodePool(String id, String pool, ScaleIn scaleIn,) async {
    final response = await adminScaleNodePoolWithHttpInfo(id, pool, scaleIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MutationOut',) as MutationOut;
    
    }
    return null;
  }

  /// Reads the launch board: every hosted service in the registry with its LIVE waitlist mode, evaluated through the flag engine.
  ///
  /// Reads the launch board: every hosted service in the registry with its LIVE waitlist mode, evaluated through the flag engine. This is the \"remove the waitlist one service at a time\" view.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> adminServicesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/services';

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

  /// Reads the launch board: every hosted service in the registry with its LIVE waitlist mode, evaluated through the flag engine.
  ///
  /// Reads the launch board: every hosted service in the registry with its LIVE waitlist mode, evaluated through the flag engine. This is the \"remove the waitlist one service at a time\" view.
  Future<ServicesOut?> adminServices() async {
    final response = await adminServicesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ServicesOut',) as ServicesOut;
    
    }
    return null;
  }

  /// Stores or overwrites ONE platform switch's definition and answers with the whole board as it now stands.
  ///
  /// Stores or overwrites ONE platform switch's definition and answers with the whole board as it now stands. The flip is hot: this pod applies it immediately and peers converge within one evaluation TTL (15s by default), with no redeploy.  The body reaches the flag engine BYTE-FOR-BYTE — it is the engine's definition format, not this layer's, so a field the engine understands and admin does not must still arrive intact. setFlagIn names the two fields that matter for documentation; it is not a filter.  The write is recorded in the store's activity log against the caller's email.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   Key is the switch to write, taken from the path (e.g. \"waitlist.chat\").
  ///
  /// * [SetFlagIn] setFlagIn (required):
  Future<Response> adminSetFlagWithHttpInfo(String key, SetFlagIn setFlagIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/flags/{key}'
      .replaceAll('{key}', key);

    // ignore: prefer_final_locals
    Object? postBody = setFlagIn;

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

  /// Stores or overwrites ONE platform switch's definition and answers with the whole board as it now stands.
  ///
  /// Stores or overwrites ONE platform switch's definition and answers with the whole board as it now stands. The flip is hot: this pod applies it immediately and peers converge within one evaluation TTL (15s by default), with no redeploy.  The body reaches the flag engine BYTE-FOR-BYTE — it is the engine's definition format, not this layer's, so a field the engine understands and admin does not must still arrive intact. setFlagIn names the two fields that matter for documentation; it is not a filter.  The write is recorded in the store's activity log against the caller's email.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   Key is the switch to write, taken from the path (e.g. \"waitlist.chat\").
  ///
  /// * [SetFlagIn] setFlagIn (required):
  Future<FlagsOut?> adminSetFlag(String key, SetFlagIn setFlagIn,) async {
    final response = await adminSetFlagWithHttpInfo(key, setFlagIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FlagsOut',) as FlagsOut;
    
    }
    return null;
  }

  /// Upserts the platform plan promo — the ONE place the offer is configured.
  ///
  /// Upserts the platform plan promo — the ONE place the offer is configured.  The body is commerce's own promo contract and is forwarded BYTE-FOR-BYTE, so no field commerce accepts is dropped in transit. promoIn names its documented fields.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PromoIn] promoIn (required):
  Future<Response> adminSetPromoWithHttpInfo(PromoIn promoIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/promos';

    // ignore: prefer_final_locals
    Object? postBody = promoIn;

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

  /// Upserts the platform plan promo — the ONE place the offer is configured.
  ///
  /// Upserts the platform plan promo — the ONE place the offer is configured.  The body is commerce's own promo contract and is forwarded BYTE-FOR-BYTE, so no field commerce accepts is dropped in transit. promoIn names its documented fields.
  ///
  /// Parameters:
  ///
  /// * [PromoIn] promoIn (required):
  Future<RawOut?> adminSetPromo(PromoIn promoIn,) async {
    final response = await adminSetPromoWithHttpInfo(promoIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RawOut',) as RawOut;
    
    }
    return null;
  }

  /// Flips ONE service's waitlist switch — the launch lever.
  ///
  /// Flips ONE service's waitlist switch — the launch lever. Hot: it takes effect on this pod immediately and on peers within one evaluation TTL, with no redeploy. An unknown service is a 404, not a silent create; onboarding goes through upsertService.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] service (required):
  ///   Service is the slug to flip, taken from the path.
  ///
  /// * [ServiceModeIn] serviceModeIn (required):
  Future<Response> adminSetServiceModeWithHttpInfo(String service, ServiceModeIn serviceModeIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/services/{service}/mode'
      .replaceAll('{service}', service);

    // ignore: prefer_final_locals
    Object? postBody = serviceModeIn;

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

  /// Flips ONE service's waitlist switch — the launch lever.
  ///
  /// Flips ONE service's waitlist switch — the launch lever. Hot: it takes effect on this pod immediately and on peers within one evaluation TTL, with no redeploy. An unknown service is a 404, not a silent create; onboarding goes through upsertService.
  ///
  /// Parameters:
  ///
  /// * [String] service (required):
  ///   Service is the slug to flip, taken from the path.
  ///
  /// * [ServiceModeIn] serviceModeIn (required):
  Future<ServiceOut?> adminSetServiceMode(String service, ServiceModeIn serviceModeIn,) async {
    final response = await adminSetServiceModeWithHttpInfo(service, serviceModeIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ServiceOut',) as ServiceOut;
    
    }
    return null;
  }

  /// Takes a point-in-time snapshot of one volume — the undo a delete relies on, available on its own so an operator can take one before any risky change.
  ///
  /// Takes a point-in-time snapshot of one volume — the undo a delete relies on, available on its own so an operator can take one before any risky change.  It re-scans the board first (never the cache) so the volume it snapshots is one that exists right now, and audits the outcome either way.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the DO volume id, from the path.
  ///
  /// * [VolumeIn] volumeIn (required):
  Future<Response> adminSnapshotVolumeWithHttpInfo(String id, VolumeIn volumeIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/infra/volumes/{id}/snapshot'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = volumeIn;

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

  /// Takes a point-in-time snapshot of one volume — the undo a delete relies on, available on its own so an operator can take one before any risky change.
  ///
  /// Takes a point-in-time snapshot of one volume — the undo a delete relies on, available on its own so an operator can take one before any risky change.  It re-scans the board first (never the cache) so the volume it snapshots is one that exists right now, and audits the outcome either way.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the DO volume id, from the path.
  ///
  /// * [VolumeIn] volumeIn (required):
  Future<VolumeSnapshotOut?> adminSnapshotVolume(String id, VolumeIn volumeIn,) async {
    final response = await adminSnapshotVolumeWithHttpInfo(id, volumeIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VolumeSnapshotOut',) as VolumeSnapshotOut;
    
    }
    return null;
  }

  /// Answers GET /v1/admin/subscriptions.
  ///
  /// Answers GET /v1/admin/subscriptions.   GET /v1/admin/subscriptions?org=&status=&limit=
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   Status filters on the subscription's LATEST lifecycle status (active, trialing, canceled, …), matched case-insensitively.
  ///
  /// * [String] org:
  ///   Org filters to one tenant, matched exactly.
  ///
  /// * [String] limit:
  ///   Limit caps the rows returned. total still reports the full match count.
  Future<Response> adminSubscriptionsWithHttpInfo({ String? status, String? org, String? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/subscriptions';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (org != null) {
      queryParams.addAll(_queryParams('', 'org', org));
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

  /// Answers GET /v1/admin/subscriptions.
  ///
  /// Answers GET /v1/admin/subscriptions.   GET /v1/admin/subscriptions?org=&status=&limit=
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   Status filters on the subscription's LATEST lifecycle status (active, trialing, canceled, …), matched case-insensitively.
  ///
  /// * [String] org:
  ///   Org filters to one tenant, matched exactly.
  ///
  /// * [String] limit:
  ///   Limit caps the rows returned. total still reports the full match count.
  Future<SubscriptionsOut?> adminSubscriptions({ String? status, String? org, String? limit, }) async {
    final response = await adminSubscriptionsWithHttpInfo( status: status, org: org, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SubscriptionsOut',) as SubscriptionsOut;
    
    }
    return null;
  }

  /// subsystems answers GET /v1/admin/subsystems.
  ///
  /// subsystems answers GET /v1/admin/subsystems. ?range=24h|7d|30d bounds the telemetry window (default 30d) — the same enum, and the same helpers, as the o11y board.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range bounds the telemetry window: 24h, 7d or 30d. Anything else, including empty, resolves to the default through the same o11yRange the o11y board uses.
  Future<Response> adminSubsystemsWithHttpInfo({ String? range, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/subsystems';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (range != null) {
      queryParams.addAll(_queryParams('', 'range', range));
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

  /// subsystems answers GET /v1/admin/subsystems.
  ///
  /// subsystems answers GET /v1/admin/subsystems. ?range=24h|7d|30d bounds the telemetry window (default 30d) — the same enum, and the same helpers, as the o11y board.
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range bounds the telemetry window: 24h, 7d or 30d. Anything else, including empty, resolves to the default through the same o11yRange the o11y board uses.
  Future<SubsystemsOut?> adminSubsystems({ String? range, }) async {
    final response = await adminSubsystemsWithHttpInfo( range: range, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SubsystemsOut',) as SubsystemsOut;
    
    }
    return null;
  }

  /// Cuts off every member of the org: IAM refuses a forbidden user at login AND at token issuance, so a suspended customer can neither sign in nor mint a fresh token.
  ///
  /// Cuts off every member of the org: IAM refuses a forbidden user at login AND at token issuance, so a suspended customer can neither sign in nor mint a fresh token. Fully reversible with ReactivateCustomer.  The result names every user updated and every user that was NOT — a partial failure leaves the org in a mixed state and says so instead of reporting a clean success.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///   Org is the tenant slug from the path.
  Future<Response> adminSuspendCustomerWithHttpInfo(String org,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/customers/{org}/suspend'
      .replaceAll('{org}', org);

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

  /// Cuts off every member of the org: IAM refuses a forbidden user at login AND at token issuance, so a suspended customer can neither sign in nor mint a fresh token.
  ///
  /// Cuts off every member of the org: IAM refuses a forbidden user at login AND at token issuance, so a suspended customer can neither sign in nor mint a fresh token. Fully reversible with ReactivateCustomer.  The result names every user updated and every user that was NOT — a partial failure leaves the org in a mixed state and says so instead of reporting a clean success.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///   Org is the tenant slug from the path.
  Future<AccessOut?> adminSuspendCustomer(String org,) async {
    final response = await adminSuspendCustomerWithHttpInfo(org,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccessOut',) as AccessOut;
    
    }
    return null;
  }

  /// Answers the operator's \"Sync now\" button.
  ///
  /// Answers the operator's \"Sync now\" button. There is nothing to kick: admin aggregates LIVE on every read, so the button is just a re-read. It acknowledges honestly with started:true rather than pretending a batch job was queued.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> adminSyncWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/sync';

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

  /// Answers the operator's \"Sync now\" button.
  ///
  /// Answers the operator's \"Sync now\" button. There is nothing to kick: admin aggregates LIVE on every read, so the button is just a re-read. It acknowledges honestly with started:true rather than pretending a batch job was queued.
  Future<SyncOut?> adminSync() async {
    final response = await adminSyncWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SyncOut',) as SyncOut;
    
    }
    return null;
  }

  /// Edits one cap by id — raise or lower the ceiling, flip enforcement.
  ///
  /// Edits one cap by id — raise or lower the ceiling, flip enforcement. The body is commerce's spend-alert patch contract, forwarded byte-for-byte.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the cap to edit or remove, from the path. Unused by the list and create ops.
  ///
  /// * [CapIn] capIn (required):
  Future<Response> adminUpdateCapWithHttpInfo(String id, CapIn capIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/caps/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = capIn;

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

  /// Edits one cap by id — raise or lower the ceiling, flip enforcement.
  ///
  /// Edits one cap by id — raise or lower the ceiling, flip enforcement. The body is commerce's spend-alert patch contract, forwarded byte-for-byte.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the cap to edit or remove, from the path. Unused by the list and create ops.
  ///
  /// * [CapIn] capIn (required):
  Future<RawOut?> adminUpdateCap(String id, CapIn capIn,) async {
    final response = await adminUpdateCapWithHttpInfo(id, capIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RawOut',) as RawOut;
    
    }
    return null;
  }

  /// Onboards a hosted service, or edits one, so a new host comes under the launch gate WITHOUT a redeploy.
  ///
  /// Onboards a hosted service, or edits one, so a new host comes under the launch gate WITHOUT a redeploy. Re-registering an existing service PRESERVES its live switch — editing the hosts of a service that is already open must not silently close it again.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ServiceInput] serviceInput (required):
  Future<Response> adminUpsertServiceWithHttpInfo(ServiceInput serviceInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/services';

    // ignore: prefer_final_locals
    Object? postBody = serviceInput;

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

  /// Onboards a hosted service, or edits one, so a new host comes under the launch gate WITHOUT a redeploy.
  ///
  /// Onboards a hosted service, or edits one, so a new host comes under the launch gate WITHOUT a redeploy. Re-registering an existing service PRESERVES its live switch — editing the hosts of a service that is already open must not silently close it again.
  ///
  /// Parameters:
  ///
  /// * [ServiceInput] serviceInput (required):
  Future<ServiceOut?> adminUpsertService(ServiceInput serviceInput,) async {
    final response = await adminUpsertServiceWithHttpInfo(serviceInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ServiceOut',) as ServiceOut;
    
    }
    return null;
  }

  /// Returns the trailing 30 days of AI usage: one org's when org names one, else the whole fleet's — the spend, the tokens and the requests, the daily curve behind them, and the split by model.
  ///
  /// Returns the trailing 30 days of AI usage: one org's when org names one, else the whole fleet's — the spend, the tokens and the requests, the daily curve behind them, and the split by model.  It reads the AI ledger (ledger.go), which is the plane that owns this question. It used to ask the commerce billing API instead, once per org, and answer with a hardcoded empty series, zero tokens and zero requests, on the reasoning that a trend and a split were \"not derivable from the commerce billing API\". They are not — but the question was never commerce's. hanzo.cloud_usage carries a row per served request, so all three fall out of the same window the totals do.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org:
  ///   Org reads ONE tenant's trailing-30-day total instead of the fleet sum. Honoured for a SuperAdmin only — a white-label admin always reads their own org.  The window is the one core.OrgMoney returns, and it is what the operator board beside this already labelled (\"Daily, last 30 days\"). The wire used to say month-to-date while that UI said 30 days; they agree now. This comment is REGENERATED into plugin/admin/openapi.json and openapi.yaml as the ?org parameter description, so a stale word here ships as a contradiction inside one spec file — which is the drift this whole change set exists to remove.
  Future<Response> adminUsageWithHttpInfo({ String? org, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/usage';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (org != null) {
      queryParams.addAll(_queryParams('', 'org', org));
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

  /// Returns the trailing 30 days of AI usage: one org's when org names one, else the whole fleet's — the spend, the tokens and the requests, the daily curve behind them, and the split by model.
  ///
  /// Returns the trailing 30 days of AI usage: one org's when org names one, else the whole fleet's — the spend, the tokens and the requests, the daily curve behind them, and the split by model.  It reads the AI ledger (ledger.go), which is the plane that owns this question. It used to ask the commerce billing API instead, once per org, and answer with a hardcoded empty series, zero tokens and zero requests, on the reasoning that a trend and a split were \"not derivable from the commerce billing API\". They are not — but the question was never commerce's. hanzo.cloud_usage carries a row per served request, so all three fall out of the same window the totals do.
  ///
  /// Parameters:
  ///
  /// * [String] org:
  ///   Org reads ONE tenant's trailing-30-day total instead of the fleet sum. Honoured for a SuperAdmin only — a white-label admin always reads their own org.  The window is the one core.OrgMoney returns, and it is what the operator board beside this already labelled (\"Daily, last 30 days\"). The wire used to say month-to-date while that UI said 30 days; they agree now. This comment is REGENERATED into plugin/admin/openapi.json and openapi.yaml as the ?org parameter description, so a stale word here ships as a contradiction inside one spec file — which is the drift this whole change set exists to remove.
  Future<UsageOut?> adminUsage({ String? org, }) async {
    final response = await adminUsageWithHttpInfo( org: org, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UsageOut',) as UsageOut;
    
    }
    return null;
  }

  /// Splits our upstream AI usage by how it was FUNDED: one row per (provider, model) over the window, tagged credit (provider grant still remaining), paid (grant exhausted) or paid_only (no grant at all).
  ///
  /// Splits our upstream AI usage by how it was FUNDED: one row per (provider, model) over the window, tagged credit (provider grant still remaining), paid (grant exhausted) or paid_only (no grant at all).  The class is resolved at the PROVIDER level from the credit ledger, not per call — the per-call split, and the `byo` class, arrive when the metering write stamps a funding column on cloud_usage and this can GROUP BY it directly. Until then a provider with remaining grant reports all of its usage as credit, which is right in aggregate and approximate at the boundary where a grant runs out mid-window.  An unparseable window falls back to the last 30 days rather than refusing: this is a dashboard read, and a typo in a date must not blank the board.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] from:
  ///   From is the inclusive start of the window. Unparseable or absent, together with To, falls back to the last 30 days.
  ///
  /// * [String] to:
  ///   To is the exclusive end of the window.
  Future<Response> adminUsageFundingWithHttpInfo({ String? from, String? to, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/usage/funding';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (from != null) {
      queryParams.addAll(_queryParams('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_queryParams('', 'to', to));
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

  /// Splits our upstream AI usage by how it was FUNDED: one row per (provider, model) over the window, tagged credit (provider grant still remaining), paid (grant exhausted) or paid_only (no grant at all).
  ///
  /// Splits our upstream AI usage by how it was FUNDED: one row per (provider, model) over the window, tagged credit (provider grant still remaining), paid (grant exhausted) or paid_only (no grant at all).  The class is resolved at the PROVIDER level from the credit ledger, not per call — the per-call split, and the `byo` class, arrive when the metering write stamps a funding column on cloud_usage and this can GROUP BY it directly. Until then a provider with remaining grant reports all of its usage as credit, which is right in aggregate and approximate at the boundary where a grant runs out mid-window.  An unparseable window falls back to the last 30 days rather than refusing: this is a dashboard read, and a typo in a date must not blank the board.
  ///
  /// Parameters:
  ///
  /// * [String] from:
  ///   From is the inclusive start of the window. Unparseable or absent, together with To, falls back to the last 30 days.
  ///
  /// * [String] to:
  ///   To is the exclusive end of the window.
  Future<UsageFundingOut?> adminUsageFunding({ String? from, String? to, }) async {
    final response = await adminUsageFundingWithHttpInfo( from: from, to: to, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UsageFundingOut',) as UsageFundingOut;
    
    }
    return null;
  }

  /// Lists the user directory across the caller's tenant window, one page at a time.
  ///
  /// Lists the user directory across the caller's tenant window, one page at a time. total is IAM's REAL total, so the console can page through it.  A SuperAdmin may aim the read at one tenant with org; a white-label admin cannot — for them the owner is hard-pinned to their own org and org is ignored, which is what keeps the directory from becoming a cross-tenant read.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org:
  ///   Org narrows the directory to ONE tenant. Honoured for a SuperAdmin only — a white-label admin is pinned to their own org and this is ignored.
  ///
  /// * [String] q:
  ///   Query is a free-text filter, matched by IAM as a \"contains\" over the user name.
  ///
  /// * [String] p:
  ///   Page is the 1-based page number. Defaults to \"1\"; IAM returns zero rows AND a zero total when it is unset, so this layer never leaves it empty.
  ///
  /// * [String] pageSize:
  ///   PageSize is rows per page. Defaults to \"200\", the shared admin page size.
  Future<Response> adminUsersWithHttpInfo({ String? org, String? q, String? p, String? pageSize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/users';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (org != null) {
      queryParams.addAll(_queryParams('', 'org', org));
    }
    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (p != null) {
      queryParams.addAll(_queryParams('', 'p', p));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
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

  /// Lists the user directory across the caller's tenant window, one page at a time.
  ///
  /// Lists the user directory across the caller's tenant window, one page at a time. total is IAM's REAL total, so the console can page through it.  A SuperAdmin may aim the read at one tenant with org; a white-label admin cannot — for them the owner is hard-pinned to their own org and org is ignored, which is what keeps the directory from becoming a cross-tenant read.
  ///
  /// Parameters:
  ///
  /// * [String] org:
  ///   Org narrows the directory to ONE tenant. Honoured for a SuperAdmin only — a white-label admin is pinned to their own org and this is ignored.
  ///
  /// * [String] q:
  ///   Query is a free-text filter, matched by IAM as a \"contains\" over the user name.
  ///
  /// * [String] p:
  ///   Page is the 1-based page number. Defaults to \"1\"; IAM returns zero rows AND a zero total when it is unset, so this layer never leaves it empty.
  ///
  /// * [String] pageSize:
  ///   PageSize is rows per page. Defaults to \"200\", the shared admin page size.
  Future<UsersOut?> adminUsers({ String? org, String? q, String? p, String? pageSize, }) async {
    final response = await adminUsersWithHttpInfo( org: org, q: q, p: p, pageSize: pageSize, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UsersOut',) as UsersOut;
    
    }
    return null;
  }

  /// Returns the realtime block-storage board: the DigitalOcean volume fleet (count, capacity, monthly list cost, per-volume region and attachment) plus the analytics datastore's OWN fill, read from its system.disks.
  ///
  /// Returns the realtime block-storage board: the DigitalOcean volume fleet (count, capacity, monthly list cost, per-volume region and attachment) plus the analytics datastore's OWN fill, read from its system.disks.  A volume's usedGiB and pct are null, always: DO exposes capacity and attachment but no fill, so the console renders \"—\" rather than a number nobody measured. The datastore card is the one real fill here, and it is the number to scale on.  The two sources degrade independently — a DO outage still returns the datastore fill, and a disconnected datastore still returns the DO fleet.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> adminVolumesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/volumes';

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

  /// Returns the realtime block-storage board: the DigitalOcean volume fleet (count, capacity, monthly list cost, per-volume region and attachment) plus the analytics datastore's OWN fill, read from its system.disks.
  ///
  /// Returns the realtime block-storage board: the DigitalOcean volume fleet (count, capacity, monthly list cost, per-volume region and attachment) plus the analytics datastore's OWN fill, read from its system.disks.  A volume's usedGiB and pct are null, always: DO exposes capacity and attachment but no fill, so the console renders \"—\" rather than a number nobody measured. The datastore card is the one real fill here, and it is the number to scale on.  The two sources degrade independently — a DO outage still returns the datastore fill, and a disconnected datastore still returns the DO fleet.
  Future<VolumesOut?> adminVolumes() async {
    final response = await adminVolumesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VolumesOut',) as VolumesOut;
    
    }
    return null;
  }

  /// Reads one waitlist's leaderboard from the Hanzo waitlist engine — position, points and referral standing per entry — proxied server-authed with the engine secret, never a client credential.
  ///
  /// Reads one waitlist's leaderboard from the Hanzo waitlist engine — position, points and referral standing per entry — proxied server-authed with the engine secret, never a client credential.  The engine's payload is forwarded VERBATIM as data; the console normalizes it. When the engine is not configured on this deployment the read still succeeds, with an empty object and a msg saying so, so the panel shows an honest not-wired state instead of an error the operator would chase.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] waitlist:
  ///   Waitlist is the waitlist slug to read (e.g. \"chat\"). The engine decides what an empty slug means.
  ///
  /// * [String] page:
  ///   Page is the 1-based page number.
  ///
  /// * [String] pageSize:
  ///   PageSize is entries per page.
  Future<Response> adminWaitlistWithHttpInfo({ String? waitlist, String? page, String? pageSize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/waitlist';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (waitlist != null) {
      queryParams.addAll(_queryParams('', 'waitlist', waitlist));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
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

  /// Reads one waitlist's leaderboard from the Hanzo waitlist engine — position, points and referral standing per entry — proxied server-authed with the engine secret, never a client credential.
  ///
  /// Reads one waitlist's leaderboard from the Hanzo waitlist engine — position, points and referral standing per entry — proxied server-authed with the engine secret, never a client credential.  The engine's payload is forwarded VERBATIM as data; the console normalizes it. When the engine is not configured on this deployment the read still succeeds, with an empty object and a msg saying so, so the panel shows an honest not-wired state instead of an error the operator would chase.
  ///
  /// Parameters:
  ///
  /// * [String] waitlist:
  ///   Waitlist is the waitlist slug to read (e.g. \"chat\"). The engine decides what an empty slug means.
  ///
  /// * [String] page:
  ///   Page is the 1-based page number.
  ///
  /// * [String] pageSize:
  ///   PageSize is entries per page.
  Future<RawOut?> adminWaitlist({ String? waitlist, String? page, String? pageSize, }) async {
    final response = await adminWaitlistWithHttpInfo( waitlist: waitlist, page: page, pageSize: pageSize, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RawOut',) as RawOut;
    
    }
    return null;
  }

  /// Grants a user waitlist points, moving them up toward the access cutoff.
  ///
  /// Grants a user waitlist points, moving them up toward the access cutoff. This is the access lever: the cutoff itself does not move, the person does.  It funnels through the engine's verified grant seam (POST /v1/waitlist/award with source=\"grant\" — the ONE path that honours an explicit points amount) and writes a tamper-evident audit row either way, so a FAILED grant is recorded too. The reason field goes only to that row.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [WaitlistBoostRequest] waitlistBoostRequest (required):
  Future<Response> adminWaitlistBoostWithHttpInfo(WaitlistBoostRequest waitlistBoostRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/waitlist/boost';

    // ignore: prefer_final_locals
    Object? postBody = waitlistBoostRequest;

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

  /// Grants a user waitlist points, moving them up toward the access cutoff.
  ///
  /// Grants a user waitlist points, moving them up toward the access cutoff. This is the access lever: the cutoff itself does not move, the person does.  It funnels through the engine's verified grant seam (POST /v1/waitlist/award with source=\"grant\" — the ONE path that honours an explicit points amount) and writes a tamper-evident audit row either way, so a FAILED grant is recorded too. The reason field goes only to that row.
  ///
  /// Parameters:
  ///
  /// * [WaitlistBoostRequest] waitlistBoostRequest (required):
  Future<RawOut?> adminWaitlistBoost(WaitlistBoostRequest waitlistBoostRequest,) async {
    final response = await adminWaitlistBoostWithHttpInfo(waitlistBoostRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RawOut',) as RawOut;
    
    }
    return null;
  }

  /// Lists every affiliate across the fleet with its ORG exposed, plus a fleet summary of lifetime accrued, still-pending and paid commission in integer cents.
  ///
  /// Lists every affiliate across the fleet with its ORG exposed, plus a fleet summary of lifetime accrued, still-pending and paid commission in integer cents.  PLATFORM SUDO ONLY, and a non-admin is refused outright. This is the cross-tenant view and it names orgs — exactly what the partner-facing leaderboard refuses to do. There is deliberately no org-scoped variant of this read; a partner sees its own standing through its own dashboard. Bounded per request.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned. Absent or non-positive means the default of 500; anything above 1000 is clamped to 1000.
  Future<Response> getAdminAffiliatesWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/affiliates';

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

  /// Lists every affiliate across the fleet with its ORG exposed, plus a fleet summary of lifetime accrued, still-pending and paid commission in integer cents.
  ///
  /// Lists every affiliate across the fleet with its ORG exposed, plus a fleet summary of lifetime accrued, still-pending and paid commission in integer cents.  PLATFORM SUDO ONLY, and a non-admin is refused outright. This is the cross-tenant view and it names orgs — exactly what the partner-facing leaderboard refuses to do. There is deliberately no org-scoped variant of this read; a partner sees its own standing through its own dashboard. Bounded per request.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned. Absent or non-positive means the default of 500; anything above 1000 is clamped to 1000.
  Future<DirectoryOut?> getAdminAffiliates({ int? limit, }) async {
    final response = await getAdminAffiliatesWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DirectoryOut',) as DirectoryOut;
    
    }
    return null;
  }

  /// Returns the platform's whole author program — every org's author record, not the caller's — with each one's repository and deploy counts and a fleet roll-up of the money accrued, pending and paid.
  ///
  /// Returns the platform's whole author program — every org's author record, not the caller's — with each one's repository and deploy counts and a fleet roll-up of the money accrued, pending and paid.  It is a Hanzo platform operation: a caller who is not a SuperAdmin gets 403. It exposes the owning org of each author, which no tenant-facing read ever does.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit bounds the page. 0 or less means the default of 500; anything above 1000 is clamped to 1000.
  Future<Response> getAdminAuthorsWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/authors';

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

  /// Returns the platform's whole author program — every org's author record, not the caller's — with each one's repository and deploy counts and a fleet roll-up of the money accrued, pending and paid.
  ///
  /// Returns the platform's whole author program — every org's author record, not the caller's — with each one's repository and deploy counts and a fleet roll-up of the money accrued, pending and paid.  It is a Hanzo platform operation: a caller who is not a SuperAdmin gets 403. It exposes the owning org of each author, which no tenant-facing read ever does.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit bounds the page. 0 or less means the default of 500; anything above 1000 is clamped to 1000.
  Future<AdminBook?> getAdminAuthors({ int? limit, }) async {
    final response = await getAdminAuthorsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AdminBook',) as AdminBook;
    
    }
    return null;
  }

  /// Returns the audit trail behind ONE author's royalty — the same payload the author reads at /v1/authors/basis, from the same builder, so support sees exactly what the author sees rather than a parallel view free to drift.
  ///
  /// Returns the audit trail behind ONE author's royalty — the same payload the author reads at /v1/authors/basis, from the same builder, so support sees exactly what the author sees rather than a parallel view free to drift.  The data object carries: id, status, asOf, shareBps, platformShareBps, defaultShareBps, shareSource, settlesTo, method (the formula, the rate card and the sizing), ledger (every row with its spend, the share applied then, the platform's matching half, whether it satisfies the formula and the attribution edges that explain it), reconciliation (does the ledger foot to the balance) and window (what slice was actually returned) — plus period when one was requested.  A Hanzo platform operation: a caller who is not a SuperAdmin gets 403.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the author record's handle, from the path.
  ///
  /// * [String] period:
  ///   Period is the UTC accrual month, YYYY-MM. Empty means every period; any other shape is refused with 400.
  Future<Response> getAdminAuthorsByIdBasisWithHttpInfo(String id, { String? period, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/authors/{id}/basis'
      .replaceAll('{id}', id);

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

  /// Returns the audit trail behind ONE author's royalty — the same payload the author reads at /v1/authors/basis, from the same builder, so support sees exactly what the author sees rather than a parallel view free to drift.
  ///
  /// Returns the audit trail behind ONE author's royalty — the same payload the author reads at /v1/authors/basis, from the same builder, so support sees exactly what the author sees rather than a parallel view free to drift.  The data object carries: id, status, asOf, shareBps, platformShareBps, defaultShareBps, shareSource, settlesTo, method (the formula, the rate card and the sizing), ledger (every row with its spend, the share applied then, the platform's matching half, whether it satisfies the formula and the attribution edges that explain it), reconciliation (does the ledger foot to the balance) and window (what slice was actually returned) — plus period when one was requested.  A Hanzo platform operation: a caller who is not a SuperAdmin gets 403.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the author record's handle, from the path.
  ///
  /// * [String] period:
  ///   Period is the UTC accrual month, YYYY-MM. Empty means every period; any other shape is refused with 400.
  Future<BasisResult?> getAdminAuthorsByIdBasis(String id, { String? period, }) async {
    final response = await getAdminAuthorsByIdBasisWithHttpInfo(id,  period: period, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BasisResult',) as BasisResult;
    
    }
    return null;
  }

  /// Returns the full model and provider catalog annotated with each entry's enablement state, for the operator console.
  ///
  /// Returns the full model and provider catalog annotated with each entry's enablement state, for the operator console. Nothing is hidden: this is the admin's view of what exists and what is currently off, in beta or generally available. SuperAdmin only; every other caller is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAdminCatalogWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/catalog';

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

  /// Returns the full model and provider catalog annotated with each entry's enablement state, for the operator console.
  ///
  /// Returns the full model and provider catalog annotated with each entry's enablement state, for the operator console. Nothing is hidden: this is the admin's view of what exists and what is currently off, in beta or generally available. SuperAdmin only; every other caller is refused.
  Future<AdminCatalogOut?> getAdminCatalog() async {
    final response = await getAdminCatalogWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AdminCatalogOut',) as AdminCatalogOut;
    
    }
    return null;
  }

  /// Returns every item an operator has set an enablement state on — its global state (off, beta or ga) and the orgs granted its beta.
  ///
  /// Returns every item an operator has set an enablement state on — its global state (off, beta or ga) and the orgs granted its beta. An item nobody has touched is absent, because an untouched item is generally available; the console composes the candidate list from the live catalog. SuperAdmin only; every other caller is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAdminEnablementWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/enablement';

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

  /// Returns every item an operator has set an enablement state on — its global state (off, beta or ga) and the orgs granted its beta.
  ///
  /// Returns every item an operator has set an enablement state on — its global state (off, beta or ga) and the orgs granted its beta. An item nobody has touched is absent, because an untouched item is generally available; the console composes the candidate list from the live catalog. SuperAdmin only; every other caller is refused.
  Future<AdminEnablementBoard?> getAdminEnablement() async {
    final response = await getAdminEnablementWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AdminEnablementBoard',) as AdminEnablementBoard;
    
    }
    return null;
  }

  /// Answers the referral board: the top referrers by lifetime commission, the funnel conversion rate (referred orgs that have actually produced commission, over all referred orgs), and the accrual LIABILITY the platform owes, broken out by upline level.
  ///
  /// Answers the referral board: the top referrers by lifetime commission, the funnel conversion rate (referred orgs that have actually produced commission, over all referred orgs), and the accrual LIABILITY the platform owes, broken out by upline level.  Read the liability figure carefully — it is commission accrued and NOT yet paid, so it is money owed, not money spent, and the per-level split says how much of it comes from direct referrals versus the second and third levels.  PLATFORM SUDO ONLY, cross-tenant, and it names orgs. It reads the SAME single attribution spine the accrual itself walks, so the board and the ledger cannot disagree. Amounts are integer cents.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAdminReferralsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/referrals';

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

  /// Answers the referral board: the top referrers by lifetime commission, the funnel conversion rate (referred orgs that have actually produced commission, over all referred orgs), and the accrual LIABILITY the platform owes, broken out by upline level.
  ///
  /// Answers the referral board: the top referrers by lifetime commission, the funnel conversion rate (referred orgs that have actually produced commission, over all referred orgs), and the accrual LIABILITY the platform owes, broken out by upline level.  Read the liability figure carefully — it is commission accrued and NOT yet paid, so it is money owed, not money spent, and the per-level split says how much of it comes from direct referrals versus the second and third levels.  PLATFORM SUDO ONLY, cross-tenant, and it names orgs. It reads the SAME single attribution spine the accrual itself walks, so the board and the ledger cannot disagree. Amounts are integer cents.
  Future<ReferralsOut?> getAdminReferrals() async {
    final response = await getAdminReferralsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReferralsOut',) as ReferralsOut;
    
    }
    return null;
  }

  /// Returns every referral edge in the directory with a fleet summary.
  ///
  /// Returns every referral edge in the directory with a fleet summary.  SuperAdmin only, fail-closed. This is the ATTRIBUTION directory — who referred whom and whether that referee became a customer. It carries no amounts because this package issues none. The cross-tenant referral ANALYTICS board (top referrers, conversion) is a different surface, GET /v1/admin/referrals, owned by the affiliates subsystem over the shared attribution spine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] limit:
  ///   Limit is how many referrals to return, as a decimal string in the `?limit=` query. Absent, unparseable or non-positive means 500; over 1000 is clamped to 1000. It is a string rather than a number because the parse that has always served this route trims surrounding whitespace, and one parse rule is better than two.
  Future<Response> getAdminReferralsBonusesWithHttpInfo({ String? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/referrals/bonuses';

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

  /// Returns every referral edge in the directory with a fleet summary.
  ///
  /// Returns every referral edge in the directory with a fleet summary.  SuperAdmin only, fail-closed. This is the ATTRIBUTION directory — who referred whom and whether that referee became a customer. It carries no amounts because this package issues none. The cross-tenant referral ANALYTICS board (top referrers, conversion) is a different surface, GET /v1/admin/referrals, owned by the affiliates subsystem over the shared attribution spine.
  ///
  /// Parameters:
  ///
  /// * [String] limit:
  ///   Limit is how many referrals to return, as a decimal string in the `?limit=` query. Absent, unparseable or non-positive means 500; over 1000 is clamped to 1000. It is a string rather than a number because the parse that has always served this route trims surrounding whitespace, and one parse rule is better than two.
  Future<AdminBonusesEnvelope?> getAdminReferralsBonuses({ String? limit, }) async {
    final response = await getAdminReferralsBonusesWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AdminBonusesEnvelope',) as AdminBonusesEnvelope;
    
    }
    return null;
  }

  /// Returns the whole treasury board for a SuperAdmin: the reserve fund report, the recent double-entry journal, and the Hanzo L1 anchor status of the ledger root.
  ///
  /// Returns the whole treasury board for a SuperAdmin: the reserve fund report, the recent double-entry journal, and the Hanzo L1 anchor status of the ledger root. ?limit= bounds the journal page.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the journal entries returned. Out of range or unparseable takes the default.
  Future<Response> getAdminTreasuryWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/treasury';

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

  /// Returns the whole treasury board for a SuperAdmin: the reserve fund report, the recent double-entry journal, and the Hanzo L1 anchor status of the ledger root.
  ///
  /// Returns the whole treasury board for a SuperAdmin: the reserve fund report, the recent double-entry journal, and the Hanzo L1 anchor status of the ledger root. ?limit= bounds the journal page.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the journal entries returned. Out of range or unparseable takes the default.
  Future<AdminReportOut?> getAdminTreasury({ int? limit, }) async {
    final response = await getAdminTreasuryWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AdminReportOut',) as AdminReportOut;
    
    }
    return null;
  }

  /// Turn one model off, into beta for named orgs, or generally available
  ///
  /// Sets one model's availability overlay — and the price overrides applied on top of the catalog — then answers the new effective overlay, so a console needs no second read. The model id is the whole remaining path, so a slashed id like `acme/some-model-1` addresses intact.  SuperAdmin only; every other caller is 403, decided before the body is read. The overlay is PLATFORM-WIDE — this is the catalog every org prices against, not a per-org setting — and `betaOrgs` is what narrows a beta to named orgs.  Only the fields the patch names change; an entry with no overlay yet starts from the catalog default, which is enabled. `state` is the coherent tri-state setter (`off`|`beta`|`ga`) and the low-level `enabled`/`beta` flags are applied AFTER it, so they win where both are sent; anything else in `state` is 400. A field sent as an explicit `null` arrives indistinguishable from an absent one, so null does not clear anything.  The rule worth reading twice: a disabled entry that still carries beta orgs IS a beta — `{\"enabled\":false,\"betaOrgs\":[\"acme\"]}` leaves acme seeing the model. Only an explicit `off` (or `beta:false`) with an empty list is the absolute kill switch that a user's own beta opt-in can never re-open.  `overrides` is an RFC 7386 merge patch, stored and echoed back verbatim; it must be a JSON object or null — an array or a scalar is refused — and is bounded in size and nesting depth. An uninitialised overlay store answers 503.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> patchAdminCatalogModelsByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/catalog/models/{wildcard1}'
      .replaceAll('{wildcard1}', wildcard1);

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

  /// Turn one model off, into beta for named orgs, or generally available
  ///
  /// Sets one model's availability overlay — and the price overrides applied on top of the catalog — then answers the new effective overlay, so a console needs no second read. The model id is the whole remaining path, so a slashed id like `acme/some-model-1` addresses intact.  SuperAdmin only; every other caller is 403, decided before the body is read. The overlay is PLATFORM-WIDE — this is the catalog every org prices against, not a per-org setting — and `betaOrgs` is what narrows a beta to named orgs.  Only the fields the patch names change; an entry with no overlay yet starts from the catalog default, which is enabled. `state` is the coherent tri-state setter (`off`|`beta`|`ga`) and the low-level `enabled`/`beta` flags are applied AFTER it, so they win where both are sent; anything else in `state` is 400. A field sent as an explicit `null` arrives indistinguishable from an absent one, so null does not clear anything.  The rule worth reading twice: a disabled entry that still carries beta orgs IS a beta — `{\"enabled\":false,\"betaOrgs\":[\"acme\"]}` leaves acme seeing the model. Only an explicit `off` (or `beta:false`) with an empty list is the absolute kill switch that a user's own beta opt-in can never re-open.  `overrides` is an RFC 7386 merge patch, stored and echoed back verbatim; it must be a JSON object or null — an array or a scalar is refused — and is bounded in size and nesting depth. An uninitialised overlay store answers 503.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> patchAdminCatalogModelsByWildcard1(String wildcard1,) async {
    final response = await patchAdminCatalogModelsByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Sets one provider's availability overlay.
  ///
  /// Sets one provider's availability overlay.  The overlay decides whether a provider is off, in beta for named orgs, or generally available, and carries the price overrides applied on top of the catalog. Only the fields the patch names change; every other field keeps the value it had, and an absent overlay starts from the catalog default (enabled). Answers the new effective overlay, so a console needs no second read.  SuperAdmin only.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the provider the overlay belongs to, from the URL.
  ///
  /// * [ProviderPatchIn] providerPatchIn (required):
  Future<Response> patchAdminCatalogProvidersByNameWithHttpInfo(String name, ProviderPatchIn providerPatchIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/catalog/providers/{name}'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = providerPatchIn;

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

  /// Sets one provider's availability overlay.
  ///
  /// Sets one provider's availability overlay.  The overlay decides whether a provider is off, in beta for named orgs, or generally available, and carries the price overrides applied on top of the catalog. Only the fields the patch names change; every other field keeps the value it had, and an absent overlay starts from the catalog default (enabled). Answers the new effective overlay, so a console needs no second read.  SuperAdmin only.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the provider the overlay belongs to, from the URL.
  ///
  /// * [ProviderPatchIn] providerPatchIn (required):
  Future<Overlay?> patchAdminCatalogProvidersByName(String name, ProviderPatchIn providerPatchIn,) async {
    final response = await patchAdminCatalogProvidersByNameWithHttpInfo(name, providerPatchIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Overlay',) as Overlay;
    
    }
    return null;
  }

  /// Approves an affiliate and MINTS its referral code — the moment the partner has a working share link and starts accruing.
  ///
  /// Approves an affiliate and MINTS its referral code — the moment the partner has a working share link and starts accruing.  The code is taken from the body if one is given, else the vanity code the applicant requested, else a slug derived for them. Codes are ONE global namespace, so a taken code is a 409 and nothing is approved. The minted code is also mirrored as a link row so click tracking is uniform across every code the affiliate holds; that mirror is best-effort and its failure never fails the approval.  Approval is what makes an affiliate eligible: before it, attribution against its code does not resolve and no sweep accrues to it. PLATFORM SUDO ONLY. Audited.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the affiliate to approve, from the path.
  ///
  /// * [Approval] approval (required):
  Future<Response> postAdminAffiliatesByIdApproveWithHttpInfo(String id, Approval approval,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/affiliates/{id}/approve'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = approval;

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

  /// Approves an affiliate and MINTS its referral code — the moment the partner has a working share link and starts accruing.
  ///
  /// Approves an affiliate and MINTS its referral code — the moment the partner has a working share link and starts accruing.  The code is taken from the body if one is given, else the vanity code the applicant requested, else a slug derived for them. Codes are ONE global namespace, so a taken code is a 409 and nothing is approved. The minted code is also mirrored as a link row so click tracking is uniform across every code the affiliate holds; that mirror is best-effort and its failure never fails the approval.  Approval is what makes an affiliate eligible: before it, attribution against its code does not resolve and no sweep accrues to it. PLATFORM SUDO ONLY. Audited.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the affiliate to approve, from the path.
  ///
  /// * [Approval] approval (required):
  Future<AffiliateOut?> postAdminAffiliatesByIdApprove(String id, Approval approval,) async {
    final response = await postAdminAffiliatesByIdApproveWithHttpInfo(id, approval,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AffiliateOut',) as AffiliateOut;
    
    }
    return null;
  }

  /// Pays out accrued commission and answers the payout row with the affiliate's updated balances.
  ///
  /// Pays out accrued commission and answers the payout row with the affiliate's updated balances.  The amount is reserved atomically against the affiliate's PENDING commission — accrued minus paid — so a payout can never exceed what is owed. The METHOD decides whether money actually moves: `credits` issues a commerce grant into the affiliate ORG's own wallet, tagged so the ledger can tell an affiliate payout apart from an admin or referral grant; every other method — wire, paypal and the rest — is RECORD-ONLY: the payout row and the balances move, the cash is disbursed out of band.  The amount is integer cents and must be positive. PLATFORM SUDO ONLY. Audited.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the affiliate to pay, from the path.
  ///
  /// * [Disbursal] disbursal (required):
  Future<Response> postAdminAffiliatesByIdPayoutWithHttpInfo(String id, Disbursal disbursal,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/affiliates/{id}/payout'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = disbursal;

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

  /// Pays out accrued commission and answers the payout row with the affiliate's updated balances.
  ///
  /// Pays out accrued commission and answers the payout row with the affiliate's updated balances.  The amount is reserved atomically against the affiliate's PENDING commission — accrued minus paid — so a payout can never exceed what is owed. The METHOD decides whether money actually moves: `credits` issues a commerce grant into the affiliate ORG's own wallet, tagged so the ledger can tell an affiliate payout apart from an admin or referral grant; every other method — wire, paypal and the rest — is RECORD-ONLY: the payout row and the balances move, the cash is disbursed out of band.  The amount is integer cents and must be positive. PLATFORM SUDO ONLY. Audited.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the affiliate to pay, from the path.
  ///
  /// * [Disbursal] disbursal (required):
  Future<PayoutOut?> postAdminAffiliatesByIdPayout(String id, Disbursal disbursal,) async {
    final response = await postAdminAffiliatesByIdPayoutWithHttpInfo(id, disbursal,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PayoutOut',) as PayoutOut;
    
    }
    return null;
  }

  /// Sets one affiliate's DIRECT commission rate, in basis points of Hanzo's margin.
  ///
  /// Sets one affiliate's DIRECT commission rate, in basis points of Hanzo's margin.  The rate is CAPPED so that the direct rate plus the platform-wide second- and third-level rates can never exceed the whole margin — the structural guarantee that everything paid on one source event stays inside the margin actually earned. The cap is resolved from the rates in force at the moment of the call and quoted in the refusal, because those switches move; a hardcoded bound would start lying the moment somebody edits the schedule.  Only the direct level is per-affiliate. The second and third levels are platform switches and are not settable here. The change applies to FUTURE accruals — commission already latched for a period is not recomputed. PLATFORM SUDO ONLY. Audited.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the affiliate whose direct rate moves, from the path.
  ///
  /// * [RateSet] rateSet (required):
  Future<Response> postAdminAffiliatesByIdRateWithHttpInfo(String id, RateSet rateSet,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/affiliates/{id}/rate'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = rateSet;

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

  /// Sets one affiliate's DIRECT commission rate, in basis points of Hanzo's margin.
  ///
  /// Sets one affiliate's DIRECT commission rate, in basis points of Hanzo's margin.  The rate is CAPPED so that the direct rate plus the platform-wide second- and third-level rates can never exceed the whole margin — the structural guarantee that everything paid on one source event stays inside the margin actually earned. The cap is resolved from the rates in force at the moment of the call and quoted in the refusal, because those switches move; a hardcoded bound would start lying the moment somebody edits the schedule.  Only the direct level is per-affiliate. The second and third levels are platform switches and are not settable here. The change applies to FUTURE accruals — commission already latched for a period is not recomputed. PLATFORM SUDO ONLY. Audited.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the affiliate whose direct rate moves, from the path.
  ///
  /// * [RateSet] rateSet (required):
  Future<AffiliateOut?> postAdminAffiliatesByIdRate(String id, RateSet rateSet,) async {
    final response = await postAdminAffiliatesByIdRateWithHttpInfo(id, rateSet,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AffiliateOut',) as AffiliateOut;
    
    }
    return null;
  }

  /// Suspends an affiliate: it stops accruing on the next sweep, and its code stops resolving for new attributions.
  ///
  /// Suspends an affiliate: it stops accruing on the next sweep, and its code stops resolving for new attributions.  It CLAWS NOTHING BACK. Commission already accrued stays accrued and stays payable, and existing attribution edges are left standing — suspension ends earning, it does not unwind history. PLATFORM SUDO ONLY. Audited.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the affiliate's server-minted handle, \"aff_\"-prefixed.
  Future<Response> postAdminAffiliatesByIdSuspendWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/affiliates/{id}/suspend'
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

  /// Suspends an affiliate: it stops accruing on the next sweep, and its code stops resolving for new attributions.
  ///
  /// Suspends an affiliate: it stops accruing on the next sweep, and its code stops resolving for new attributions.  It CLAWS NOTHING BACK. Commission already accrued stays accrued and stays payable, and existing attribution edges are left standing — suspension ends earning, it does not unwind history. PLATFORM SUDO ONLY. Audited.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the affiliate's server-minted handle, \"aff_\"-prefixed.
  Future<AffiliateOut?> postAdminAffiliatesByIdSuspend(String id,) async {
    final response = await postAdminAffiliatesByIdSuspendWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AffiliateOut',) as AffiliateOut;
    
    }
    return null;
  }

  /// Runs the accrual: for each referred org it reads that org's metered spend for the current period and accrues commission to every affiliate up its referral chain, then answers how many sources were swept and how many NEW accruals landed.
  ///
  /// Runs the accrual: for each referred org it reads that org's metered spend for the current period and accrues commission to every affiliate up its referral chain, then answers how many sources were swept and how many NEW accruals landed.  This is the cron path, and it is LATCHED at most once per affiliate, source org and period — so re-running it inside the same period accrues nothing further. Safe to retry, and safe to run by hand beside the schedule.  Commission is a rate of Hanzo's MARGIN on that spend, never of the customer's gross bill, so every level's share summed over one source event stays within the margin actually earned and the customer's charge is untouched. Nothing accrues past the third upline level, and only an APPROVED affiliate accrues at all.  The same spend read drives the OSS author royalty — one read, both programs — so the answer reports royalties accrued alongside. PLATFORM SUDO ONLY. Bounded per run; a source whose spend cannot be read is skipped and picked up next time, never half-accrued.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAdminAffiliatesSweepWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/affiliates/sweep';

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

  /// Runs the accrual: for each referred org it reads that org's metered spend for the current period and accrues commission to every affiliate up its referral chain, then answers how many sources were swept and how many NEW accruals landed.
  ///
  /// Runs the accrual: for each referred org it reads that org's metered spend for the current period and accrues commission to every affiliate up its referral chain, then answers how many sources were swept and how many NEW accruals landed.  This is the cron path, and it is LATCHED at most once per affiliate, source org and period — so re-running it inside the same period accrues nothing further. Safe to retry, and safe to run by hand beside the schedule.  Commission is a rate of Hanzo's MARGIN on that spend, never of the customer's gross bill, so every level's share summed over one source event stays within the margin actually earned and the customer's charge is untouched. Nothing accrues past the third upline level, and only an APPROVED affiliate accrues at all.  The same spend read drives the OSS author royalty — one read, both programs — so the answer reports royalties accrued alongside. PLATFORM SUDO ONLY. Bounded per run; a source whose spend cannot be read is skipped and picked up next time, never half-accrued.
  Future<AccrualsOut?> postAdminAffiliatesSweep() async {
    final response = await postAdminAffiliatesSweepWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccrualsOut',) as AccrualsOut;
    
    }
    return null;
  }

  /// Admits one author to EARNING, optionally on a negotiated royalty share.
  ///
  /// Admits one author to EARNING, optionally on a negotiated royalty share. Until this runs, a connected author accrues nothing however many verified repositories they have.  A share override applies from here forward only — existing ledger rows keep the share that was applied when they were written, because a rate change must never rewrite what was already owed.  A Hanzo platform operation: a caller who is not a SuperAdmin gets 403.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the author to approve, from the path.
  ///
  /// * [ApproveRequest] approveRequest (required):
  Future<Response> postAdminAuthorsByIdApproveWithHttpInfo(String id, ApproveRequest approveRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/authors/{id}/approve'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = approveRequest;

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

  /// Admits one author to EARNING, optionally on a negotiated royalty share.
  ///
  /// Admits one author to EARNING, optionally on a negotiated royalty share. Until this runs, a connected author accrues nothing however many verified repositories they have.  A share override applies from here forward only — existing ledger rows keep the share that was applied when they were written, because a rate change must never rewrite what was already owed.  A Hanzo platform operation: a caller who is not a SuperAdmin gets 403.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the author to approve, from the path.
  ///
  /// * [ApproveRequest] approveRequest (required):
  Future<AuthorResult?> postAdminAuthorsByIdApprove(String id, ApproveRequest approveRequest,) async {
    final response = await postAdminAuthorsByIdApproveWithHttpInfo(id, approveRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthorResult',) as AuthorResult;
    
    }
    return null;
  }

  /// Records a payout of accrued royalty and settles it.
  ///
  /// Records a payout of accrued royalty and settles it.  The amount is RESERVED against the author's pending royalty atomically before anything is paid, so a payout can never exceed what is owed even under concurrent calls. An external author's payout is then BACKED against the platform reserve fund — a second, independent guard — and refused with 402 if the reserve cannot cover it, with the reservation voided. A \"credits\" method issues the actual wallet grant after both guards; a cash method is record-only. A first-party (treasury) author's royalty is realized into Hanzo's own reserve instead of an external wallet, and every payout row discloses which of the three it was.  A Hanzo platform operation: a caller who is not a SuperAdmin gets 403.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the author to pay, from the path.
  ///
  /// * [PayoutRequest] payoutRequest (required):
  Future<Response> postAdminAuthorsByIdPayoutWithHttpInfo(String id, PayoutRequest payoutRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/authors/{id}/payout'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = payoutRequest;

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

  /// Records a payout of accrued royalty and settles it.
  ///
  /// Records a payout of accrued royalty and settles it.  The amount is RESERVED against the author's pending royalty atomically before anything is paid, so a payout can never exceed what is owed even under concurrent calls. An external author's payout is then BACKED against the platform reserve fund — a second, independent guard — and refused with 402 if the reserve cannot cover it, with the reservation voided. A \"credits\" method issues the actual wallet grant after both guards; a cash method is record-only. A first-party (treasury) author's royalty is realized into Hanzo's own reserve instead of an external wallet, and every payout row discloses which of the three it was.  A Hanzo platform operation: a caller who is not a SuperAdmin gets 403.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the author to pay, from the path.
  ///
  /// * [PayoutRequest] payoutRequest (required):
  Future<PayoutResult?> postAdminAuthorsByIdPayout(String id, PayoutRequest payoutRequest,) async {
    final response = await postAdminAuthorsByIdPayoutWithHttpInfo(id, payoutRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PayoutResult',) as PayoutResult;
    
    }
    return null;
  }

  /// Stops one author earning.
  ///
  /// Stops one author earning. Their record, verified claims and ledger are untouched — suspension halts future accrual, it does not erase what was already owed, and it does not delete the evidence behind it.  A Hanzo platform operation: a caller who is not a SuperAdmin gets 403.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the author record's handle, \"aut_\"-prefixed.
  Future<Response> postAdminAuthorsByIdSuspendWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/authors/{id}/suspend'
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

  /// Stops one author earning.
  ///
  /// Stops one author earning. Their record, verified claims and ledger are untouched — suspension halts future accrual, it does not erase what was already owed, and it does not delete the evidence behind it.  A Hanzo platform operation: a caller who is not a SuperAdmin gets 403.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the author record's handle, \"aut_\"-prefixed.
  Future<AuthorResult?> postAdminAuthorsByIdSuspend(String id,) async {
    final response = await postAdminAuthorsByIdSuspendWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthorResult',) as AuthorResult;
    
    }
    return null;
  }

  /// Runs the accrual sweep across every approved author: for each of their deploying orgs it computes this period's royalty from that org's metered spend and latches it at most once per period.
  ///
  /// Runs the accrual sweep across every approved author: for each of their deploying orgs it computes this period's royalty from that org's metered spend and latches it at most once per period.  It is an OVERRIDE, not the mechanism: a background scheduler runs the same sweep on its own, and every author's dashboard read sweeps their own accruals lazily. This is the manual trigger for an operator who needs the numbers now. It is idempotent — the per-period latch means running it twice accrues nothing the second time.  A Hanzo platform operation: a caller who is not a SuperAdmin gets 403.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAdminAuthorsSweepWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/authors/sweep';

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

  /// Runs the accrual sweep across every approved author: for each of their deploying orgs it computes this period's royalty from that org's metered spend and latches it at most once per period.
  ///
  /// Runs the accrual sweep across every approved author: for each of their deploying orgs it computes this period's royalty from that org's metered spend and latches it at most once per period.  It is an OVERRIDE, not the mechanism: a background scheduler runs the same sweep on its own, and every author's dashboard read sweeps their own accruals lazily. This is the manual trigger for an operator who needs the numbers now. It is idempotent — the per-period latch means running it twice accrues nothing the second time.  A Hanzo platform operation: a caller who is not a SuperAdmin gets 403.
  Future<AuthorSweepResult?> postAdminAuthorsSweep() async {
    final response = await postAdminAuthorsSweepWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthorSweepResult',) as AuthorSweepResult;
    
    }
    return null;
  }

  /// Qualify-checks every pending referral and advances the ones that now qualify.
  ///
  /// Qualify-checks every pending referral and advances the ones that now qualify.  SuperAdmin only, fail-closed. This is the cron path, and the ONLY path that advances a referral: a referee QUALIFIES once they have made metered spend — the honest signal that they actually used the product rather than merely signing up.  Qualifying moves NO money. It records that an attribution became a real customer; what is owed for that is an affiliate payable in commerce, settled by wire or to a connected wallet. One pass is bounded, so a large backlog drains over several runs instead of wedging one request, and the latch makes the transition at-most-once under a concurrent sweep.  It reads nothing from the caller — the counters it returns are the whole result.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAdminReferralsSweepWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/referrals/sweep';

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

  /// Qualify-checks every pending referral and advances the ones that now qualify.
  ///
  /// Qualify-checks every pending referral and advances the ones that now qualify.  SuperAdmin only, fail-closed. This is the cron path, and the ONLY path that advances a referral: a referee QUALIFIES once they have made metered spend — the honest signal that they actually used the product rather than merely signing up.  Qualifying moves NO money. It records that an attribution became a real customer; what is owed for that is an affiliate payable in commerce, settled by wire or to a connected wallet. One pass is bounded, so a large backlog drains over several runs instead of wedging one request, and the latch makes the transition at-most-once under a concurrent sweep.  It reads nothing from the caller — the counters it returns are the whole result.
  Future<SweepEnvelope?> postAdminReferralsSweep() async {
    final response = await postAdminReferralsSweepWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SweepEnvelope',) as SweepEnvelope;
    
    }
    return null;
  }

  /// Commits the current ledger root to Hanzo L1, making the books tamper-evident on chain, and returns the anchoring status.
  ///
  /// Commits the current ledger root to Hanzo L1, making the books tamper-evident on chain, and returns the anchoring status. When the chain path is wired it signs and submits the anchor transaction and records it; when it is not, it returns the root that WOULD be committed plus the exact remaining wiring step and records nothing false. A submit that fails still answers 200 with the anchor's own status set to \"error\" — the attempt is the product. SuperAdmin only.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAdminTreasuryAnchorWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/treasury/anchor';

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

  /// Commits the current ledger root to Hanzo L1, making the books tamper-evident on chain, and returns the anchoring status.
  ///
  /// Commits the current ledger root to Hanzo L1, making the books tamper-evident on chain, and returns the anchoring status. When the chain path is wired it signs and submits the anchor transaction and records it; when it is not, it returns the root that WOULD be committed plus the exact remaining wiring step and records nothing false. A submit that fails still answers 200 with the anchor's own status set to \"error\" — the attempt is the product. SuperAdmin only.
  Future<AnchorOut?> postAdminTreasuryAnchor() async {
    final response = await postAdminTreasuryAnchorWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AnchorOut',) as AnchorOut;
    
    }
    return null;
  }

  /// Sets the revenue-share basis points a sweep accrues into the reserve fund and returns the stored policy.
  ///
  /// Sets the revenue-share basis points a sweep accrues into the reserve fund and returns the stored policy. 0–10000; the change is audited. SuperAdmin only.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PolicyRequest] policyRequest (required):
  Future<Response> postAdminTreasuryPolicyWithHttpInfo(PolicyRequest policyRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/treasury/policy';

    // ignore: prefer_final_locals
    Object? postBody = policyRequest;

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

  /// Sets the revenue-share basis points a sweep accrues into the reserve fund and returns the stored policy.
  ///
  /// Sets the revenue-share basis points a sweep accrues into the reserve fund and returns the stored policy. 0–10000; the change is audited. SuperAdmin only.
  ///
  /// Parameters:
  ///
  /// * [PolicyRequest] policyRequest (required):
  Future<PolicyOut?> postAdminTreasuryPolicy(PolicyRequest policyRequest,) async {
    final response = await postAdminTreasuryPolicyWithHttpInfo(policyRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PolicyOut',) as PolicyOut;
    
    }
    return null;
  }

  /// Injects bootstrap capital into the reserve fund so backed payouts can begin before the first revenue-share sweep, and returns the journal entry it wrote.
  ///
  /// Injects bootstrap capital into the reserve fund so backed payouts can begin before the first revenue-share sweep, and returns the journal entry it wrote. A repeat of the same ref is at-most-once and reports created=false. SuperAdmin only.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SeedRequest] seedRequest (required):
  Future<Response> postAdminTreasurySeedWithHttpInfo(SeedRequest seedRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/treasury/seed';

    // ignore: prefer_final_locals
    Object? postBody = seedRequest;

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

  /// Injects bootstrap capital into the reserve fund so backed payouts can begin before the first revenue-share sweep, and returns the journal entry it wrote.
  ///
  /// Injects bootstrap capital into the reserve fund so backed payouts can begin before the first revenue-share sweep, and returns the journal entry it wrote. A repeat of the same ref is at-most-once and reports created=false. SuperAdmin only.
  ///
  /// Parameters:
  ///
  /// * [SeedRequest] seedRequest (required):
  Future<SeedOut?> postAdminTreasurySeed(SeedRequest seedRequest,) async {
    final response = await postAdminTreasurySeedWithHttpInfo(seedRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SeedOut',) as SeedOut;
    
    }
    return null;
  }

  /// Posts the revenue-share accrual for one period — revenue into the reserve fund, at the current policy's basis points — and returns what it moved.
  ///
  /// Posts the revenue-share accrual for one period — revenue into the reserve fund, at the current policy's basis points — and returns what it moved. It is idempotent per period: a re-run of a period already swept accrues nothing and reports created=false. SuperAdmin only.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SweepRequest] sweepRequest (required):
  Future<Response> postAdminTreasurySweepWithHttpInfo(SweepRequest sweepRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/treasury/sweep';

    // ignore: prefer_final_locals
    Object? postBody = sweepRequest;

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

  /// Posts the revenue-share accrual for one period — revenue into the reserve fund, at the current policy's basis points — and returns what it moved.
  ///
  /// Posts the revenue-share accrual for one period — revenue into the reserve fund, at the current policy's basis points — and returns what it moved. It is idempotent per period: a re-run of a period already swept accrues nothing and reports created=false. SuperAdmin only.
  ///
  /// Parameters:
  ///
  /// * [SweepRequest] sweepRequest (required):
  Future<SweepOut?> postAdminTreasurySweep(SweepRequest sweepRequest,) async {
    final response = await postAdminTreasurySweepWithHttpInfo(sweepRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SweepOut',) as SweepOut;
    
    }
    return null;
  }

  /// Sets one item's global enablement state — off, beta or ga — and optionally replaces the list of orgs granted its beta.
  ///
  /// Sets one item's global enablement state — off, beta or ga — and optionally replaces the list of orgs granted its beta. It is generic over kind, so the same call manages models, providers and product features through the one registry. `off` is an absolute kill switch: a self-service opt-in can never re-open it. SuperAdmin only; every other caller is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SetEnablementBody] setEnablementBody (required):
  Future<Response> putAdminEnablementWithHttpInfo(SetEnablementBody setEnablementBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/enablement';

    // ignore: prefer_final_locals
    Object? postBody = setEnablementBody;

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

  /// Sets one item's global enablement state — off, beta or ga — and optionally replaces the list of orgs granted its beta.
  ///
  /// Sets one item's global enablement state — off, beta or ga — and optionally replaces the list of orgs granted its beta. It is generic over kind, so the same call manages models, providers and product features through the one registry. `off` is an absolute kill switch: a self-service opt-in can never re-open it. SuperAdmin only; every other caller is refused.
  ///
  /// Parameters:
  ///
  /// * [SetEnablementBody] setEnablementBody (required):
  Future<AdminEnablementItem?> putAdminEnablement(SetEnablementBody setEnablementBody,) async {
    final response = await putAdminEnablementWithHttpInfo(setEnablementBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AdminEnablementItem',) as AdminEnablementItem;
    
    }
    return null;
  }

  /// Installs the reserve's threshold MPC wallet as the signer for on-chain anchors, and returns its EVM address so an operator can fund it for gas.
  ///
  /// Installs the reserve's threshold MPC wallet as the signer for on-chain anchors, and returns its EVM address so an operator can fund it for gas. It provisions-or-resolves the caller org's treasury wallet on the deployed MPC ring and installs it, so every later anchor commits the ledger root SIGNED BY THE QUORUM WALLET instead of a lone KMS key. Idempotent — a repeat resolves the same wallet, which is why the address is a PUT. SuperAdmin only.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> putAdminTreasuryAnchorSignerWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/admin/treasury/anchor/signer';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Installs the reserve's threshold MPC wallet as the signer for on-chain anchors, and returns its EVM address so an operator can fund it for gas.
  ///
  /// Installs the reserve's threshold MPC wallet as the signer for on-chain anchors, and returns its EVM address so an operator can fund it for gas. It provisions-or-resolves the caller org's treasury wallet on the deployed MPC ring and installs it, so every later anchor commits the ledger root SIGNED BY THE QUORUM WALLET instead of a lone KMS key. Idempotent — a repeat resolves the same wallet, which is why the address is a PUT. SuperAdmin only.
  Future<SignerOut?> putAdminTreasuryAnchorSigner() async {
    final response = await putAdminTreasuryAnchorSignerWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SignerOut',) as SignerOut;
    
    }
    return null;
  }
}
