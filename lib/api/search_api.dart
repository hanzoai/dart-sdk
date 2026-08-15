//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class SearchApi {
  SearchApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Deletes one search index from the shared backend and removes its metadata row.
  ///
  /// Deletes one search index from the shared backend and removes its metadata row. Answers 204 with no body; a second call is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<Response> deleteSearchByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/search/{name}'
      .replaceAll('{name}', name);

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

  /// Deletes one search index from the shared backend and removes its metadata row.
  ///
  /// Deletes one search index from the shared backend and removes its metadata row. Answers 204 with no body; a second call is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<void> deleteSearchByName(String name,) async {
    final response = await deleteSearchByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists the caller org's search indexes.
  ///
  /// Lists the caller org's search indexes. An index is a logical resource inside an already-live shared backend, so every one of them is reached through the public gateway rather than at an instance of its own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSearchWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/search';

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

  /// Lists the caller org's search indexes.
  ///
  /// Lists the caller org's search indexes. An index is a logical resource inside an already-live shared backend, so every one of them is reached through the public gateway rather than at an instance of its own.
  Future<List<ProvisionedSummary>?> getSearch() async {
    final response = await getSearchWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ProvisionedSummary>') as List)
        .cast<ProvisionedSummary>()
        .toList(growable: false);

    }
    return null;
  }

  /// Returns one search index's metadata.
  ///
  /// Returns one search index's metadata. It carries the index's status and the gateway address it is reached at, and no username: the backend authenticates with a shared, out-of-band key rather than a per-index credential.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<Response> getSearchByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/search/{name}'
      .replaceAll('{name}', name);

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

  /// Returns one search index's metadata.
  ///
  /// Returns one search index's metadata. It carries the index's status and the gateway address it is reached at, and no username: the backend authenticates with a shared, out-of-band key rather than a per-index credential.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<ProvisionedResource?> getSearchByName(String name,) async {
    final response = await getSearchByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProvisionedResource',) as ProvisionedResource;
    
    }
    return null;
  }

  /// Lists the search indexes with their document counts and timestamps.
  ///
  /// Lists the search indexes with their document counts and timestamps.  It reads the in-cluster Meilisearch service and reshapes its /stats and /indexes replies into the rows the console's Search panel renders. The read is degrade-friendly by design: an unreachable Meilisearch answers 200 with an EMPTY list, so the panel shows an honest empty state instead of an error. createdAt falls back to now and lastIndexedAt to null when the index list is unavailable.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] authorization:
  ///   Authorization carries the surface's bearer key (`Bearer <key>`); the bare key is accepted too. Search and vector are two surfaces with two keys. It is not `validate:\"required\"` on purpose: requireKey answers absence itself, so an unconfigured surface 503s and a missing bearer 401s — a validation refusal would rewrite both statuses.
  Future<Response> getSearchIndexesWithHttpInfo({ String? authorization, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/search/indexes';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
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

  /// Lists the search indexes with their document counts and timestamps.
  ///
  /// Lists the search indexes with their document counts and timestamps.  It reads the in-cluster Meilisearch service and reshapes its /stats and /indexes replies into the rows the console's Search panel renders. The read is degrade-friendly by design: an unreachable Meilisearch answers 200 with an EMPTY list, so the panel shows an honest empty state instead of an error. createdAt falls back to now and lastIndexedAt to null when the index list is unavailable.
  ///
  /// Parameters:
  ///
  /// * [String] authorization:
  ///   Authorization carries the surface's bearer key (`Bearer <key>`); the bare key is accepted too. Search and vector are two surfaces with two keys. It is not `validate:\"required\"` on purpose: requireKey answers absence itself, so an unconfigured surface 503s and a missing bearer 401s — a validation refusal would rewrite both statuses.
  Future<SearchIndexList?> getSearchIndexes({ String? authorization, }) async {
    final response = await getSearchIndexesWithHttpInfo( authorization: authorization, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchIndexList',) as SearchIndexList;
    
    }
    return null;
  }

  /// Totals the documents across every search index.
  ///
  /// Totals the documents across every search index.  totalDocuments is summed from Meilisearch's own per-index counts. The other three fields are structurally zero rather than estimated: Meilisearch keeps no query-history counters, so searches, sessions and the per-day series are not derivable from the index and this surface reports the honest zero instead of a fabricated number. An unreachable Meilisearch answers 200 with all zeros.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] authorization:
  ///   Authorization carries the surface's bearer key (`Bearer <key>`); the bare key is accepted too. Search and vector are two surfaces with two keys. It is not `validate:\"required\"` on purpose: requireKey answers absence itself, so an unconfigured surface 503s and a missing bearer 401s — a validation refusal would rewrite both statuses.
  Future<Response> getSearchStatsWithHttpInfo({ String? authorization, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/search/stats';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
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

  /// Totals the documents across every search index.
  ///
  /// Totals the documents across every search index.  totalDocuments is summed from Meilisearch's own per-index counts. The other three fields are structurally zero rather than estimated: Meilisearch keeps no query-history counters, so searches, sessions and the per-day series are not derivable from the index and this surface reports the honest zero instead of a fabricated number. An unreachable Meilisearch answers 200 with all zeros.
  ///
  /// Parameters:
  ///
  /// * [String] authorization:
  ///   Authorization carries the surface's bearer key (`Bearer <key>`); the bare key is accepted too. Search and vector are two surfaces with two keys. It is not `validate:\"required\"` on purpose: requireKey answers absence itself, so an unconfigured surface 503s and a missing bearer 401s — a validation refusal would rewrite both statuses.
  Future<SearchStats?> getSearchStats({ String? authorization, }) async {
    final response = await getSearchStatsWithHttpInfo( authorization: authorization, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchStats',) as SearchStats;
    
    }
    return null;
  }

  /// Provision a search index for your org
  ///
  /// Creates a search index inside the already-running shared search backend and answers with the endpoint that reaches it.  `name` is the org-unique slug every physical name derives from, and must match ^[a-z0-9]([a-z0-9-]{0,38}[a-z0-9])?$. `instance` optionally BINDS the add-on to one of your app instances: the DSN is injected into that instance's addons secret as <KIND>_URL, switching the app off its built-in store and onto this one. Omit it and the connection string is yours to wire.  THE CREDENTIAL COMES BACK ONCE. The connection string and password are in this response and nowhere else — every read beside it omits the password — so a caller that does not keep them has to provision again. Where KMS is configured the password is sealed there and only a reference is persisted; where it is not, it is returned this once and stored nowhere. It is never held in plaintext.  Scoped to the caller's validated org (403 without one), which also namespaces the physical resource under a fixed-width hash, so two tenants can never fold onto one backend resource — a residual collision fails closed with 409 rather than silently sharing. A name already taken in your org is 409; an invalid name or instance slug is 400; a backend that refuses the create is 502. Where a later step fails after the backend resource already exists, it is torn back down rather than left orphaned.  Billing is gated BEFORE anything is created: an unfunded org — or, in the fail-closed default, an unreachable meter — gets the fleet-wide 402/503 and nothing is provisioned. The fee is per-kind and set by the deployment.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProvisionRequest] provisionRequest:
  Future<Response> postSearchWithHttpInfo({ ProvisionRequest? provisionRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/search';

    // ignore: prefer_final_locals
    Object? postBody = provisionRequest;

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

  /// Provision a search index for your org
  ///
  /// Creates a search index inside the already-running shared search backend and answers with the endpoint that reaches it.  `name` is the org-unique slug every physical name derives from, and must match ^[a-z0-9]([a-z0-9-]{0,38}[a-z0-9])?$. `instance` optionally BINDS the add-on to one of your app instances: the DSN is injected into that instance's addons secret as <KIND>_URL, switching the app off its built-in store and onto this one. Omit it and the connection string is yours to wire.  THE CREDENTIAL COMES BACK ONCE. The connection string and password are in this response and nowhere else — every read beside it omits the password — so a caller that does not keep them has to provision again. Where KMS is configured the password is sealed there and only a reference is persisted; where it is not, it is returned this once and stored nowhere. It is never held in plaintext.  Scoped to the caller's validated org (403 without one), which also namespaces the physical resource under a fixed-width hash, so two tenants can never fold onto one backend resource — a residual collision fails closed with 409 rather than silently sharing. A name already taken in your org is 409; an invalid name or instance slug is 400; a backend that refuses the create is 502. Where a later step fails after the backend resource already exists, it is torn back down rather than left orphaned.  Billing is gated BEFORE anything is created: an unfunded org — or, in the fail-closed default, an unreachable meter — gets the fleet-wide 402/503 and nothing is provisioned. The fee is per-kind and set by the deployment.
  ///
  /// Parameters:
  ///
  /// * [ProvisionRequest] provisionRequest:
  Future<ProvisionResult?> postSearch({ ProvisionRequest? provisionRequest, }) async {
    final response = await postSearchWithHttpInfo( provisionRequest: provisionRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProvisionResult',) as ProvisionResult;
    
    }
    return null;
  }
}
