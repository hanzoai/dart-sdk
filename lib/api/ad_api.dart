//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class AdApi {
  AdApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Removes one of the caller org's campaigns and answers 204 with no body.
  ///
  /// Removes one of the caller org's campaigns and answers 204 with no body. It deletes the stored record only: a campaign already launched keeps running on the ad network, which must be stopped there. An id another org owns reads as not found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteAdCampaignsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ad/campaigns/{id}'
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

  /// Removes one of the caller org's campaigns and answers 204 with no body.
  ///
  /// Removes one of the caller org's campaigns and answers 204 with no body. It deletes the stored record only: a campaign already launched keeps running on the ad network, which must be stopped there. An id another org owns reads as not found.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteAdCampaignsById(String id,) async {
    final response = await deleteAdCampaignsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the caller org's ad campaigns, most recently updated first, optionally narrowed to one lifecycle status.
  ///
  /// Returns the caller org's ad campaigns, most recently updated first, optionally narrowed to one lifecycle status. The listing is bounded by the org: another tenant's campaigns are not reachable from here at all.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   Status filters to one lifecycle state (draft, active, paused, completed). Empty returns every campaign the org has.
  ///
  /// * [int] limit:
  ///   Limit caps how many campaigns come back: default 200, maximum 1000. A value that is not a positive integer reads as the default.
  Future<Response> getAdCampaignsWithHttpInfo({ String? status, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ad/campaigns';

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

  /// Returns the caller org's ad campaigns, most recently updated first, optionally narrowed to one lifecycle status.
  ///
  /// Returns the caller org's ad campaigns, most recently updated first, optionally narrowed to one lifecycle status. The listing is bounded by the org: another tenant's campaigns are not reachable from here at all.
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   Status filters to one lifecycle state (draft, active, paused, completed). Empty returns every campaign the org has.
  ///
  /// * [int] limit:
  ///   Limit caps how many campaigns come back: default 200, maximum 1000. A value that is not a positive integer reads as the default.
  Future<CampaignList?> getAdCampaigns({ String? status, int? limit, }) async {
    final response = await getAdCampaignsWithHttpInfo( status: status, limit: limit, );
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
  /// Returns one of the caller org's campaigns. An id another org owns reads as not found, so the response cannot confirm that it exists.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getAdCampaignsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ad/campaigns/{id}'
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
  /// Returns one of the caller org's campaigns. An id another org owns reads as not found, so the response cannot confirm that it exists.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<AdCampaign?> getAdCampaignsById(String id,) async {
    final response = await getAdCampaignsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AdCampaign',) as AdCampaign;
    
    }
    return null;
  }

  /// Rolls the caller org's ad campaigns up into four numbers: how many campaigns exist, how many are active, and the summed budget and spend across all of them.
  ///
  /// Rolls the caller org's ad campaigns up into four numbers: how many campaigns exist, how many are active, and the summed budget and spend across all of them. Budget and spend are MINOR units (cents), the same units the campaign rows carry. It counts only this org's campaigns.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAdSummaryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ad/summary';

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

  /// Rolls the caller org's ad campaigns up into four numbers: how many campaigns exist, how many are active, and the summed budget and spend across all of them.
  ///
  /// Rolls the caller org's ad campaigns up into four numbers: how many campaigns exist, how many are active, and the summed budget and spend across all of them. Budget and spend are MINOR units (cents), the same units the campaign rows carry. It counts only this org's campaigns.
  Future<AdSummary?> getAdSummary() async {
    final response = await getAdSummaryWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AdSummary',) as AdSummary;
    
    }
    return null;
  }

  /// Registers a new ad campaign for the caller's org and answers 201 with the stored row.
  ///
  /// Registers a new ad campaign for the caller's org and answers 201 with the stored row. It only records the campaign — nothing is sent to the ad network until POST /v1/ad/campaigns/{id}/launch runs it. The org is stamped by the server from the validated principal, so a body can never place a campaign in another tenant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CampaignInput] campaignInput (required):
  Future<Response> postAdCampaignsWithHttpInfo(CampaignInput campaignInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ad/campaigns';

    // ignore: prefer_final_locals
    Object? postBody = campaignInput;

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

  /// Registers a new ad campaign for the caller's org and answers 201 with the stored row.
  ///
  /// Registers a new ad campaign for the caller's org and answers 201 with the stored row. It only records the campaign — nothing is sent to the ad network until POST /v1/ad/campaigns/{id}/launch runs it. The org is stamped by the server from the validated principal, so a body can never place a campaign in another tenant.
  ///
  /// Parameters:
  ///
  /// * [CampaignInput] campaignInput (required):
  Future<AdCampaign?> postAdCampaigns(CampaignInput campaignInput,) async {
    final response = await postAdCampaignsWithHttpInfo(campaignInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AdCampaign',) as AdCampaign;
    
    }
    return null;
  }

  /// Run one of your stored campaigns on its ad network
  ///
  /// Creates the campaign on its platform under the CALLER ORG'S own connected ad account, records the provider campaign id, flips the stored campaign to active and answers the updated record. No ad-network token is held here: it is resolved from KMS through the org's connector at launch time, BEFORE any provider call, so an org that has not connected that platform gets 424 and no spend can ever start on a connection the org did not make. Meta is executed for real; a campaign on a platform whose provider is not wired yet answers 501 even when the connector is connected, and an edge failure at the platform is 502. The optional {account} body overrides the target ad account for this launch and is TOLERANT — a malformed or non-JSON body is ignored and the campaign launches on its stored account rather than being refused. A campaign id another org owns reads as not found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> postAdCampaignsByIdLaunchWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ad/campaigns/{id}/launch'
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

  /// Run one of your stored campaigns on its ad network
  ///
  /// Creates the campaign on its platform under the CALLER ORG'S own connected ad account, records the provider campaign id, flips the stored campaign to active and answers the updated record. No ad-network token is held here: it is resolved from KMS through the org's connector at launch time, BEFORE any provider call, so an org that has not connected that platform gets 424 and no spend can ever start on a connection the org did not make. Meta is executed for real; a campaign on a platform whose provider is not wired yet answers 501 even when the connector is connected, and an edge failure at the platform is 502. The optional {account} body overrides the target ad account for this launch and is TOLERANT — a malformed or non-JSON body is ignored and the campaign launches on its stored account rather than being refused. A campaign id another org owns reads as not found.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> postAdCampaignsByIdLaunch(String id,) async {
    final response = await postAdCampaignsByIdLaunchWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replaces the user-owned fields of one of the caller org's campaigns and answers the stored row.
  ///
  /// Replaces the user-owned fields of one of the caller org's campaigns and answers the stored row. It is a full replace, not a patch: every field is written from the request, so an omitted one is cleared. externalId is launch-owned and is never touched here, so editing a campaign cannot break its link to a live provider execution.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateCampaignIn] updateCampaignIn (required):
  Future<Response> putAdCampaignsByIdWithHttpInfo(String id, UpdateCampaignIn updateCampaignIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ad/campaigns/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updateCampaignIn;

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

  /// Replaces the user-owned fields of one of the caller org's campaigns and answers the stored row.
  ///
  /// Replaces the user-owned fields of one of the caller org's campaigns and answers the stored row. It is a full replace, not a patch: every field is written from the request, so an omitted one is cleared. externalId is launch-owned and is never touched here, so editing a campaign cannot break its link to a live provider execution.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateCampaignIn] updateCampaignIn (required):
  Future<AdCampaign?> putAdCampaignsById(String id, UpdateCampaignIn updateCampaignIn,) async {
    final response = await putAdCampaignsByIdWithHttpInfo(id, updateCampaignIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AdCampaign',) as AdCampaign;
    
    }
    return null;
  }
}
