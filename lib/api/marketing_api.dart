//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class MarketingApi {
  MarketingApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Removes one of the caller org's audiences and answers 204.
  ///
  /// Removes one of the caller org's audiences and answers 204. It deletes the saved filter only — no customer, event or enrollment is touched.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the audience id from the path, as returned by create.
  Future<Response> deleteMarketingAudiencesByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/audiences/{id}'
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

  /// Removes one of the caller org's audiences and answers 204.
  ///
  /// Removes one of the caller org's audiences and answers 204. It deletes the saved filter only — no customer, event or enrollment is touched.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the audience id from the path, as returned by create.
  Future<void> deleteMarketingAudiencesById(String id,) async {
    final response = await deleteMarketingAudiencesByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes one of the caller org's posts and answers 204.
  ///
  /// Removes one of the caller org's posts and answers 204. A post already published is deleted from the calendar only — nothing is retracted from the network it went out on.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the post id from the path, as returned by create.
  Future<Response> deleteMarketingCalendarByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/calendar/{id}'
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

  /// Removes one of the caller org's posts and answers 204.
  ///
  /// Removes one of the caller org's posts and answers 204. A post already published is deleted from the calendar only — nothing is retracted from the network it went out on.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the post id from the path, as returned by create.
  Future<void> deleteMarketingCalendarById(String id,) async {
    final response = await deleteMarketingCalendarByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes one of the caller org's campaigns and answers 204.
  ///
  /// Removes one of the caller org's campaigns and answers 204. A campaign belonging to another org reads as not found and is left untouched.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the campaign id from the path, as returned by create.
  Future<Response> deleteMarketingCampaignsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/campaigns/{id}'
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

  /// Removes one of the caller org's campaigns and answers 204.
  ///
  /// Removes one of the caller org's campaigns and answers 204. A campaign belonging to another org reads as not found and is left untouched.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the campaign id from the path, as returned by create.
  Future<void> deleteMarketingCampaignsById(String id,) async {
    final response = await deleteMarketingCampaignsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Re-subscribes an address on one channel and answers 204.
  ///
  /// Re-subscribes an address on one channel and answers 204. An address that is not on the list reads as not found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channel:
  ///   Channel is the surface opted out of: email, sms, social, meta, google or tiktok. Empty means email. Opting out of one leaves the others reachable.
  ///
  /// * [String] address:
  ///   Address is the recipient, normalized (lower-cased, trimmed) so an opt-out cannot be slipped past on a case or whitespace difference. Required.
  ///
  /// * [String] reason:
  ///   Reason is a free-text note, capped at 1024 bytes. The public one-click endpoint records \"one-click unsubscribe\".
  ///
  /// * [int] createdAt:
  ///   CreatedAt is unix seconds, server-assigned.
  Future<Response> deleteMarketingSuppressionsWithHttpInfo({ String? channel, String? address, String? reason, int? createdAt, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/suppressions';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (channel != null) {
      queryParams.addAll(_queryParams('', 'channel', channel));
    }
    if (address != null) {
      queryParams.addAll(_queryParams('', 'address', address));
    }
    if (reason != null) {
      queryParams.addAll(_queryParams('', 'reason', reason));
    }
    if (createdAt != null) {
      queryParams.addAll(_queryParams('', 'createdAt', createdAt));
    }

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

  /// Re-subscribes an address on one channel and answers 204.
  ///
  /// Re-subscribes an address on one channel and answers 204. An address that is not on the list reads as not found.
  ///
  /// Parameters:
  ///
  /// * [String] channel:
  ///   Channel is the surface opted out of: email, sms, social, meta, google or tiktok. Empty means email. Opting out of one leaves the others reachable.
  ///
  /// * [String] address:
  ///   Address is the recipient, normalized (lower-cased, trimmed) so an opt-out cannot be slipped past on a case or whitespace difference. Required.
  ///
  /// * [String] reason:
  ///   Reason is a free-text note, capped at 1024 bytes. The public one-click endpoint records \"one-click unsubscribe\".
  ///
  /// * [int] createdAt:
  ///   CreatedAt is unix seconds, server-assigned.
  Future<void> deleteMarketingSuppressions({ String? channel, String? address, String? reason, int? createdAt, }) async {
    final response = await deleteMarketingSuppressionsWithHttpInfo( channel: channel, address: address, reason: reason, createdAt: createdAt, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the org's saved audiences, most recently updated first.
  ///
  /// Returns the org's saved audiences, most recently updated first.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned; 0 means 200 and nothing above 1000 is honoured.
  Future<Response> getMarketingAudiencesWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/audiences';

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

  /// Returns the org's saved audiences, most recently updated first.
  ///
  /// Returns the org's saved audiences, most recently updated first.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned; 0 means 200 and nothing above 1000 is honoured.
  Future<AudienceList?> getMarketingAudiences({ int? limit, }) async {
    final response = await getMarketingAudiencesWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AudienceList',) as AudienceList;
    
    }
    return null;
  }

  /// Returns one of the caller org's saved audiences.
  ///
  /// Returns one of the caller org's saved audiences. An audience belonging to another org reads as not found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the audience id from the path, as returned by create.
  Future<Response> getMarketingAudiencesByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/audiences/{id}'
      .replaceAll('{id}', id);

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

  /// Returns one of the caller org's saved audiences.
  ///
  /// Returns one of the caller org's saved audiences. An audience belonging to another org reads as not found.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the audience id from the path, as returned by create.
  Future<Audience?> getMarketingAudiencesById(String id,) async {
    final response = await getMarketingAudiencesByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Audience',) as Audience;
    
    }
    return null;
  }

  /// Evaluates the cohort LIVE — the same resolution an enrollment would run — and reports how big it is and how many real mailboxes it reaches.
  ///
  /// Evaluates the cohort LIVE — the same resolution an enrollment would run — and reports how big it is and how many real mailboxes it reaches. It is the honest answer to \"is this send worth making\": a cohort of 500 that mails 3 says so, in deliverable and unmatched. Nothing is sent.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the audience id from the path, as returned by create.
  Future<Response> getMarketingAudiencesByIdPreviewWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/audiences/{id}/preview'
      .replaceAll('{id}', id);

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

  /// Evaluates the cohort LIVE — the same resolution an enrollment would run — and reports how big it is and how many real mailboxes it reaches.
  ///
  /// Evaluates the cohort LIVE — the same resolution an enrollment would run — and reports how big it is and how many real mailboxes it reaches. It is the honest answer to \"is this send worth making\": a cohort of 500 that mails 3 says so, in deliverable and unmatched. Nothing is sent.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the audience id from the path, as returned by create.
  Future<AudiencePreview?> getMarketingAudiencesByIdPreview(String id,) async {
    final response = await getMarketingAudiencesByIdPreviewWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AudiencePreview',) as AudiencePreview;
    
    }
    return null;
  }

  /// Returns the org's calendar, latest scheduled first, optionally narrowed to one status.
  ///
  /// Returns the org's calendar, latest scheduled first, optionally narrowed to one status.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   Status keeps only posts in that state (draft, scheduled, published, failed, canceled). Empty means every post.
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned; 0 means 200 and nothing above 1000 is honoured.
  Future<Response> getMarketingCalendarWithHttpInfo({ String? status, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/calendar';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
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

  /// Returns the org's calendar, latest scheduled first, optionally narrowed to one status.
  ///
  /// Returns the org's calendar, latest scheduled first, optionally narrowed to one status.
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   Status keeps only posts in that state (draft, scheduled, published, failed, canceled). Empty means every post.
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned; 0 means 200 and nothing above 1000 is honoured.
  Future<PostList?> getMarketingCalendar({ String? status, int? limit, }) async {
    final response = await getMarketingCalendarWithHttpInfo( status: status, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostList',) as PostList;
    
    }
    return null;
  }

  /// Returns one of the caller org's posts, including the exact error behind a failed publish.
  ///
  /// Returns one of the caller org's posts, including the exact error behind a failed publish. A post belonging to another org reads as not found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the post id from the path, as returned by create.
  Future<Response> getMarketingCalendarByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/calendar/{id}'
      .replaceAll('{id}', id);

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

  /// Returns one of the caller org's posts, including the exact error behind a failed publish.
  ///
  /// Returns one of the caller org's posts, including the exact error behind a failed publish. A post belonging to another org reads as not found.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the post id from the path, as returned by create.
  Future<CalendarPost?> getMarketingCalendarById(String id,) async {
    final response = await getMarketingCalendarByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CalendarPost',) as CalendarPost;
    
    }
    return null;
  }

  /// Returns the org's campaigns, most recently updated first, optionally narrowed to one lifecycle status.
  ///
  /// Returns the org's campaigns, most recently updated first, optionally narrowed to one lifecycle status.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   Status keeps only campaigns in that lifecycle state (draft, scheduled, active, paused, completed). Empty means every campaign.
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned; 0 means 200 and nothing above 1000 is honoured.
  Future<Response> getMarketingCampaignsWithHttpInfo({ String? status, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/campaigns';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
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

  /// Returns the org's campaigns, most recently updated first, optionally narrowed to one lifecycle status.
  ///
  /// Returns the org's campaigns, most recently updated first, optionally narrowed to one lifecycle status.
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   Status keeps only campaigns in that lifecycle state (draft, scheduled, active, paused, completed). Empty means every campaign.
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned; 0 means 200 and nothing above 1000 is honoured.
  Future<CampaignList?> getMarketingCampaigns({ String? status, int? limit, }) async {
    final response = await getMarketingCampaignsWithHttpInfo( status: status, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CampaignList',) as CampaignList;
    
    }
    return null;
  }

  /// Returns one of the caller org's campaigns.
  ///
  /// Returns one of the caller org's campaigns. A campaign belonging to another org reads as not found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the campaign id from the path, as returned by create.
  Future<Response> getMarketingCampaignsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/campaigns/{id}'
      .replaceAll('{id}', id);

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

  /// Returns one of the caller org's campaigns.
  ///
  /// Returns one of the caller org's campaigns. A campaign belonging to another org reads as not found.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the campaign id from the path, as returned by create.
  Future<Campaign?> getMarketingCampaignsById(String id,) async {
    final response = await getMarketingCampaignsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Campaign',) as Campaign;
    
    }
    return null;
  }

  /// Returns every promo the deployment offers with its live counters: how many orgs have redeemed it and how many redemptions remain under the cap.
  ///
  /// Returns every promo the deployment offers with its live counters: how many orgs have redeemed it and how many redemptions remain under the cap. The promos are fleet-wide, not per-org — only the counters move.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMarketingPromosWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/promos';

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

  /// Returns every promo the deployment offers with its live counters: how many orgs have redeemed it and how many redemptions remain under the cap.
  ///
  /// Returns every promo the deployment offers with its live counters: how many orgs have redeemed it and how many redemptions remain under the cap. The promos are fleet-wide, not per-org — only the counters move.
  Future<PromoList?> getMarketingPromos() async {
    final response = await getMarketingPromosWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PromoList',) as PromoList;
    
    }
    return null;
  }

  /// Prices a promo against a plan and seat count.
  ///
  /// Prices a promo against a plan and seat count. It is PURE: nothing is redeemed, credited or counted, so it is safe to call from a pricing page on every keystroke. An inactive promo or an exhausted cap quotes ineligible with the reason rather than erroring.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] code (required):
  ///   Code is the promo code from the path.
  ///
  /// * [String] plan:
  ///   Plan is the plan being priced: pro, max or team. Anything else (including the free Developer plan) has no list price and so nothing to discount.
  ///
  /// * [int] seats:
  ///   Seats is the Team seat count; 0 means 1, and it is ignored for the single-seat plans.
  Future<Response> getMarketingPromosByCodeEligibilityWithHttpInfo(String code, { String? plan, int? seats, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/promos/{code}/eligibility'
      .replaceAll('{code}', code);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (plan != null) {
      queryParams.addAll(_queryParams('', 'plan', plan));
    }
    if (seats != null) {
      queryParams.addAll(_queryParams('', 'seats', seats));
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

  /// Prices a promo against a plan and seat count.
  ///
  /// Prices a promo against a plan and seat count. It is PURE: nothing is redeemed, credited or counted, so it is safe to call from a pricing page on every keystroke. An inactive promo or an exhausted cap quotes ineligible with the reason rather than erroring.
  ///
  /// Parameters:
  ///
  /// * [String] code (required):
  ///   Code is the promo code from the path.
  ///
  /// * [String] plan:
  ///   Plan is the plan being priced: pro, max or team. Anything else (including the free Developer plan) has no list price and so nothing to discount.
  ///
  /// * [int] seats:
  ///   Seats is the Team seat count; 0 means 1, and it is ignored for the single-seat plans.
  Future<Quote?> getMarketingPromosByCodeEligibility(String code, { String? plan, int? seats, }) async {
    final response = await getMarketingPromosByCodeEligibilityWithHttpInfo(code,  plan: plan, seats: seats, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Quote',) as Quote;
    
    }
    return null;
  }

  /// Returns the caller org's OWN redemption of a promo — an org-scoped read, so it can never surface another tenant's.
  ///
  /// Returns the caller org's OWN redemption of a promo — an org-scoped read, so it can never surface another tenant's. Not found when this org has not redeemed it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] code (required):
  ///   Code is the promo code from the path, e.g. \"first1000\".
  Future<Response> getMarketingPromosByCodeRedemptionWithHttpInfo(String code,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/promos/{code}/redemption'
      .replaceAll('{code}', code);

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

  /// Returns the caller org's OWN redemption of a promo — an org-scoped read, so it can never surface another tenant's.
  ///
  /// Returns the caller org's OWN redemption of a promo — an org-scoped read, so it can never surface another tenant's. Not found when this org has not redeemed it.
  ///
  /// Parameters:
  ///
  /// * [String] code (required):
  ///   Code is the promo code from the path, e.g. \"first1000\".
  Future<Redemption?> getMarketingPromosByCodeRedemption(String code,) async {
    final response = await getMarketingPromosByCodeRedemptionWithHttpInfo(code,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Redemption',) as Redemption;
    
    }
    return null;
  }

  /// Returns the org's drip sequences, most recently updated first.
  ///
  /// Returns the org's drip sequences, most recently updated first.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned; 0 means 200 and nothing above 1000 is honoured.
  Future<Response> getMarketingSequencesWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/sequences';

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

  /// Returns the org's drip sequences, most recently updated first.
  ///
  /// Returns the org's drip sequences, most recently updated first.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned; 0 means 200 and nothing above 1000 is honoured.
  Future<SequenceList?> getMarketingSequences({ int? limit, }) async {
    final response = await getMarketingSequencesWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SequenceList',) as SequenceList;
    
    }
    return null;
  }

  /// Returns one of the caller org's sequences together with its steps in send order.
  ///
  /// Returns one of the caller org's sequences together with its steps in send order. A sequence belonging to another org reads as not found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sequence id from the path, as returned by create.
  Future<Response> getMarketingSequencesByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/sequences/{id}'
      .replaceAll('{id}', id);

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

  /// Returns one of the caller org's sequences together with its steps in send order.
  ///
  /// Returns one of the caller org's sequences together with its steps in send order. A sequence belonging to another org reads as not found.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sequence id from the path, as returned by create.
  Future<SequenceView?> getMarketingSequencesById(String id,) async {
    final response = await getMarketingSequencesByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SequenceView',) as SequenceView;
    
    }
    return null;
  }

  /// Returns who is walking one sequence, most recently enrolled first, with each walk's current step and next due time.
  ///
  /// Returns who is walking one sequence, most recently enrolled first, with each walk's current step and next due time.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sequence id from the path.
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned; 0 means 200 and nothing above 1000 is honoured.
  Future<Response> getMarketingSequencesByIdEnrollmentsWithHttpInfo(String id, { int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/sequences/{id}/enrollments'
      .replaceAll('{id}', id);

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

  /// Returns who is walking one sequence, most recently enrolled first, with each walk's current step and next due time.
  ///
  /// Returns who is walking one sequence, most recently enrolled first, with each walk's current step and next due time.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sequence id from the path.
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned; 0 means 200 and nothing above 1000 is honoured.
  Future<EnrollmentList?> getMarketingSequencesByIdEnrollments(String id, { int? limit, }) async {
    final response = await getMarketingSequencesByIdEnrollmentsWithHttpInfo(id,  limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EnrollmentList',) as EnrollmentList;
    
    }
    return null;
  }

  /// Returns one sequence's steps in send order.
  ///
  /// Returns one sequence's steps in send order.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sequence id from the path, as returned by create.
  Future<Response> getMarketingSequencesByIdStepsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/sequences/{id}/steps'
      .replaceAll('{id}', id);

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

  /// Returns one sequence's steps in send order.
  ///
  /// Returns one sequence's steps in send order.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sequence id from the path, as returned by create.
  Future<StepList?> getMarketingSequencesByIdSteps(String id,) async {
    final response = await getMarketingSequencesByIdStepsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StepList',) as StepList;
    
    }
    return null;
  }

  /// Rolls up the caller org's campaigns: how many there are, how many are active, and the summed budget and spend in cents.
  ///
  /// Rolls up the caller org's campaigns: how many there are, how many are active, and the summed budget and spend in cents.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMarketingSummaryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/summary';

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

  /// Rolls up the caller org's campaigns: how many there are, how many are active, and the summed budget and spend in cents.
  ///
  /// Rolls up the caller org's campaigns: how many there are, how many are active, and the summed budget and spend in cents.
  Future<Summary?> getMarketingSummary() async {
    final response = await getMarketingSummaryWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Summary',) as Summary;
    
    }
    return null;
  }

  /// Returns the org's opt-out list, newest first — everyone the send gate will refuse to deliver to.
  ///
  /// Returns the org's opt-out list, newest first — everyone the send gate will refuse to deliver to.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned; 0 means 200 and nothing above 1000 is honoured.
  Future<Response> getMarketingSuppressionsWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/suppressions';

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

  /// Returns the org's opt-out list, newest first — everyone the send gate will refuse to deliver to.
  ///
  /// Returns the org's opt-out list, newest first — everyone the send gate will refuse to deliver to.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned; 0 means 200 and nothing above 1000 is honoured.
  Future<SuppressionList?> getMarketingSuppressions({ int? limit, }) async {
    final response = await getMarketingSuppressionsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuppressionList',) as SuppressionList;
    
    }
    return null;
  }

  /// Is the PUBLIC one-click endpoint (no principal): a recipient clicks the signed link in an email footer.
  ///
  /// Is the PUBLIC one-click endpoint (no principal): a recipient clicks the signed link in an email footer. The token binds (org, channel, address), so a caller can only opt OUT exactly the tuple it was minted for — never another address and never another org. An invalid token is refused, and a deployment with no KMS-sealed key refuses rather than accepting anything.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org:
  ///   Org is the org the link was minted for.
  ///
  /// * [String] channel:
  ///   Channel is the surface to opt out of.
  ///
  /// * [String] address:
  ///   Address is the recipient to opt out.
  ///
  /// * [String] token:
  ///   Token is the HMAC over (org, channel, address). It is the ONLY authority here — there is no principal — so it binds the request to one tuple and nothing else.
  Future<Response> getMarketingUnsubscribeWithHttpInfo({ String? org, String? channel, String? address, String? token, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/unsubscribe';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (org != null) {
      queryParams.addAll(_queryParams('', 'org', org));
    }
    if (channel != null) {
      queryParams.addAll(_queryParams('', 'channel', channel));
    }
    if (address != null) {
      queryParams.addAll(_queryParams('', 'address', address));
    }
    if (token != null) {
      queryParams.addAll(_queryParams('', 'token', token));
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

  /// Is the PUBLIC one-click endpoint (no principal): a recipient clicks the signed link in an email footer.
  ///
  /// Is the PUBLIC one-click endpoint (no principal): a recipient clicks the signed link in an email footer. The token binds (org, channel, address), so a caller can only opt OUT exactly the tuple it was minted for — never another address and never another org. An invalid token is refused, and a deployment with no KMS-sealed key refuses rather than accepting anything.
  ///
  /// Parameters:
  ///
  /// * [String] org:
  ///   Org is the org the link was minted for.
  ///
  /// * [String] channel:
  ///   Channel is the surface to opt out of.
  ///
  /// * [String] address:
  ///   Address is the recipient to opt out.
  ///
  /// * [String] token:
  ///   Token is the HMAC over (org, channel, address). It is the ONLY authority here — there is no principal — so it binds the request to one tuple and nothing else.
  Future<Unsubscribed?> getMarketingUnsubscribe({ String? org, String? channel, String? address, String? token, }) async {
    final response = await getMarketingUnsubscribeWithHttpInfo( org: org, channel: channel, address: address, token: token, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Unsubscribed',) as Unsubscribed;
    
    }
    return null;
  }

  /// Saves a cohort filter for the caller's org.
  ///
  /// Saves a cohort filter for the caller's org. Name is required. Omitting event saves the WHOLE-ORG audience — every mailable customer — which needs no analytics warehouse; naming one narrows that roster to the customers who fired it within windowDays.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Audience] audience (required):
  Future<Response> postMarketingAudiencesWithHttpInfo(Audience audience,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/audiences';

    // ignore: prefer_final_locals
    Object? postBody = audience;

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

  /// Saves a cohort filter for the caller's org.
  ///
  /// Saves a cohort filter for the caller's org. Name is required. Omitting event saves the WHOLE-ORG audience — every mailable customer — which needs no analytics warehouse; naming one narrows that roster to the customers who fired it within windowDays.
  ///
  /// Parameters:
  ///
  /// * [Audience] audience (required):
  Future<Audience?> postMarketingAudiences(Audience audience,) async {
    final response = await postMarketingAudiencesWithHttpInfo(audience,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Audience',) as Audience;
    
    }
    return null;
  }

  /// Adds a post to the content calendar.
  ///
  /// Adds a post to the content calendar. Channel and body are required. A scheduledAt in the future makes the post \"scheduled\" and the durable sweep publishes it when it comes due — claimed once, so a post publishes at most once; without one it stays a draft.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CalendarPost] calendarPost (required):
  Future<Response> postMarketingCalendarWithHttpInfo(CalendarPost calendarPost,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/calendar';

    // ignore: prefer_final_locals
    Object? postBody = calendarPost;

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

  /// Adds a post to the content calendar.
  ///
  /// Adds a post to the content calendar. Channel and body are required. A scheduledAt in the future makes the post \"scheduled\" and the durable sweep publishes it when it comes due — claimed once, so a post publishes at most once; without one it stays a draft.
  ///
  /// Parameters:
  ///
  /// * [CalendarPost] calendarPost (required):
  Future<CalendarPost?> postMarketingCalendar(CalendarPost calendarPost,) async {
    final response = await postMarketingCalendarWithHttpInfo(calendarPost,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CalendarPost',) as CalendarPost;
    
    }
    return null;
  }

  /// Publishes a post NOW, synchronously, whatever its schedule.
  ///
  /// Publishes a post NOW, synchronously, whatever its schedule. No social connector is wired today, so every channel answers an honest 501 naming the seam a real one would plug into, and the post is recorded failed with that exact reason — never a faked \"published\".
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the post id from the path, as returned by create.
  Future<Response> postMarketingCalendarByIdPublishWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/calendar/{id}/publish'
      .replaceAll('{id}', id);

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

  /// Publishes a post NOW, synchronously, whatever its schedule.
  ///
  /// Publishes a post NOW, synchronously, whatever its schedule. No social connector is wired today, so every channel answers an honest 501 naming the seam a real one would plug into, and the post is recorded failed with that exact reason — never a faked \"published\".
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the post id from the path, as returned by create.
  Future<CalendarPost?> postMarketingCalendarByIdPublish(String id,) async {
    final response = await postMarketingCalendarByIdPublishWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CalendarPost',) as CalendarPost;
    
    }
    return null;
  }

  /// Registers a campaign in the caller's org.
  ///
  /// Registers a campaign in the caller's org. Name is required; channel defaults to email and status to draft, and a future scheduledAt with no explicit status makes the campaign \"scheduled\". Budget and spend are cents and are clamped to >= 0. The id, createdAt and updatedAt of the input are ignored — the server assigns them.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Campaign] campaign (required):
  Future<Response> postMarketingCampaignsWithHttpInfo(Campaign campaign,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/campaigns';

    // ignore: prefer_final_locals
    Object? postBody = campaign;

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

  /// Registers a campaign in the caller's org.
  ///
  /// Registers a campaign in the caller's org. Name is required; channel defaults to email and status to draft, and a future scheduledAt with no explicit status makes the campaign \"scheduled\". Budget and spend are cents and are clamped to >= 0. The id, createdAt and updatedAt of the input are ignored — the server assigns them.
  ///
  /// Parameters:
  ///
  /// * [Campaign] campaign (required):
  Future<Campaign?> postMarketingCampaigns(Campaign campaign,) async {
    final response = await postMarketingCampaignsWithHttpInfo(campaign,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Campaign',) as Campaign;
    
    }
    return null;
  }

  /// Sets a campaign's send time and moves it to \"scheduled\".
  ///
  /// Sets a campaign's send time and moves it to \"scheduled\". A scheduledAt of 0 clears the schedule and returns it to \"draft\".
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the campaign id from the path.
  ///
  /// * [ScheduleInput] scheduleInput (required):
  Future<Response> postMarketingCampaignsByIdScheduleWithHttpInfo(String id, ScheduleInput scheduleInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/campaigns/{id}/schedule'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = scheduleInput;

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

  /// Sets a campaign's send time and moves it to \"scheduled\".
  ///
  /// Sets a campaign's send time and moves it to \"scheduled\". A scheduledAt of 0 clears the schedule and returns it to \"draft\".
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the campaign id from the path.
  ///
  /// * [ScheduleInput] scheduleInput (required):
  Future<Campaign?> postMarketingCampaignsByIdSchedule(String id, ScheduleInput scheduleInput,) async {
    final response = await postMarketingCampaignsByIdScheduleWithHttpInfo(id, scheduleInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Campaign',) as Campaign;
    
    }
    return null;
  }

  /// Records the caller org's claim on a promo.
  ///
  /// Records the caller org's claim on a promo. NOTHING IS CREDITED: the redemption is a row, and credit into an org is an admin decision made on the admin surface against an auditable ledger.  The plan is DERIVED from the org's live ACTIVE/TRIALING paid subscription and can never be named by the caller — an org with no qualifying subscription is refused, and so is one whose subscription cannot be read. The seat count is the single-seat floor (claimSeats), so the recorded figure has no input that can inflate it.  Guards run under one lock so the cap cannot be raced past: the fleet-wide redemption cap, one redemption per org, one per payment instrument (REQUIRED), and the per-redemption ceiling.  It is IDEMPOTENT: an org that already redeemed gets its original redemption back with alreadyRedeemed true.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] code (required):
  ///   Code is the promo code from the path.
  ///
  /// * [RedeemInput] redeemInput (required):
  Future<Response> postMarketingPromosByCodeRedeemWithHttpInfo(String code, RedeemInput redeemInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/promos/{code}/redeem'
      .replaceAll('{code}', code);

    // ignore: prefer_final_locals
    Object? postBody = redeemInput;

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

  /// Records the caller org's claim on a promo.
  ///
  /// Records the caller org's claim on a promo. NOTHING IS CREDITED: the redemption is a row, and credit into an org is an admin decision made on the admin surface against an auditable ledger.  The plan is DERIVED from the org's live ACTIVE/TRIALING paid subscription and can never be named by the caller — an org with no qualifying subscription is refused, and so is one whose subscription cannot be read. The seat count is the single-seat floor (claimSeats), so the recorded figure has no input that can inflate it.  Guards run under one lock so the cap cannot be raced past: the fleet-wide redemption cap, one redemption per org, one per payment instrument (REQUIRED), and the per-redemption ceiling.  It is IDEMPOTENT: an org that already redeemed gets its original redemption back with alreadyRedeemed true.
  ///
  /// Parameters:
  ///
  /// * [String] code (required):
  ///   Code is the promo code from the path.
  ///
  /// * [RedeemInput] redeemInput (required):
  Future<RedeemResult?> postMarketingPromosByCodeRedeem(String code, RedeemInput redeemInput,) async {
    final response = await postMarketingPromosByCodeRedeemWithHttpInfo(code, redeemInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RedeemResult',) as RedeemResult;
    
    }
    return null;
  }

  /// Registers a drip sequence in the caller's org.
  ///
  /// Registers a drip sequence in the caller's org. Name is required; status defaults to draft, and a sequence must be ACTIVE before it will accept enrollments. The id, createdAt and updatedAt of the input are ignored — the server assigns them.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Sequence] sequence (required):
  Future<Response> postMarketingSequencesWithHttpInfo(Sequence sequence,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/sequences';

    // ignore: prefer_final_locals
    Object? postBody = sequence;

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

  /// Registers a drip sequence in the caller's org.
  ///
  /// Registers a drip sequence in the caller's org. Name is required; status defaults to draft, and a sequence must be ACTIVE before it will accept enrollments. The id, createdAt and updatedAt of the input are ignored — the server assigns them.
  ///
  /// Parameters:
  ///
  /// * [Sequence] sequence (required):
  Future<Sequence?> postMarketingSequences(Sequence sequence,) async {
    final response = await postMarketingSequencesWithHttpInfo(sequence,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Sequence',) as Sequence;
    
    }
    return null;
  }

  /// Adds one contact or a whole audience to a sequence and schedules the first step for each.
  ///
  /// Adds one contact or a whole audience to a sequence and schedules the first step for each. The sequence must be ACTIVE (a draft sends nothing), and the request must name exactly one of address or audienceId.  Enrolling is ALL this does: the message itself is sent later by the drip engine, through the suppression gate, so an opted-out customer can be enrolled here and still never be mailed. Re-posting is safe — an address this sequence already took is counted in alreadyEnrolled and never double-dripped — which is what makes retrying a partially-applied announcement a resume rather than a second send.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sequence id from the path.
  ///
  /// * [EnrollInput] enrollInput (required):
  Future<Response> postMarketingSequencesByIdEnrollWithHttpInfo(String id, EnrollInput enrollInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/sequences/{id}/enroll'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = enrollInput;

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

  /// Adds one contact or a whole audience to a sequence and schedules the first step for each.
  ///
  /// Adds one contact or a whole audience to a sequence and schedules the first step for each. The sequence must be ACTIVE (a draft sends nothing), and the request must name exactly one of address or audienceId.  Enrolling is ALL this does: the message itself is sent later by the drip engine, through the suppression gate, so an opted-out customer can be enrolled here and still never be mailed. Re-posting is safe — an address this sequence already took is counted in alreadyEnrolled and never double-dripped — which is what makes retrying a partially-applied announcement a resume rather than a second send.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sequence id from the path.
  ///
  /// * [EnrollInput] enrollInput (required):
  Future<EnrollResult?> postMarketingSequencesByIdEnroll(String id, EnrollInput enrollInput,) async {
    final response = await postMarketingSequencesByIdEnrollWithHttpInfo(id, enrollInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EnrollResult',) as EnrollResult;
    
    }
    return null;
  }

  /// Stops one walk mid-sequence and answers 204: no further step is sent, and steps already delivered are not recalled.
  ///
  /// Stops one walk mid-sequence and answers 204: no further step is sent, and steps already delivered are not recalled. Only an ACTIVE enrollment can be canceled — one already completed or canceled reads as not found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sequence id from the path.
  ///
  /// * [String] eid (required):
  ///   EID is the enrollment id from the path, as returned by a single-address enroll.
  Future<Response> postMarketingSequencesByIdEnrollmentsByEidCancelWithHttpInfo(String id, String eid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/sequences/{id}/enrollments/{eid}/cancel'
      .replaceAll('{id}', id)
      .replaceAll('{eid}', eid);

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

  /// Stops one walk mid-sequence and answers 204: no further step is sent, and steps already delivered are not recalled.
  ///
  /// Stops one walk mid-sequence and answers 204: no further step is sent, and steps already delivered are not recalled. Only an ACTIVE enrollment can be canceled — one already completed or canceled reads as not found.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sequence id from the path.
  ///
  /// * [String] eid (required):
  ///   EID is the enrollment id from the path, as returned by a single-address enroll.
  Future<void> postMarketingSequencesByIdEnrollmentsByEidCancel(String id, String eid,) async {
    final response = await postMarketingSequencesByIdEnrollmentsByEidCancelWithHttpInfo(id, eid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Flips draft/active/archived — the activation gate for sending, since only an active sequence accepts enrollments.
  ///
  /// Flips draft/active/archived — the activation gate for sending, since only an active sequence accepts enrollments. It does not touch enrollments already walking: archiving stops new ones, not in-flight ones.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sequence id from the path.
  ///
  /// * [SequenceStatus] sequenceStatus (required):
  Future<Response> postMarketingSequencesByIdStatusWithHttpInfo(String id, SequenceStatus sequenceStatus,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/sequences/{id}/status'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = sequenceStatus;

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

  /// Flips draft/active/archived — the activation gate for sending, since only an active sequence accepts enrollments.
  ///
  /// Flips draft/active/archived — the activation gate for sending, since only an active sequence accepts enrollments. It does not touch enrollments already walking: archiving stops new ones, not in-flight ones.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sequence id from the path.
  ///
  /// * [SequenceStatus] sequenceStatus (required):
  Future<SequenceStatus?> postMarketingSequencesByIdStatus(String id, SequenceStatus sequenceStatus,) async {
    final response = await postMarketingSequencesByIdStatusWithHttpInfo(id, sequenceStatus,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SequenceStatus',) as SequenceStatus;
    
    }
    return null;
  }

  /// Appends a message to the END of a sequence: the new step's idx is one past the last, so steps arrive in the order they are added.
  ///
  /// Appends a message to the END of a sequence: the new step's idx is one past the last, so steps arrive in the order they are added. Body is required and delaySeconds must be >= 0. Adding a step does not disturb enrollments already walking — one that has passed this index simply never sees it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   SequenceID is the sequence id from the path (the route's :id).
  ///
  /// * [StepInput] stepInput (required):
  Future<Response> postMarketingSequencesByIdStepsWithHttpInfo(String id, StepInput stepInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/sequences/{id}/steps'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = stepInput;

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

  /// Appends a message to the END of a sequence: the new step's idx is one past the last, so steps arrive in the order they are added.
  ///
  /// Appends a message to the END of a sequence: the new step's idx is one past the last, so steps arrive in the order they are added. Body is required and delaySeconds must be >= 0. Adding a step does not disturb enrollments already walking — one that has passed this index simply never sees it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   SequenceID is the sequence id from the path (the route's :id).
  ///
  /// * [StepInput] stepInput (required):
  Future<Step?> postMarketingSequencesByIdSteps(String id, StepInput stepInput,) async {
    final response = await postMarketingSequencesByIdStepsWithHttpInfo(id, stepInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Step',) as Step;
    
    }
    return null;
  }

  /// Records an opt-out for the org (admin / self-service management).
  ///
  /// Records an opt-out for the org (admin / self-service management). Address is required; channel defaults to email. It is idempotent: re-suppressing the same tuple keeps the original record rather than erroring. From here on the ONE send gate refuses that recipient on that channel.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Suppression] suppression (required):
  Future<Response> postMarketingSuppressionsWithHttpInfo(Suppression suppression,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/suppressions';

    // ignore: prefer_final_locals
    Object? postBody = suppression;

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

  /// Records an opt-out for the org (admin / self-service management).
  ///
  /// Records an opt-out for the org (admin / self-service management). Address is required; channel defaults to email. It is idempotent: re-suppressing the same tuple keeps the original record rather than erroring. From here on the ONE send gate refuses that recipient on that channel.
  ///
  /// Parameters:
  ///
  /// * [Suppression] suppression (required):
  Future<Suppression?> postMarketingSuppressions(Suppression suppression,) async {
    final response = await postMarketingSuppressionsWithHttpInfo(suppression,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Suppression',) as Suppression;
    
    }
    return null;
  }

  /// Replaces a post's editable fields.
  ///
  /// Replaces a post's editable fields. It is a full write, not a patch, and it RESETS the lifecycle from the schedule: a scheduledAt makes the post \"scheduled\" again and none makes it a draft — so editing a failed post requeues it rather than leaving it stuck.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the server-assigned post id (\"cal_\" + 128 random bits).
  ///
  /// * [CalendarPost] calendarPost (required):
  Future<Response> putMarketingCalendarByIdWithHttpInfo(String id, CalendarPost calendarPost,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/calendar/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = calendarPost;

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

  /// Replaces a post's editable fields.
  ///
  /// Replaces a post's editable fields. It is a full write, not a patch, and it RESETS the lifecycle from the schedule: a scheduledAt makes the post \"scheduled\" again and none makes it a draft — so editing a failed post requeues it rather than leaving it stuck.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the server-assigned post id (\"cal_\" + 128 random bits).
  ///
  /// * [CalendarPost] calendarPost (required):
  Future<CalendarPost?> putMarketingCalendarById(String id, CalendarPost calendarPost,) async {
    final response = await putMarketingCalendarByIdWithHttpInfo(id, calendarPost,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CalendarPost',) as CalendarPost;
    
    }
    return null;
  }

  /// Replaces a campaign's editable fields.
  ///
  /// Replaces a campaign's editable fields. It is a full write, not a patch: every field takes the value in the body, and an omitted one is cleared. The id comes from the path — the body cannot retarget another campaign — and createdAt is never rewritten.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the server-assigned campaign id (\"camp_\" + 128 random bits).
  ///
  /// * [Campaign] campaign (required):
  Future<Response> putMarketingCampaignsByIdWithHttpInfo(String id, Campaign campaign,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketing/campaigns/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = campaign;

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

  /// Replaces a campaign's editable fields.
  ///
  /// Replaces a campaign's editable fields. It is a full write, not a patch: every field takes the value in the body, and an omitted one is cleared. The id comes from the path — the body cannot retarget another campaign — and createdAt is never rewritten.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the server-assigned campaign id (\"camp_\" + 128 random bits).
  ///
  /// * [Campaign] campaign (required):
  Future<Campaign?> putMarketingCampaignsById(String id, Campaign campaign,) async {
    final response = await putMarketingCampaignsByIdWithHttpInfo(id, campaign,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Campaign',) as Campaign;
    
    }
    return null;
  }
}
