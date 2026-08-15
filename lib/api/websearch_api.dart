//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class WebsearchApi {
  WebsearchApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Keyless web meta-search, in the SearXNG JSON envelope.
  ///
  /// Answers {query, number_of_results, results:[{url, title, content, engine}]} — the exact /search?format=json contract a SearXNG client decodes, so an agent tool configured against SearXNG reaches this with no change. `q` is the query and `language` narrows it; both are read from the QUERY STRING.  Served in-process by a Go meta-search over keyless public engines, never a third-party search API and never a search key. The enabled engines run concurrently and their hits are merged, deduplicated by normalised URL (host and path, trailing slash and fragment dropped, query kept — distinct queries are distinct results) and capped at 30. Ranking is deterministic rather than scored: the first configured engine's hits lead.  TWO WAYS IN, one-way equivalent, and no third: a validated principal — the same gate the whole data plane uses — passes straight through, and a caller without one must present the shared service key as X-API-Key, compared in constant time. A deployment with no key configured answers 503 rather than opening the surface to everyone, and a missing or wrong key is 401. It is never an open proxy. There is no tenant scoping beyond that gate, and there is nothing to scope: the results are public web pages, identical for every caller.  It fails SOFT on the engines and closed only on the gate. An engine that errors or is served a bot-challenge page contributes zero results and never fails the request, so an empty `results` is a real answer — nothing was found — and not an outage. The array is always present, never null.  The one thing to get right: every method answers identically. This is one handler registered for all of them, and it reads only the query string, so a body sent on the write verbs is ignored rather than refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteWebsearchSearchWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/websearch/search';

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

  /// Keyless web meta-search, in the SearXNG JSON envelope.
  ///
  /// Answers {query, number_of_results, results:[{url, title, content, engine}]} — the exact /search?format=json contract a SearXNG client decodes, so an agent tool configured against SearXNG reaches this with no change. `q` is the query and `language` narrows it; both are read from the QUERY STRING.  Served in-process by a Go meta-search over keyless public engines, never a third-party search API and never a search key. The enabled engines run concurrently and their hits are merged, deduplicated by normalised URL (host and path, trailing slash and fragment dropped, query kept — distinct queries are distinct results) and capped at 30. Ranking is deterministic rather than scored: the first configured engine's hits lead.  TWO WAYS IN, one-way equivalent, and no third: a validated principal — the same gate the whole data plane uses — passes straight through, and a caller without one must present the shared service key as X-API-Key, compared in constant time. A deployment with no key configured answers 503 rather than opening the surface to everyone, and a missing or wrong key is 401. It is never an open proxy. There is no tenant scoping beyond that gate, and there is nothing to scope: the results are public web pages, identical for every caller.  It fails SOFT on the engines and closed only on the gate. An engine that errors or is served a bot-challenge page contributes zero results and never fails the request, so an empty `results` is a real answer — nothing was found — and not an outage. The array is always present, never null.  The one thing to get right: every method answers identically. This is one handler registered for all of them, and it reads only the query string, so a body sent on the write verbs is ignored rather than refused.
  Future<void> deleteWebsearchSearch() async {
    final response = await deleteWebsearchSearchWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Keyless web meta-search, in the SearXNG JSON envelope.
  ///
  /// Answers {query, number_of_results, results:[{url, title, content, engine}]} — the exact /search?format=json contract a SearXNG client decodes, so an agent tool configured against SearXNG reaches this with no change. `q` is the query and `language` narrows it; both are read from the QUERY STRING.  Served in-process by a Go meta-search over keyless public engines, never a third-party search API and never a search key. The enabled engines run concurrently and their hits are merged, deduplicated by normalised URL (host and path, trailing slash and fragment dropped, query kept — distinct queries are distinct results) and capped at 30. Ranking is deterministic rather than scored: the first configured engine's hits lead.  TWO WAYS IN, one-way equivalent, and no third: a validated principal — the same gate the whole data plane uses — passes straight through, and a caller without one must present the shared service key as X-API-Key, compared in constant time. A deployment with no key configured answers 503 rather than opening the surface to everyone, and a missing or wrong key is 401. It is never an open proxy. There is no tenant scoping beyond that gate, and there is nothing to scope: the results are public web pages, identical for every caller.  It fails SOFT on the engines and closed only on the gate. An engine that errors or is served a bot-challenge page contributes zero results and never fails the request, so an empty `results` is a real answer — nothing was found — and not an outage. The array is always present, never null.  The one thing to get right: every method answers identically. This is one handler registered for all of them, and it reads only the query string, so a body sent on the write verbs is ignored rather than refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getWebsearchSearchWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/websearch/search';

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

  /// Keyless web meta-search, in the SearXNG JSON envelope.
  ///
  /// Answers {query, number_of_results, results:[{url, title, content, engine}]} — the exact /search?format=json contract a SearXNG client decodes, so an agent tool configured against SearXNG reaches this with no change. `q` is the query and `language` narrows it; both are read from the QUERY STRING.  Served in-process by a Go meta-search over keyless public engines, never a third-party search API and never a search key. The enabled engines run concurrently and their hits are merged, deduplicated by normalised URL (host and path, trailing slash and fragment dropped, query kept — distinct queries are distinct results) and capped at 30. Ranking is deterministic rather than scored: the first configured engine's hits lead.  TWO WAYS IN, one-way equivalent, and no third: a validated principal — the same gate the whole data plane uses — passes straight through, and a caller without one must present the shared service key as X-API-Key, compared in constant time. A deployment with no key configured answers 503 rather than opening the surface to everyone, and a missing or wrong key is 401. It is never an open proxy. There is no tenant scoping beyond that gate, and there is nothing to scope: the results are public web pages, identical for every caller.  It fails SOFT on the engines and closed only on the gate. An engine that errors or is served a bot-challenge page contributes zero results and never fails the request, so an empty `results` is a real answer — nothing was found — and not an outage. The array is always present, never null.  The one thing to get right: every method answers identically. This is one handler registered for all of them, and it reads only the query string, so a body sent on the write verbs is ignored rather than refused.
  Future<void> getWebsearchSearch() async {
    final response = await getWebsearchSearchWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Keyless web meta-search, in the SearXNG JSON envelope.
  ///
  /// Answers {query, number_of_results, results:[{url, title, content, engine}]} — the exact /search?format=json contract a SearXNG client decodes, so an agent tool configured against SearXNG reaches this with no change. `q` is the query and `language` narrows it; both are read from the QUERY STRING.  Served in-process by a Go meta-search over keyless public engines, never a third-party search API and never a search key. The enabled engines run concurrently and their hits are merged, deduplicated by normalised URL (host and path, trailing slash and fragment dropped, query kept — distinct queries are distinct results) and capped at 30. Ranking is deterministic rather than scored: the first configured engine's hits lead.  TWO WAYS IN, one-way equivalent, and no third: a validated principal — the same gate the whole data plane uses — passes straight through, and a caller without one must present the shared service key as X-API-Key, compared in constant time. A deployment with no key configured answers 503 rather than opening the surface to everyone, and a missing or wrong key is 401. It is never an open proxy. There is no tenant scoping beyond that gate, and there is nothing to scope: the results are public web pages, identical for every caller.  It fails SOFT on the engines and closed only on the gate. An engine that errors or is served a bot-challenge page contributes zero results and never fails the request, so an empty `results` is a real answer — nothing was found — and not an outage. The array is always present, never null.  The one thing to get right: every method answers identically. This is one handler registered for all of them, and it reads only the query string, so a body sent on the write verbs is ignored rather than refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> patchWebsearchSearchWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/websearch/search';

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

  /// Keyless web meta-search, in the SearXNG JSON envelope.
  ///
  /// Answers {query, number_of_results, results:[{url, title, content, engine}]} — the exact /search?format=json contract a SearXNG client decodes, so an agent tool configured against SearXNG reaches this with no change. `q` is the query and `language` narrows it; both are read from the QUERY STRING.  Served in-process by a Go meta-search over keyless public engines, never a third-party search API and never a search key. The enabled engines run concurrently and their hits are merged, deduplicated by normalised URL (host and path, trailing slash and fragment dropped, query kept — distinct queries are distinct results) and capped at 30. Ranking is deterministic rather than scored: the first configured engine's hits lead.  TWO WAYS IN, one-way equivalent, and no third: a validated principal — the same gate the whole data plane uses — passes straight through, and a caller without one must present the shared service key as X-API-Key, compared in constant time. A deployment with no key configured answers 503 rather than opening the surface to everyone, and a missing or wrong key is 401. It is never an open proxy. There is no tenant scoping beyond that gate, and there is nothing to scope: the results are public web pages, identical for every caller.  It fails SOFT on the engines and closed only on the gate. An engine that errors or is served a bot-challenge page contributes zero results and never fails the request, so an empty `results` is a real answer — nothing was found — and not an outage. The array is always present, never null.  The one thing to get right: every method answers identically. This is one handler registered for all of them, and it reads only the query string, so a body sent on the write verbs is ignored rather than refused.
  Future<void> patchWebsearchSearch() async {
    final response = await patchWebsearchSearchWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Keyless web meta-search, in the SearXNG JSON envelope.
  ///
  /// Answers {query, number_of_results, results:[{url, title, content, engine}]} — the exact /search?format=json contract a SearXNG client decodes, so an agent tool configured against SearXNG reaches this with no change. `q` is the query and `language` narrows it; both are read from the QUERY STRING.  Served in-process by a Go meta-search over keyless public engines, never a third-party search API and never a search key. The enabled engines run concurrently and their hits are merged, deduplicated by normalised URL (host and path, trailing slash and fragment dropped, query kept — distinct queries are distinct results) and capped at 30. Ranking is deterministic rather than scored: the first configured engine's hits lead.  TWO WAYS IN, one-way equivalent, and no third: a validated principal — the same gate the whole data plane uses — passes straight through, and a caller without one must present the shared service key as X-API-Key, compared in constant time. A deployment with no key configured answers 503 rather than opening the surface to everyone, and a missing or wrong key is 401. It is never an open proxy. There is no tenant scoping beyond that gate, and there is nothing to scope: the results are public web pages, identical for every caller.  It fails SOFT on the engines and closed only on the gate. An engine that errors or is served a bot-challenge page contributes zero results and never fails the request, so an empty `results` is a real answer — nothing was found — and not an outage. The array is always present, never null.  The one thing to get right: every method answers identically. This is one handler registered for all of them, and it reads only the query string, so a body sent on the write verbs is ignored rather than refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postWebsearchSearchWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/websearch/search';

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

  /// Keyless web meta-search, in the SearXNG JSON envelope.
  ///
  /// Answers {query, number_of_results, results:[{url, title, content, engine}]} — the exact /search?format=json contract a SearXNG client decodes, so an agent tool configured against SearXNG reaches this with no change. `q` is the query and `language` narrows it; both are read from the QUERY STRING.  Served in-process by a Go meta-search over keyless public engines, never a third-party search API and never a search key. The enabled engines run concurrently and their hits are merged, deduplicated by normalised URL (host and path, trailing slash and fragment dropped, query kept — distinct queries are distinct results) and capped at 30. Ranking is deterministic rather than scored: the first configured engine's hits lead.  TWO WAYS IN, one-way equivalent, and no third: a validated principal — the same gate the whole data plane uses — passes straight through, and a caller without one must present the shared service key as X-API-Key, compared in constant time. A deployment with no key configured answers 503 rather than opening the surface to everyone, and a missing or wrong key is 401. It is never an open proxy. There is no tenant scoping beyond that gate, and there is nothing to scope: the results are public web pages, identical for every caller.  It fails SOFT on the engines and closed only on the gate. An engine that errors or is served a bot-challenge page contributes zero results and never fails the request, so an empty `results` is a real answer — nothing was found — and not an outage. The array is always present, never null.  The one thing to get right: every method answers identically. This is one handler registered for all of them, and it reads only the query string, so a body sent on the write verbs is ignored rather than refused.
  Future<void> postWebsearchSearch() async {
    final response = await postWebsearchSearchWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Keyless web meta-search, in the SearXNG JSON envelope.
  ///
  /// Answers {query, number_of_results, results:[{url, title, content, engine}]} — the exact /search?format=json contract a SearXNG client decodes, so an agent tool configured against SearXNG reaches this with no change. `q` is the query and `language` narrows it; both are read from the QUERY STRING.  Served in-process by a Go meta-search over keyless public engines, never a third-party search API and never a search key. The enabled engines run concurrently and their hits are merged, deduplicated by normalised URL (host and path, trailing slash and fragment dropped, query kept — distinct queries are distinct results) and capped at 30. Ranking is deterministic rather than scored: the first configured engine's hits lead.  TWO WAYS IN, one-way equivalent, and no third: a validated principal — the same gate the whole data plane uses — passes straight through, and a caller without one must present the shared service key as X-API-Key, compared in constant time. A deployment with no key configured answers 503 rather than opening the surface to everyone, and a missing or wrong key is 401. It is never an open proxy. There is no tenant scoping beyond that gate, and there is nothing to scope: the results are public web pages, identical for every caller.  It fails SOFT on the engines and closed only on the gate. An engine that errors or is served a bot-challenge page contributes zero results and never fails the request, so an empty `results` is a real answer — nothing was found — and not an outage. The array is always present, never null.  The one thing to get right: every method answers identically. This is one handler registered for all of them, and it reads only the query string, so a body sent on the write verbs is ignored rather than refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> putWebsearchSearchWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/websearch/search';

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

  /// Keyless web meta-search, in the SearXNG JSON envelope.
  ///
  /// Answers {query, number_of_results, results:[{url, title, content, engine}]} — the exact /search?format=json contract a SearXNG client decodes, so an agent tool configured against SearXNG reaches this with no change. `q` is the query and `language` narrows it; both are read from the QUERY STRING.  Served in-process by a Go meta-search over keyless public engines, never a third-party search API and never a search key. The enabled engines run concurrently and their hits are merged, deduplicated by normalised URL (host and path, trailing slash and fragment dropped, query kept — distinct queries are distinct results) and capped at 30. Ranking is deterministic rather than scored: the first configured engine's hits lead.  TWO WAYS IN, one-way equivalent, and no third: a validated principal — the same gate the whole data plane uses — passes straight through, and a caller without one must present the shared service key as X-API-Key, compared in constant time. A deployment with no key configured answers 503 rather than opening the surface to everyone, and a missing or wrong key is 401. It is never an open proxy. There is no tenant scoping beyond that gate, and there is nothing to scope: the results are public web pages, identical for every caller.  It fails SOFT on the engines and closed only on the gate. An engine that errors or is served a bot-challenge page contributes zero results and never fails the request, so an empty `results` is a real answer — nothing was found — and not an outage. The array is always present, never null.  The one thing to get right: every method answers identically. This is one handler registered for all of them, and it reads only the query string, so a body sent on the write verbs is ignored rather than refused.
  Future<void> putWebsearchSearch() async {
    final response = await putWebsearchSearchWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Search the live web
  ///
  /// Searches the live web and answers with ranked results.  This is the fleet's path to what is happening RIGHT NOW — today's weather, an outage, a release that postdates any model's training. `q` is the query and `language` narrows it to a locale. The answer is `{query, number_of_results, results:[{url, title, content, engine}]}`, where `content` is the ENGINE's snippet and not the page: read a page with POST /v1/crawl.  It is served in-process by a Go meta-search over keyless public engines — never a third-party search API and never a search key. The enabled engines run concurrently and their hits are merged, deduplicated by normalised URL (host and path, trailing slash and fragment dropped, query kept, so distinct queries stay distinct results) and capped at 30. Ranking is deterministic rather than scored: the first configured engine's hits lead.  It fails SOFT on the engines. One that errors, times out or is served a bot-challenge page contributes zero results and never fails the call, so an empty `results` is a real answer — nothing was found — and not an outage. The array is always present, never null.  A VALIDATED PRINCIPAL IS REQUIRED, and there is no tenant beyond that: the results are public web pages, identical for every caller, so nothing here is scoped and nothing here can leak across orgs. A typed op is also an MCP tool and a CLI command, and tools/call invokes it with no route and therefore no middleware — so the gate is in the handler, where every door reaches it, rather than in a middleware only one door passes through.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [WebSearchQuery] webSearchQuery (required):
  Future<Response> searchWebWithHttpInfo(WebSearchQuery webSearchQuery,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/websearch';

    // ignore: prefer_final_locals
    Object? postBody = webSearchQuery;

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

  /// Search the live web
  ///
  /// Searches the live web and answers with ranked results.  This is the fleet's path to what is happening RIGHT NOW — today's weather, an outage, a release that postdates any model's training. `q` is the query and `language` narrows it to a locale. The answer is `{query, number_of_results, results:[{url, title, content, engine}]}`, where `content` is the ENGINE's snippet and not the page: read a page with POST /v1/crawl.  It is served in-process by a Go meta-search over keyless public engines — never a third-party search API and never a search key. The enabled engines run concurrently and their hits are merged, deduplicated by normalised URL (host and path, trailing slash and fragment dropped, query kept, so distinct queries stay distinct results) and capped at 30. Ranking is deterministic rather than scored: the first configured engine's hits lead.  It fails SOFT on the engines. One that errors, times out or is served a bot-challenge page contributes zero results and never fails the call, so an empty `results` is a real answer — nothing was found — and not an outage. The array is always present, never null.  A VALIDATED PRINCIPAL IS REQUIRED, and there is no tenant beyond that: the results are public web pages, identical for every caller, so nothing here is scoped and nothing here can leak across orgs. A typed op is also an MCP tool and a CLI command, and tools/call invokes it with no route and therefore no middleware — so the gate is in the handler, where every door reaches it, rather than in a middleware only one door passes through.
  ///
  /// Parameters:
  ///
  /// * [WebSearchQuery] webSearchQuery (required):
  Future<WebSearchResults?> searchWeb(WebSearchQuery webSearchQuery,) async {
    final response = await searchWebWithHttpInfo(webSearchQuery,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebSearchResults',) as WebSearchResults;
    
    }
    return null;
  }
}
