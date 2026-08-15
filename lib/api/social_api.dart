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

  /// Disconnect one account
  ///
  /// Removes one connected account from the org and answers 204 with no body; an id that is not there is 404.  It removes the account record only. Posts that already published through it keep their published state and their recorded external ids — this does not retract anything from the network.  A validated principal is required; 403 without one. Every row is keyed by the caller's org taken from that principal and never from the request, so an id belonging to another tenant reads as not found rather than as a refusal.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
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

  /// Disconnect one account
  ///
  /// Removes one connected account from the org and answers 204 with no body; an id that is not there is 404.  It removes the account record only. Posts that already published through it keep their published state and their recorded external ids — this does not retract anything from the network.  A validated principal is required; 403 without one. Every row is keyed by the caller's org taken from that principal and never from the request, so an id belonging to another tenant reads as not found rather than as a refusal.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteSocialAccountsById(String id,) async {
    final response = await deleteSocialAccountsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete one post
  ///
  /// Removes one post from the org and answers 204 with no body; an id that is not there is 404.  It deletes the record here only. A post that has already published is not retracted from the network by deleting it.  A validated principal is required; 403 without one. Every row is keyed by the caller's org taken from that principal and never from the request, so an id belonging to another tenant reads as not found rather than as a refusal.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
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

  /// Delete one post
  ///
  /// Removes one post from the org and answers 204 with no body; an id that is not there is 404.  It deletes the record here only. A post that has already published is not retracted from the network by deleting it.  A validated principal is required; 403 without one. Every row is keyed by the caller's org taken from that principal and never from the request, so an id belonging to another tenant reads as not found rather than as a refusal.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteSocialPostsById(String id,) async {
    final response = await deleteSocialPostsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List the social accounts connected to your org
  ///
  /// Returns the org's connected accounts — each one's id, network, handle, status and timestamps. `provider` filters to one network; `limit` bounds the page, defaulting to 200 and capped at 1000.  An account's provider access token is NEVER included in any response on this surface. Only the publisher reads it.  A validated principal is required; 403 without one. Every row is keyed by the caller's org taken from that principal and never from the request, so an id belonging to another tenant reads as not found rather than as a refusal.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSocialAccountsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/social/accounts';

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

  /// List the social accounts connected to your org
  ///
  /// Returns the org's connected accounts — each one's id, network, handle, status and timestamps. `provider` filters to one network; `limit` bounds the page, defaulting to 200 and capped at 1000.  An account's provider access token is NEVER included in any response on this surface. Only the publisher reads it.  A validated principal is required; 403 without one. Every row is keyed by the caller's org taken from that principal and never from the request, so an id belonging to another tenant reads as not found rather than as a refusal.
  Future<void> getSocialAccounts() async {
    final response = await getSocialAccountsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Read one connected account
  ///
  /// Returns one of the org's connected accounts by id — its network, handle, status and timestamps — or 404. The provider access token is not part of the response.  A validated principal is required; 403 without one. Every row is keyed by the caller's org taken from that principal and never from the request, so an id belonging to another tenant reads as not found rather than as a refusal.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
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

  /// Read one connected account
  ///
  /// Returns one of the org's connected accounts by id — its network, handle, status and timestamps — or 404. The provider access token is not part of the response.  A validated principal is required; 403 without one. Every row is keyed by the caller's org taken from that principal and never from the request, so an id belonging to another tenant reads as not found rather than as a refusal.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> getSocialAccountsById(String id,) async {
    final response = await getSocialAccountsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List your org's posts
  ///
  /// Returns the org's posts — content, channel, status, scheduled time, media and timestamps. `status` filters to one of draft, scheduled, published or failed; `limit` bounds the page, defaulting to 200 and capped at 1000.  A validated principal is required; 403 without one. Every row is keyed by the caller's org taken from that principal and never from the request, so an id belonging to another tenant reads as not found rather than as a refusal.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSocialPostsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/social/posts';

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

  /// List your org's posts
  ///
  /// Returns the org's posts — content, channel, status, scheduled time, media and timestamps. `status` filters to one of draft, scheduled, published or failed; `limit` bounds the page, defaulting to 200 and capped at 1000.  A validated principal is required; 403 without one. Every row is keyed by the caller's org taken from that principal and never from the request, so an id belonging to another tenant reads as not found rather than as a refusal.
  Future<void> getSocialPosts() async {
    final response = await getSocialPostsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Read one post
  ///
  /// Returns one of the org's posts by id, with its current status, scheduled time, media and — once it has published — the account and external id it published under. 404 when there is no such post for this org.  A validated principal is required; 403 without one. Every row is keyed by the caller's org taken from that principal and never from the request, so an id belonging to another tenant reads as not found rather than as a refusal.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
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

  /// Read one post
  ///
  /// Returns one of the org's posts by id, with its current status, scheduled time, media and — once it has published — the account and external id it published under. 404 when there is no such post for this org.  A validated principal is required; 403 without one. Every row is keyed by the caller's org taken from that principal and never from the request, so an id belonging to another tenant reads as not found rather than as a refusal.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> getSocialPostsById(String id,) async {
    final response = await getSocialPostsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Which networks this deployment can actually publish to
  ///
  /// Reports each supported network's publish-readiness: whether this deployment holds the OAuth application credentials for it and, when it does not, exactly which environment variables are missing.  This is a live read of the deployment's own configuration, not a static list of networks — it answers \"can I connect this today\", which is what a connect affordance and a pre-cutover checklist both need. It says nothing about whether the caller has connected an account; that is the accounts listing.  A validated principal is required; 403 without one. Every row is keyed by the caller's org taken from that principal and never from the request, so an id belonging to another tenant reads as not found rather than as a refusal.
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

  /// Which networks this deployment can actually publish to
  ///
  /// Reports each supported network's publish-readiness: whether this deployment holds the OAuth application credentials for it and, when it does not, exactly which environment variables are missing.  This is a live read of the deployment's own configuration, not a static list of networks — it answers \"can I connect this today\", which is what a connect affordance and a pre-cutover checklist both need. It says nothing about whether the caller has connected an account; that is the accounts listing.  A validated principal is required; 403 without one. Every row is keyed by the caller's org taken from that principal and never from the request, so an id belonging to another tenant reads as not found rather than as a refusal.
  Future<void> getSocialProviders() async {
    final response = await getSocialProvidersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Counts across your org's social presence
  ///
  /// Returns four counts for the caller's org: total posts, how many are scheduled, how many have published, and how many accounts are connected. It is the dashboard roll-up, computed over the org's own rows in one read.  A validated principal is required; 403 without one. Every row is keyed by the caller's org taken from that principal and never from the request, so an id belonging to another tenant reads as not found rather than as a refusal.
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

  /// Counts across your org's social presence
  ///
  /// Returns four counts for the caller's org: total posts, how many are scheduled, how many have published, and how many accounts are connected. It is the dashboard roll-up, computed over the org's own rows in one read.  A validated principal is required; 403 without one. Every row is keyed by the caller's org taken from that principal and never from the request, so an id belonging to another tenant reads as not found rather than as a refusal.
  Future<void> getSocialSummary() async {
    final response = await getSocialSummaryWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Connect a social account to your org
  ///
  /// Records a social account for the org and answers 201 with the stored row, including the generated id later calls address it by.  `provider` must be one of x, facebook, instagram, linkedin, tiktok, youtube or threads, defaulting to x when omitted. `status` is one of connected, disconnected or error, defaulting to connected. The handle is trimmed and bounded at 1024 characters.  A validated principal is required; 403 without one. Every row is keyed by the caller's org taken from that principal and never from the request, so an id belonging to another tenant reads as not found rather than as a refusal.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postSocialAccountsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/social/accounts';

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

  /// Connect a social account to your org
  ///
  /// Records a social account for the org and answers 201 with the stored row, including the generated id later calls address it by.  `provider` must be one of x, facebook, instagram, linkedin, tiktok, youtube or threads, defaulting to x when omitted. `status` is one of connected, disconnected or error, defaulting to connected. The handle is trimmed and bounded at 1024 characters.  A validated principal is required; 403 without one. Every row is keyed by the caller's org taken from that principal and never from the request, so an id belonging to another tenant reads as not found rather than as a refusal.
  Future<void> postSocialAccounts() async {
    final response = await postSocialAccountsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a post, and publish it if it is already due
  ///
  /// Stores a post for the org and answers 201 with the stored row.  A post created as scheduled for a time that has already passed is published IMMEDIATELY, and the row returned carries that outcome — this is the one behaviour a reader would otherwise miss. A future-scheduled post is left for the scheduler, and a draft is left alone. Publishing never fails the creation: the post is stored either way, and a publish that could not run leaves the row for the scheduler to retry.  `content` is required and bounded at 8192 characters; `channel` is one of the seven supported networks, defaulting to x; `status` is one of draft, scheduled, published or failed, defaulting to draft; up to 10 media URLs are kept, each bounded at 1024 characters.  A validated principal is required; 403 without one. Every row is keyed by the caller's org taken from that principal and never from the request, so an id belonging to another tenant reads as not found rather than as a refusal.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postSocialPostsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/social/posts';

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

  /// Create a post, and publish it if it is already due
  ///
  /// Stores a post for the org and answers 201 with the stored row.  A post created as scheduled for a time that has already passed is published IMMEDIATELY, and the row returned carries that outcome — this is the one behaviour a reader would otherwise miss. A future-scheduled post is left for the scheduler, and a draft is left alone. Publishing never fails the creation: the post is stored either way, and a publish that could not run leaves the row for the scheduler to retry.  `content` is required and bounded at 8192 characters; `channel` is one of the seven supported networks, defaulting to x; `status` is one of draft, scheduled, published or failed, defaulting to draft; up to 10 media URLs are kept, each bounded at 1024 characters.  A validated principal is required; 403 without one. Every row is keyed by the caller's org taken from that principal and never from the request, so an id belonging to another tenant reads as not found rather than as a refusal.
  Future<void> postSocialPosts() async {
    final response = await postSocialPostsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Publish one post now
  ///
  /// Publishes the post immediately to the connected accounts on its channel and answers with the updated row, carrying the account and external id it published under.  It is IDEMPOTENT: a post that has already published, or that another caller is publishing right now, comes back unchanged rather than being posted twice. That claim is taken before any network call, which is what makes a double submit safe.  The two failure shapes differ on purpose. Having no connected account for the channel is the caller's to fix, so it is recorded ON the post as failed with the reason and answers normally. A deployment that lacks the network's own credentials cannot publish for anyone, so that is a 503 naming exactly what is missing.  A validated principal is required; 403 without one. Every row is keyed by the caller's org taken from that principal and never from the request, so an id belonging to another tenant reads as not found rather than as a refusal.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
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

  /// Publish one post now
  ///
  /// Publishes the post immediately to the connected accounts on its channel and answers with the updated row, carrying the account and external id it published under.  It is IDEMPOTENT: a post that has already published, or that another caller is publishing right now, comes back unchanged rather than being posted twice. That claim is taken before any network call, which is what makes a double submit safe.  The two failure shapes differ on purpose. Having no connected account for the channel is the caller's to fix, so it is recorded ON the post as failed with the reason and answers normally. A deployment that lacks the network's own credentials cannot publish for anyone, so that is a 503 naming exactly what is missing.  A validated principal is required; 403 without one. Every row is keyed by the caller's org taken from that principal and never from the request, so an id belonging to another tenant reads as not found rather than as a refusal.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> postSocialPostsByIdPublish(String id,) async {
    final response = await postSocialPostsByIdPublishWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace one connected account
  ///
  /// Replaces the account's network, handle and status with what the body carries, and answers with the stored row.  This is a REPLACEMENT, not a merge, which is the rule most easily got wrong: a field the body omits is written as its default, so leaving out the handle blanks it and leaving out the status resets it to connected. Send the whole record. The same vocabularies as create apply, and an unknown network or status is refused rather than coerced.  A validated principal is required; 403 without one. Every row is keyed by the caller's org taken from that principal and never from the request, so an id belonging to another tenant reads as not found rather than as a refusal.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> putSocialAccountsByIdWithHttpInfo(String id,) async {
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
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Replace one connected account
  ///
  /// Replaces the account's network, handle and status with what the body carries, and answers with the stored row.  This is a REPLACEMENT, not a merge, which is the rule most easily got wrong: a field the body omits is written as its default, so leaving out the handle blanks it and leaving out the status resets it to connected. Send the whole record. The same vocabularies as create apply, and an unknown network or status is refused rather than coerced.  A validated principal is required; 403 without one. Every row is keyed by the caller's org taken from that principal and never from the request, so an id belonging to another tenant reads as not found rather than as a refusal.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> putSocialAccountsById(String id,) async {
    final response = await putSocialAccountsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace one post
  ///
  /// Replaces the post's content, channel, status, scheduled time and media with what the body carries, and answers with the stored row.  A REPLACEMENT, not a merge: an omitted field is written as its default, so omitting media clears it and omitting the status resets the post to draft. `content` is required on every update. Unlike create, this never triggers a publish — moving a post's scheduled time into the past here leaves it for the scheduler; publish now is its own operation.  A validated principal is required; 403 without one. Every row is keyed by the caller's org taken from that principal and never from the request, so an id belonging to another tenant reads as not found rather than as a refusal.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> putSocialPostsByIdWithHttpInfo(String id,) async {
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
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Replace one post
  ///
  /// Replaces the post's content, channel, status, scheduled time and media with what the body carries, and answers with the stored row.  A REPLACEMENT, not a merge: an omitted field is written as its default, so omitting media clears it and omitting the status resets the post to draft. `content` is required on every update. Unlike create, this never triggers a publish — moving a post's scheduled time into the past here leaves it for the scheduler; publish now is its own operation.  A validated principal is required; 403 without one. Every row is keyed by the caller's org taken from that principal and never from the request, so an id belonging to another tenant reads as not found rather than as a refusal.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> putSocialPostsById(String id,) async {
    final response = await putSocialPostsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
