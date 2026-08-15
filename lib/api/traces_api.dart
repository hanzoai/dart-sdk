//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class TracesApi {
  TracesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// How many spans this deployment holds for your org
  ///
  /// Reports the native trace store's live state for the calling tenant: the subsystem version and `spans`, the count actually held right now. Not a dependency probe — the store is in-process, so this answers 200 whenever the process is up.  The tenant is the gateway-minted `X-Org-Id` header, falling back to the deployment brand and then `default`.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTracesHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/traces/health';

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
  Future<void> getTracesHealth() async {
    final response = await getTracesHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Recent spans for your org over a time range
  ///
  /// Answers `{count, spans}`, newest first, filtered on each span's START time. `start` and `end` are nanosecond bounds where 0 — which is what an absent, empty or unparseable value becomes — means UNBOUNDED, so a malformed bound widens the listing instead of failing it. `limit` defaults to 100 when absent or non-positive.  It lists SPANS, not traces: several spans of one trace each count separately and each take a slot against `limit`. Assembling one trace is /v1/traces/trace. The tenant is the gateway-minted `X-Org-Id` header, falling back to the deployment brand and then `default`.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTracesQueryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/traces/query';

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
  /// Answers `{count, spans}`, newest first, filtered on each span's START time. `start` and `end` are nanosecond bounds where 0 — which is what an absent, empty or unparseable value becomes — means UNBOUNDED, so a malformed bound widens the listing instead of failing it. `limit` defaults to 100 when absent or non-positive.  It lists SPANS, not traces: several spans of one trace each count separately and each take a slot against `limit`. Assembling one trace is /v1/traces/trace. The tenant is the gateway-minted `X-Org-Id` header, falling back to the deployment brand and then `default`.
  Future<void> getTracesQuery() async {
    final response = await getTracesQueryWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Every span of one trace — the waterfall
  ///
  /// Answers `{spans}`: every span the org holds for the trace id in `id`, in the order they were appended, which is what a waterfall view renders. Unlike the other reads there is no count, no time range and no limit — a trace is addressed by id or not at all.  An id with no spans answers an EMPTY list, never a 404: the store cannot tell a trace that never existed from one whose spans retention has already dropped, so it does not pretend to. The tenant is the gateway-minted `X-Org-Id` header, falling back to the deployment brand and then `default`, and a trace id belonging to another org is simply not in this org's store.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTracesTraceWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/traces/trace';

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
  Future<void> getTracesTrace() async {
    final response = await getTracesTraceWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Append spans for your org
  ///
  /// Takes `{spans:[{traceId, spanId, parentId, name, startNs, endNs, attrs}]}`, appends each, and answers `{written}` — the number of spans sent. Every span is indexed by its trace id as it lands, which is what makes the waterfall read possible without a second store.  Times are NANOSECONDS since the Unix epoch. Retention is a bounded ring of 1048576 spans per org: past that the OLDEST are evicted to keep the newest 1048576, and the trace index is rebuilt — so a long-lived trace can lose its early spans while its later ones survive, and a waterfall read is best-effort against retention, not a guarantee.  The tenant is the gateway-minted `X-Org-Id` header, falling back to the deployment brand and then `default`. A body that does not decode is 400.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postTracesWriteWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/traces/write';

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
  Future<void> postTracesWrite() async {
    final response = await postTracesWriteWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
