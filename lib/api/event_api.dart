//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class EventApi {
  EventApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Errors returns the caller org's most recently captured errors, newest first.
  ///
  /// Errors returns the caller org's most recently captured errors, newest first. The error-tracking read view over event.error — the plane table the write core's error facts land in (errors are DELIBERATELY not on event.event) — each with its captured exception surfaced from the attributes map as a first-class field.  The org is the validated principal's — never a parameter — and this read requires a real bearer, NEVER the write-only publishable key: pk- can attribute a write and can read nothing. 403 without a validated bearer, 503 when the warehouse is unreachable.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit is how many rows to return, newest first. Default 50, maximum 200; a value at or below zero, or one that is not a number, takes the default.
  Future<Response> getEventErrorsWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/event/errors';

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

  /// Errors returns the caller org's most recently captured errors, newest first.
  ///
  /// Errors returns the caller org's most recently captured errors, newest first. The error-tracking read view over event.error — the plane table the write core's error facts land in (errors are DELIBERATELY not on event.event) — each with its captured exception surfaced from the attributes map as a first-class field.  The org is the validated principal's — never a parameter — and this read requires a real bearer, NEVER the write-only publishable key: pk- can attribute a write and can read nothing. 403 without a validated bearer, 503 when the warehouse is unreachable.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit is how many rows to return, newest first. Default 50, maximum 200; a value at or below zero, or one that is not a number, takes the default.
  Future<ErrorList?> getEventErrors({ int? limit, }) async {
    final response = await getEventErrorsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ErrorList',) as ErrorList;
    
    }
    return null;
  }

  /// Health reports whether the event plane can take a write and the warehouse can answer a read.
  ///
  /// Health reports whether the event plane can take a write and the warehouse can answer a read.  It reports the analytics subsystem's own liveness in BOTH directions: plane is the event plane it WRITES (the bus and the JetStream stream every accepted event is published to, both named in the report), and datastore is the warehouse it READS, with each read lens's table reported as it is provisioned (the LLM usage ledger and the product-event table).  EITHER ONE DOWN IS A 503, and the report says WHICH — they are probed independently and never collapse into a single bit. This endpoint used to report the read half only, and answered 200/ok while every POST /v1/event failed on a stream that could not bind: a total ingest outage behind a green probe. A readiness gate here now gates on the write path too.  plane.ready IS A REAL PROBE and walks the ingest path itself — the same connection and the same stream a publish uses — so it cannot answer ready while a publish would 503. plane.reason carries the plane's own error text when it is false.  datastore IS NOT PROBED WITH A QUERY. It is the state of the process's own shared client — established, and not since closed — so a warehouse accepting connections and failing reads still reports true. Degraded CARRIES the report (status, the failing half, reason) as its body rather than an error envelope, so a gate reads the cause off the same object it got at 200.  A MISSING LENS TABLE IS NOT A FAILURE and never moves the status: a lens reported available:false answers honest-empty rather than erroring, so a fresh deployment whose collector has not emitted yet is legitimately 200 with the product-event lens unavailable. The lens block is reported whenever the warehouse is REACHABLE — including on a report degraded by the plane, where the tables genuinely were probed — and is absent only when the warehouse is not, having nothing to say about tables it could not reach.  Unauthenticated on purpose — liveness has to be probe-able — and it reads NO tenant data: table existence and stream presence only, never a row and never an event.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getEventHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/event/health';

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
  Future<HealthReport?> getEventHealth() async {
    final response = await getEventHealthWithHttpInfo();
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

  /// Returns the caller org's most recent product events, newest first.
  ///
  /// Returns the caller org's most recent product events, newest first. The console's raw-event view over event.event — the same table the capture doors fill — one row per stored event, with the row's attributes returned as the properties object.  The org is the validated principal's — never a parameter — and a read requires a real bearer, never the write-only publishable key. 403 without a validated bearer, 503 when the warehouse is unreachable.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit is how many rows to return, newest first. Default 50, maximum 200; a value at or below zero, or one that is not a number, takes the default.
  Future<Response> getEventInsightsEventsWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/event/insights/events';

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

  /// Returns the caller org's most recent product events, newest first.
  ///
  /// Returns the caller org's most recent product events, newest first. The console's raw-event view over event.event — the same table the capture doors fill — one row per stored event, with the row's attributes returned as the properties object.  The org is the validated principal's — never a parameter — and a read requires a real bearer, never the write-only publishable key. 403 without a validated bearer, 503 when the warehouse is unreachable.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit is how many rows to return, newest first. Default 50, maximum 200; a value at or below zero, or one that is not a number, takes the default.
  Future<EventList?> getEventInsightsEvents({ int? limit, }) async {
    final response = await getEventInsightsEventsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EventList',) as EventList;
    
    }
    return null;
  }

  /// Reports that the unified insights surface is serving.
  ///
  /// Reports that the unified insights surface is serving. It reads no tenant data and consults no dependency, so it answers 200 unconditionally and needs no principal — liveness must be probe-able. The warehouse-connectivity probe is a different question and lives at GET /v1/event/health.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getEventInsightsHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/event/insights/health';

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

  /// Reports that the unified insights surface is serving.
  ///
  /// Reports that the unified insights surface is serving. It reads no tenant data and consults no dependency, so it answers 200 unconditionally and needs no principal — liveness must be probe-able. The warehouse-connectivity probe is a different question and lives at GET /v1/event/health.
  Future<InsightsStatus?> getEventInsightsHealth() async {
    final response = await getEventInsightsHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InsightsStatus',) as InsightsStatus;
    
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
  Future<Response> getEventOverviewWithHttpInfo({ String? range, String? start, String? end, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/event/overview';

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
  Future<Overview?> getEventOverview({ String? range, String? start, String? end, }) async {
    final response = await getEventOverviewWithHttpInfo( range: range, start: start, end: end, );
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

  /// The Hanzo event tag — the one-line install for a surface with no bundler
  ///
  /// Serves the browser tag that autocaptures pageviews (initial and SPA) and uncaught errors onto the canonical wire at POST /v1/event.  Install is one line, and it is the same line for a Hanzo property and for a customer's own page:      <script defer src=\"https://api.hanzo.ai/v1/event/tag.js\" data-key=\"pk-…\"></script>  `data-key` is the publishable key the project mints; `data-product` optionally names the emitting surface. The key may also ride the src as `?key=` for a host that strips data attributes.  WITHOUT A KEY THE TAG SENDS NOTHING. A keyless beacon is accepted 200 into $public, a reserved tenant the owning org cannot read — so silence is the honest failure, and the tag picks it rather than reporting success into a tenant nobody reads.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getEventTagJsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/event/tag.js';

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

  /// The Hanzo event tag — the one-line install for a surface with no bundler
  ///
  /// Serves the browser tag that autocaptures pageviews (initial and SPA) and uncaught errors onto the canonical wire at POST /v1/event.  Install is one line, and it is the same line for a Hanzo property and for a customer's own page:      <script defer src=\"https://api.hanzo.ai/v1/event/tag.js\" data-key=\"pk-…\"></script>  `data-key` is the publishable key the project mints; `data-product` optionally names the emitting surface. The key may also ride the src as `?key=` for a host that strips data attributes.  WITHOUT A KEY THE TAG SENDS NOTHING. A keyless beacon is accepted 200 into $public, a reserved tenant the owning org cannot read — so silence is the honest failure, and the tag picks it rather than reporting success into a tenant nobody reads.
  Future<MultipartFile?> getEventTagJs() async {
    final response = await getEventTagJsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
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
  Future<Response> getEventTimeseriesWithHttpInfo({ String? range, String? start, String? end, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/event/timeseries';

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
  Future<Timeseries?> getEventTimeseries({ String? range, String? start, String? end, }) async {
    final response = await getEventTimeseriesWithHttpInfo( range: range, start: start, end: end, );
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
  Future<Response> getEventTopWithHttpInfo({ String? range, String? start, String? end, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/event/top';

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
  Future<Top?> getEventTop({ String? range, String? start, String? end, int? limit, }) async {
    final response = await getEventTopWithHttpInfo( range: range, start: start, end: end, limit: limit, );
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

  /// Capture product events into your org's warehouse
  ///
  /// Stores pageviews, browser errors, identifies and custom commerce events as rows in the caller's own tenant, and answers a receipt {accepted, dropped} that always totals what was sent — a beacon is never silently discarded.  THE STATUS SAYS WHETHER ANYTHING LANDED, so a green check can never mean an empty warehouse. 200 means at least one event was stored (or that nothing was sent), and a nonzero `dropped` beside a nonzero `accepted` is a PARTIAL batch, never a failed one — a batch is not refused whole for its worst element. If NOTHING was stored the request is an error, and it names the one thing that fixes it: 401 `ingest_key_required` when every event was refused for want of a credential (the same events land with a key), and 400 `unroutable_events` when the caller HAD capability and the body still named nothing storable.  ONE door for every wire a Hanzo surface emits, dispatched by the SHAPE of the body and never by a second path: a bare event object, a bare array of them, the {batch:[…]} / {events:[…]} envelope, the team console's snake_case array, and the PostHog wire (spelled `distinct_id`/`api_key`, which the canonical wire never uses). BATCH IS A BODY, NOT A PATH — there is no /v1/event/batch, because an array already is one.  WHAT THE CALLER PRESENTS DECIDES WHAT IT MAY WRITE, and the door itself grants nothing. A validated bearer or an org API key writes the full event at full fidelity. A PUBLISHABLE key (pk-, on Authorization: Bearer, x-hanzo-ingest-key, or ?ingest_key= for navigator.sendBeacon, which cannot set headers) does the same, and is the credential a browser bundle ships: it is deliberately NOT a secret, it resolves WHICH tenant a beacon belongs to and nothing more. A pk- never authenticates and can READ NOTHING — not this org's errors, not a lens, not any other route on this API — so a leaked one lets a stranger write into your stream, and never lets one read out of it. Reading these rows back always takes a real bearer. A Hanzo Team workspace token resolves its org at REDUCED capability: the signed account names the person, so a `distinctId` in the body cannot pin events on a colleague.  NO CREDENTIAL IS REFUSED: a write the server cannot attribute to a project is 401 `ingest_key_required`, and a credential that IS presented but resolves to no project is 403 `ingest_key_unknown`. Nothing is filed under a shared tenant — events nobody can read are worse than events nobody sent, because the caller is told it succeeded. A browser bundle therefore always ships a pk-, which is what /v1/event/tag.js takes.  A REDUCED principal — a Hanzo Team workspace token — writes through the PROJECTION into its own org: narrowed to what the SERVER can name (pageviews and errors, plus the closed autocapture vocabulary $click, $input, $change, $submit, $view), where every one of those names is resolved through a server-owned table and stored as that table's value, so the name on the wire is never the name in the row. Stripped, too, to the fields the projection names, so revenue, personId, groupId and every property but the element annotation cannot reach a row — and an exception is carried only on an error, never on an interaction, so a click cannot ship a stack trace into a row's attributes. It does NOT name the person: the signed account is the identity, so a `distinctId` in the body cannot pin events on a colleague. Everything refused is counted in `dropped`.  The projected lane alone is bounded: 413 over 64 KiB, 400 over 50 events, 429 on the per-client-IP and per-peer caps, and a DNT:1 or Sec-GPC:1 request stores nothing and says so in the receipt. Two stored values carry their own bounds on top, because a request cap does not bound one value: an element annotation over 2 KiB (or a trail over 32 steps) and an exception class over 256 bytes are dropped from the row, which still lands. Authenticated bodies are offered to the observability plane first, which claims LLM-observability ingestion batches and declines everything else.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PostEventRequest] postEventRequest:
  Future<Response> postEventWithHttpInfo({ PostEventRequest? postEventRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/event';

    // ignore: prefer_final_locals
    Object? postBody = postEventRequest;

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

  /// Capture product events into your org's warehouse
  ///
  /// Stores pageviews, browser errors, identifies and custom commerce events as rows in the caller's own tenant, and answers a receipt {accepted, dropped} that always totals what was sent — a beacon is never silently discarded.  THE STATUS SAYS WHETHER ANYTHING LANDED, so a green check can never mean an empty warehouse. 200 means at least one event was stored (or that nothing was sent), and a nonzero `dropped` beside a nonzero `accepted` is a PARTIAL batch, never a failed one — a batch is not refused whole for its worst element. If NOTHING was stored the request is an error, and it names the one thing that fixes it: 401 `ingest_key_required` when every event was refused for want of a credential (the same events land with a key), and 400 `unroutable_events` when the caller HAD capability and the body still named nothing storable.  ONE door for every wire a Hanzo surface emits, dispatched by the SHAPE of the body and never by a second path: a bare event object, a bare array of them, the {batch:[…]} / {events:[…]} envelope, the team console's snake_case array, and the PostHog wire (spelled `distinct_id`/`api_key`, which the canonical wire never uses). BATCH IS A BODY, NOT A PATH — there is no /v1/event/batch, because an array already is one.  WHAT THE CALLER PRESENTS DECIDES WHAT IT MAY WRITE, and the door itself grants nothing. A validated bearer or an org API key writes the full event at full fidelity. A PUBLISHABLE key (pk-, on Authorization: Bearer, x-hanzo-ingest-key, or ?ingest_key= for navigator.sendBeacon, which cannot set headers) does the same, and is the credential a browser bundle ships: it is deliberately NOT a secret, it resolves WHICH tenant a beacon belongs to and nothing more. A pk- never authenticates and can READ NOTHING — not this org's errors, not a lens, not any other route on this API — so a leaked one lets a stranger write into your stream, and never lets one read out of it. Reading these rows back always takes a real bearer. A Hanzo Team workspace token resolves its org at REDUCED capability: the signed account names the person, so a `distinctId` in the body cannot pin events on a colleague.  NO CREDENTIAL IS REFUSED: a write the server cannot attribute to a project is 401 `ingest_key_required`, and a credential that IS presented but resolves to no project is 403 `ingest_key_unknown`. Nothing is filed under a shared tenant — events nobody can read are worse than events nobody sent, because the caller is told it succeeded. A browser bundle therefore always ships a pk-, which is what /v1/event/tag.js takes.  A REDUCED principal — a Hanzo Team workspace token — writes through the PROJECTION into its own org: narrowed to what the SERVER can name (pageviews and errors, plus the closed autocapture vocabulary $click, $input, $change, $submit, $view), where every one of those names is resolved through a server-owned table and stored as that table's value, so the name on the wire is never the name in the row. Stripped, too, to the fields the projection names, so revenue, personId, groupId and every property but the element annotation cannot reach a row — and an exception is carried only on an error, never on an interaction, so a click cannot ship a stack trace into a row's attributes. It does NOT name the person: the signed account is the identity, so a `distinctId` in the body cannot pin events on a colleague. Everything refused is counted in `dropped`.  The projected lane alone is bounded: 413 over 64 KiB, 400 over 50 events, 429 on the per-client-IP and per-peer caps, and a DNT:1 or Sec-GPC:1 request stores nothing and says so in the receipt. Two stored values carry their own bounds on top, because a request cap does not bound one value: an element annotation over 2 KiB (or a trail over 32 steps) and an exception class over 256 bytes are dropped from the row, which still lands. Authenticated bodies are offered to the observability plane first, which claims LLM-observability ingestion batches and declines everything else.
  ///
  /// Parameters:
  ///
  /// * [PostEventRequest] postEventRequest:
  Future<CaptureResult?> postEvent({ PostEventRequest? postEventRequest, }) async {
    final response = await postEventWithHttpInfo( postEventRequest: postEventRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptureResult',) as CaptureResult;
    
    }
    return null;
  }

  /// Sentry SDK envelope ingest — errors and traces from an unmodified Sentry client
  ///
  /// Accepts the CURRENT Sentry wire — the framed envelope a modern SDK posts, carrying its items in one request — so an application already instrumented with Sentry reports into Hanzo's error tracking by pointing its DSN here and changing nothing else.  CLOUD ROUTES IT AND READS NONE OF IT. The body is relayed byte-for-byte to the observability plane, which parses the wire, verifies the credential and answers; this door declares no response shape because it does not know one. A deployment with no observability plane mounted answers 503.  THE CREDENTIAL IS A SENTRY DSN KEY, NOT A HANZO PRINCIPAL. This is one of the few writes on the platform that carries no bearer and no org header by design — a Sentry SDK has neither — and it is exempt from the principal gate for that reason. The observability plane verifies the DSN key itself, fail-closed: a request without a valid one is refused there, never admitted here. Presenting a Hanzo bearer instead does nothing.  `project` IS THE DSN'S PROJECT ID — the identifier in the DSN the SDK was configured with, and what the tenant is derived from. It is NOT a Hanzo IAM project and NOT a todo project key. Only these two ingest paths map through: no observability READ API is reachable by any other suffix under this prefix.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///
  /// * [MultipartFile] body:
  Future<Response> postEventByProjectEnvelopeWithHttpInfo(String project, { MultipartFile? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/event/{project}/envelope'
      .replaceAll('{project}', project);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/octet-stream'];


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

  /// Sentry SDK envelope ingest — errors and traces from an unmodified Sentry client
  ///
  /// Accepts the CURRENT Sentry wire — the framed envelope a modern SDK posts, carrying its items in one request — so an application already instrumented with Sentry reports into Hanzo's error tracking by pointing its DSN here and changing nothing else.  CLOUD ROUTES IT AND READS NONE OF IT. The body is relayed byte-for-byte to the observability plane, which parses the wire, verifies the credential and answers; this door declares no response shape because it does not know one. A deployment with no observability plane mounted answers 503.  THE CREDENTIAL IS A SENTRY DSN KEY, NOT A HANZO PRINCIPAL. This is one of the few writes on the platform that carries no bearer and no org header by design — a Sentry SDK has neither — and it is exempt from the principal gate for that reason. The observability plane verifies the DSN key itself, fail-closed: a request without a valid one is refused there, never admitted here. Presenting a Hanzo bearer instead does nothing.  `project` IS THE DSN'S PROJECT ID — the identifier in the DSN the SDK was configured with, and what the tenant is derived from. It is NOT a Hanzo IAM project and NOT a todo project key. Only these two ingest paths map through: no observability READ API is reachable by any other suffix under this prefix.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///
  /// * [MultipartFile] body:
  Future<void> postEventByProjectEnvelope(String project, { MultipartFile? body, }) async {
    final response = await postEventByProjectEnvelopeWithHttpInfo(project,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Sentry SDK store ingest — the legacy single-event wire
  ///
  /// Accepts the LEGACY Sentry wire: one event per request, what an SDK predating envelopes sends. Same door, same credential, same destination as the envelope endpoint — kept open so an old client reports without being upgraded first. New instrumentation has no reason to choose it.  CLOUD ROUTES IT AND READS NONE OF IT. The body is relayed byte-for-byte to the observability plane, which parses the wire, verifies the credential and answers; this door declares no response shape because it does not know one. A deployment with no observability plane mounted answers 503.  THE CREDENTIAL IS A SENTRY DSN KEY, NOT A HANZO PRINCIPAL. This is one of the few writes on the platform that carries no bearer and no org header by design — a Sentry SDK has neither — and it is exempt from the principal gate for that reason. The observability plane verifies the DSN key itself, fail-closed: a request without a valid one is refused there, never admitted here. Presenting a Hanzo bearer instead does nothing.  `project` IS THE DSN'S PROJECT ID — the identifier in the DSN the SDK was configured with, and what the tenant is derived from. It is NOT a Hanzo IAM project and NOT a todo project key. Only these two ingest paths map through: no observability READ API is reachable by any other suffix under this prefix.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///
  /// * [MultipartFile] body:
  Future<Response> postEventByProjectStoreWithHttpInfo(String project, { MultipartFile? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/event/{project}/store'
      .replaceAll('{project}', project);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/octet-stream'];


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

  /// Sentry SDK store ingest — the legacy single-event wire
  ///
  /// Accepts the LEGACY Sentry wire: one event per request, what an SDK predating envelopes sends. Same door, same credential, same destination as the envelope endpoint — kept open so an old client reports without being upgraded first. New instrumentation has no reason to choose it.  CLOUD ROUTES IT AND READS NONE OF IT. The body is relayed byte-for-byte to the observability plane, which parses the wire, verifies the credential and answers; this door declares no response shape because it does not know one. A deployment with no observability plane mounted answers 503.  THE CREDENTIAL IS A SENTRY DSN KEY, NOT A HANZO PRINCIPAL. This is one of the few writes on the platform that carries no bearer and no org header by design — a Sentry SDK has neither — and it is exempt from the principal gate for that reason. The observability plane verifies the DSN key itself, fail-closed: a request without a valid one is refused there, never admitted here. Presenting a Hanzo bearer instead does nothing.  `project` IS THE DSN'S PROJECT ID — the identifier in the DSN the SDK was configured with, and what the tenant is derived from. It is NOT a Hanzo IAM project and NOT a todo project key. Only these two ingest paths map through: no observability READ API is reachable by any other suffix under this prefix.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///
  /// * [MultipartFile] body:
  Future<void> postEventByProjectStore(String project, { MultipartFile? body, }) async {
    final response = await postEventByProjectStoreWithHttpInfo(project,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Record a session-replay snapshot batch
  ///
  /// Accepts a batch of rrweb events from a browser recorder and hands it to the session-replay pipeline, which stores the recording and derives the session summary a player reads back.  ONE REQUEST IS ONE BATCH, and it is all-or-nothing: the recording is made durable before this answers, so a 200 {\"accepted\":1} means stored and never \"buffered somewhere\". There is no partial count, because a half-written recording is not a recording.  `sessionId` is REQUIRED and bounded — at most 70 characters of ASCII letters, digits or '-'. It is the key every batch of one visit is grouped and ordered by, so an id outside that grammar is refused 400 here rather than accepted and dropped further down. `windowId` separates two tabs of one session and `distinctId` attributes the recording to a person; both are optional. `events` is the rrweb batch, each element a raw eventWithTime object, carried VERBATIM — the summary (click, keypress and mouse-activity counts, size) is derived downstream from exactly these bytes, so nothing is re-encoded or dropped.  THE CALLER'S CREDENTIAL DECIDES THE TENANT, and the body never does: the recording lands in the org the presented credential resolves to. It takes the SAME credentials as /v1/event — a validated bearer, an org API key, or a publishable pk- key on Authorization: Bearer, x-hanzo-ingest-key or ?ingest_key= — so a browser bundle already holding a pk- for events needs nothing new to record. A caller that presents nothing is 401 `ingest_key_required`; one whose key resolves to no project is 403 `ingest_key_unknown`; a reduced principal (a Hanzo Team workspace token) is 403 `insufficient_capability`, because a full-fidelity screen recording has no projected form that is safe for a guest to write into a host org.  BOUNDS: 413 over 512 KiB of body, and that is the only bound on one batch — a recorder is expected to chunk a long session rather than send it whole, and the cap is the size one message can carry rather than an arbitrary number. 503 when the pipeline cannot take the batch: honest unavailability the caller can retry, never a 200 over a discarded recording.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ReplayBody] replayBody:
  Future<Response> postEventReplayWithHttpInfo({ ReplayBody? replayBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/event/replay';

    // ignore: prefer_final_locals
    Object? postBody = replayBody;

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

  /// Record a session-replay snapshot batch
  ///
  /// Accepts a batch of rrweb events from a browser recorder and hands it to the session-replay pipeline, which stores the recording and derives the session summary a player reads back.  ONE REQUEST IS ONE BATCH, and it is all-or-nothing: the recording is made durable before this answers, so a 200 {\"accepted\":1} means stored and never \"buffered somewhere\". There is no partial count, because a half-written recording is not a recording.  `sessionId` is REQUIRED and bounded — at most 70 characters of ASCII letters, digits or '-'. It is the key every batch of one visit is grouped and ordered by, so an id outside that grammar is refused 400 here rather than accepted and dropped further down. `windowId` separates two tabs of one session and `distinctId` attributes the recording to a person; both are optional. `events` is the rrweb batch, each element a raw eventWithTime object, carried VERBATIM — the summary (click, keypress and mouse-activity counts, size) is derived downstream from exactly these bytes, so nothing is re-encoded or dropped.  THE CALLER'S CREDENTIAL DECIDES THE TENANT, and the body never does: the recording lands in the org the presented credential resolves to. It takes the SAME credentials as /v1/event — a validated bearer, an org API key, or a publishable pk- key on Authorization: Bearer, x-hanzo-ingest-key or ?ingest_key= — so a browser bundle already holding a pk- for events needs nothing new to record. A caller that presents nothing is 401 `ingest_key_required`; one whose key resolves to no project is 403 `ingest_key_unknown`; a reduced principal (a Hanzo Team workspace token) is 403 `insufficient_capability`, because a full-fidelity screen recording has no projected form that is safe for a guest to write into a host org.  BOUNDS: 413 over 512 KiB of body, and that is the only bound on one batch — a recorder is expected to chunk a long session rather than send it whole, and the cap is the size one message can carry rather than an arbitrary number. 503 when the pipeline cannot take the batch: honest unavailability the caller can retry, never a 200 over a discarded recording.
  ///
  /// Parameters:
  ///
  /// * [ReplayBody] replayBody:
  Future<CaptureResult?> postEventReplay({ ReplayBody? replayBody, }) async {
    final response = await postEventReplayWithHttpInfo( replayBody: replayBody, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptureResult',) as CaptureResult;
    
    }
    return null;
  }
}
