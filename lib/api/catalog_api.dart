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
}
