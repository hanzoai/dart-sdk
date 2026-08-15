//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class AnalyticsApi {
  AnalyticsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Health reports whether the event plane can take a write and the warehouse can answer a read.
  ///
  /// Health reports whether the event plane can take a write and the warehouse can answer a read.  It reports the analytics subsystem's own liveness in BOTH directions: plane is the event plane it WRITES (the bus and the JetStream stream every accepted event is published to, both named in the report), and datastore is the warehouse it READS, with each read lens's table reported as it is provisioned (the LLM usage ledger and the product-event table).  EITHER ONE DOWN IS A 503, and the report says WHICH — they are probed independently and never collapse into a single bit. This endpoint used to report the read half only, and answered 200/ok while every POST /v1/event failed on a stream that could not bind: a total ingest outage behind a green probe. A readiness gate here now gates on the write path too.  plane.ready IS A REAL PROBE and walks the ingest path itself — the same connection and the same stream a publish uses — so it cannot answer ready while a publish would 503. plane.reason carries the plane's own error text when it is false.  datastore IS NOT PROBED WITH A QUERY. It is the state of the process's own shared client — established, and not since closed — so a warehouse accepting connections and failing reads still reports true. Degraded CARRIES the report (status, the failing half, reason) as its body rather than an error envelope, so a gate reads the cause off the same object it got at 200.  A MISSING LENS TABLE IS NOT A FAILURE and never moves the status: a lens reported available:false answers honest-empty rather than erroring, so a fresh deployment whose collector has not emitted yet is legitimately 200 with the product-event lens unavailable. The lens block is reported whenever the warehouse is REACHABLE — including on a report degraded by the plane, where the tables genuinely were probed — and is absent only when the warehouse is not, having nothing to say about tables it could not reach.  Unauthenticated on purpose — liveness has to be probe-able — and it reads NO tenant data: table existence and stream presence only, never a row and never an event.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAnalyticsHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/analytics/health';

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

  /// Health reports whether the event plane can take a write and the warehouse can answer a read.
  ///
  /// Health reports whether the event plane can take a write and the warehouse can answer a read.  It reports the analytics subsystem's own liveness in BOTH directions: plane is the event plane it WRITES (the bus and the JetStream stream every accepted event is published to, both named in the report), and datastore is the warehouse it READS, with each read lens's table reported as it is provisioned (the LLM usage ledger and the product-event table).  EITHER ONE DOWN IS A 503, and the report says WHICH — they are probed independently and never collapse into a single bit. This endpoint used to report the read half only, and answered 200/ok while every POST /v1/event failed on a stream that could not bind: a total ingest outage behind a green probe. A readiness gate here now gates on the write path too.  plane.ready IS A REAL PROBE and walks the ingest path itself — the same connection and the same stream a publish uses — so it cannot answer ready while a publish would 503. plane.reason carries the plane's own error text when it is false.  datastore IS NOT PROBED WITH A QUERY. It is the state of the process's own shared client — established, and not since closed — so a warehouse accepting connections and failing reads still reports true. Degraded CARRIES the report (status, the failing half, reason) as its body rather than an error envelope, so a gate reads the cause off the same object it got at 200.  A MISSING LENS TABLE IS NOT A FAILURE and never moves the status: a lens reported available:false answers honest-empty rather than erroring, so a fresh deployment whose collector has not emitted yet is legitimately 200 with the product-event lens unavailable. The lens block is reported whenever the warehouse is REACHABLE — including on a report degraded by the plane, where the tables genuinely were probed — and is absent only when the warehouse is not, having nothing to say about tables it could not reach.  Unauthenticated on purpose — liveness has to be probe-able — and it reads NO tenant data: table existence and stream presence only, never a row and never an event.
  Future<HealthReport?> getAnalyticsHealth() async {
    final response = await getAnalyticsHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HealthReport',) as HealthReport;
    
    }
    return null;
  }

  /// Overview returns the caller org's analytics KPIs for one time window.
  ///
  /// Overview returns the caller org's analytics KPIs for one time window. Three lenses over one warehouse: llm is the live per-org LLM usage ledger (requests, tokens, spend, models, providers, errors) and is always real; web (pageviews, visitors, sessions) and commerce (orders, revenue, AOV) read the product-event table and report available=false rather than fabricating zeros when it holds nothing yet.  The org is the validated principal's — never a parameter — so a caller can only ever read its own tenant. 403 without a validated bearer, 400 on an unknown range, 503 when the warehouse is unreachable.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range is a relative window: a count and a unit — 24h, 7d, 90d, any <N>h or <N>d — or day, week, month, all. Default 24h. Ignored when both start and end are given. An unknown value, or one past the 730-day horizon, is a 400.
  ///
  /// * [String] start:
  ///   Start is the inclusive lower bound of a custom window, RFC3339. Requires end.
  ///
  /// * [String] end:
  ///   End is the exclusive upper bound of a custom window, RFC3339. Requires start.
  Future<Response> getAnalyticsOverviewWithHttpInfo({ String? range, String? start, String? end, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/analytics/overview';

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

  /// Overview returns the caller org's analytics KPIs for one time window.
  ///
  /// Overview returns the caller org's analytics KPIs for one time window. Three lenses over one warehouse: llm is the live per-org LLM usage ledger (requests, tokens, spend, models, providers, errors) and is always real; web (pageviews, visitors, sessions) and commerce (orders, revenue, AOV) read the product-event table and report available=false rather than fabricating zeros when it holds nothing yet.  The org is the validated principal's — never a parameter — so a caller can only ever read its own tenant. 403 without a validated bearer, 400 on an unknown range, 503 when the warehouse is unreachable.
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range is a relative window: a count and a unit — 24h, 7d, 90d, any <N>h or <N>d — or day, week, month, all. Default 24h. Ignored when both start and end are given. An unknown value, or one past the 730-day horizon, is a 400.
  ///
  /// * [String] start:
  ///   Start is the inclusive lower bound of a custom window, RFC3339. Requires end.
  ///
  /// * [String] end:
  ///   End is the exclusive upper bound of a custom window, RFC3339. Requires start.
  Future<Overview?> getAnalyticsOverview({ String? range, String? start, String? end, }) async {
    final response = await getAnalyticsOverviewWithHttpInfo( range: range, start: start, end: end, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Overview',) as Overview;
    
    }
    return null;
  }

  /// Timeseries returns the caller org's LLM usage over time as an evenly-spaced series.
  ///
  /// Timeseries returns the caller org's LLM usage over time as an evenly-spaced series. One point per hour or per day — the bucket the window implies, 24h giving hours and 7d/30d giving days — carrying requests, total tokens and spend in cents. Empty buckets are filled with zeros so a client charts a continuous line.  The org is the validated principal's — never a parameter. 403 without a validated bearer, 400 on an unknown range, 503 when the warehouse is unreachable.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range is a relative window: a count and a unit — 24h, 7d, 90d, any <N>h or <N>d — or day, week, month, all. Default 24h. Ignored when both start and end are given. An unknown value, or one past the 730-day horizon, is a 400.
  ///
  /// * [String] start:
  ///   Start is the inclusive lower bound of a custom window, RFC3339. Requires end.
  ///
  /// * [String] end:
  ///   End is the exclusive upper bound of a custom window, RFC3339. Requires start.
  Future<Response> getAnalyticsTimeseriesWithHttpInfo({ String? range, String? start, String? end, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/analytics/timeseries';

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

  /// Timeseries returns the caller org's LLM usage over time as an evenly-spaced series.
  ///
  /// Timeseries returns the caller org's LLM usage over time as an evenly-spaced series. One point per hour or per day — the bucket the window implies, 24h giving hours and 7d/30d giving days — carrying requests, total tokens and spend in cents. Empty buckets are filled with zeros so a client charts a continuous line.  The org is the validated principal's — never a parameter. 403 without a validated bearer, 400 on an unknown range, 503 when the warehouse is unreachable.
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range is a relative window: a count and a unit — 24h, 7d, 90d, any <N>h or <N>d — or day, week, month, all. Default 24h. Ignored when both start and end are given. An unknown value, or one past the 730-day horizon, is a 400.
  ///
  /// * [String] start:
  ///   Start is the inclusive lower bound of a custom window, RFC3339. Requires end.
  ///
  /// * [String] end:
  ///   End is the exclusive upper bound of a custom window, RFC3339. Requires start.
  Future<Timeseries?> getAnalyticsTimeseries({ String? range, String? start, String? end, }) async {
    final response = await getAnalyticsTimeseriesWithHttpInfo( range: range, start: start, end: end, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Timeseries',) as Timeseries;
    
    }
    return null;
  }

  /// Top returns the caller org's ranked lenses for one window, five of them at once.
  ///
  /// Top returns the caller org's ranked lenses for one window, five of them at once. models ranks LLM models by spend and is always real; products ranks commerce orders by revenue; topPages ranks requested paths, topReferrers the external referrer domains (\"(direct)\" for a missing or same-origin one) and topSources the utm_source campaigns (\"(none)\" when absent), each by pageviews. Every lens carries each row's share of the in-window total, so a top-N honestly shows the long tail.  The four event lenses report available=false rather than fabricating zeros when the product-event table holds nothing yet. The org is the validated principal's — never a parameter. 403 without a validated bearer, 400 on an unknown range, 503 when the warehouse is unreachable.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range is a relative window: a count and a unit — 24h, 7d, 90d, any <N>h or <N>d — or day, week, month, all. Default 24h. Ignored when both start and end are given. An unknown value, or one past the 730-day horizon, is a 400.
  ///
  /// * [String] start:
  ///   Start is the inclusive lower bound of a custom window, RFC3339. Requires end.
  ///
  /// * [String] end:
  ///   End is the exclusive upper bound of a custom window, RFC3339. Requires start.
  ///
  /// * [int] limit:
  ///   Limit bounds every ranked lens in the response. Default 10, maximum 100; a value at or below zero, or one that is not a number, takes the default.
  Future<Response> getAnalyticsTopWithHttpInfo({ String? range, String? start, String? end, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/analytics/top';

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

  /// Top returns the caller org's ranked lenses for one window, five of them at once.
  ///
  /// Top returns the caller org's ranked lenses for one window, five of them at once. models ranks LLM models by spend and is always real; products ranks commerce orders by revenue; topPages ranks requested paths, topReferrers the external referrer domains (\"(direct)\" for a missing or same-origin one) and topSources the utm_source campaigns (\"(none)\" when absent), each by pageviews. Every lens carries each row's share of the in-window total, so a top-N honestly shows the long tail.  The four event lenses report available=false rather than fabricating zeros when the product-event table holds nothing yet. The org is the validated principal's — never a parameter. 403 without a validated bearer, 400 on an unknown range, 503 when the warehouse is unreachable.
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range is a relative window: a count and a unit — 24h, 7d, 90d, any <N>h or <N>d — or day, week, month, all. Default 24h. Ignored when both start and end are given. An unknown value, or one past the 730-day horizon, is a 400.
  ///
  /// * [String] start:
  ///   Start is the inclusive lower bound of a custom window, RFC3339. Requires end.
  ///
  /// * [String] end:
  ///   End is the exclusive upper bound of a custom window, RFC3339. Requires start.
  ///
  /// * [int] limit:
  ///   Limit bounds every ranked lens in the response. Default 10, maximum 100; a value at or below zero, or one that is not a number, takes the default.
  Future<Top?> getAnalyticsTop({ String? range, String? start, String? end, int? limit, }) async {
    final response = await getAnalyticsTopWithHttpInfo( range: range, start: start, end: end, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Top',) as Top;
    
    }
    return null;
  }
}
