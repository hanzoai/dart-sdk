//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class ChannelsApi {
  ChannelsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Reports every chat channel this org can send through, and whether it can send through it right now.
  ///
  /// Reports every chat channel this org can send through, and whether it can send through it right now.  A channel appears here whether or not it is connected — an empty list would leave a caller unable to tell \"this org has no Slack\" from \"Slack is down\", which are different problems with different fixes. Each entry carries the connection behind it, so the answer to \"why can I not post?\" is in the same response as the channel that cannot post.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getChannelsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/channels';

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

  /// Reports every chat channel this org can send through, and whether it can send through it right now.
  ///
  /// Reports every chat channel this org can send through, and whether it can send through it right now.  A channel appears here whether or not it is connected — an empty list would leave a caller unable to tell \"this org has no Slack\" from \"Slack is down\", which are different problems with different fixes. Each entry carries the connection behind it, so the answer to \"why can I not post?\" is in the same response as the channel that cannot post.
  Future<ChatChannels?> getChannels() async {
    final response = await getChannelsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ChatChannels',) as ChatChannels;
    
    }
    return null;
  }

  /// Returns which agent answers the caller org's channel: the default and every room bound to another agent.
  ///
  /// Returns which agent answers the caller org's channel: the default and every room bound to another agent.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channel:
  ///   Channel is the transport: discord, github, linear, slack, teams, telegram or whatsapp. Required; an unknown value is a 404.
  Future<Response> getChannelsAgentWithHttpInfo({ String? channel, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/channels/agent';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (channel != null) {
      queryParams.addAll(_queryParams('', 'channel', channel));
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

  /// Returns which agent answers the caller org's channel: the default and every room bound to another agent.
  ///
  /// Returns which agent answers the caller org's channel: the default and every room bound to another agent.
  ///
  /// Parameters:
  ///
  /// * [String] channel:
  ///   Channel is the transport: discord, github, linear, slack, teams, telegram or whatsapp. Required; an unknown value is a 404.
  Future<ChannelAgents?> getChannelsAgent({ String? channel, }) async {
    final response = await getChannelsAgentWithHttpInfo( channel: channel, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ChannelAgents',) as ChannelAgents;
    
    }
    return null;
  }

  /// Returns the caller org's access policy for one channel: whether DMs are pairing-gated, allowlisted or open, whether group rooms are open, allowlisted or disabled, the config-managed DM and group allow entries, the senders approved through PAIRING (read-only here), and the org's named access groups.
  ///
  /// Returns the caller org's access policy for one channel: whether DMs are pairing-gated, allowlisted or open, whether group rooms are open, allowlisted or disabled, the config-managed DM and group allow entries, the senders approved through PAIRING (read-only here), and the org's named access groups. An unknown channel is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channel:
  ///   Channel is the transport to read: discord, github, linear, slack, teams, telegram or whatsapp. Required; an unknown value is a 404.
  Future<Response> getChannelsAllowlistWithHttpInfo({ String? channel, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/channels/allowlist';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (channel != null) {
      queryParams.addAll(_queryParams('', 'channel', channel));
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

  /// Returns the caller org's access policy for one channel: whether DMs are pairing-gated, allowlisted or open, whether group rooms are open, allowlisted or disabled, the config-managed DM and group allow entries, the senders approved through PAIRING (read-only here), and the org's named access groups.
  ///
  /// Returns the caller org's access policy for one channel: whether DMs are pairing-gated, allowlisted or open, whether group rooms are open, allowlisted or disabled, the config-managed DM and group allow entries, the senders approved through PAIRING (read-only here), and the org's named access groups. An unknown channel is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] channel:
  ///   Channel is the transport to read: discord, github, linear, slack, teams, telegram or whatsapp. Required; an unknown value is a 404.
  Future<AllowlistView?> getChannelsAllowlist({ String? channel, }) async {
    final response = await getChannelsAllowlistWithHttpInfo( channel: channel, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AllowlistView',) as AllowlistView;
    
    }
    return null;
  }

  /// Returns the messages people have sent to the caller org's connected chat bots, oldest first, in the portable envelope shape every transport normalises into.
  ///
  /// Returns the messages people have sent to the caller org's connected chat bots, oldest first, in the portable envelope shape every transport normalises into. It is a CURSOR feed, not a search: pass the returned cursor back as `since` to get only what has arrived since. Only this org's messages are stored under this org, so the feed can never carry another tenant's chat.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] since:
  ///   Since is the exclusive cursor: only messages with a higher row id come back. Empty starts at the beginning. Must parse as an integer.
  ///
  /// * [String] limit:
  ///   Limit caps how many messages come back. Empty or 0 uses the store's default page size. Must parse as an integer.
  Future<Response> getChannelsInboxWithHttpInfo({ String? since, String? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/channels/inbox';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
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

  /// Returns the messages people have sent to the caller org's connected chat bots, oldest first, in the portable envelope shape every transport normalises into.
  ///
  /// Returns the messages people have sent to the caller org's connected chat bots, oldest first, in the portable envelope shape every transport normalises into. It is a CURSOR feed, not a search: pass the returned cursor back as `since` to get only what has arrived since. Only this org's messages are stored under this org, so the feed can never carry another tenant's chat.
  ///
  /// Parameters:
  ///
  /// * [String] since:
  ///   Since is the exclusive cursor: only messages with a higher row id come back. Empty starts at the beginning. Must parse as an integer.
  ///
  /// * [String] limit:
  ///   Limit caps how many messages come back. Empty or 0 uses the store's default page size. Must parse as an integer.
  Future<InboxPage?> getChannelsInbox({ String? since, String? limit, }) async {
    final response = await getChannelsInboxWithHttpInfo( since: since, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxPage',) as InboxPage;
    
    }
    return null;
  }

  /// Returns the pairing requests waiting for the caller org to approve — one per person who messaged a connected bot on a channel whose DM policy is \"pairing\" and who is not allowed yet.
  ///
  /// Returns the pairing requests waiting for the caller org to approve — one per person who messaged a connected bot on a channel whose DM policy is \"pairing\" and who is not allowed yet. Each row carries the CODE an org admin passes to POST /v1/channels/pairing/approve. Expired requests are not returned. Codes are capability strings: they are shown here, and never logged.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getChannelsPairingWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/channels/pairing';

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

  /// Returns the pairing requests waiting for the caller org to approve — one per person who messaged a connected bot on a channel whose DM policy is \"pairing\" and who is not allowed yet.
  ///
  /// Returns the pairing requests waiting for the caller org to approve — one per person who messaged a connected bot on a channel whose DM policy is \"pairing\" and who is not allowed yet. Each row carries the CODE an org admin passes to POST /v1/channels/pairing/approve. Expired requests are not returned. Codes are capability strings: they are shown here, and never logged.
  Future<PairingQueue?> getChannelsPairing() async {
    final response = await getChannelsPairingWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PairingQueue',) as PairingQueue;
    
    }
    return null;
  }

  /// Send a message from your org's bot to one chat room
  ///
  /// Delivers text, attachments and actions to one room on a connected chat transport — discord, github, linear, slack, teams, telegram or whatsapp — and answers that transport's own receipt, the `messageId` it assigned and the Unix second it landed. An unknown channel is a 404.  The body is the envelope's NARROW outbound projection: `room`, `text`, `attachments`, `actions`, `replyTo` and `idempotency`, and nothing else. Identity is not a field — the channel is the path segment and the sender is the caller's validated org — so a body carrying `sender`, `account` or `channel` is refused with 400 rather than having it silently dropped. `room.id` is required, and so is something to say: text, or at least one attachment.  Requires a validated principal; 403 without one. The room must already belong to the caller's org — each transport verifies the binding itself, so a room this org has not bound is 403 and a room whose route the bot has never learned is 409, meaning someone has to message the bot there first. A route learned only so a pairing reply could be delivered lasts exactly as long as that pairing request does, so a room whose sender was never approved goes back to 409 within the hour. A transport that fails answers 502 carrying status and shape only, never a token.  Sending is at-most-once only if you ask for it: pass an `idempotency` string and a replay answers 200 with the PRIOR receipt instead of sending twice, while a send that fails releases the key so the caller can re-attempt. Bodies over 1 MiB are refused. Every transport currently renders text only, so attachments and actions are flattened deterministically to one line each after the text rather than dropped.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channel (required):
  Future<Response> postChannelsByChannelSendWithHttpInfo(String channel,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/channels/{channel}/send'
      .replaceAll('{channel}', channel);

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

  /// Send a message from your org's bot to one chat room
  ///
  /// Delivers text, attachments and actions to one room on a connected chat transport — discord, github, linear, slack, teams, telegram or whatsapp — and answers that transport's own receipt, the `messageId` it assigned and the Unix second it landed. An unknown channel is a 404.  The body is the envelope's NARROW outbound projection: `room`, `text`, `attachments`, `actions`, `replyTo` and `idempotency`, and nothing else. Identity is not a field — the channel is the path segment and the sender is the caller's validated org — so a body carrying `sender`, `account` or `channel` is refused with 400 rather than having it silently dropped. `room.id` is required, and so is something to say: text, or at least one attachment.  Requires a validated principal; 403 without one. The room must already belong to the caller's org — each transport verifies the binding itself, so a room this org has not bound is 403 and a room whose route the bot has never learned is 409, meaning someone has to message the bot there first. A route learned only so a pairing reply could be delivered lasts exactly as long as that pairing request does, so a room whose sender was never approved goes back to 409 within the hour. A transport that fails answers 502 carrying status and shape only, never a token.  Sending is at-most-once only if you ask for it: pass an `idempotency` string and a replay answers 200 with the PRIOR receipt instead of sending twice, while a send that fails releases the key so the caller can re-attempt. Bodies over 1 MiB are refused. Every transport currently renders text only, so attachments and actions are flattened deterministically to one line each after the text rather than dropped.
  ///
  /// Parameters:
  ///
  /// * [String] channel (required):
  Future<void> postChannelsByChannelSend(String channel,) async {
    final response = await postChannelsByChannelSendWithHttpInfo(channel,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Turns one pending pairing code into a standing allow entry, so that person can DM the org's bot on that channel from now on.
  ///
  /// Turns one pending pairing code into a standing allow entry, so that person can DM the org's bot on that channel from now on. It requires ORG ADMIN, not merely membership. The first approval an org makes on a channel also bootstraps that sender as the channel's owner, which the answer reports. An unknown or expired code is a 404, and a code always belongs to exactly one org, so it can never approve someone into another tenant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ApprovePairingIn] approvePairingIn (required):
  Future<Response> postChannelsPairingApproveWithHttpInfo(ApprovePairingIn approvePairingIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/channels/pairing/approve';

    // ignore: prefer_final_locals
    Object? postBody = approvePairingIn;

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

  /// Turns one pending pairing code into a standing allow entry, so that person can DM the org's bot on that channel from now on.
  ///
  /// Turns one pending pairing code into a standing allow entry, so that person can DM the org's bot on that channel from now on. It requires ORG ADMIN, not merely membership. The first approval an org makes on a channel also bootstraps that sender as the channel's owner, which the answer reports. An unknown or expired code is a 404, and a code always belongs to exactly one org, so it can never approve someone into another tenant.
  ///
  /// Parameters:
  ///
  /// * [ApprovePairingIn] approvePairingIn (required):
  Future<PairingApproved?> postChannelsPairingApprove(ApprovePairingIn approvePairingIn,) async {
    final response = await postChannelsPairingApproveWithHttpInfo(approvePairingIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PairingApproved',) as PairingApproved;
    
    }
    return null;
  }

  /// Binds agents to the caller org's channel and answers the bindings as GET would.
  ///
  /// Binds agents to the caller org's channel and answers the bindings as GET would. It requires ORG ADMIN. The agent is named by its ref — the name an org gave it at POST /v1/agents, or a built-in such as dev, des or vi.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ChannelAgentsPut] channelAgentsPut (required):
  Future<Response> putChannelsAgentWithHttpInfo(ChannelAgentsPut channelAgentsPut,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/channels/agent';

    // ignore: prefer_final_locals
    Object? postBody = channelAgentsPut;

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

  /// Binds agents to the caller org's channel and answers the bindings as GET would.
  ///
  /// Binds agents to the caller org's channel and answers the bindings as GET would. It requires ORG ADMIN. The agent is named by its ref — the name an org gave it at POST /v1/agents, or a built-in such as dev, des or vi.
  ///
  /// Parameters:
  ///
  /// * [ChannelAgentsPut] channelAgentsPut (required):
  Future<ChannelAgents?> putChannelsAgent(ChannelAgentsPut channelAgentsPut,) async {
    final response = await putChannelsAgentWithHttpInfo(channelAgentsPut,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ChannelAgents',) as ChannelAgents;
    
    }
    return null;
  }

  /// Edits the caller org's access policy for one channel and answers the policy as GET would, so both verbs return ONE shape.
  ///
  /// Edits the caller org's access policy for one channel and answers the policy as GET would, so both verbs return ONE shape. It requires ORG ADMIN. Every field but `channel` is optional and applied only when provided: an empty policy string leaves that policy alone, an absent or null list leaves that list alone, and an EMPTY list clears it. It writes only CONFIG-sourced allow entries — senders approved through pairing belong to the approval flow, so a policy edit can never revoke one. An unknown channel is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AllowlistPutIn] allowlistPutIn (required):
  Future<Response> putChannelsAllowlistWithHttpInfo(AllowlistPutIn allowlistPutIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/channels/allowlist';

    // ignore: prefer_final_locals
    Object? postBody = allowlistPutIn;

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

  /// Edits the caller org's access policy for one channel and answers the policy as GET would, so both verbs return ONE shape.
  ///
  /// Edits the caller org's access policy for one channel and answers the policy as GET would, so both verbs return ONE shape. It requires ORG ADMIN. Every field but `channel` is optional and applied only when provided: an empty policy string leaves that policy alone, an absent or null list leaves that list alone, and an EMPTY list clears it. It writes only CONFIG-sourced allow entries — senders approved through pairing belong to the approval flow, so a policy edit can never revoke one. An unknown channel is a 404.
  ///
  /// Parameters:
  ///
  /// * [AllowlistPutIn] allowlistPutIn (required):
  Future<AllowlistView?> putChannelsAllowlist(AllowlistPutIn allowlistPutIn,) async {
    final response = await putChannelsAllowlistWithHttpInfo(allowlistPutIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AllowlistView',) as AllowlistView;
    
    }
    return null;
  }
}
