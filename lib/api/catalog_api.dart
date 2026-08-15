//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class CatalogApi {
  CatalogApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Remove a catalog entry
  ///
  /// Deletes the entry with the addressed slug and answers 204. The slug is matched as a trailing wildcard, not a single segment, because a model slug contains a slash. PLATFORM admin only — an org-level admin is refused 403 — and an unknown slug is 404, so the call is safe to repeat but not silently idempotent.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> deleteCatalogEntriesByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/catalog/entries/{wildcard1}'
      .replaceAll('{wildcard1}', wildcard1);

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

  /// Remove a catalog entry
  ///
  /// Deletes the entry with the addressed slug and answers 204. The slug is matched as a trailing wildcard, not a single segment, because a model slug contains a slash. PLATFORM admin only — an org-level admin is refused 403 — and an unknown slug is 404, so the call is safe to repeat but not silently idempotent.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> deleteCatalogEntriesByWildcard1(String wildcard1,) async {
    final response = await deleteCatalogEntriesByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Browse searches AND browses the cross-org catalog: every project, app and site the fleet has built, whichever org built it.
  ///
  /// Browse searches AND browses the cross-org catalog: every project, app and site the fleet has built, whichever org built it.  It reads TWO corpora and returns them as one page — the published, world-readable catalog that every caller sees, plus the caller's OWN org's private entries when the request carries a validated principal. Each row says which it came from in `scope`, so a client can warn before sharing a link. An anonymous caller simply gets the published one; no filter can ever widen a caller into another tenant's corpus, because the query that would return it is never run for them.  A request with no q is a browse rather than a search, and both answer the same shape: the page, the total before paging, and the facet counts over the whole matching set.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] q:
  ///   Q is the free-text query the lexical index scores relevance on. Empty is a browse rather than a search — the same request either way.
  ///
  /// * [String] org:
  ///   Org narrows to one builder org: hanzo | lux | zoo. Case-insensitive.
  ///
  /// * [String] kind:
  ///   Kind narrows to repo | site. Case-insensitive.
  ///
  /// * [String] origin:
  ///   Origin narrows to what a row IS to you: template | community | third-party | product. This is the axis the two hanzo.app lanes are cut on.
  ///
  /// * [String] archetype:
  ///   Archetype narrows to one project archetype. Case-insensitive.
  ///
  /// * [String] language:
  ///   Language narrows to one implementation language. Case-insensitive.
  ///
  /// * [String] template:
  ///   Template narrows a lane to ONE lineage: the id of the parent everything returned was forked from.
  ///
  /// * [String] forkable:
  ///   Forkable is tri-state: \"true\" selects the forkable rows, \"false\" selects the rest, and anything else — including absent — applies no filter at all.
  ///
  /// * [String] limit:
  ///   Limit caps the page at 200, default 50. A value that is not a non-negative integer falls back to the default.
  ///
  /// * [String] offset:
  ///   Offset is where the page starts, default 0, with the same tolerance.
  Future<Response> getCatalogWithHttpInfo({ String? q, String? org, String? kind, String? origin, String? archetype, String? language, String? template, String? forkable, String? limit, String? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/catalog';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (org != null) {
      queryParams.addAll(_queryParams('', 'org', org));
    }
    if (kind != null) {
      queryParams.addAll(_queryParams('', 'kind', kind));
    }
    if (origin != null) {
      queryParams.addAll(_queryParams('', 'origin', origin));
    }
    if (archetype != null) {
      queryParams.addAll(_queryParams('', 'archetype', archetype));
    }
    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
    }
    if (template != null) {
      queryParams.addAll(_queryParams('', 'template', template));
    }
    if (forkable != null) {
      queryParams.addAll(_queryParams('', 'forkable', forkable));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
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

  /// Browse searches AND browses the cross-org catalog: every project, app and site the fleet has built, whichever org built it.
  ///
  /// Browse searches AND browses the cross-org catalog: every project, app and site the fleet has built, whichever org built it.  It reads TWO corpora and returns them as one page — the published, world-readable catalog that every caller sees, plus the caller's OWN org's private entries when the request carries a validated principal. Each row says which it came from in `scope`, so a client can warn before sharing a link. An anonymous caller simply gets the published one; no filter can ever widen a caller into another tenant's corpus, because the query that would return it is never run for them.  A request with no q is a browse rather than a search, and both answer the same shape: the page, the total before paging, and the facet counts over the whole matching set.
  ///
  /// Parameters:
  ///
  /// * [String] q:
  ///   Q is the free-text query the lexical index scores relevance on. Empty is a browse rather than a search — the same request either way.
  ///
  /// * [String] org:
  ///   Org narrows to one builder org: hanzo | lux | zoo. Case-insensitive.
  ///
  /// * [String] kind:
  ///   Kind narrows to repo | site. Case-insensitive.
  ///
  /// * [String] origin:
  ///   Origin narrows to what a row IS to you: template | community | third-party | product. This is the axis the two hanzo.app lanes are cut on.
  ///
  /// * [String] archetype:
  ///   Archetype narrows to one project archetype. Case-insensitive.
  ///
  /// * [String] language:
  ///   Language narrows to one implementation language. Case-insensitive.
  ///
  /// * [String] template:
  ///   Template narrows a lane to ONE lineage: the id of the parent everything returned was forked from.
  ///
  /// * [String] forkable:
  ///   Forkable is tri-state: \"true\" selects the forkable rows, \"false\" selects the rest, and anything else — including absent — applies no filter at all.
  ///
  /// * [String] limit:
  ///   Limit caps the page at 200, default 50. A value that is not a non-negative integer falls back to the default.
  ///
  /// * [String] offset:
  ///   Offset is where the page starts, default 0, with the same tolerance.
  Future<CatalogPage?> getCatalog({ String? q, String? org, String? kind, String? origin, String? archetype, String? language, String? template, String? forkable, String? limit, String? offset, }) async {
    final response = await getCatalogWithHttpInfo( q: q, org: org, kind: kind, origin: origin, archetype: archetype, language: language, template: template, forkable: forkable, limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CatalogPage',) as CatalogPage;
    
    }
    return null;
  }

  /// The raw catalog entries, including the unpublished ones
  ///
  /// Returns every catalog row as stored — the admin view, which unlike the public projection includes entries that are not published. It is cross-tenant platform data, so the gate is a PLATFORM admin: an org-level admin is refused 403 no matter how privileged they are inside their own org, enforced by the handler itself and not only by the route's token middleware.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCatalogEntriesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/catalog/entries';

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

  /// The raw catalog entries, including the unpublished ones
  ///
  /// Returns every catalog row as stored — the admin view, which unlike the public projection includes entries that are not published. It is cross-tenant platform data, so the gate is a PLATFORM admin: an org-level admin is refused 403 no matter how privileged they are inside their own org, enforced by the handler itself and not only by the route's token middleware.
  Future<void> getCatalogEntries() async {
    final response = await getCatalogEntriesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Add a catalog entry
  ///
  /// Creates a catalog row from the body and answers it at 201. The slug is required and is the globally-unique catalog key, so a second entry claiming a slug already in use is refused 409 rather than shadowing the first. PLATFORM admin only — this is cross-tenant pricing and packaging data, and an org-level admin is refused 403.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCatalogEntriesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/catalog/entries';

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

  /// Add a catalog entry
  ///
  /// Creates a catalog row from the body and answers it at 201. The slug is required and is the globally-unique catalog key, so a second entry claiming a slug already in use is refused 409 rather than shadowing the first. PLATFORM admin only — this is cross-tenant pricing and packaging data, and an org-level admin is refused 403.
  Future<void> postCatalogEntries() async {
    final response = await postCatalogEntriesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Land a syncer's view of the model catalog: upstream costs and machine facts
  ///
  /// Takes a batch of model rows and upserts each one's upstream COST and machine-observable facts, answering what was created and changed. It deliberately touches nothing a human owns — not the retail price, not the markup, not the entitlement tier — so a sync can never overwrite an administrator's pricing decision. The gate is a PLATFORM principal rather than a platform ADMIN, because the caller is normally a scheduled job holding the internal service token, which carries platform scope but no admin claim.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCatalogModelsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/catalog/models';

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

  /// Land a syncer's view of the model catalog: upstream costs and machine facts
  ///
  /// Takes a batch of model rows and upserts each one's upstream COST and machine-observable facts, answering what was created and changed. It deliberately touches nothing a human owns — not the retail price, not the markup, not the entitlement tier — so a sync can never overwrite an administrator's pricing decision. The gate is a PLATFORM principal rather than a platform ADMIN, because the caller is normally a scheduled job holding the internal service token, which carries platform scope but no admin claim.
  Future<void> postCatalogModels() async {
    final response = await postCatalogModelsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Refresh the model catalog by reading the upstream provider
  ///
  /// Pulls the upstream model list and lands it through the same upsert the push door uses, so the rule that a sync owns cost and an administrator owns price holds no matter which door a row came through. It takes no body — the upstream is READ rather than told. If that upstream cannot be read the call answers 502 and writes NOTHING: a sync that cannot see its source must never conclude the source is empty, because that conclusion would withdraw every model on sale. The gate is a PLATFORM principal so the scheduled job's service token qualifies.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCatalogModelsRefreshWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/catalog/models/refresh';

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

  /// Refresh the model catalog by reading the upstream provider
  ///
  /// Pulls the upstream model list and lands it through the same upsert the push door uses, so the rule that a sync owns cost and an administrator owns price holds no matter which door a row came through. It takes no body — the upstream is READ rather than told. If that upstream cannot be read the call answers 502 and writes NOTHING: a sync that cannot see its source must never conclude the source is empty, because that conclusion would withdraw every model on sale. The gate is a PLATFORM principal so the scheduled job's service token qualifies.
  Future<void> postCatalogModelsRefresh() async {
    final response = await postCatalogModelsRefreshWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Seed the embedded catalog, without disturbing edits already made
  ///
  /// Upserts the shipped catalog seed and answers how many entries it created. It is idempotent and non-destructive — an entry an administrator has since edited is left alone — so it is safe to run against a live catalog to fill in what is missing. PLATFORM admin only; an org-level admin is refused 403.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCatalogSeedWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/catalog/seed';

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

  /// Seed the embedded catalog, without disturbing edits already made
  ///
  /// Upserts the shipped catalog seed and answers how many entries it created. It is idempotent and non-destructive — an entry an administrator has since edited is left alone — so it is safe to run against a live catalog to fill in what is missing. PLATFORM admin only; an org-level admin is refused 403.
  Future<void> postCatalogSeed() async {
    final response = await postCatalogSeedWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a catalog entry, keeping its slug
  ///
  /// Loads the addressed entry, applies the body over it and answers the stored result. The slug is the entry's IDENTITY and is re-stamped from the path after decoding, so a slug in the body is ignored and a rename is impossible through this address. The slug is matched as a trailing wildcard rather than one path segment because a model's slug IS its callable id and those contain a slash — a segment parameter would stop at it and leave most catalog rows unaddressable. PLATFORM admin only; an unknown slug is 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> putCatalogEntriesByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/catalog/entries/{wildcard1}'
      .replaceAll('{wildcard1}', wildcard1);

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

  /// Replace a catalog entry, keeping its slug
  ///
  /// Loads the addressed entry, applies the body over it and answers the stored result. The slug is the entry's IDENTITY and is re-stamped from the path after decoding, so a slug in the body is ignored and a rename is impossible through this address. The slug is matched as a trailing wildcard rather than one path segment because a model's slug IS its callable id and those contain a slash — a segment parameter would stop at it and leave most catalog rows unaddressable. PLATFORM admin only; an unknown slug is 404.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> putCatalogEntriesByWildcard1(String wildcard1,) async {
    final response = await putCatalogEntriesByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
