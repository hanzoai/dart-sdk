//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class TaxonomyApi {
  TaxonomyApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Removes one empty category.
  ///
  /// Removes one empty category. A category that still has taxa filed under it is refused with 409 and a count: deleting the label off a group must never silently take the products wearing it, and the alternative — orphan rows naming a category that no longer exists — is a catalogue that cannot be rendered. Move or delete its taxa first. An id no category holds is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the slug to act on, from the path.
  Future<Response> deleteTaxonomyCategoriesByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/taxonomy/categories/{id}'
      .replaceAll('{id}', id);

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

  /// Removes one empty category.
  ///
  /// Removes one empty category. A category that still has taxa filed under it is refused with 409 and a count: deleting the label off a group must never silently take the products wearing it, and the alternative — orphan rows naming a category that no longer exists — is a catalogue that cannot be rendered. Move or delete its taxa first. An id no category holds is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the slug to act on, from the path.
  Future<Deleted?> deleteTaxonomyCategoriesById(String id,) async {
    final response = await deleteTaxonomyCategoriesByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Deleted',) as Deleted;
    
    }
    return null;
  }

  /// Removes one product from the catalogue.
  ///
  /// Removes one product from the catalogue. An id no taxon holds is a 404. To take a product out of view without losing what was written about it, set `published` to false instead.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the slug to act on, from the path.
  Future<Response> deleteTaxonomyTaxaByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/taxonomy/taxa/{id}'
      .replaceAll('{id}', id);

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

  /// Removes one product from the catalogue.
  ///
  /// Removes one product from the catalogue. An id no taxon holds is a 404. To take a product out of view without losing what was written about it, set `published` to false instead.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the slug to act on, from the path.
  Future<Deleted?> deleteTaxonomyTaxaById(String id,) async {
    final response = await deleteTaxonomyTaxaByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Deleted',) as Deleted;
    
    }
    return null;
  }

  /// Read returns the product catalogue as this caller sees it: the PLATFORM catalogue — Hanzo's own products, the part that is true for everyone — plus the caller's own org's rows, every category in display order and each carrying the products filed under it in theirs.
  ///
  /// Read returns the product catalogue as this caller sees it: the PLATFORM catalogue — Hanzo's own products, the part that is true for everyone — plus the caller's own org's rows, every category in display order and each carrying the products filed under it in theirs. Another customer's rows are never in it. It is readable signed out, and a signed-out visitor gets the platform catalogue alone, which is what the marketing landing renders from.  Where the caller's org and the platform hold the same id, the caller's own row is the one served. That rule exists because ids are unique per ORG and not globally — two customers may each have a \"crm\", and refusing the second would tell one of them the other exists — so a collision with the platform is possible by construction and something has to win deterministically. Yours does: your own catalogue is the one you edited.  `?brand=` narrows it the way a brand's own console does: only the categories that brand admits, and within them only the taxa scoped to it. An unpublished row is served only to whoever may edit it — a SuperAdmin for the platform's, an org admin for their own — so a product can be staged before anyone sees it without becoming invisible to the person staging it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] brand:
  ///   Brand returns only what that brand's console shows — the categories it admits, and within them the taxa scoped to it. Empty returns everything.
  Future<Response> getTaxonomyWithHttpInfo({ String? brand, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/taxonomy';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (brand != null) {
      queryParams.addAll(_queryParams('', 'brand', brand));
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

  /// Read returns the product catalogue as this caller sees it: the PLATFORM catalogue — Hanzo's own products, the part that is true for everyone — plus the caller's own org's rows, every category in display order and each carrying the products filed under it in theirs.
  ///
  /// Read returns the product catalogue as this caller sees it: the PLATFORM catalogue — Hanzo's own products, the part that is true for everyone — plus the caller's own org's rows, every category in display order and each carrying the products filed under it in theirs. Another customer's rows are never in it. It is readable signed out, and a signed-out visitor gets the platform catalogue alone, which is what the marketing landing renders from.  Where the caller's org and the platform hold the same id, the caller's own row is the one served. That rule exists because ids are unique per ORG and not globally — two customers may each have a \"crm\", and refusing the second would tell one of them the other exists — so a collision with the platform is possible by construction and something has to win deterministically. Yours does: your own catalogue is the one you edited.  `?brand=` narrows it the way a brand's own console does: only the categories that brand admits, and within them only the taxa scoped to it. An unpublished row is served only to whoever may edit it — a SuperAdmin for the platform's, an org admin for their own — so a product can be staged before anyone sees it without becoming invisible to the person staging it.
  ///
  /// Parameters:
  ///
  /// * [String] brand:
  ///   Brand returns only what that brand's console shows — the categories it admits, and within them the taxa scoped to it. Empty returns everything.
  Future<Taxonomy?> getTaxonomy({ String? brand, }) async {
    final response = await getTaxonomyWithHttpInfo( brand: brand, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Taxonomy',) as Taxonomy;
    
    }
    return null;
  }

  /// Creates or replaces one category and returns it as stored.
  ///
  /// Creates or replaces one category and returns it as stored. The id in the URL is the one it is filed under whatever the body says, so a category can never be written under a name it was not addressed by — which also makes create and replace the same act, and is why there is no POST beside this.  Platform SuperAdmin only: one catalogue serves every tenant, so an org admin who could rename a category would rename it for all of them.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the category slug to write, from the path.
  ///
  /// * [CategoryIn] categoryIn (required):
  Future<Response> putTaxonomyCategoriesByIdWithHttpInfo(String id, CategoryIn categoryIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/taxonomy/categories/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = categoryIn;

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

  /// Creates or replaces one category and returns it as stored.
  ///
  /// Creates or replaces one category and returns it as stored. The id in the URL is the one it is filed under whatever the body says, so a category can never be written under a name it was not addressed by — which also makes create and replace the same act, and is why there is no POST beside this.  Platform SuperAdmin only: one catalogue serves every tenant, so an org admin who could rename a category would rename it for all of them.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the category slug to write, from the path.
  ///
  /// * [CategoryIn] categoryIn (required):
  Future<Category?> putTaxonomyCategoriesById(String id, CategoryIn categoryIn,) async {
    final response = await putTaxonomyCategoriesByIdWithHttpInfo(id, categoryIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Category',) as Category;
    
    }
    return null;
  }

  /// Creates or replaces one product and returns it as stored.
  ///
  /// Creates or replaces one product and returns it as stored. The id in the URL is the one it is filed under whatever the body says. The category must already exist — a taxon naming a category that does not is refused with 400 rather than stored where nothing can render it.  A taxon opens exactly one way: `route` for a product the console renders itself, or `href` for one that genuinely lives at its own domain. Giving both, or neither, is refused.  Platform SuperAdmin only.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the taxon slug to write, from the path.
  ///
  /// * [TaxonIn] taxonIn (required):
  Future<Response> putTaxonomyTaxaByIdWithHttpInfo(String id, TaxonIn taxonIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/taxonomy/taxa/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = taxonIn;

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

  /// Creates or replaces one product and returns it as stored.
  ///
  /// Creates or replaces one product and returns it as stored. The id in the URL is the one it is filed under whatever the body says. The category must already exist — a taxon naming a category that does not is refused with 400 rather than stored where nothing can render it.  A taxon opens exactly one way: `route` for a product the console renders itself, or `href` for one that genuinely lives at its own domain. Giving both, or neither, is refused.  Platform SuperAdmin only.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the taxon slug to write, from the path.
  ///
  /// * [TaxonIn] taxonIn (required):
  Future<Taxon?> putTaxonomyTaxaById(String id, TaxonIn taxonIn,) async {
    final response = await putTaxonomyTaxaByIdWithHttpInfo(id, taxonIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Taxon',) as Taxon;
    
    }
    return null;
  }
}
