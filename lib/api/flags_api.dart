//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class FlagsApi {
  FlagsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Removes one flag definition by key and records the deletion in the change log.
  ///
  /// Removes one flag definition by key and records the deletion in the change log. A key the caller's store does not hold is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   Key is the flag key to act on, from the path.
  Future<Response> deleteFlagsDefsByKeyWithHttpInfo(String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/flags/defs/{key}'
      .replaceAll('{key}', key);

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

  /// Removes one flag definition by key and records the deletion in the change log.
  ///
  /// Removes one flag definition by key and records the deletion in the change log. A key the caller's store does not hold is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   Key is the flag key to act on, from the path.
  Future<DeletedOut?> deleteFlagsDefsByKey(String key,) async {
    final response = await deleteFlagsDefsByKeyWithHttpInfo(key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeletedOut',) as DeletedOut;
    
    }
    return null;
  }

  /// Returns the caller's flag change log newest-first: every create, update and delete, with the actor and the time.
  ///
  /// Returns the caller's flag change log newest-first: every create, update and delete, with the actor and the time.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned. 1–500; anything else takes the default 100.
  Future<Response> getFlagsActivityWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/flags/activity';

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

  /// Returns the caller's flag change log newest-first: every create, update and delete, with the actor and the time.
  ///
  /// Returns the caller's flag change log newest-first: every create, update and delete, with the actor and the time.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned. 1–500; anything else takes the default 100.
  Future<ActivityOut?> getFlagsActivity({ int? limit, }) async {
    final response = await getFlagsActivityWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ActivityOut',) as ActivityOut;
    
    }
    return null;
  }

  /// Returns every flag definition in the caller's (org, project) store, by key, with its version and who last changed it.
  ///
  /// Returns every flag definition in the caller's (org, project) store, by key, with its version and who last changed it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getFlagsDefsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/flags/defs';

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

  /// Returns every flag definition in the caller's (org, project) store, by key, with its version and who last changed it.
  ///
  /// Returns every flag definition in the caller's (org, project) store, by key, with its version and who last changed it.
  Future<DefsOut?> getFlagsDefs() async {
    final response = await getFlagsDefsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DefsOut',) as DefsOut;
    
    }
    return null;
  }

  /// Returns one flag definition by key, or 404 when the caller's store has none under that key.
  ///
  /// Returns one flag definition by key, or 404 when the caller's store has none under that key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   Key is the flag key to act on, from the path.
  Future<Response> getFlagsDefsByKeyWithHttpInfo(String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/flags/defs/{key}'
      .replaceAll('{key}', key);

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

  /// Returns one flag definition by key, or 404 when the caller's store has none under that key.
  ///
  /// Returns one flag definition by key, or 404 when the caller's store has none under that key.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   Key is the flag key to act on, from the path.
  Future<DefRow?> getFlagsDefsByKey(String key,) async {
    final response = await getFlagsDefsByKeyWithHttpInfo(key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DefRow',) as DefRow;
    
    }
    return null;
  }

  /// Health reports that the flag engine is serving.
  ///
  /// Health reports that the flag engine is serving. It is not gated: liveness must be probe-able without a token.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getFlagsHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/flags/health';

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

  /// Health reports that the flag engine is serving.
  ///
  /// Health reports that the flag engine is serving. It is not gated: liveness must be probe-able without a token.
  Future<HealthOut?> getFlagsHealth() async {
    final response = await getFlagsHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HealthOut',) as HealthOut;
    
    }
    return null;
  }

  /// Reports whether ONE host is currently gated by the launch waitlist.
  ///
  /// Reports whether ONE host is currently gated by the launch waitlist. It resolves the host to the service that governs it and reads that service's waitlist switch, so a guard sitting in front of a hosted surface can decide in one call whether to show the waitlist or the product. It answers for the ONE host asked about and never enumerates the registry, which is why it needs no credential. It FAILS OPEN: an unregistered host, an unmounted registry and a store fault all answer known=false with mode=false, so a request is never gated pre-boot or on a registry fault.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] host:
  ///   Host is the host to resolve, e.g. \"chat.hanzo.ai\". Defaults to the request's own Host header when omitted, which is what lets a guard running on the governed host ask about itself with no argument.
  Future<Response> getFlagsWaitlistWithHttpInfo({ String? host, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/flags/waitlist';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (host != null) {
      queryParams.addAll(_queryParams('', 'host', host));
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

  /// Reports whether ONE host is currently gated by the launch waitlist.
  ///
  /// Reports whether ONE host is currently gated by the launch waitlist. It resolves the host to the service that governs it and reads that service's waitlist switch, so a guard sitting in front of a hosted surface can decide in one call whether to show the waitlist or the product. It answers for the ONE host asked about and never enumerates the registry, which is why it needs no credential. It FAILS OPEN: an unregistered host, an unmounted registry and a store fault all answer known=false with mode=false, so a request is never gated pre-boot or on a registry fault.
  ///
  /// Parameters:
  ///
  /// * [String] host:
  ///   Host is the host to resolve, e.g. \"chat.hanzo.ai\". Defaults to the request's own Host header when omitted, which is what lets a guard running on the governed host ask about itself with no argument.
  Future<WaitlistModeView?> getFlagsWaitlist({ String? host, }) async {
    final response = await getFlagsWaitlistWithHttpInfo( host: host, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WaitlistModeView',) as WaitlistModeView;
    
    }
    return null;
  }

  /// Evaluate runs the caller's flag definitions for one identity and returns the flag verdict: which flags are on (or which variant), their payloads, and whether any definition failed to compute.
  ///
  /// Evaluate runs the caller's flag definitions for one identity and returns the flag verdict: which flags are on (or which variant), their payloads, and whether any definition failed to compute. Evaluation is in-process over the caller's own (org, project) definitions — no network hop, no shared KV — so a tenant can only ever evaluate its own flags.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EvaluateIn] evaluateIn (required):
  Future<Response> postFlagsWithHttpInfo(EvaluateIn evaluateIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/flags';

    // ignore: prefer_final_locals
    Object? postBody = evaluateIn;

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

  /// Evaluate runs the caller's flag definitions for one identity and returns the flag verdict: which flags are on (or which variant), their payloads, and whether any definition failed to compute.
  ///
  /// Evaluate runs the caller's flag definitions for one identity and returns the flag verdict: which flags are on (or which variant), their payloads, and whether any definition failed to compute. Evaluation is in-process over the caller's own (org, project) definitions — no network hop, no shared KV — so a tenant can only ever evaluate its own flags.
  ///
  /// Parameters:
  ///
  /// * [EvaluateIn] evaluateIn (required):
  Future<Object?> postFlags(EvaluateIn evaluateIn,) async {
    final response = await postFlagsWithHttpInfo(evaluateIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Evaluate runs the caller's flag definitions for one identity and returns the flag verdict: which flags are on (or which variant), their payloads, and whether any definition failed to compute.
  ///
  /// Evaluate runs the caller's flag definitions for one identity and returns the flag verdict: which flags are on (or which variant), their payloads, and whether any definition failed to compute. Evaluation is in-process over the caller's own (org, project) definitions — no network hop, no shared KV — so a tenant can only ever evaluate its own flags.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EvaluateIn] evaluateIn (required):
  Future<Response> postFlagsDecideWithHttpInfo(EvaluateIn evaluateIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/flags/decide';

    // ignore: prefer_final_locals
    Object? postBody = evaluateIn;

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

  /// Evaluate runs the caller's flag definitions for one identity and returns the flag verdict: which flags are on (or which variant), their payloads, and whether any definition failed to compute.
  ///
  /// Evaluate runs the caller's flag definitions for one identity and returns the flag verdict: which flags are on (or which variant), their payloads, and whether any definition failed to compute. Evaluation is in-process over the caller's own (org, project) definitions — no network hop, no shared KV — so a tenant can only ever evaluate its own flags.
  ///
  /// Parameters:
  ///
  /// * [EvaluateIn] evaluateIn (required):
  Future<Object?> postFlagsDecide(EvaluateIn evaluateIn,) async {
    final response = await postFlagsDecideWithHttpInfo(evaluateIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Creates or replaces the flag definition at the path's key and returns the stored row.
  ///
  /// Creates or replaces the flag definition at the path's key and returns the stored row. The BODY IS THE DEFINITION DOCUMENT — the flag-definition JSON object the evaluator consumes — and it is stored verbatim except that its \"key\" is forced to the key in the URL, so a document can never be filed under a name other than the one it was addressed by. Every write bumps the version and appends to the change log under the caller's identity.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   Key is the flag key to write, from the path.
  ///
  /// * [Object] body (required):
  Future<Response> putFlagsDefsByKeyWithHttpInfo(String key, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/flags/defs/{key}'
      .replaceAll('{key}', key);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Creates or replaces the flag definition at the path's key and returns the stored row.
  ///
  /// Creates or replaces the flag definition at the path's key and returns the stored row. The BODY IS THE DEFINITION DOCUMENT — the flag-definition JSON object the evaluator consumes — and it is stored verbatim except that its \"key\" is forced to the key in the URL, so a document can never be filed under a name other than the one it was addressed by. Every write bumps the version and appends to the change log under the caller's identity.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   Key is the flag key to write, from the path.
  ///
  /// * [Object] body (required):
  Future<DefRow?> putFlagsDefsByKey(String key, Object body,) async {
    final response = await putFlagsDefsByKeyWithHttpInfo(key, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DefRow',) as DefRow;
    
    }
    return null;
  }
}
