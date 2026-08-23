//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class CampaignApi {
  CampaignApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Removes one campaign of the caller's org and answers 204 with no body.
  ///
  /// Removes one campaign of the caller's org and answers 204 with no body. 404 when the org has no campaign with that id.  It deletes the RECORD, not the executions: a campaign whose channels are live on a provider should be paused first, or those executions keep running with nothing here to report them.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the campaign's server-minted handle, \"cmp_\"-prefixed.
  Future<Response> deleteCampaignByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaign/{id}'
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

  /// Removes one campaign of the caller's org and answers 204 with no body.
  ///
  /// Removes one campaign of the caller's org and answers 204 with no body. 404 when the org has no campaign with that id.  It deletes the RECORD, not the executions: a campaign whose channels are live on a provider should be paused first, or those executions keep running with nothing here to report them.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the campaign's server-minted handle, \"cmp_\"-prefixed.
  Future<void> deleteCampaignById(String id,) async {
    final response = await deleteCampaignByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Drops one channel from a campaign and returns the updated campaign.
  ///
  /// Drops one channel from a campaign and returns the updated campaign. 404 when the campaign carries no channel of that kind.  It removes the channel from the PLAN. A channel that is live at its provider should be paused first — dropping the row here leaves nothing to pause it with afterwards.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the campaign, from the path.
  ///
  /// * [String] kind (required):
  ///   Kind is the channel to remove: paid, organic or email.
  Future<Response> deleteCampaignByIdChannelsByKindWithHttpInfo(String id, String kind,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaign/{id}/channels/{kind}'
      .replaceAll('{id}', id)
      .replaceAll('{kind}', kind);

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

  /// Drops one channel from a campaign and returns the updated campaign.
  ///
  /// Drops one channel from a campaign and returns the updated campaign. 404 when the campaign carries no channel of that kind.  It removes the channel from the PLAN. A channel that is live at its provider should be paused first — dropping the row here leaves nothing to pause it with afterwards.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the campaign, from the path.
  ///
  /// * [String] kind (required):
  ///   Kind is the channel to remove: paid, organic or email.
  Future<CampaignRecord?> deleteCampaignByIdChannelsByKind(String id, String kind,) async {
    final response = await deleteCampaignByIdChannelsByKindWithHttpInfo(id, kind,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CampaignRecord',) as CampaignRecord;
    
    }
    return null;
  }

  /// Returns the org's campaigns, newest first, optionally narrowed to one status.
  ///
  /// Returns the org's campaigns, newest first, optionally narrowed to one status.  A campaign is the top-level go-to-market object: a value that SPANS channels (paid, organic, email) and fans out to the executor for each. The listing is org-scoped server-side, so one org can never see another's campaigns.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   Status keeps only campaigns in that state: draft, live, paused or failed. Empty means any.
  ///
  /// * [int] limit:
  ///   Limit bounds the page. 0 or less means the default of 200; anything above 1000 is clamped to 1000.
  Future<Response> getCampaignWithHttpInfo({ String? status, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaign';

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

  /// Returns the org's campaigns, newest first, optionally narrowed to one status.
  ///
  /// Returns the org's campaigns, newest first, optionally narrowed to one status.  A campaign is the top-level go-to-market object: a value that SPANS channels (paid, organic, email) and fans out to the executor for each. The listing is org-scoped server-side, so one org can never see another's campaigns.
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   Status keeps only campaigns in that state: draft, live, paused or failed. Empty means any.
  ///
  /// * [int] limit:
  ///   Limit bounds the page. 0 or less means the default of 200; anything above 1000 is clamped to 1000.
  Future<CampaignPage?> getCampaign({ String? status, int? limit, }) async {
    final response = await getCampaignWithHttpInfo( status: status, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CampaignPage',) as CampaignPage;
    
    }
    return null;
  }

  /// Returns one campaign of the caller's org — its name, audience, creatives, channels with their per-channel launch state, schedule, budget and status.
  ///
  /// Returns one campaign of the caller's org — its name, audience, creatives, channels with their per-channel launch state, schedule, budget and status. 404 when the org has no campaign with that id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the campaign's server-minted handle, \"cmp_\"-prefixed.
  Future<Response> getCampaignByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaign/{id}'
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

  /// Returns one campaign of the caller's org — its name, audience, creatives, channels with their per-channel launch state, schedule, budget and status.
  ///
  /// Returns one campaign of the caller's org — its name, audience, creatives, channels with their per-channel launch state, schedule, budget and status. 404 when the org has no campaign with that id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the campaign's server-minted handle, \"cmp_\"-prefixed.
  Future<CampaignRecord?> getCampaignById(String id,) async {
    final response = await getCampaignByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CampaignRecord',) as CampaignRecord;
    
    }
    return null;
  }

  /// Returns a campaign's results over a window: the analytics funnel (impressions, clicks, conversions, revenue, visitors), the spend each channel's connector reports, and the derived growth KPIs — CTR, CVR, CAC and ROAS.
  ///
  /// Returns a campaign's results over a window: the analytics funnel (impressions, clicks, conversions, revenue, visitors), the spend each channel's connector reports, and the derived growth KPIs — CTR, CVR, CAC and ROAS.  There is exactly ONE metrics plane and nothing is stored here: the funnel is an analytics query over the campaign's utm_campaign-tagged events, and the spend is each provider's own number read through the org's connector. A warehouse that is not emitting yet degrades to available:false with zeroes — honest-empty, never a 500 and never a fabricated number. When the campaign runs more than one creative and an experiment is wired, abTest carries the A/B analysis.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the campaign to report on, from the path.
  ///
  /// * [String] range:
  ///   Range is the lookback window: 24h, 7d, 30d or 90d. Anything else, including empty, reads as 30d.
  ///
  /// * [String] start:
  ///   Start is an explicit RFC3339 window start. Honored only together with End, and only when End is after it.
  ///
  /// * [String] end:
  ///   End is an explicit RFC3339 window end.
  Future<Response> getCampaignByIdMetricsWithHttpInfo(String id, { String? range, String? start, String? end, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaign/{id}/metrics'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (range != null) {
      queryParams.addAll(_queryParams('', 'range', range));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (end != null) {
      queryParams.addAll(_queryParams('', 'end', end));
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

  /// Returns a campaign's results over a window: the analytics funnel (impressions, clicks, conversions, revenue, visitors), the spend each channel's connector reports, and the derived growth KPIs — CTR, CVR, CAC and ROAS.
  ///
  /// Returns a campaign's results over a window: the analytics funnel (impressions, clicks, conversions, revenue, visitors), the spend each channel's connector reports, and the derived growth KPIs — CTR, CVR, CAC and ROAS.  There is exactly ONE metrics plane and nothing is stored here: the funnel is an analytics query over the campaign's utm_campaign-tagged events, and the spend is each provider's own number read through the org's connector. A warehouse that is not emitting yet degrades to available:false with zeroes — honest-empty, never a 500 and never a fabricated number. When the campaign runs more than one creative and an experiment is wired, abTest carries the A/B analysis.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the campaign to report on, from the path.
  ///
  /// * [String] range:
  ///   Range is the lookback window: 24h, 7d, 30d or 90d. Anything else, including empty, reads as 30d.
  ///
  /// * [String] start:
  ///   Start is an explicit RFC3339 window start. Honored only together with End, and only when End is after it.
  ///
  /// * [String] end:
  ///   End is an explicit RFC3339 window end.
  Future<CampaignResults?> getCampaignByIdMetrics(String id, { String? range, String? start, String? end, }) async {
    final response = await getCampaignByIdMetricsWithHttpInfo(id,  range: range, start: start, end: end, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CampaignResults',) as CampaignResults;
    
    }
    return null;
  }

  /// Returns the org's go-to-market roll-up: how many campaigns exist, how many are live, their total budget in cents, and which channel executors this deployment can actually reach.
  ///
  /// Returns the org's go-to-market roll-up: how many campaigns exist, how many are live, their total budget in cents, and which channel executors this deployment can actually reach.  The channel list is the deployment's honest capability, not a wish: a kind missing from it is one a launch will record as \"unavailable\" rather than fail on.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCampaignSummaryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaign/summary';

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

  /// Returns the org's go-to-market roll-up: how many campaigns exist, how many are live, their total budget in cents, and which channel executors this deployment can actually reach.
  ///
  /// Returns the org's go-to-market roll-up: how many campaigns exist, how many are live, their total budget in cents, and which channel executors this deployment can actually reach.  The channel list is the deployment's honest capability, not a wish: a kind missing from it is one a launch will record as \"unavailable\" rather than fail on.
  Future<CampaignSummary?> getCampaignSummary() async {
    final response = await getCampaignSummaryWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CampaignSummary',) as CampaignSummary;
    
    }
    return null;
  }

  /// Creates a campaign as a DRAFT and returns it.
  ///
  /// Creates a campaign as a DRAFT and returns it.  A draft is inert: nothing is sent, no connector is touched and no budget is committed until the campaign is launched. The channels named here are validated and de-duplicated by kind (one executor per kind), and every channel starts \"pending\" whatever the caller claims — a client can never assert a launched state.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CampaignWrite] campaignWrite (required):
  Future<Response> postCampaignWithHttpInfo(CampaignWrite campaignWrite,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaign';

    // ignore: prefer_final_locals
    Object? postBody = campaignWrite;

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

  /// Creates a campaign as a DRAFT and returns it.
  ///
  /// Creates a campaign as a DRAFT and returns it.  A draft is inert: nothing is sent, no connector is touched and no budget is committed until the campaign is launched. The channels named here are validated and de-duplicated by kind (one executor per kind), and every channel starts \"pending\" whatever the caller claims — a client can never assert a launched state.
  ///
  /// Parameters:
  ///
  /// * [CampaignWrite] campaignWrite (required):
  Future<CampaignRecord?> postCampaign(CampaignWrite campaignWrite,) async {
    final response = await postCampaignWithHttpInfo(campaignWrite,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CampaignRecord',) as CampaignRecord;
    
    }
    return null;
  }

  /// Adds a channel to a campaign, or REPLACES the one it already has of that kind, and returns the updated campaign.
  ///
  /// Adds a channel to a campaign, or REPLACES the one it already has of that kind, and returns the updated campaign.  A campaign carries at most one channel per kind, because the kind IS the executor: adding a second \"paid\" channel would mean two ad accounts running one campaign with no way to tell their results apart. The new channel starts \"pending\" — adding it does not launch it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the campaign to add the channel to, from the path.
  ///
  /// * [ChannelAdd] channelAdd (required):
  Future<Response> postCampaignByIdChannelsWithHttpInfo(String id, ChannelAdd channelAdd,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaign/{id}/channels'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = channelAdd;

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

  /// Adds a channel to a campaign, or REPLACES the one it already has of that kind, and returns the updated campaign.
  ///
  /// Adds a channel to a campaign, or REPLACES the one it already has of that kind, and returns the updated campaign.  A campaign carries at most one channel per kind, because the kind IS the executor: adding a second \"paid\" channel would mean two ad accounts running one campaign with no way to tell their results apart. The new channel starts \"pending\" — adding it does not launch it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the campaign to add the channel to, from the path.
  ///
  /// * [ChannelAdd] channelAdd (required):
  Future<CampaignRecord?> postCampaignByIdChannels(String id, ChannelAdd channelAdd,) async {
    final response = await postCampaignByIdChannelsWithHttpInfo(id, channelAdd,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CampaignRecord',) as CampaignRecord;
    
    }
    return null;
  }

  /// Launch a campaign across every channel it declares
  ///
  /// Pushes the campaign live on each of its channels through that channel's executor and answers the whole campaign with the per-channel outcome written back onto it.  The fan-out is BEST-EFFORT PER CHANNEL, and the honest reading of the result is the rule most callers get wrong: one channel failing never aborts the others, so each channel row carries its own `live`, `failed` or `unavailable` status and detail, and a paid launch can be live while an email launch failed. The campaign itself is `live` when AT LEAST ONE channel launched and `failed` only when none did — `live` is not a claim that every channel launched. Repeating the call is safe: a channel already live is skipped, never re-launched. A campaign carrying more than one creative has its variant assigned here by the experiment client and tagged as `utm_content`.  Org-scoped and fails closed: a valid bearer is required (403 without one), the campaign is read under the caller's OWN org so another tenant's id is a 404, and a campaign with no channels is a 400 — there is nothing to launch. Each executor resolves its own org's connector token from the org passed to it, so a launch can never spend through another tenant's connector.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> postCampaignByIdLaunchWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaign/{id}/launch'
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

  /// Launch a campaign across every channel it declares
  ///
  /// Pushes the campaign live on each of its channels through that channel's executor and answers the whole campaign with the per-channel outcome written back onto it.  The fan-out is BEST-EFFORT PER CHANNEL, and the honest reading of the result is the rule most callers get wrong: one channel failing never aborts the others, so each channel row carries its own `live`, `failed` or `unavailable` status and detail, and a paid launch can be live while an email launch failed. The campaign itself is `live` when AT LEAST ONE channel launched and `failed` only when none did — `live` is not a claim that every channel launched. Repeating the call is safe: a channel already live is skipped, never re-launched. A campaign carrying more than one creative has its variant assigned here by the experiment client and tagged as `utm_content`.  Org-scoped and fails closed: a valid bearer is required (403 without one), the campaign is read under the caller's OWN org so another tenant's id is a 404, and a campaign with no channels is a 400 — there is nothing to launch. Each executor resolves its own org's connector token from the org passed to it, so a launch can never spend through another tenant's connector.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> postCampaignByIdLaunch(String id,) async {
    final response = await postCampaignByIdLaunchWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Pause every live channel on a campaign at its provider
  ///
  /// Pauses each live channel on its provider and answers the whole campaign, moved to `paused`, with the per-channel outcome written back onto it.  Only channels that are live and carry a provider reference are touched; a channel whose executor is no longer wired is marked `unavailable` and one whose pause errored is marked `failed`, with the reason on the row. The campaign still reports `paused` in both cases, and that is deliberate rather than sloppy: no live channel remains that this process will meter, and the rows say exactly which provider was not reached so it can be settled by hand.  Org-scoped and fails closed: a valid bearer is required (403 without one) and the campaign is read under the caller's OWN org, so another tenant's id is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> postCampaignByIdPauseWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaign/{id}/pause'
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

  /// Pause every live channel on a campaign at its provider
  ///
  /// Pauses each live channel on its provider and answers the whole campaign, moved to `paused`, with the per-channel outcome written back onto it.  Only channels that are live and carry a provider reference are touched; a channel whose executor is no longer wired is marked `unavailable` and one whose pause errored is marked `failed`, with the reason on the row. The campaign still reports `paused` in both cases, and that is deliberate rather than sloppy: no live channel remains that this process will meter, and the rows say exactly which provider was not reached so it can be settled by hand.  Org-scoped and fails closed: a valid bearer is required (403 without one) and the campaign is read under the caller's OWN org, so another tenant's id is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> postCampaignByIdPause(String id,) async {
    final response = await postCampaignByIdPauseWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Rewrites a campaign's core fields — name, audience, creatives, schedule and budget — and returns the updated campaign.
  ///
  /// Rewrites a campaign's core fields — name, audience, creatives, schedule and budget — and returns the updated campaign.  Channels are replaced ONLY while the campaign is still a draft. Once it is launched its channels carry provider state (an external id, a live status), so they are added and removed explicitly through the channels sub-resource instead; a whole-object write would silently orphan a running execution.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the campaign to update, from the path.
  ///
  /// * [CampaignUpdate] campaignUpdate (required):
  Future<Response> putCampaignByIdWithHttpInfo(String id, CampaignUpdate campaignUpdate,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaign/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = campaignUpdate;

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

  /// Rewrites a campaign's core fields — name, audience, creatives, schedule and budget — and returns the updated campaign.
  ///
  /// Rewrites a campaign's core fields — name, audience, creatives, schedule and budget — and returns the updated campaign.  Channels are replaced ONLY while the campaign is still a draft. Once it is launched its channels carry provider state (an external id, a live status), so they are added and removed explicitly through the channels sub-resource instead; a whole-object write would silently orphan a running execution.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the campaign to update, from the path.
  ///
  /// * [CampaignUpdate] campaignUpdate (required):
  Future<CampaignRecord?> putCampaignById(String id, CampaignUpdate campaignUpdate,) async {
    final response = await putCampaignByIdWithHttpInfo(id, campaignUpdate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CampaignRecord',) as CampaignRecord;
    
    }
    return null;
  }
}
