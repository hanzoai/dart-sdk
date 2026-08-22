//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class UsageApi {
  UsageApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Is the entitlement-GATED per-provider breakdown of the caller org's LLM usage — the paid lens over the same warehouse ledger GET /v1/usage/summary reads its totals from.
  ///
  /// Is the entitlement-GATED per-provider breakdown of the caller org's LLM usage — the paid lens over the same warehouse ledger GET /v1/usage/summary reads its totals from. Basic own-org usage stays ungated at /v1/usage/summary.  A plan that does not grant the analytics datastore is refused with 402, and an unresolvable plan fails closed to the free floor, which does not grant it. The window is clamped forward to the plan's retention entitlement, so a tenant can never read older than its plan allows even with a custom start. The response is marked no-store.  INTERIM (mirrors apps/world's limits echo): no org→plan resolver exists in cloud yet — the subscription lookup is owned by the billing plane and the gateway principal carries no plan claim — so the caller passes the plan and the gate resolves THAT plan's access.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] end:
  ///   End is the exclusive window end, RFC3339. Read only when Range is custom.
  ///
  /// * [String] plan:
  ///   Plan is the plan id whose entitlement decides access and retention. INTERIM: cloud has no org-to-plan resolver yet, so the caller names the plan; when that resolver lands this becomes the caller org's own plan.
  ///
  /// * [String] range:
  ///   Range is the window: a count and a unit — 24h, 7d, 90d, any <N>h or <N>d — or day, week, month, all, custom. Empty means 24h. The window is then clamped forward to the plan's retention entitlement.
  ///
  /// * [String] start:
  ///   Start is the inclusive window start, RFC3339. Read only when Range is custom, and clamped forward to the plan's retention floor.
  Future<Response> getUsageAnalyticsWithHttpInfo({ String? end, String? plan, String? range, String? start, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/usage/analytics';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (end != null) {
      queryParams.addAll(_queryParams('', 'end', end));
    }
    if (plan != null) {
      queryParams.addAll(_queryParams('', 'plan', plan));
    }
    if (range != null) {
      queryParams.addAll(_queryParams('', 'range', range));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
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

  /// Is the entitlement-GATED per-provider breakdown of the caller org's LLM usage — the paid lens over the same warehouse ledger GET /v1/usage/summary reads its totals from.
  ///
  /// Is the entitlement-GATED per-provider breakdown of the caller org's LLM usage — the paid lens over the same warehouse ledger GET /v1/usage/summary reads its totals from. Basic own-org usage stays ungated at /v1/usage/summary.  A plan that does not grant the analytics datastore is refused with 402, and an unresolvable plan fails closed to the free floor, which does not grant it. The window is clamped forward to the plan's retention entitlement, so a tenant can never read older than its plan allows even with a custom start. The response is marked no-store.  INTERIM (mirrors apps/world's limits echo): no org→plan resolver exists in cloud yet — the subscription lookup is owned by the billing plane and the gateway principal carries no plan claim — so the caller passes the plan and the gate resolves THAT plan's access.
  ///
  /// Parameters:
  ///
  /// * [String] end:
  ///   End is the exclusive window end, RFC3339. Read only when Range is custom.
  ///
  /// * [String] plan:
  ///   Plan is the plan id whose entitlement decides access and retention. INTERIM: cloud has no org-to-plan resolver yet, so the caller names the plan; when that resolver lands this becomes the caller org's own plan.
  ///
  /// * [String] range:
  ///   Range is the window: a count and a unit — 24h, 7d, 90d, any <N>h or <N>d — or day, week, month, all, custom. Empty means 24h. The window is then clamped forward to the plan's retention entitlement.
  ///
  /// * [String] start:
  ///   Start is the inclusive window start, RFC3339. Read only when Range is custom, and clamped forward to the plan's retention floor.
  Future<UsageAnalyticsView?> getUsageAnalytics({ String? end, String? plan, String? range, String? start, }) async {
    final response = await getUsageAnalyticsWithHttpInfo( end: end, plan: plan, range: range, start: start, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UsageAnalyticsView',) as UsageAnalyticsView;
    
    }
    return null;
  }

  /// Echoes a plan's resolved analytics entitlement so a dashboard can configure itself against the LIVE catalog instead of hardcoding tier numbers.
  ///
  /// Echoes a plan's resolved analytics entitlement so a dashboard can configure itself against the LIVE catalog instead of hardcoding tier numbers. An empty plan resolves the free floor, and a catalog resolution failure serves that same floor rather than erroring — so this always answers 200. It is a read-only contract echo and carries no tenant data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] plan:
  ///   Plan is a plan id from the live @hanzo/plans catalog. Empty resolves the free floor, and so does an id the catalog does not know — this never fails on an unknown plan.
  Future<Response> getUsageAnalyticsAccessWithHttpInfo({ String? plan, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/usage/analytics/access';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (plan != null) {
      queryParams.addAll(_queryParams('', 'plan', plan));
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

  /// Echoes a plan's resolved analytics entitlement so a dashboard can configure itself against the LIVE catalog instead of hardcoding tier numbers.
  ///
  /// Echoes a plan's resolved analytics entitlement so a dashboard can configure itself against the LIVE catalog instead of hardcoding tier numbers. An empty plan resolves the free floor, and a catalog resolution failure serves that same floor rather than erroring — so this always answers 200. It is a read-only contract echo and carries no tenant data.
  ///
  /// Parameters:
  ///
  /// * [String] plan:
  ///   Plan is a plan id from the live @hanzo/plans catalog. Empty resolves the free floor, and so does an id the catalog does not know — this never fails on an unknown plan.
  Future<UsageAnalyticsAccess?> getUsageAnalyticsAccess({ String? plan, }) async {
    final response = await getUsageAnalyticsAccessWithHttpInfo( plan: plan, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UsageAnalyticsAccess',) as UsageAnalyticsAccess;
    
    }
    return null;
  }

  /// Is the PER-PROVIDER view: one connected account's own consumption of its own plan — \"my plan is 47% through its 6h window, resets at 14:20\".
  ///
  /// Is the PER-PROVIDER view: one connected account's own consumption of its own plan — \"my plan is 47% through its 6h window, resets at 14:20\".  `current` is the newest instance of each lane (the headline); `windows` is the history behind it. Both come from ONE deduped read, so they can never disagree. The rows are the caller's OWN linked accounts, scoped to the validated principal and its subject — never another user's, and never another org's.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account:
  ///   Account narrows to ONE linked account of that provider. Empty covers every account the caller has linked there.
  ///
  /// * [String] provider:
  ///   Provider is the upstream to read, e.g. anthropic. Required.
  ///
  /// * [String] range:
  ///   Range is the window to read: a count and a unit — 1h, 24h, 90d, any <N>h or <N>d — or day, week, month, all. Empty means 24h. A label that is not a count, or one reaching past the 730-day horizon, is refused rather than silently replaced.
  ///
  /// * [String] window:
  ///   Window narrows to ONE window class: 6h, day, week or month. Empty covers every class.
  Future<Response> getUsageSamplesWithHttpInfo({ String? account, String? provider, String? range, String? window, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/usage/samples';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (account != null) {
      queryParams.addAll(_queryParams('', 'account', account));
    }
    if (provider != null) {
      queryParams.addAll(_queryParams('', 'provider', provider));
    }
    if (range != null) {
      queryParams.addAll(_queryParams('', 'range', range));
    }
    if (window != null) {
      queryParams.addAll(_queryParams('', 'window', window));
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

  /// Is the PER-PROVIDER view: one connected account's own consumption of its own plan — \"my plan is 47% through its 6h window, resets at 14:20\".
  ///
  /// Is the PER-PROVIDER view: one connected account's own consumption of its own plan — \"my plan is 47% through its 6h window, resets at 14:20\".  `current` is the newest instance of each lane (the headline); `windows` is the history behind it. Both come from ONE deduped read, so they can never disagree. The rows are the caller's OWN linked accounts, scoped to the validated principal and its subject — never another user's, and never another org's.
  ///
  /// Parameters:
  ///
  /// * [String] account:
  ///   Account narrows to ONE linked account of that provider. Empty covers every account the caller has linked there.
  ///
  /// * [String] provider:
  ///   Provider is the upstream to read, e.g. anthropic. Required.
  ///
  /// * [String] range:
  ///   Range is the window to read: a count and a unit — 1h, 24h, 90d, any <N>h or <N>d — or day, week, month, all. Empty means 24h. A label that is not a count, or one reaching past the 730-day horizon, is refused rather than silently replaced.
  ///
  /// * [String] window:
  ///   Window narrows to ONE window class: 6h, day, week or month. Empty covers every class.
  Future<DashResp?> getUsageSamples({ String? account, String? provider, String? range, String? window, }) async {
    final response = await getUsageSamplesWithHttpInfo( account: account, provider: provider, range: range, window: window, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DashResp',) as DashResp;
    
    }
    return null;
  }

  /// Answers GET /v1/usage/summary: the caller's own usage footprint over one window — the categorized spend roll-up from the commerce ledger, the org's LLM usage totals from the warehouse, and the caller's OWN linked provider accounts beside the org's Hanzo-routed usage.
  ///
  /// Answers GET /v1/usage/summary: the caller's own usage footprint over one window — the categorized spend roll-up from the commerce ledger, the org's LLM usage totals from the warehouse, and the caller's OWN linked provider accounts beside the org's Hanzo-routed usage.  Every source degrades INDEPENDENTLY to honest zeros and says so in `sources` and in its own `available` flag, so a partial deploy reports \"no data\" rather than fabricating spend. The account rows and the Hanzo rows are concatenated and never summed: a plan's percent is not money.  The response is org-scoped from the validated principal and marked no-store — a signed-out caller is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range is the window: a count and a unit — 24h, 7d, 90d, any <N>h or <N>d — or day, week, month, all, custom. Empty means 24h. A label this surface does not know, or one reaching past the 730-day horizon, is refused rather than silently replaced.
  ///
  /// * [String] start:
  ///   Start is the inclusive window start, RFC3339. Read only when Range is custom.
  ///
  /// * [String] end:
  ///   End is the exclusive window end, RFC3339. Read only when Range is custom.
  Future<Response> getUsageSummaryWithHttpInfo({ String? range, String? start, String? end, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/usage/summary';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (range != null) {
      queryParams.addAll(_queryParams('', 'range', range));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (end != null) {
      queryParams.addAll(_queryParams('', 'end', end));
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

  /// Answers GET /v1/usage/summary: the caller's own usage footprint over one window — the categorized spend roll-up from the commerce ledger, the org's LLM usage totals from the warehouse, and the caller's OWN linked provider accounts beside the org's Hanzo-routed usage.
  ///
  /// Answers GET /v1/usage/summary: the caller's own usage footprint over one window — the categorized spend roll-up from the commerce ledger, the org's LLM usage totals from the warehouse, and the caller's OWN linked provider accounts beside the org's Hanzo-routed usage.  Every source degrades INDEPENDENTLY to honest zeros and says so in `sources` and in its own `available` flag, so a partial deploy reports \"no data\" rather than fabricating spend. The account rows and the Hanzo rows are concatenated and never summed: a plan's percent is not money.  The response is org-scoped from the validated principal and marked no-store — a signed-out caller is refused.
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range is the window: a count and a unit — 24h, 7d, 90d, any <N>h or <N>d — or day, week, month, all, custom. Empty means 24h. A label this surface does not know, or one reaching past the 730-day horizon, is refused rather than silently replaced.
  ///
  /// * [String] start:
  ///   Start is the inclusive window start, RFC3339. Read only when Range is custom.
  ///
  /// * [String] end:
  ///   End is the exclusive window end, RFC3339. Read only when Range is custom.
  Future<UsageSummary?> getUsageSummary({ String? range, String? start, String? end, }) async {
    final response = await getUsageSummaryWithHttpInfo( range: range, start: start, end: end, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UsageSummary',) as UsageSummary;
    
    }
    return null;
  }

  /// Ingests a batch of account-usage samples — what a developer's OWN AI accounts have consumed of their OWN plans, metered from each provider's own login — and appends them to the warehouse series.
  ///
  /// Ingests a batch of account-usage samples — what a developer's OWN AI accounts have consumed of their OWN plans, metered from each provider's own login — and appends them to the warehouse series. Answers 202.  Send either a `samples` array or one sample's fields at the top level. Every sample needs a provider, a machine and a known window class; an unknown window or kind is refused rather than silently rewritten, because a dash filled with a class nobody reported is worse than an error. There is no timestamp field: the server owns the observation clock, and a sample says which window it measured with windowStart or resetsAt.  It is FAIL-SOFT on storage: a warehouse outage costs a poll of history (stored:false), never a failed request. It records usage ONLY — the link registry is refreshed separately via POST /v1/link, so there is one and only one way to update an account row.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ReportReq] reportReq (required):
  Future<Response> postUsageWithHttpInfo(ReportReq reportReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/usage';

    // ignore: prefer_final_locals
    Object? postBody = reportReq;

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

  /// Ingests a batch of account-usage samples — what a developer's OWN AI accounts have consumed of their OWN plans, metered from each provider's own login — and appends them to the warehouse series.
  ///
  /// Ingests a batch of account-usage samples — what a developer's OWN AI accounts have consumed of their OWN plans, metered from each provider's own login — and appends them to the warehouse series. Answers 202.  Send either a `samples` array or one sample's fields at the top level. Every sample needs a provider, a machine and a known window class; an unknown window or kind is refused rather than silently rewritten, because a dash filled with a class nobody reported is worse than an error. There is no timestamp field: the server owns the observation clock, and a sample says which window it measured with windowStart or resetsAt.  It is FAIL-SOFT on storage: a warehouse outage costs a poll of history (stored:false), never a failed request. It records usage ONLY — the link registry is refreshed separately via POST /v1/link, so there is one and only one way to update an account row.
  ///
  /// Parameters:
  ///
  /// * [ReportReq] reportReq (required):
  Future<ReportResp?> postUsage(ReportReq reportReq,) async {
    final response = await postUsageWithHttpInfo(reportReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReportResp',) as ReportResp;
    
    }
    return null;
  }
}
