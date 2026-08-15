//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class TranslateApi {
  TranslateApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List returns the org's own translation-memory entries, newest first, optionally narrowed to one target language and/or one position on the review ladder.
  ///
  /// List returns the org's own translation-memory entries, newest first, optionally narrowed to one target language and/or one position on the review ladder. It is the review lane's read: what a human reviewer works through.  The org is ALWAYS the validated principal's org, never a request field, so one tenant can never read another's memory — the entries hold customer source text.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] target:
  ///   Target narrows to one target language tag (BCP-47, e.g. \"es\" or \"pt-BR\").
  ///
  /// * [String] state:
  ///   State narrows to one position on the review ladder: machine, suggested, approved or published.
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned. Non-positive or unparseable means the server default (200); the ceiling is 1000.
  Future<Response> getTranslateMemoryWithHttpInfo({ String? target, String? state, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/translate/memory';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (target != null) {
      queryParams.addAll(_queryParams('', 'target', target));
    }
    if (state != null) {
      queryParams.addAll(_queryParams('', 'state', state));
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

  /// List returns the org's own translation-memory entries, newest first, optionally narrowed to one target language and/or one position on the review ladder.
  ///
  /// List returns the org's own translation-memory entries, newest first, optionally narrowed to one target language and/or one position on the review ladder. It is the review lane's read: what a human reviewer works through.  The org is ALWAYS the validated principal's org, never a request field, so one tenant can never read another's memory — the entries hold customer source text.
  ///
  /// Parameters:
  ///
  /// * [String] target:
  ///   Target narrows to one target language tag (BCP-47, e.g. \"es\" or \"pt-BR\").
  ///
  /// * [String] state:
  ///   State narrows to one position on the review ladder: machine, suggested, approved or published.
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned. Non-positive or unparseable means the server default (200); the ceiling is 1000.
  Future<MemoryPage?> getTranslateMemory({ String? target, String? state, int? limit, }) async {
    final response = await getTranslateMemoryWithHttpInfo( target: target, state: state, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MemoryPage',) as MemoryPage;
    
    }
    return null;
  }

  /// Translate a string or a batch into one target language
  ///
  /// Returns one translation per input string, in input order, each carrying where it sits on the review ladder and whether it came from your memory rather than an engine — plus a usage block of REAL counts (strings, cached, translated, and the source characters that actually reached an engine). Send `text` for one string or `batch` for many, never both. When you name no `source`, the detected one is reported back.  THE TRANSLATION MEMORY IS CONSULTED FIRST AND IT IS NORMATIVE, NOT A CACHE. Every string keys on (source text, target, glossary version, tier); a hit is returned VERBATIM and never re-translated, which is what makes a locale rebuild idempotent under a non-deterministic model and the bill proportional to what actually changed. Misses go to the engine and are written back at state `machine`. Editing a glossary term changes the key, so a stale rendering can never be served.  IT CANNOT TRAMPLE REVIEWED WORK. A write from this route may create an entry or refresh one still at `machine`, and nothing else — a string a human moved to approved or published through the memory review lane survives every rebuild, and comes back here unchanged. The memory is the caller's OWN org's, a separate store per org: the source text you send is customer content and lands nowhere else. Read it back or review it at /v1/translate/memory.  `tier` picks the engine and defaults to quality — the model plane, which carries context, terminology and tone, and which bills its own tokens, so nothing is charged twice here. `bulk` is the high-volume engine and is metered HERE, on the source characters that reached it: a fully-cached rebuild reports zero characters and costs zero. BULK NEVER FALLS BACK TO QUALITY — on a deployment that does not serve it the answer is 503 for that tier, so a caller is never quietly served, or charged, at a tier it did not ask for. A bulk request beyond its balance is refused with the nested {\"error\":{\"code\",\"message\"}} body at 402/503.  `target` IS CHECKED FOR SHAPE, NOT FOR SUPPORT: anything BCP-47-shaped is accepted (`es`, `pt-BR`), anything else is 400. There is no unsupported-language error — a well-formed tag no engine can actually render is passed straight through, and whatever comes back is what gets stored and returned. `format` (text, html, markdown) tells the engine what markup to preserve; `glossary` fixes terms verbatim.  Requires a validated principal — 401 without one, and the org is always that principal's. At most 512 strings per call and 32768 characters per string; an engine that fails or answers a reply that does not cover every input is 502, and nothing is stored.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postTranslateWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/translate';

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

  /// Translate a string or a batch into one target language
  ///
  /// Returns one translation per input string, in input order, each carrying where it sits on the review ladder and whether it came from your memory rather than an engine — plus a usage block of REAL counts (strings, cached, translated, and the source characters that actually reached an engine). Send `text` for one string or `batch` for many, never both. When you name no `source`, the detected one is reported back.  THE TRANSLATION MEMORY IS CONSULTED FIRST AND IT IS NORMATIVE, NOT A CACHE. Every string keys on (source text, target, glossary version, tier); a hit is returned VERBATIM and never re-translated, which is what makes a locale rebuild idempotent under a non-deterministic model and the bill proportional to what actually changed. Misses go to the engine and are written back at state `machine`. Editing a glossary term changes the key, so a stale rendering can never be served.  IT CANNOT TRAMPLE REVIEWED WORK. A write from this route may create an entry or refresh one still at `machine`, and nothing else — a string a human moved to approved or published through the memory review lane survives every rebuild, and comes back here unchanged. The memory is the caller's OWN org's, a separate store per org: the source text you send is customer content and lands nowhere else. Read it back or review it at /v1/translate/memory.  `tier` picks the engine and defaults to quality — the model plane, which carries context, terminology and tone, and which bills its own tokens, so nothing is charged twice here. `bulk` is the high-volume engine and is metered HERE, on the source characters that reached it: a fully-cached rebuild reports zero characters and costs zero. BULK NEVER FALLS BACK TO QUALITY — on a deployment that does not serve it the answer is 503 for that tier, so a caller is never quietly served, or charged, at a tier it did not ask for. A bulk request beyond its balance is refused with the nested {\"error\":{\"code\",\"message\"}} body at 402/503.  `target` IS CHECKED FOR SHAPE, NOT FOR SUPPORT: anything BCP-47-shaped is accepted (`es`, `pt-BR`), anything else is 400. There is no unsupported-language error — a well-formed tag no engine can actually render is passed straight through, and whatever comes back is what gets stored and returned. `format` (text, html, markdown) tells the engine what markup to preserve; `glossary` fixes terms verbatim.  Requires a validated principal — 401 without one, and the org is always that principal's. At most 512 strings per call and 32768 characters per string; an engine that fails or answers a reply that does not cover every input is 502, and nothing is stored.
  Future<void> postTranslate() async {
    final response = await postTranslateWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Review records a human decision on one translation-memory entry, and returns the entry as stored.
  ///
  /// Review records a human decision on one translation-memory entry, and returns the entry as stored. A human write always wins over the stored value, and once it lands at approved or published no machine write can move it again — which is what makes a locale rebuild safe to run against reviewed work.  The org is ALWAYS the validated principal's org, never a request field, so a review can only ever land in the caller's own memory.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ReviewRequest] reviewRequest (required):
  Future<Response> putTranslateMemoryWithHttpInfo(ReviewRequest reviewRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/translate/memory';

    // ignore: prefer_final_locals
    Object? postBody = reviewRequest;

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

  /// Review records a human decision on one translation-memory entry, and returns the entry as stored.
  ///
  /// Review records a human decision on one translation-memory entry, and returns the entry as stored. A human write always wins over the stored value, and once it lands at approved or published no machine write can move it again — which is what makes a locale rebuild safe to run against reviewed work.  The org is ALWAYS the validated principal's org, never a request field, so a review can only ever land in the caller's own memory.
  ///
  /// Parameters:
  ///
  /// * [ReviewRequest] reviewRequest (required):
  Future<MemoryEntry?> putTranslateMemory(ReviewRequest reviewRequest,) async {
    final response = await putTranslateMemoryWithHttpInfo(reviewRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MemoryEntry',) as MemoryEntry;
    
    }
    return null;
  }
}
