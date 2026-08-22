//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class SocialApi {
  SocialApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Removes one connected account from the org and answers 204 with no body; an id that is not there is 404.
  ///
  /// Removes one connected account from the org and answers 204 with no body; an id that is not there is 404.  It removes the account record only. Posts that already published through it keep their published state and their recorded external ids — this does not retract anything from the network.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the account or post to act on, taken from the path.
  Future<Response> deleteSocialAccountsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/social/accounts/{id}'
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

  /// Removes one connected account from the org and answers 204 with no body; an id that is not there is 404.
  ///
  /// Removes one connected account from the org and answers 204 with no body; an id that is not there is 404.  It removes the account record only. Posts that already published through it keep their published state and their recorded external ids — this does not retract anything from the network.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the account or post to act on, taken from the path.
  Future<void> deleteSocialAccountsById(String id,) async {
    final response = await deleteSocialAccountsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes one post from the org and answers 204 with no body; an id that is not there is 404.
  ///
  /// Removes one post from the org and answers 204 with no body; an id that is not there is 404.  It deletes the record here only. A post that has already published is not retracted from the network by deleting it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the account or post to act on, taken from the path.
  Future<Response> deleteSocialPostsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/social/posts/{id}'
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

  /// Removes one post from the org and answers 204 with no body; an id that is not there is 404.
  ///
  /// Removes one post from the org and answers 204 with no body; an id that is not there is 404.  It deletes the record here only. A post that has already published is not retracted from the network by deleting it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the account or post to act on, taken from the path.
  Future<void> deleteSocialPostsById(String id,) async {
    final response = await deleteSocialPostsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the org's connected accounts — each one's id, network, handle, status and timestamps, most-recently-updated first.
  ///
  /// Returns the org's connected accounts — each one's id, network, handle, status and timestamps, most-recently-updated first.  An account's provider access token is NEVER included in any response on this surface. Only the publisher reads it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider:
  ///   Provider keeps only accounts on one network — x, facebook, instagram, linkedin, tiktok, youtube or threads. Omit it for every network. It is lower-cased and trimmed before it is matched, and a value that names no network simply matches nothing rather than being refused.
  ///
  /// * [String] limit:
  ///   Limit bounds the page, defaulting to 200 and capped at 1000. It is a string rather than an integer on purpose: the route parses it with a leading trim and falls back to the default on anything it cannot read, so `?limit=%2050` is a page of fifty today. An integer field would refuse the space and read an unparseable value as zero, which is a different page.
  Future<Response> getSocialAccountsWithHttpInfo({ String? provider, String? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/social/accounts';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (provider != null) {
      queryParams.addAll(_queryParams('', 'provider', provider));
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

  /// Returns the org's connected accounts — each one's id, network, handle, status and timestamps, most-recently-updated first.
  ///
  /// Returns the org's connected accounts — each one's id, network, handle, status and timestamps, most-recently-updated first.  An account's provider access token is NEVER included in any response on this surface. Only the publisher reads it.
  ///
  /// Parameters:
  ///
  /// * [String] provider:
  ///   Provider keeps only accounts on one network — x, facebook, instagram, linkedin, tiktok, youtube or threads. Omit it for every network. It is lower-cased and trimmed before it is matched, and a value that names no network simply matches nothing rather than being refused.
  ///
  /// * [String] limit:
  ///   Limit bounds the page, defaulting to 200 and capped at 1000. It is a string rather than an integer on purpose: the route parses it with a leading trim and falls back to the default on anything it cannot read, so `?limit=%2050` is a page of fifty today. An integer field would refuse the space and read an unparseable value as zero, which is a different page.
  Future<SocialAccounts?> getSocialAccounts({ String? provider, String? limit, }) async {
    final response = await getSocialAccountsWithHttpInfo( provider: provider, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SocialAccounts',) as SocialAccounts;
    
    }
    return null;
  }

  /// Returns one of the org's connected accounts by id — its network, handle, status and timestamps — or 404.
  ///
  /// Returns one of the org's connected accounts by id — its network, handle, status and timestamps — or 404. The provider access token is not part of the response.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the account or post to act on, taken from the path.
  Future<Response> getSocialAccountsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/social/accounts/{id}'
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

  /// Returns one of the org's connected accounts by id — its network, handle, status and timestamps — or 404.
  ///
  /// Returns one of the org's connected accounts by id — its network, handle, status and timestamps — or 404. The provider access token is not part of the response.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the account or post to act on, taken from the path.
  Future<SocialAccount?> getSocialAccountsById(String id,) async {
    final response = await getSocialAccountsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SocialAccount',) as SocialAccount;
    
    }
    return null;
  }

  /// Returns the org's posts — content, channel, status, scheduled time, media and timestamps — most-recently-updated first.
  ///
  /// Returns the org's posts — content, channel, status, scheduled time, media and timestamps — most-recently-updated first.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   Status keeps only posts in one state — draft, scheduled, published or failed. Omit it for every state. The transient publishing claim is not a user-visible state and matching it is not useful.
  ///
  /// * [String] limit:
  ///   Limit bounds the page, defaulting to 200 and capped at 1000. A string for the same reason accountFilter.Limit is.
  Future<Response> getSocialPostsWithHttpInfo({ String? status, String? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/social/posts';

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

  /// Returns the org's posts — content, channel, status, scheduled time, media and timestamps — most-recently-updated first.
  ///
  /// Returns the org's posts — content, channel, status, scheduled time, media and timestamps — most-recently-updated first.
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   Status keeps only posts in one state — draft, scheduled, published or failed. Omit it for every state. The transient publishing claim is not a user-visible state and matching it is not useful.
  ///
  /// * [String] limit:
  ///   Limit bounds the page, defaulting to 200 and capped at 1000. A string for the same reason accountFilter.Limit is.
  Future<SocialPosts?> getSocialPosts({ String? status, String? limit, }) async {
    final response = await getSocialPostsWithHttpInfo( status: status, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SocialPosts',) as SocialPosts;
    
    }
    return null;
  }

  /// Returns one of the org's posts by id, with its current status, scheduled time, media and — once it has published — the account and external id it published under.
  ///
  /// Returns one of the org's posts by id, with its current status, scheduled time, media and — once it has published — the account and external id it published under. 404 when there is no such post for this org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the account or post to act on, taken from the path.
  Future<Response> getSocialPostsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/social/posts/{id}'
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

  /// Returns one of the org's posts by id, with its current status, scheduled time, media and — once it has published — the account and external id it published under.
  ///
  /// Returns one of the org's posts by id, with its current status, scheduled time, media and — once it has published — the account and external id it published under. 404 when there is no such post for this org.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the account or post to act on, taken from the path.
  Future<SocialPost?> getSocialPostsById(String id,) async {
    final response = await getSocialPostsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SocialPost',) as SocialPost;
    
    }
    return null;
  }

  /// Reports each supported network's publish-readiness: whether this deployment holds the OAuth application credentials for it and, when it does not, exactly which environment variables are missing.
  ///
  /// Reports each supported network's publish-readiness: whether this deployment holds the OAuth application credentials for it and, when it does not, exactly which environment variables are missing.  This is a live read of the deployment's own configuration, not a static list of networks — it answers \"can I connect this today\", which is what a connect affordance and a pre-cutover checklist both need. It says nothing about whether the caller has connected an account; that is the accounts listing.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSocialProvidersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/social/providers';

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

  /// Reports each supported network's publish-readiness: whether this deployment holds the OAuth application credentials for it and, when it does not, exactly which environment variables are missing.
  ///
  /// Reports each supported network's publish-readiness: whether this deployment holds the OAuth application credentials for it and, when it does not, exactly which environment variables are missing.  This is a live read of the deployment's own configuration, not a static list of networks — it answers \"can I connect this today\", which is what a connect affordance and a pre-cutover checklist both need. It says nothing about whether the caller has connected an account; that is the accounts listing.
  Future<SocialProviders?> getSocialProviders() async {
    final response = await getSocialProvidersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SocialProviders',) as SocialProviders;
    
    }
    return null;
  }

  /// Returns four counts for the caller's org: total posts, how many are scheduled, how many have published, and how many accounts are connected.
  ///
  /// Returns four counts for the caller's org: total posts, how many are scheduled, how many have published, and how many accounts are connected. It is the dashboard roll-up, computed over the org's own rows in one read.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSocialSummaryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/social/summary';

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

  /// Returns four counts for the caller's org: total posts, how many are scheduled, how many have published, and how many accounts are connected.
  ///
  /// Returns four counts for the caller's org: total posts, how many are scheduled, how many have published, and how many accounts are connected. It is the dashboard roll-up, computed over the org's own rows in one read.
  Future<SocialSummary?> getSocialSummary() async {
    final response = await getSocialSummaryWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SocialSummary',) as SocialSummary;
    
    }
    return null;
  }

  /// Records a social account for the org and answers 201 with the stored row, including the generated id later calls address it by.
  ///
  /// Records a social account for the org and answers 201 with the stored row, including the generated id later calls address it by.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SocialAccountBody] socialAccountBody (required):
  Future<Response> postSocialAccountsWithHttpInfo(SocialAccountBody socialAccountBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/social/accounts';

    // ignore: prefer_final_locals
    Object? postBody = socialAccountBody;

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

  /// Records a social account for the org and answers 201 with the stored row, including the generated id later calls address it by.
  ///
  /// Records a social account for the org and answers 201 with the stored row, including the generated id later calls address it by.
  ///
  /// Parameters:
  ///
  /// * [SocialAccountBody] socialAccountBody (required):
  Future<SocialAccount?> postSocialAccounts(SocialAccountBody socialAccountBody,) async {
    final response = await postSocialAccountsWithHttpInfo(socialAccountBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SocialAccount',) as SocialAccount;
    
    }
    return null;
  }

  /// Stores a post for the org and answers 201 with the stored row.
  ///
  /// Stores a post for the org and answers 201 with the stored row.  A post created as scheduled for a time that has already passed is published IMMEDIATELY, and the row returned carries that outcome — this is the one behaviour a reader would otherwise miss. A future-scheduled post is left for the scheduler, and a draft is left alone. Publishing never fails the creation: the post is stored either way, and a publish that could not run leaves the row for the scheduler to retry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SocialPostBody] socialPostBody (required):
  Future<Response> postSocialPostsWithHttpInfo(SocialPostBody socialPostBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/social/posts';

    // ignore: prefer_final_locals
    Object? postBody = socialPostBody;

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

  /// Stores a post for the org and answers 201 with the stored row.
  ///
  /// Stores a post for the org and answers 201 with the stored row.  A post created as scheduled for a time that has already passed is published IMMEDIATELY, and the row returned carries that outcome — this is the one behaviour a reader would otherwise miss. A future-scheduled post is left for the scheduler, and a draft is left alone. Publishing never fails the creation: the post is stored either way, and a publish that could not run leaves the row for the scheduler to retry.
  ///
  /// Parameters:
  ///
  /// * [SocialPostBody] socialPostBody (required):
  Future<SocialPost?> postSocialPosts(SocialPostBody socialPostBody,) async {
    final response = await postSocialPostsWithHttpInfo(socialPostBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SocialPost',) as SocialPost;
    
    }
    return null;
  }

  /// Publishes the post immediately to the connected accounts on its channel and answers with the updated row, carrying the account and external id it published under.
  ///
  /// Publishes the post immediately to the connected accounts on its channel and answers with the updated row, carrying the account and external id it published under.  It is IDEMPOTENT: a post that has already published, or that another caller is publishing right now, comes back unchanged rather than being posted twice. That claim is taken before any network call, which is what makes a double submit safe.  The two failure shapes differ on purpose. Having no connected account for the channel is the caller's to fix, so it is recorded ON the post as failed with the reason and answers normally. A deployment that lacks the network's own credentials cannot publish for anyone, so that is a 503 naming exactly what is missing.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the account or post to act on, taken from the path.
  Future<Response> postSocialPostsByIdPublishWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/social/posts/{id}/publish'
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

  /// Publishes the post immediately to the connected accounts on its channel and answers with the updated row, carrying the account and external id it published under.
  ///
  /// Publishes the post immediately to the connected accounts on its channel and answers with the updated row, carrying the account and external id it published under.  It is IDEMPOTENT: a post that has already published, or that another caller is publishing right now, comes back unchanged rather than being posted twice. That claim is taken before any network call, which is what makes a double submit safe.  The two failure shapes differ on purpose. Having no connected account for the channel is the caller's to fix, so it is recorded ON the post as failed with the reason and answers normally. A deployment that lacks the network's own credentials cannot publish for anyone, so that is a 503 naming exactly what is missing.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the account or post to act on, taken from the path.
  Future<SocialPost?> postSocialPostsByIdPublish(String id,) async {
    final response = await postSocialPostsByIdPublishWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SocialPost',) as SocialPost;
    
    }
    return null;
  }

  /// Replaces the account's network, handle and status with what the body carries, and answers with the stored row.
  ///
  /// Replaces the account's network, handle and status with what the body carries, and answers with the stored row.  This is a REPLACEMENT, not a merge, which is the rule most easily got wrong: a field the body omits is written as its default, so leaving out the handle blanks it and leaving out the status resets it to connected. Send the whole record. The same vocabularies as create apply, and an unknown network or status is refused rather than coerced.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [SocialAccountWrite] socialAccountWrite (required):
  Future<Response> putSocialAccountsByIdWithHttpInfo(String id, SocialAccountWrite socialAccountWrite,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/social/accounts/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = socialAccountWrite;

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

  /// Replaces the account's network, handle and status with what the body carries, and answers with the stored row.
  ///
  /// Replaces the account's network, handle and status with what the body carries, and answers with the stored row.  This is a REPLACEMENT, not a merge, which is the rule most easily got wrong: a field the body omits is written as its default, so leaving out the handle blanks it and leaving out the status resets it to connected. Send the whole record. The same vocabularies as create apply, and an unknown network or status is refused rather than coerced.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [SocialAccountWrite] socialAccountWrite (required):
  Future<SocialAccount?> putSocialAccountsById(String id, SocialAccountWrite socialAccountWrite,) async {
    final response = await putSocialAccountsByIdWithHttpInfo(id, socialAccountWrite,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SocialAccount',) as SocialAccount;
    
    }
    return null;
  }

  /// Replaces the post's content, channel, status, scheduled time and media with what the body carries, and answers with the stored row.
  ///
  /// Replaces the post's content, channel, status, scheduled time and media with what the body carries, and answers with the stored row.  A REPLACEMENT, not a merge: an omitted field is written as its default, so omitting media clears it and omitting the status resets the post to draft. `content` is required on every update. Unlike create, this never triggers a publish — moving a post's scheduled time into the past here leaves it for the scheduler; publish now is its own operation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [SocialPostWrite] socialPostWrite (required):
  Future<Response> putSocialPostsByIdWithHttpInfo(String id, SocialPostWrite socialPostWrite,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/social/posts/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = socialPostWrite;

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

  /// Replaces the post's content, channel, status, scheduled time and media with what the body carries, and answers with the stored row.
  ///
  /// Replaces the post's content, channel, status, scheduled time and media with what the body carries, and answers with the stored row.  A REPLACEMENT, not a merge: an omitted field is written as its default, so omitting media clears it and omitting the status resets the post to draft. `content` is required on every update. Unlike create, this never triggers a publish — moving a post's scheduled time into the past here leaves it for the scheduler; publish now is its own operation.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [SocialPostWrite] socialPostWrite (required):
  Future<SocialPost?> putSocialPostsById(String id, SocialPostWrite socialPostWrite,) async {
    final response = await putSocialPostsByIdWithHttpInfo(id, socialPostWrite,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SocialPost',) as SocialPost;
    
    }
    return null;
  }
}
