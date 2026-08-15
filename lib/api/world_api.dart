//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class WorldApi {
  WorldApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Answers GET /v1/world — the product's front door, naming every wire this surface answers on.
  ///
  /// Answers GET /v1/world — the product's front door, naming every wire this surface answers on.  It exists because two of those wires are INVISIBLE to the generated document. /v1/world/mcp and /v1/world/zap are carved off the cloud catch-all by the ingress and answered by world-gw, so the cloud router never serves them — and openapi.Describe renders prose only for a route the router actually serves, which is the very property that keeps the document from being able to claim an operation nothing answers. Both addresses are real and public, so without this op the only way to learn they exist is to read the ingress config. This is where that fact lives, in the product's own surface.  Public on purpose: discovery precedes credentials. It reports addresses and protocols only — never feed data, and never the caller's plan, which GET /v1/world/limits owns — so there is nothing here to leak.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getWorldWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/world';

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

  /// Answers GET /v1/world — the product's front door, naming every wire this surface answers on.
  ///
  /// Answers GET /v1/world — the product's front door, naming every wire this surface answers on.  It exists because two of those wires are INVISIBLE to the generated document. /v1/world/mcp and /v1/world/zap are carved off the cloud catch-all by the ingress and answered by world-gw, so the cloud router never serves them — and openapi.Describe renders prose only for a route the router actually serves, which is the very property that keeps the document from being able to claim an operation nothing answers. Both addresses are real and public, so without this op the only way to learn they exist is to read the ingress config. This is where that fact lives, in the product's own surface.  Public on purpose: discovery precedes credentials. It reports addresses and protocols only — never feed data, and never the caller's plan, which GET /v1/world/limits owns — so there is nothing here to leak.
  Future<WorldIndex?> getWorld() async {
    final response = await getWorldWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WorldIndex',) as WorldIndex;
    
    }
    return null;
  }

  /// Echoes a World plan's rate limits, alert quota and model-API grant, read straight from the live @hanzo/plans catalog, so agents and dashboards configure themselves against the catalog instead of hardcoding tier numbers.
  ///
  /// Echoes a World plan's rate limits, alert quota and model-API grant, read straight from the live @hanzo/plans catalog, so agents and dashboards configure themselves against the catalog instead of hardcoding tier numbers.  An empty or unknown plan resolves world-free, and a catalog failure serves that same free floor rather than erroring — so this always answers 200, and it can only ever under-grant. It reports the contract; it does not enforce it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] plan:
  ///   Plan is a World plan id from the live @hanzo/plans catalog, e.g. world-pro. Empty means world-free, and so does an id the catalog does not know — this never fails on an unknown plan.
  Future<Response> getWorldLimitsWithHttpInfo({ String? plan, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/world/limits';

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

  /// Echoes a World plan's rate limits, alert quota and model-API grant, read straight from the live @hanzo/plans catalog, so agents and dashboards configure themselves against the catalog instead of hardcoding tier numbers.
  ///
  /// Echoes a World plan's rate limits, alert quota and model-API grant, read straight from the live @hanzo/plans catalog, so agents and dashboards configure themselves against the catalog instead of hardcoding tier numbers.  An empty or unknown plan resolves world-free, and a catalog failure serves that same free floor rather than erroring — so this always answers 200, and it can only ever under-grant. It reports the contract; it does not enforce it.
  ///
  /// Parameters:
  ///
  /// * [String] plan:
  ///   Plan is a World plan id from the live @hanzo/plans catalog, e.g. world-pro. Empty means world-free, and so does an id the catalog does not know — this never fails on an unknown plan.
  Future<LimitsView?> getWorldLimits({ String? plan, }) async {
    final response = await getWorldLimitsWithHttpInfo( plan: plan, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LimitsView',) as LimitsView;
    
    }
    return null;
  }

  /// Returns the caller's merged world-news feed: every source their project's pipeline names — GDELT once per keyword, plus each allowlisted RSS or Atom feed — fetched concurrently, narrowed by the pipeline's keyword/region/source filters, deduplicated by link and sorted freshest first, capped at 50 items.
  ///
  /// Returns the caller's merged world-news feed: every source their project's pipeline names — GDELT once per keyword, plus each allowlisted RSS or Atom feed — fetched concurrently, narrowed by the pipeline's keyword/region/source filters, deduplicated by link and sorted freshest first, capped at 50 items.  A project with no stored pipeline gets a sensible default set of world feeds rather than an empty answer. A source that fails or times out is SKIPPED: the feed degrades to honest partial results and never 5xxs because one outlet was down. Reading also publishes the result to the /v1/world/stream subscribers of the same (org, project), so a dashboard's own refresh updates every open tab.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getWorldNewsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/world/news';

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

  /// Returns the caller's merged world-news feed: every source their project's pipeline names — GDELT once per keyword, plus each allowlisted RSS or Atom feed — fetched concurrently, narrowed by the pipeline's keyword/region/source filters, deduplicated by link and sorted freshest first, capped at 50 items.
  ///
  /// Returns the caller's merged world-news feed: every source their project's pipeline names — GDELT once per keyword, plus each allowlisted RSS or Atom feed — fetched concurrently, narrowed by the pipeline's keyword/region/source filters, deduplicated by link and sorted freshest first, capped at 50 items.  A project with no stored pipeline gets a sensible default set of world feeds rather than an empty answer. A source that fails or times out is SKIPPED: the feed degrades to honest partial results and never 5xxs because one outlet was down. Reading also publishes the result to the /v1/world/stream subscribers of the same (org, project), so a dashboard's own refresh updates every open tab.
  Future<NewsResponse?> getWorldNews() async {
    final response = await getWorldNewsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NewsResponse',) as NewsResponse;
    
    }
    return null;
  }

  /// Returns the caller project's news pipeline: which feeds it reads and how the merged result is filtered.
  ///
  /// Returns the caller project's news pipeline: which feeds it reads and how the merged result is filtered. A project that has never written one is answered with the built-in world feeds and `default: true`, so a fresh project sees the same feed /v1/world/news would actually serve rather than an empty configuration.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getWorldPipelineWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/world/pipeline';

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

  /// Returns the caller project's news pipeline: which feeds it reads and how the merged result is filtered.
  ///
  /// Returns the caller project's news pipeline: which feeds it reads and how the merged result is filtered. A project that has never written one is answered with the built-in world feeds and `default: true`, so a fresh project sees the same feed /v1/world/news would actually serve rather than an empty configuration.
  Future<PipelineView?> getWorldPipeline() async {
    final response = await getWorldPipelineWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PipelineView',) as PipelineView;
    
    }
    return null;
  }

  /// Live news refreshes for the caller's org and project, as Server-Sent Events.
  ///
  /// Holds the connection open as text/event-stream and pushes a `news` event — the same {items:[…]} body GET /v1/world/news answers — each time the caller's (org, project) feed refreshes, with a `: ping` heartbeat comment every 25s. Delivery is best-effort: a slow consumer is dropped on buffer overrun and reconnects, re-fetching GET /v1/world/news, which stays the source of truth. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getWorldStreamWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/world/stream';

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

  /// Live news refreshes for the caller's org and project, as Server-Sent Events.
  ///
  /// Holds the connection open as text/event-stream and pushes a `news` event — the same {items:[…]} body GET /v1/world/news answers — each time the caller's (org, project) feed refreshes, with a `: ping` heartbeat comment every 25s. Delivery is best-effort: a slow consumer is dropped on buffer overrun and reconnects, re-fetching GET /v1/world/news, which stays the source of truth. Requires a validated principal; 403 without one.
  Future<void> getWorldStream() async {
    final response = await getWorldStreamWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replaces the caller project's news pipeline and returns what was stored.
  ///
  /// Replaces the caller project's news pipeline and returns what was stored. It is a WHOLE replacement, not a patch: a field the request leaves out is stored empty, so sending only feeds clears the filters.  Every feed URL is validated HERE, at the write boundary — http(s) only, and the host must be on the server's allowlist — so a stored pipeline can never name a host the fetcher would later refuse, and the allowlist is one decision in one place rather than a check at each fetch.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PipelineReq] pipelineReq (required):
  Future<Response> putWorldPipelineWithHttpInfo(PipelineReq pipelineReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/world/pipeline';

    // ignore: prefer_final_locals
    Object? postBody = pipelineReq;

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

  /// Replaces the caller project's news pipeline and returns what was stored.
  ///
  /// Replaces the caller project's news pipeline and returns what was stored. It is a WHOLE replacement, not a patch: a field the request leaves out is stored empty, so sending only feeds clears the filters.  Every feed URL is validated HERE, at the write boundary — http(s) only, and the host must be on the server's allowlist — so a stored pipeline can never name a host the fetcher would later refuse, and the allowlist is one decision in one place rather than a check at each fetch.
  ///
  /// Parameters:
  ///
  /// * [PipelineReq] pipelineReq (required):
  Future<PipelineView?> putWorldPipeline(PipelineReq pipelineReq,) async {
    final response = await putWorldPipelineWithHttpInfo(pipelineReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PipelineView',) as PipelineView;
    
    }
    return null;
  }
}
