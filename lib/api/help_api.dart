//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class HelpApi {
  HelpApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns the public knowledge base: the help center's Published, publicly-visible articles as cards.
  ///
  /// Returns the public knowledge base: the help center's Published, publicly-visible articles as cards. The org is server-fixed and the status/is_public filter is server-set, so neither the tenant nor the visibility can be widened by the caller. A deployment with no help center answers 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] category:
  ///   Category narrows the list to one knowledge-base section, matched against the article's category by exact name. Empty lists every section.
  ///
  /// * [int] limit:
  ///   Limit caps how many articles are returned. Anything that is not a positive integer uses 50, and values above 200 are clamped to 200.
  Future<Response> getHelpArticlesWithHttpInfo({ String? category, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/help/articles';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (category != null) {
      queryParams.addAll(_queryParams('', 'category', category));
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

  /// Returns the public knowledge base: the help center's Published, publicly-visible articles as cards.
  ///
  /// Returns the public knowledge base: the help center's Published, publicly-visible articles as cards. The org is server-fixed and the status/is_public filter is server-set, so neither the tenant nor the visibility can be widened by the caller. A deployment with no help center answers 404.
  ///
  /// Parameters:
  ///
  /// * [String] category:
  ///   Category narrows the list to one knowledge-base section, matched against the article's category by exact name. Empty lists every section.
  ///
  /// * [int] limit:
  ///   Limit caps how many articles are returned. Anything that is not a positive integer uses 50, and values above 200 are clamped to 200.
  Future<HelpArticleList?> getHelpArticles({ String? category, int? limit, }) async {
    final response = await getHelpArticlesWithHttpInfo( category: category, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HelpArticleList',) as HelpArticleList;
    
    }
    return null;
  }

  /// Returns one public article by slug, with its body.
  ///
  /// Returns one public article by slug, with its body. A missing, Draft, or internal (non-public) article is 404 — fail-closed, so this route is no existence oracle for anything beyond \"published and public\".
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the article's public identifier, from the path. It IS the document name in the help center's store.
  Future<Response> getHelpArticlesBySlugWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/help/articles/{slug}'
      .replaceAll('{slug}', slug);

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

  /// Returns one public article by slug, with its body.
  ///
  /// Returns one public article by slug, with its body. A missing, Draft, or internal (non-public) article is 404 — fail-closed, so this route is no existence oracle for anything beyond \"published and public\".
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the article's public identifier, from the path. It IS the document name in the help center's store.
  Future<HelpArticle?> getHelpArticlesBySlug(String slug,) async {
    final response = await getHelpArticlesBySlugWithHttpInfo(slug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HelpArticle',) as HelpArticle;
    
    }
    return null;
  }

  /// Returns the knowledge-base sections for the public center's navigation — but ONLY the sections that front at least one Published, public article, so an internal (agent-only) category name or description never leaks.
  ///
  /// Returns the knowledge-base sections for the public center's navigation — but ONLY the sections that front at least one Published, public article, so an internal (agent-only) category name or description never leaks. A section with no public article is invisible; a center with no public articles has no sections, which is an empty list rather than an error.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getHelpCategoriesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/help/categories';

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

  /// Returns the knowledge-base sections for the public center's navigation — but ONLY the sections that front at least one Published, public article, so an internal (agent-only) category name or description never leaks.
  ///
  /// Returns the knowledge-base sections for the public center's navigation — but ONLY the sections that front at least one Published, public article, so an internal (agent-only) category name or description never leaks. A section with no public article is invisible; a center with no public articles has no sections, which is an empty list rather than an error.
  Future<HelpCategoryList?> getHelpCategories() async {
    final response = await getHelpCategoriesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HelpCategoryList',) as HelpCategoryList;
    
    }
    return null;
  }

  /// Files a customer support ticket into the public help center.
  ///
  /// Files a customer support ticket into the public help center. It creates the ticket (status Open, source portal) with the customer's message on the description, then records that same message as the opening entry of the ticket's conversation thread; the description carries it regardless, so failing to write that entry loses nothing. Answers 201 with an opaque reference.  A deployment with no help center answers 404, one whose center has not installed the Help model answers 503, and a body over 64 KiB answers 413 — in that order, which is the order the route has always decided them in.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [HelpTicketIntake] helpTicketIntake (required):
  Future<Response> postHelpTicketsWithHttpInfo(HelpTicketIntake helpTicketIntake,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/help/tickets';

    // ignore: prefer_final_locals
    Object? postBody = helpTicketIntake;

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

  /// Files a customer support ticket into the public help center.
  ///
  /// Files a customer support ticket into the public help center. It creates the ticket (status Open, source portal) with the customer's message on the description, then records that same message as the opening entry of the ticket's conversation thread; the description carries it regardless, so failing to write that entry loses nothing. Answers 201 with an opaque reference.  A deployment with no help center answers 404, one whose center has not installed the Help model answers 503, and a body over 64 KiB answers 413 — in that order, which is the order the route has always decided them in.
  ///
  /// Parameters:
  ///
  /// * [HelpTicketIntake] helpTicketIntake (required):
  Future<HelpTicketFiled?> postHelpTickets(HelpTicketIntake helpTicketIntake,) async {
    final response = await postHelpTicketsWithHttpInfo(helpTicketIntake,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HelpTicketFiled',) as HelpTicketFiled;
    
    }
    return null;
  }
}
