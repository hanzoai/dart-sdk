//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class SeoApi {
  SeoApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Fetch one page and report what it gets wrong
  ///
  /// Fetches one page and reports what it gets wrong.  It returns the page's on-page score, its title and description, how much readable text it carries, and the full set of named checks — is it https, does it have one h1, is the title duplicated, is it slow, is it a redirect, is anything on it broken. It is the technical half of search visibility, and it is the half a developer can act on this afternoon.  ONE PAGE, LIVE, IN THIS REQUEST. It is deliberately not a site crawl: a crawl is a job with a lifecycle, and this answers the same questions about the page somebody is actually looking at, now, with no task id to poll. Point it at the pages that matter one at a time.  It is priced per page fetched, which is one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SeoAuditIn] seoAuditIn (required):
  Future<Response> seoAuditWithHttpInfo(SeoAuditIn seoAuditIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/seo/audit';

    // ignore: prefer_final_locals
    Object? postBody = seoAuditIn;

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

  /// Fetch one page and report what it gets wrong
  ///
  /// Fetches one page and reports what it gets wrong.  It returns the page's on-page score, its title and description, how much readable text it carries, and the full set of named checks — is it https, does it have one h1, is the title duplicated, is it slow, is it a redirect, is anything on it broken. It is the technical half of search visibility, and it is the half a developer can act on this afternoon.  ONE PAGE, LIVE, IN THIS REQUEST. It is deliberately not a site crawl: a crawl is a job with a lifecycle, and this answers the same questions about the page somebody is actually looking at, now, with no task id to poll. Point it at the pages that matter one at a time.  It is priced per page fetched, which is one.
  ///
  /// Parameters:
  ///
  /// * [SeoAuditIn] seoAuditIn (required):
  Future<SeoAuditOut?> seoAudit(SeoAuditIn seoAuditIn,) async {
    final response = await seoAuditWithHttpInfo(seoAuditIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SeoAuditOut',) as SeoAuditOut;
    
    }
    return null;
  }

  /// Who links to a target, and how much of it is broken or spam
  ///
  /// Summarises who links to a target.  It returns the authority score, how many links point at it and from how many distinct sites, how many of those are broken, and how much of the profile reads as spam. Distinct sites is the number to read: a thousand links from one domain is one endorsement, and a profile that grew fast in links and not in domains is usually a profile somebody bought.  The target can be a whole domain, a subdomain, or one page URL — the summary is scoped to whatever is named. It is priced per request, so a domain with ten million links costs the same as one with ten.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SeoBacklinkIn] seoBacklinkIn (required):
  Future<Response> seoBacklinkWithHttpInfo(SeoBacklinkIn seoBacklinkIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/seo/backlinks';

    // ignore: prefer_final_locals
    Object? postBody = seoBacklinkIn;

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

  /// Who links to a target, and how much of it is broken or spam
  ///
  /// Summarises who links to a target.  It returns the authority score, how many links point at it and from how many distinct sites, how many of those are broken, and how much of the profile reads as spam. Distinct sites is the number to read: a thousand links from one domain is one endorsement, and a profile that grew fast in links and not in domains is usually a profile somebody bought.  The target can be a whole domain, a subdomain, or one page URL — the summary is scoped to whatever is named. It is priced per request, so a domain with ten million links costs the same as one with ten.
  ///
  /// Parameters:
  ///
  /// * [SeoBacklinkIn] seoBacklinkIn (required):
  Future<SeoBacklinkOut?> seoBacklink(SeoBacklinkIn seoBacklinkIn,) async {
    final response = await seoBacklinkWithHttpInfo(seoBacklinkIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SeoBacklinkOut',) as SeoBacklinkOut;
    
    }
    return null;
  }

  /// The domains that place for the same phrases
  ///
  /// Names the domains that place for the same phrases.  Given a set of phrases it returns the sites that appear across them, with each one's average position, how many of the phrases it places for, its share of the available attention and the visits that earns. It answers \"who am I actually up against here\", which is a different question from \"who do I think my competitors are\" and frequently a different answer.  Pair it with seoRank: this says who is in the race, seoRank says where any one of them finishes. It is priced per row, so Limit decides the cost.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SeoCompetitorIn] seoCompetitorIn (required):
  Future<Response> seoCompetitorWithHttpInfo(SeoCompetitorIn seoCompetitorIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/seo/competitors';

    // ignore: prefer_final_locals
    Object? postBody = seoCompetitorIn;

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

  /// The domains that place for the same phrases
  ///
  /// Names the domains that place for the same phrases.  Given a set of phrases it returns the sites that appear across them, with each one's average position, how many of the phrases it places for, its share of the available attention and the visits that earns. It answers \"who am I actually up against here\", which is a different question from \"who do I think my competitors are\" and frequently a different answer.  Pair it with seoRank: this says who is in the race, seoRank says where any one of them finishes. It is priced per row, so Limit decides the cost.
  ///
  /// Parameters:
  ///
  /// * [SeoCompetitorIn] seoCompetitorIn (required):
  Future<SeoCompetitorOut?> seoCompetitor(SeoCompetitorIn seoCompetitorIn,) async {
    final response = await seoCompetitorWithHttpInfo(seoCompetitorIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SeoCompetitorOut',) as SeoCompetitorOut;
    
    }
    return null;
  }

  /// Grow a seed phrase into the phrases nobody named yet
  ///
  /// Grows a seed phrase into the phrases nobody named yet.  It takes phrases you have and returns phrases in the same category that you do not — relevant rather than merely containing the seed — each with its search volume, click cost, competition and how hard its first page is to reach. This is where a keyword list comes FROM; seoKeyword is where a list you already have gets measured.  It is priced per row, so Limit is the knob that decides what the call costs. Total says how many more there were.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SeoIdeaIn] seoIdeaIn (required):
  Future<Response> seoIdeaWithHttpInfo(SeoIdeaIn seoIdeaIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/seo/ideas';

    // ignore: prefer_final_locals
    Object? postBody = seoIdeaIn;

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

  /// Grow a seed phrase into the phrases nobody named yet
  ///
  /// Grows a seed phrase into the phrases nobody named yet.  It takes phrases you have and returns phrases in the same category that you do not — relevant rather than merely containing the seed — each with its search volume, click cost, competition and how hard its first page is to reach. This is where a keyword list comes FROM; seoKeyword is where a list you already have gets measured.  It is priced per row, so Limit is the knob that decides what the call costs. Total says how many more there were.
  ///
  /// Parameters:
  ///
  /// * [SeoIdeaIn] seoIdeaIn (required):
  Future<SeoIdeaOut?> seoIdea(SeoIdeaIn seoIdeaIn,) async {
    final response = await seoIdeaWithHttpInfo(seoIdeaIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SeoIdeaOut',) as SeoIdeaOut;
    
    }
    return null;
  }

  /// How often named phrases are searched, and what a click costs
  ///
  /// Measures phrases the caller already has.  It answers, for each phrase named, how many people search it in a month, what an advertising click on it costs, and how contested that advertising is. This is the ground fact of search: everything else on this surface is a question about phrases, and this is the one that says whether a phrase is worth having.  Give it phrases you already suspect. To find phrases you have not thought of, use seoIdea; to find the ones a site already places for, use seoRank.  The market defaults to the United States in English. It is priced per request rather than per phrase, so asking about fifty phrases costs what asking about one does.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SeoKeywordIn] seoKeywordIn (required):
  Future<Response> seoKeywordWithHttpInfo(SeoKeywordIn seoKeywordIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/seo/keywords';

    // ignore: prefer_final_locals
    Object? postBody = seoKeywordIn;

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

  /// How often named phrases are searched, and what a click costs
  ///
  /// Measures phrases the caller already has.  It answers, for each phrase named, how many people search it in a month, what an advertising click on it costs, and how contested that advertising is. This is the ground fact of search: everything else on this surface is a question about phrases, and this is the one that says whether a phrase is worth having.  Give it phrases you already suspect. To find phrases you have not thought of, use seoIdea; to find the ones a site already places for, use seoRank.  The market defaults to the United States in English. It is priced per request rather than per phrase, so asking about fifty phrases costs what asking about one does.
  ///
  /// Parameters:
  ///
  /// * [SeoKeywordIn] seoKeywordIn (required):
  Future<SeoKeywordOut?> seoKeyword(SeoKeywordIn seoKeywordIn,) async {
    final response = await seoKeywordWithHttpInfo(seoKeywordIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SeoKeywordOut',) as SeoKeywordOut;
    
    }
    return null;
  }

  /// Every phrase a domain already places for, with its position
  ///
  /// Reports every phrase a domain already places for.  For each one it gives the phrase, the position on the results page, the page of the site that placed, that result's headline, the phrase's monthly searches and the visits the placement is estimated to earn. It is the single most direct question about a site's search visibility — yours or a competitor's, since it takes any domain.  Position is the ABSOLUTE rank, counting every element on the page — the ads, the answer boxes, the map — because that is what a person scrolling actually passes. An organic-only rank flatters a result that sits below half a screen of other things.  It is priced per row, so Limit decides what the call costs, and Total says how many more there were.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SeoRankIn] seoRankIn (required):
  Future<Response> seoRankWithHttpInfo(SeoRankIn seoRankIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/seo/rankings';

    // ignore: prefer_final_locals
    Object? postBody = seoRankIn;

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

  /// Every phrase a domain already places for, with its position
  ///
  /// Reports every phrase a domain already places for.  For each one it gives the phrase, the position on the results page, the page of the site that placed, that result's headline, the phrase's monthly searches and the visits the placement is estimated to earn. It is the single most direct question about a site's search visibility — yours or a competitor's, since it takes any domain.  Position is the ABSOLUTE rank, counting every element on the page — the ads, the answer boxes, the map — because that is what a person scrolling actually passes. An organic-only rank flatters a result that sits below half a screen of other things.  It is priced per row, so Limit decides what the call costs, and Total says how many more there were.
  ///
  /// Parameters:
  ///
  /// * [SeoRankIn] seoRankIn (required):
  Future<SeoRankOut?> seoRank(SeoRankIn seoRankIn,) async {
    final response = await seoRankWithHttpInfo(seoRankIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SeoRankOut',) as SeoRankOut;
    
    }
    return null;
  }

  /// What each call on this surface costs, from the vendor's own list
  ///
  /// Publishes what every call on this surface costs.  The numbers are read from the upstream's own published price list, not from a table kept here, so a price change on their side moves this card within the hour and moves what is debited with it. That is the whole of the pricing model: this surface resells at cost, and the cost is theirs to state.  A row has two numbers because a call has two costs: a flat charge for asking, and a charge per row returned. An op priced per request reports zero for the second, and for one priced per row the total is `request + result x limit` — which is the amount your balance is authorized against before the call, and roughly what you will be debited after it.  It is a read and it is free: asking what something costs must not require the balance that would pay for it. If the upstream cannot be reached the card comes back empty rather than stale — a price nobody can confirm is not a price.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> seoRateWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/seo/rates';

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

  /// What each call on this surface costs, from the vendor's own list
  ///
  /// Publishes what every call on this surface costs.  The numbers are read from the upstream's own published price list, not from a table kept here, so a price change on their side moves this card within the hour and moves what is debited with it. That is the whole of the pricing model: this surface resells at cost, and the cost is theirs to state.  A row has two numbers because a call has two costs: a flat charge for asking, and a charge per row returned. An op priced per request reports zero for the second, and for one priced per row the total is `request + result x limit` — which is the amount your balance is authorized against before the call, and roughly what you will be debited after it.  It is a read and it is free: asking what something costs must not require the balance that would pay for it. If the upstream cannot be reached the card comes back empty rather than stale — a price nobody can confirm is not a price.
  Future<SeoRateOut?> seoRate() async {
    final response = await seoRateWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SeoRateOut',) as SeoRateOut;
    
    }
    return null;
  }
}
