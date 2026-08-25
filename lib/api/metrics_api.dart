//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class MetricsApi {
  MetricsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// How many metric series this deployment holds for your org
  ///
  /// Reports the native metrics store's live state for the calling tenant: the subsystem version, the resolved `org`, and `series` — the number of distinct series actually held right now, read out of the store rather than a constant. It is not a dependency probe and has nothing downstream to fail on: the store is in-process, so this answers 200 whenever the process is up.  The tenant is the gateway-minted `X-Org-Id` header, falling back to the deployment brand and then `default`. This surface trusts the edge rather than re-deriving the org from a validated claim of its own, so it belongs behind the gateway and nowhere else.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMetricsHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/metrics/health';

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

  /// How many metric series this deployment holds for your org
  ///
  /// Reports the native metrics store's live state for the calling tenant: the subsystem version, the resolved `org`, and `series` — the number of distinct series actually held right now, read out of the store rather than a constant. It is not a dependency probe and has nothing downstream to fail on: the store is in-process, so this answers 200 whenever the process is up.  The tenant is the gateway-minted `X-Org-Id` header, falling back to the deployment brand and then `default`. This surface trusts the edge rather than re-deriving the org from a validated claim of its own, so it belongs behind the gateway and nowhere else.
  Future<void> getMetricsHealth() async {
    final response = await getMetricsHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// How many log records this deployment holds for your org
  ///
  /// Reports the native log store's live state for the calling tenant: the subsystem version and `records`, the count actually held right now rather than a constant. Not a dependency probe — the store is in-process, so this answers 200 whenever the process is up.  The tenant is the gateway-minted `X-Org-Id` header, falling back to the deployment brand and then `default`.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMetricsLogsHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/metrics/logs/health';

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

  /// How many log records this deployment holds for your org
  ///
  /// Reports the native log store's live state for the calling tenant: the subsystem version and `records`, the count actually held right now rather than a constant. Not a dependency probe — the store is in-process, so this answers 200 whenever the process is up.  The tenant is the gateway-minted `X-Org-Id` header, falling back to the deployment brand and then `default`.
  Future<void> getMetricsLogsHealth() async {
    final response = await getMetricsLogsHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Search your org's logs by label, time and substring
  ///
  /// Answers `{count, records}`, newest first. `match` is the same `k=v,k2=v2` superset label matcher the metrics query uses; `contains` is a case-insensitive substring test against the record body; `start` and `end` are nanosecond bounds.  A bound that is absent, empty or unparseable becomes 0, which means UNBOUNDED — a malformed `start` widens the search rather than failing it. `limit` caps the page and defaults to 100 when absent or non-positive, so an unfiltered read is never the whole ring.  The tenant is the gateway-minted `X-Org-Id` header, falling back to the deployment brand and then `default`, so a search can only reach the org the edge asserted.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMetricsLogsQueryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/metrics/logs/query';

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

  /// Search your org's logs by label, time and substring
  ///
  /// Answers `{count, records}`, newest first. `match` is the same `k=v,k2=v2` superset label matcher the metrics query uses; `contains` is a case-insensitive substring test against the record body; `start` and `end` are nanosecond bounds.  A bound that is absent, empty or unparseable becomes 0, which means UNBOUNDED — a malformed `start` widens the search rather than failing it. `limit` caps the page and defaults to 100 when absent or non-positive, so an unfiltered read is never the whole ring.  The tenant is the gateway-minted `X-Org-Id` header, falling back to the deployment brand and then `default`, so a search can only reach the org the edge asserted.
  Future<void> getMetricsLogsQuery() async {
    final response = await getMetricsLogsQueryWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Read your org's series back over a time range
  ///
  /// Answers `{count, series}`, where `count` is the number of matching SERIES and each series carries the samples that fall inside the window. `name` selects one series name, and an absent or empty `name` returns every series the org holds. `match` is a `k=v,k2=v2` label matcher applied as a SUPERSET test: a series matches when it carries all the named labels with those values, extra labels and all.  `start` and `end` are nanoseconds since the Unix epoch, and here is the rule worth knowing: a bound that is absent, empty or unparseable becomes 0, which this store reads as UNBOUNDED. A malformed `start` therefore silently widens the query instead of failing it. There is no limit parameter — the window and the matcher are the whole of what bounds the answer.  The tenant is the gateway-minted `X-Org-Id` header, falling back to the deployment brand and then `default`, so a query can only ever read the org the edge asserted.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMetricsQueryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/metrics/query';

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

  /// Read your org's series back over a time range
  ///
  /// Answers `{count, series}`, where `count` is the number of matching SERIES and each series carries the samples that fall inside the window. `name` selects one series name, and an absent or empty `name` returns every series the org holds. `match` is a `k=v,k2=v2` label matcher applied as a SUPERSET test: a series matches when it carries all the named labels with those values, extra labels and all.  `start` and `end` are nanoseconds since the Unix epoch, and here is the rule worth knowing: a bound that is absent, empty or unparseable becomes 0, which this store reads as UNBOUNDED. A malformed `start` therefore silently widens the query instead of failing it. There is no limit parameter — the window and the matcher are the whole of what bounds the answer.  The tenant is the gateway-minted `X-Org-Id` header, falling back to the deployment brand and then `default`, so a query can only ever read the org the edge asserted.
  Future<void> getMetricsQuery() async {
    final response = await getMetricsQueryWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// How many spans this deployment holds for your org
  ///
  /// Reports the native trace store's live state for the calling tenant: the subsystem version and `spans`, the count actually held right now. Not a dependency probe — the store is in-process, so this answers 200 whenever the process is up.  The tenant is the gateway-minted `X-Org-Id` header, falling back to the deployment brand and then `default`.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMetricsTracesHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/metrics/traces/health';

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

  /// How many spans this deployment holds for your org
  ///
  /// Reports the native trace store's live state for the calling tenant: the subsystem version and `spans`, the count actually held right now. Not a dependency probe — the store is in-process, so this answers 200 whenever the process is up.  The tenant is the gateway-minted `X-Org-Id` header, falling back to the deployment brand and then `default`.
  Future<void> getMetricsTracesHealth() async {
    final response = await getMetricsTracesHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Recent spans for your org over a time range
  ///
  /// Answers `{count, spans}`, newest first, filtered on each span's START time. `start` and `end` are nanosecond bounds where 0 — which is what an absent, empty or unparseable value becomes — means UNBOUNDED, so a malformed bound widens the listing instead of failing it. `limit` defaults to 100 when absent or non-positive.  It lists SPANS, not traces: several spans of one trace each count separately and each take a slot against `limit`. Assembling one trace is /v1/metrics/traces/trace. The tenant is the gateway-minted `X-Org-Id` header, falling back to the deployment brand and then `default`.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMetricsTracesQueryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/metrics/traces/query';

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

  /// Recent spans for your org over a time range
  ///
  /// Answers `{count, spans}`, newest first, filtered on each span's START time. `start` and `end` are nanosecond bounds where 0 — which is what an absent, empty or unparseable value becomes — means UNBOUNDED, so a malformed bound widens the listing instead of failing it. `limit` defaults to 100 when absent or non-positive.  It lists SPANS, not traces: several spans of one trace each count separately and each take a slot against `limit`. Assembling one trace is /v1/metrics/traces/trace. The tenant is the gateway-minted `X-Org-Id` header, falling back to the deployment brand and then `default`.
  Future<void> getMetricsTracesQuery() async {
    final response = await getMetricsTracesQueryWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Every span of one trace — the waterfall
  ///
  /// Answers `{spans}`: every span the org holds for the trace id in `id`, in the order they were appended, which is what a waterfall view renders. Unlike the other reads there is no count, no time range and no limit — a trace is addressed by id or not at all.  An id with no spans answers an EMPTY list, never a 404: the store cannot tell a trace that never existed from one whose spans retention has already dropped, so it does not pretend to. The tenant is the gateway-minted `X-Org-Id` header, falling back to the deployment brand and then `default`, and a trace id belonging to another org is simply not in this org's store.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMetricsTracesTraceWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/metrics/traces/trace';

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

  /// Every span of one trace — the waterfall
  ///
  /// Answers `{spans}`: every span the org holds for the trace id in `id`, in the order they were appended, which is what a waterfall view renders. Unlike the other reads there is no count, no time range and no limit — a trace is addressed by id or not at all.  An id with no spans answers an EMPTY list, never a 404: the store cannot tell a trace that never existed from one whose spans retention has already dropped, so it does not pretend to. The tenant is the gateway-minted `X-Org-Id` header, falling back to the deployment brand and then `default`, and a trace id belonging to another org is simply not in this org's store.
  Future<void> getMetricsTracesTrace() async {
    final response = await getMetricsTracesTraceWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Ingest a MetricBatch — the same payload the ZAP transport carries
  ///
  /// Writes every sample in a luxfi/metric `MetricBatch` into the calling org's store and answers `{written}`: the number of SAMPLES stored, not families and not metrics. This is the exact wire shape the ZAP `MsgMetricBatch` transport carries, so the HTTP endpoint and the optional ZAP push receiver share one code path and one meaning — the transport is an optimisation, never a different contract.  A counter or gauge lands as one sample. A histogram or summary contributes DERIVED `<name>_sum` and `<name>_count` series, so one metric can write more than one sample and `written` can exceed the number of metrics you sent. The batch's own `TimestampNs` stamps every sample it carries.  The tenant is the gateway-minted `X-Org-Id` header, falling back to the deployment brand and then `default`; each org gets its own store, WAL-durable under the deployment's data dir. A body that does not decode is 400.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postMetricsBatchWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/metrics/batch';

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

  /// Ingest a MetricBatch — the same payload the ZAP transport carries
  ///
  /// Writes every sample in a luxfi/metric `MetricBatch` into the calling org's store and answers `{written}`: the number of SAMPLES stored, not families and not metrics. This is the exact wire shape the ZAP `MsgMetricBatch` transport carries, so the HTTP endpoint and the optional ZAP push receiver share one code path and one meaning — the transport is an optimisation, never a different contract.  A counter or gauge lands as one sample. A histogram or summary contributes DERIVED `<name>_sum` and `<name>_count` series, so one metric can write more than one sample and `written` can exceed the number of metrics you sent. The batch's own `TimestampNs` stamps every sample it carries.  The tenant is the gateway-minted `X-Org-Id` header, falling back to the deployment brand and then `default`; each org gets its own store, WAL-durable under the deployment's data dir. A body that does not decode is 400.
  Future<void> postMetricsBatch() async {
    final response = await postMetricsBatchWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Append structured log records for your org
  ///
  /// Takes `{records:[{t, level, body, labels}]}`, appends each one, and answers `{written}`. Bodies are stored verbatim; `labels` are the indexed dimensions a query filters on, so what you do not label you can only find by substring.  `t` is NANOSECONDS since the Unix epoch. A record sent without one is stored at 0 and then falls outside any query carrying a lower bound — the usual reason a successful write does not read back. Retention is a bounded ring, 1048576 records per org, oldest evicted first. No record is validated or rejected, so `written` is the number of records SENT; only a body that does not decode at all is 400.  The tenant is the gateway-minted `X-Org-Id` header, falling back to the deployment brand and then `default`; each org's records live in its own WAL-durable store.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postMetricsLogsWriteWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/metrics/logs/write';

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

  /// Append structured log records for your org
  ///
  /// Takes `{records:[{t, level, body, labels}]}`, appends each one, and answers `{written}`. Bodies are stored verbatim; `labels` are the indexed dimensions a query filters on, so what you do not label you can only find by substring.  `t` is NANOSECONDS since the Unix epoch. A record sent without one is stored at 0 and then falls outside any query carrying a lower bound — the usual reason a successful write does not read back. Retention is a bounded ring, 1048576 records per org, oldest evicted first. No record is validated or rejected, so `written` is the number of records SENT; only a body that does not decode at all is 400.  The tenant is the gateway-minted `X-Org-Id` header, falling back to the deployment brand and then `default`; each org's records live in its own WAL-durable store.
  Future<void> postMetricsLogsWrite() async {
    final response = await postMetricsLogsWriteWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Append spans for your org
  ///
  /// Takes `{spans:[{traceId, spanId, parentId, name, startNs, endNs, attrs}]}`, appends each, and answers `{written}` — the number of spans sent. Every span is indexed by its trace id as it lands, which is what makes the waterfall read possible without a second store.  Times are NANOSECONDS since the Unix epoch. Retention is a bounded ring of 1048576 spans per org: past that the OLDEST are evicted to keep the newest 1048576, and the trace index is rebuilt — so a long-lived trace can lose its early spans while its later ones survive, and a waterfall read is best-effort against retention, not a guarantee.  The tenant is the gateway-minted `X-Org-Id` header, falling back to the deployment brand and then `default`. A body that does not decode is 400.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postMetricsTracesWriteWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/metrics/traces/write';

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

  /// Append spans for your org
  ///
  /// Takes `{spans:[{traceId, spanId, parentId, name, startNs, endNs, attrs}]}`, appends each, and answers `{written}` — the number of spans sent. Every span is indexed by its trace id as it lands, which is what makes the waterfall read possible without a second store.  Times are NANOSECONDS since the Unix epoch. Retention is a bounded ring of 1048576 spans per org: past that the OLDEST are evicted to keep the newest 1048576, and the trace index is rebuilt — so a long-lived trace can lose its early spans while its later ones survive, and a waterfall read is best-effort against retention, not a guarantee.  The tenant is the gateway-minted `X-Org-Id` header, falling back to the deployment brand and then `default`. A body that does not decode is 400.
  Future<void> postMetricsTracesWrite() async {
    final response = await postMetricsTracesWriteWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Append samples to your org's named, labelled series
  ///
  /// Takes `{series:[{name, labels, samples:[{t, v}]}]}`, appends every sample, creating each series on first write, and answers `{written}` — again counting SAMPLES, so three series of ten samples is 30.  A series is identified by its name PLUS its whole label set, so adding one label makes a different series rather than annotating an existing one. Timestamps `t` are NANOSECONDS since the Unix epoch; a sample sent without one is stored at 0 and is then excluded by any query that sets a lower bound, which is the usual reason a write that reported success does not read back. Retention is per series and bounded — past 65536 samples the oldest are evicted.  The tenant is the gateway-minted `X-Org-Id` header, falling back to the deployment brand and then `default`. A body that does not decode is 400; nothing else is validated or rejected.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postMetricsWriteWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/metrics/write';

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

  /// Append samples to your org's named, labelled series
  ///
  /// Takes `{series:[{name, labels, samples:[{t, v}]}]}`, appends every sample, creating each series on first write, and answers `{written}` — again counting SAMPLES, so three series of ten samples is 30.  A series is identified by its name PLUS its whole label set, so adding one label makes a different series rather than annotating an existing one. Timestamps `t` are NANOSECONDS since the Unix epoch; a sample sent without one is stored at 0 and is then excluded by any query that sets a lower bound, which is the usual reason a write that reported success does not read back. Retention is per series and bounded — past 65536 samples the oldest are evicted.  The tenant is the gateway-minted `X-Org-Id` header, falling back to the deployment brand and then `default`. A body that does not decode is 400; nothing else is validated or rejected.
  Future<void> postMetricsWrite() async {
    final response = await postMetricsWriteWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
