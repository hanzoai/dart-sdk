//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class AgentApi {
  AgentApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List the agent threads in your org
  ///
  /// Returns a summary of every agent conversation in the caller's org — id, derived title, and when it was last appended to — for populating a thread list.  Scoped to the caller's org and nothing else, and that isolation is structural rather than a filter: conversations are persisted in a store opened PER ORG, so there is no query in which another tenant's threads could appear. A validated principal with a non-empty org is required; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAgentConversationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agent/conversations';

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

  /// List the agent threads in your org
  ///
  /// Returns a summary of every agent conversation in the caller's org — id, derived title, and when it was last appended to — for populating a thread list.  Scoped to the caller's org and nothing else, and that isolation is structural rather than a filter: conversations are persisted in a store opened PER ORG, so there is no query in which another tenant's threads could appear. A validated principal with a non-empty org is required; 403 without one.
  Future<void> getAgentConversations() async {
    final response = await getAgentConversationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Read one agent thread in full
  ///
  /// Returns every message of one conversation in order — role, content, the assistant's tool calls where it made any, and each message's creation time — which is the transcript a client replays to resume a thread.  The lookup happens inside the caller's OWN per-org store, so an id belonging to another tenant is not refused, it is simply absent: the answer is 200 with an empty message list. Read it as \"no such conversation for you\" rather than as an empty thread. A validated principal with a non-empty org is required; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getAgentConversationsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agent/conversations/{id}'
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

  /// Read one agent thread in full
  ///
  /// Returns every message of one conversation in order — role, content, the assistant's tool calls where it made any, and each message's creation time — which is the transcript a client replays to resume a thread.  The lookup happens inside the caller's OWN per-org store, so an id belonging to another tenant is not refused, it is simply absent: the answer is 200 with an empty message list. Read it as \"no such conversation for you\" rather than as an empty thread. A validated principal with a non-empty org is required; 403 without one.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> getAgentConversationsById(String id,) async {
    final response = await getAgentConversationsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List the agent presets available to a caller
  ///
  /// Returns the preset catalog: each entry's id, its description and whether it is server-executing — the flag that decides if a preset's tool calls run here or come back for the client to apply. The ids are what POST /v1/agent accepts in `preset`.  The catalog is compiled into the build, identical for every caller, and this is the one read in the group that needs no principal.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAgentPresetsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agent/presets';

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

  /// List the agent presets available to a caller
  ///
  /// Returns the preset catalog: each entry's id, its description and whether it is server-executing — the flag that decides if a preset's tool calls run here or come back for the client to apply. The ids are what POST /v1/agent accepts in `preset`.  The catalog is compiled into the build, identical for every caller, and this is the one read in the group that needs no principal.
  Future<void> getAgentPresets() async {
    final response = await getAgentPresetsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Run one tool-calling round against your org's own tools
  ///
  /// Answers one turn of a conversation with four things: the model's `reply`, the `actions` the server executed on the caller's behalf, the `ops` the client must apply itself, and the `conversationId` the turn was recorded under.  The split between actions and ops is the rule most easily got wrong. A tool call is executed HERE only when the chosen preset is server-executing AND the tool resolves in the caller's own scope; every other call is handed back as an op for the client to apply to its own graph or UI. A tool that fails still comes back as an action, carrying its error rather than failing the round.  `preset` selects the system prompt and the tool set (`capability` is a legacy alias for it); an unknown one is refused. `conversationId` continues an existing thread, and its absence starts one. A validated principal with a non-empty org is required — the org is the sole authority for both persistence and tool scope, and is NEVER read from the body.  A completion refused for the caller's own reason — 402 insufficient balance, 429, 403 — is relayed with its own status and body verbatim, so the real billing message reaches the client instead of an opaque gateway error. Only a genuine upstream fault becomes a 502.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAgentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agent';

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

  /// Run one tool-calling round against your org's own tools
  ///
  /// Answers one turn of a conversation with four things: the model's `reply`, the `actions` the server executed on the caller's behalf, the `ops` the client must apply itself, and the `conversationId` the turn was recorded under.  The split between actions and ops is the rule most easily got wrong. A tool call is executed HERE only when the chosen preset is server-executing AND the tool resolves in the caller's own scope; every other call is handed back as an op for the client to apply to its own graph or UI. A tool that fails still comes back as an action, carrying its error rather than failing the round.  `preset` selects the system prompt and the tool set (`capability` is a legacy alias for it); an unknown one is refused. `conversationId` continues an existing thread, and its absence starts one. A validated principal with a non-empty org is required — the org is the sole authority for both persistence and tool scope, and is NEVER read from the body.  A completion refused for the caller's own reason — 402 insufficient balance, 429, 403 — is relayed with its own status and body verbatim, so the real billing message reaches the client instead of an opaque gateway error. Only a genuine upstream fault becomes a 502.
  Future<void> postAgent() async {
    final response = await postAgentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
