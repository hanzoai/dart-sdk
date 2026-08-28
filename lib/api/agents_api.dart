//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class AgentsApi {
  AgentsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Removes an agent and every run recorded against it.
  ///
  /// Removes an agent and every run recorded against it. Answers 204.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ref (required):
  ///   Ref is the agent's public id (the agent_… handle create and list return) or its org-unique name, from the path. Either resolves the same agent.
  Future<Response> deleteAgentsByRefWithHttpInfo(String ref,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/{ref}'
      .replaceAll('{ref}', ref);

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

  /// Removes an agent and every run recorded against it.
  ///
  /// Removes an agent and every run recorded against it. Answers 204.
  ///
  /// Parameters:
  ///
  /// * [String] ref (required):
  ///   Ref is the agent's public id (the agent_… handle create and list return) or its org-unique name, from the path. Either resolves the same agent.
  Future<void> deleteAgentsByRef(String ref,) async {
    final response = await deleteAgentsByRefWithHttpInfo(ref,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deregisters one machine.
  ///
  /// Deregisters one machine. Only its owner, or an org admin, may remove it; an unknown id, a cross-org id and a machine owned by someone else all answer the same not-found, so a probe learns nothing about what exists.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the target to act on, from the path.
  Future<Response> deleteAgentsTargetsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/targets/{id}'
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

  /// Deregisters one machine.
  ///
  /// Deregisters one machine. Only its owner, or an org admin, may remove it; an unknown id, a cross-org id and a machine owned by someone else all answer the same not-found, so a probe learns nothing about what exists.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the target to act on, from the path.
  Future<TargetDeleted?> deleteAgentsTargetsById(String id,) async {
    final response = await deleteAgentsTargetsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TargetDeleted',) as TargetDeleted;
    
    }
    return null;
  }

  /// Returns every agent defined in the caller's org, each with the number of runs recorded against it.
  ///
  /// Returns every agent defined in the caller's org, each with the number of runs recorded against it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAgentsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents';

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

  /// Returns every agent defined in the caller's org, each with the number of runs recorded against it.
  ///
  /// Returns every agent defined in the caller's org, each with the number of runs recorded against it.
  Future<AgentList?> getAgents() async {
    final response = await getAgentsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentList',) as AgentList;
    
    }
    return null;
  }

  /// Serves the org-wide recent-activity feed.
  ///
  /// Serves the org-wide recent-activity feed. Events are REAL: each recorded run is an invoked (ok) or failed (error) event; each agent's own create/update timestamps are created/updated events. Merged, newest first, capped. Nothing is invented — an org with no agents and no runs gets [].
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAgentsActivityWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/activity';

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

  /// Serves the org-wide recent-activity feed.
  ///
  /// Serves the org-wide recent-activity feed. Events are REAL: each recorded run is an invoked (ok) or failed (error) event; each agent's own create/update timestamps are created/updated events. Merged, newest first, capped. Nothing is invented — an org with no agents and no runs gets [].
  Future<ActivityFeed?> getAgentsActivity() async {
    final response = await getAgentsActivityWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ActivityFeed',) as ActivityFeed;
    
    }
    return null;
  }

  /// Returns the public index of every published build, most recently updated first, so a gallery can link straight to the story behind each product.
  ///
  /// Returns the public index of every published build, most recently updated first, so a gallery can link straight to the story behind each product. PUBLIC, no tenancy: publishing is the author's act, and only published root sessions appear here.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the page. Absent, zero or over 500 reads as 100.
  Future<Response> getAgentsBuildsWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/builds';

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

  /// Returns the public index of every published build, most recently updated first, so a gallery can link straight to the story behind each product.
  ///
  /// Returns the public index of every published build, most recently updated first, so a gallery can link straight to the story behind each product. PUBLIC, no tenancy: publishing is the author's act, and only published root sessions appear here.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the page. Absent, zero or over 500 reads as 100.
  Future<BuildList?> getAgentsBuilds({ int? limit, }) async {
    final response = await getAgentsBuildsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BuildList',) as BuildList;
    
    }
    return null;
  }

  /// Returns the readable build of one product: the agent session that produced it, turn by turn — the prompts, the reasoning, the commits each turn produced — plus the exact `git log` that re-derives every commit binding from git itself, so nothing here has to be taken on trust.
  ///
  /// Returns the readable build of one product: the agent session that produced it, turn by turn — the prompts, the reasoning, the commits each turn produced — plus the exact `git log` that re-derives every commit binding from git itself, so nothing here has to be taken on trust.  PUBLIC, no tenancy: it answers only for a session its author explicitly published, which is what makes it safe to be anonymous. An unpublished session is invisible here no matter who asks; its owner reads it through the org-scoped /v1/agents/sessions routes, which need a validated principal.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///   Org is the org that published the build, from the path.
  ///
  /// * [String] project (required):
  ///   Project is the product's slug, from the path.
  Future<Response> getAgentsBuildsByOrgByProjectWithHttpInfo(String org, String project,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/builds/{org}/{project}'
      .replaceAll('{org}', org)
      .replaceAll('{project}', project);

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

  /// Returns the readable build of one product: the agent session that produced it, turn by turn — the prompts, the reasoning, the commits each turn produced — plus the exact `git log` that re-derives every commit binding from git itself, so nothing here has to be taken on trust.
  ///
  /// Returns the readable build of one product: the agent session that produced it, turn by turn — the prompts, the reasoning, the commits each turn produced — plus the exact `git log` that re-derives every commit binding from git itself, so nothing here has to be taken on trust.  PUBLIC, no tenancy: it answers only for a session its author explicitly published, which is what makes it safe to be anonymous. An unpublished session is invisible here no matter who asks; its owner reads it through the org-scoped /v1/agents/sessions routes, which need a validated principal.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///   Org is the org that published the build, from the path.
  ///
  /// * [String] project (required):
  ///   Project is the product's slug, from the path.
  Future<BuildView?> getAgentsBuildsByOrgByProject(String org, String project,) async {
    final response = await getAgentsBuildsByOrgByProjectWithHttpInfo(org, project,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BuildView',) as BuildView;
    
    }
    return null;
  }

  /// Returns one agent with its system prompt and its 20 most recent runs.
  ///
  /// Returns one agent with its system prompt and its 20 most recent runs. The ref is the agent's public id or its org-unique name — a created agent is immediately gettable by whatever create handed back.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ref (required):
  ///   Ref is the agent's public id (the agent_… handle create and list return) or its org-unique name, from the path. Either resolves the same agent.
  Future<Response> getAgentsByRefWithHttpInfo(String ref,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/{ref}'
      .replaceAll('{ref}', ref);

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

  /// Returns one agent with its system prompt and its 20 most recent runs.
  ///
  /// Returns one agent with its system prompt and its 20 most recent runs. The ref is the agent's public id or its org-unique name — a created agent is immediately gettable by whatever create handed back.
  ///
  /// Parameters:
  ///
  /// * [String] ref (required):
  ///   Ref is the agent's public id (the agent_… handle create and list return) or its org-unique name, from the path. Either resolves the same agent.
  Future<AgentDetail?> getAgentsByRef(String ref,) async {
    final response = await getAgentsByRefWithHttpInfo(ref,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentDetail',) as AgentDetail;
    
    }
    return null;
  }

  /// Returns one agent's execution history, newest first — each run's input, its output or its error, and how long it took.
  ///
  /// Returns one agent's execution history, newest first — each run's input, its output or its error, and how long it took. Every row is a run that actually happened.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ref (required):
  ///   Ref is the agent's public id or its org-unique name, from the path.
  ///
  /// * [int] limit:
  ///   Limit caps how many runs come back, newest first. Absent, zero or out of range (1..200) reads as 50.
  Future<Response> getAgentsByRefRunsWithHttpInfo(String ref, { int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/{ref}/runs'
      .replaceAll('{ref}', ref);

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

  /// Returns one agent's execution history, newest first — each run's input, its output or its error, and how long it took.
  ///
  /// Returns one agent's execution history, newest first — each run's input, its output or its error, and how long it took. Every row is a run that actually happened.
  ///
  /// Parameters:
  ///
  /// * [String] ref (required):
  ///   Ref is the agent's public id or its org-unique name, from the path.
  ///
  /// * [int] limit:
  ///   Limit caps how many runs come back, newest first. Absent, zero or out of range (1..200) reads as 50.
  Future<RunList?> getAgentsByRefRuns(String ref, { int? limit, }) async {
    final response = await getAgentsByRefRunsWithHttpInfo(ref,  limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RunList',) as RunList;
    
    }
    return null;
  }

  /// List the agent threads in your org
  ///
  /// Returns a summary of every agent conversation in the caller's org — id, derived title, and when it was last appended to — for populating a thread list.  Scoped to the caller's org and nothing else, and that isolation is structural rather than a filter: conversations are persisted in a store opened PER ORG, so there is no query in which another tenant's threads could appear. A validated principal with a non-empty org is required; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAgentsChatConversationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/chat/conversations';

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
  Future<void> getAgentsChatConversations() async {
    final response = await getAgentsChatConversationsWithHttpInfo();
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
  Future<Response> getAgentsChatConversationsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/chat/conversations/{id}'
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
  Future<void> getAgentsChatConversationsById(String id,) async {
    final response = await getAgentsChatConversationsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List the agent presets available to a caller
  ///
  /// Returns the preset catalog: each entry's id, its description and whether it is server-executing — the flag that decides if a preset's tool calls run here or come back for the client to apply. The ids are what the round accepts in `preset`.  The catalog is compiled into the build, identical for every caller, and this is the one read in the group that needs no principal.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAgentsChatPresetsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/chat/presets';

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
  /// Returns the preset catalog: each entry's id, its description and whether it is server-executing — the flag that decides if a preset's tool calls run here or come back for the client to apply. The ids are what the round accepts in `preset`.  The catalog is compiled into the build, identical for every caller, and this is the one read in the group that needs no principal.
  Future<void> getAgentsChatPresets() async {
    final response = await getAgentsChatPresetsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Serves the invocations-over-time histogram for the org's Agents dashboard.
  ///
  /// Serves the invocations-over-time histogram for the org's Agents dashboard. Every point is a REAL count of recorded runs in that time bucket — one series line per agent that ran in the window. The Resource Usage rollup is all-null because this store meters no CPU/memory/storage/cost; the console renders those as \"—\" rather than a fabricated figure. No runs => empty series (an honest \"not connected / no activity yet\"), never a synthesized trend.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range is the window to bucket: 24H, 7D or 30D. Anything else reads as 30D.
  Future<Response> getAgentsMetricsWithHttpInfo({ String? range, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/metrics';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (range != null) {
      queryParams.addAll(_queryParams('', 'range', range));
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

  /// Serves the invocations-over-time histogram for the org's Agents dashboard.
  ///
  /// Serves the invocations-over-time histogram for the org's Agents dashboard. Every point is a REAL count of recorded runs in that time bucket — one series line per agent that ran in the window. The Resource Usage rollup is all-null because this store meters no CPU/memory/storage/cost; the console renders those as \"—\" rather than a fabricated figure. No runs => empty series (an honest \"not connected / no activity yet\"), never a synthesized trend.
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range is the window to bucket: 24H, 7D or 30D. Anything else reads as 30D.
  Future<MetricsView?> getAgentsMetrics({ String? range, }) async {
    final response = await getAgentsMetricsWithHttpInfo( range: range, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MetricsView',) as MetricsView;
    
    }
    return null;
  }

  /// Returns the org's agent runs across EVERY agent, newest first — what ran here, for whom, on which model, how long it took, and why it failed.
  ///
  /// Returns the org's agent runs across EVERY agent, newest first — what ran here, for whom, on which model, how long it took, and why it failed.  It is the feed the per-agent history could not be: an operator asking \"what is this tenant's agent plane doing\" does not start out knowing an agent ref, and answering by listing the agents and then paging each one's history is N+1 round trips to reconstruct one ordering the database already has (RunsSince, ordered by created_at over the org index).  The org is the CALLER's, resolved from identity by tenantStore — never a parameter. There is deliberately no org field on orgRunsQuery to forge: run history is the tenant's own record, and the only tenant this can answer for is the one asking.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps how many runs come back, newest first. Absent, zero or out of range (1..200) reads as 50.
  ///
  /// * [String] status:
  ///   Status keeps only runs with this outcome (\"ok\" or \"error\"). Empty keeps both. It is the filter an operator reaches for first — \"show me what broke\" — and answering it here rather than by paging the whole history client-side is the difference between a usable feed and a download.
  Future<Response> getAgentsRunsWithHttpInfo({ int? limit, String? status, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/runs';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
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

  /// Returns the org's agent runs across EVERY agent, newest first — what ran here, for whom, on which model, how long it took, and why it failed.
  ///
  /// Returns the org's agent runs across EVERY agent, newest first — what ran here, for whom, on which model, how long it took, and why it failed.  It is the feed the per-agent history could not be: an operator asking \"what is this tenant's agent plane doing\" does not start out knowing an agent ref, and answering by listing the agents and then paging each one's history is N+1 round trips to reconstruct one ordering the database already has (RunsSince, ordered by created_at over the org index).  The org is the CALLER's, resolved from identity by tenantStore — never a parameter. There is deliberately no org field on orgRunsQuery to forge: run history is the tenant's own record, and the only tenant this can answer for is the one asking.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps how many runs come back, newest first. Absent, zero or out of range (1..200) reads as 50.
  ///
  /// * [String] status:
  ///   Status keeps only runs with this outcome (\"ok\" or \"error\"). Empty keeps both. It is the filter an operator reaches for first — \"show me what broke\" — and answering it here rather than by paging the whole history client-side is the difference between a usable feed and a download.
  Future<RunList?> getAgentsRuns({ int? limit, String? status, }) async {
    final response = await getAgentsRunsWithHttpInfo( limit: limit, status: status, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RunList',) as RunList;
    
    }
    return null;
  }

  /// Returns the caller org's live sessions, newest first — each with its event count, its direct-child count and a one-line preview of its latest event.
  ///
  /// Returns the caller org's live sessions, newest first — each with its event count, its direct-child count and a one-line preview of its latest event. With no filter it returns ROOT sessions only, so a dashboard shows one row per flow rather than one per subagent; ?root= or ?parent= descends.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] root:
  ///   Root scopes the page to one subagent tree (its root session id).
  ///
  /// * [String] parent:
  ///   Parent scopes the page to the direct children of one session. Ignored when root is set; with neither, only ROOT sessions come back.
  ///
  /// * [String] status:
  ///   Status filters to running, paused, done or error.
  ///
  /// * [String] project:
  ///   Project filters to the sessions tagged with one product slug.
  ///
  /// * [String] room:
  ///   Room filters to the sessions started in one collaborative room — the query a workspace view runs to show what has been run in it.
  ///
  /// * [int] limit:
  ///   Limit caps the page. Absent, zero or over 500 reads as 100.
  Future<Response> getAgentsSessionsWithHttpInfo({ String? root, String? parent, String? status, String? project, String? room, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/sessions';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (root != null) {
      queryParams.addAll(_queryParams('', 'root', root));
    }
    if (parent != null) {
      queryParams.addAll(_queryParams('', 'parent', parent));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (project != null) {
      queryParams.addAll(_queryParams('', 'project', project));
    }
    if (room != null) {
      queryParams.addAll(_queryParams('', 'room', room));
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

  /// Returns the caller org's live sessions, newest first — each with its event count, its direct-child count and a one-line preview of its latest event.
  ///
  /// Returns the caller org's live sessions, newest first — each with its event count, its direct-child count and a one-line preview of its latest event. With no filter it returns ROOT sessions only, so a dashboard shows one row per flow rather than one per subagent; ?root= or ?parent= descends.
  ///
  /// Parameters:
  ///
  /// * [String] root:
  ///   Root scopes the page to one subagent tree (its root session id).
  ///
  /// * [String] parent:
  ///   Parent scopes the page to the direct children of one session. Ignored when root is set; with neither, only ROOT sessions come back.
  ///
  /// * [String] status:
  ///   Status filters to running, paused, done or error.
  ///
  /// * [String] project:
  ///   Project filters to the sessions tagged with one product slug.
  ///
  /// * [String] room:
  ///   Room filters to the sessions started in one collaborative room — the query a workspace view runs to show what has been run in it.
  ///
  /// * [int] limit:
  ///   Limit caps the page. Absent, zero or over 500 reads as 100.
  Future<SessionList?> getAgentsSessions({ String? root, String? parent, String? status, String? project, String? room, int? limit, }) async {
    final response = await getAgentsSessionsWithHttpInfo( root: root, parent: parent, status: status, project: project, room: room, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SessionList',) as SessionList;
    
    }
    return null;
  }

  /// Returns one session with its direct child sessions and its 50 most recent events, oldest of those first.
  ///
  /// Returns one session with its direct child sessions and its 50 most recent events, oldest of those first.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the session to act on, from the path.
  Future<Response> getAgentsSessionsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/sessions/{id}'
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

  /// Returns one session with its direct child sessions and its 50 most recent events, oldest of those first.
  ///
  /// Returns one session with its direct child sessions and its 50 most recent events, oldest of those first.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the session to act on, from the path.
  Future<SessionDetail?> getAgentsSessionsById(String id,) async {
    final response = await getAgentsSessionsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SessionDetail',) as SessionDetail;
    
    }
    return null;
  }

  /// Returns the steering commands (pause/resume/stop/message) recorded against the caller's own session that are newer than the cursor, oldest first, with the cursor to poll from next.
  ///
  /// Returns the steering commands (pause/resume/stop/message) recorded against the caller's own session that are newer than the cursor, oldest first, with the cursor to poll from next. It is how a locally started `hanzo code` session — which is not task-backed, so nothing forwards its commands to an execution engine — consumes what the dashboard posted. Read-only and bounded at 200 per poll, so a steady poll is cheap and an applied command is never redelivered.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the session whose commands are being drained, from the path.
  ///
  /// * [int] after:
  ///   After is the last seq this poller applied; only commands newer than it come back. Absent or negative reads as 0, which drains from the beginning.
  Future<Response> getAgentsSessionsByIdControlWithHttpInfo(String id, { int? after, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/sessions/{id}/control'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (after != null) {
      queryParams.addAll(_queryParams('', 'after', after));
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

  /// Returns the steering commands (pause/resume/stop/message) recorded against the caller's own session that are newer than the cursor, oldest first, with the cursor to poll from next.
  ///
  /// Returns the steering commands (pause/resume/stop/message) recorded against the caller's own session that are newer than the cursor, oldest first, with the cursor to poll from next. It is how a locally started `hanzo code` session — which is not task-backed, so nothing forwards its commands to an execution engine — consumes what the dashboard posted. Read-only and bounded at 200 per poll, so a steady poll is cheap and an applied command is never redelivered.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the session whose commands are being drained, from the path.
  ///
  /// * [int] after:
  ///   After is the last seq this poller applied; only commands newer than it come back. Absent or negative reads as 0, which drains from the beginning.
  Future<ControlDrain?> getAgentsSessionsByIdControl(String id, { int? after, }) async {
    final response = await getAgentsSessionsByIdControlWithHttpInfo(id,  after: after, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ControlDrain',) as ControlDrain;
    
    }
    return null;
  }

  /// Returns how far along one run is: the share of its goal that is done, whether it is running, blocked or finished, and a line saying what it is doing right now.
  ///
  /// Returns how far along one run is: the share of its goal that is done, whether it is running, blocked or finished, and a line saying what it is doing right now.  It is a MODEL ESTIMATE read off the run's own transcript, not a measurement — `estimated` says so on every answer, and a run whose progress cannot be told reports phase \"unknown\" with no percentage rather than a zero it does not mean. A session that has already finished answers from its own status instead, and is marked not estimated.  The list and detail reads carry the same value; this address is the one that WAITS. Where the stored estimate has gone stale it is remade before answering, so a human deciding whether to step into a run gets a current reading rather than the last poll's — which costs one small completion, charged to the same wallet the session already names, at most once every thirty seconds per run.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the session to act on, from the path.
  Future<Response> getAgentsSessionsByIdProgressWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/sessions/{id}/progress'
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

  /// Returns how far along one run is: the share of its goal that is done, whether it is running, blocked or finished, and a line saying what it is doing right now.
  ///
  /// Returns how far along one run is: the share of its goal that is done, whether it is running, blocked or finished, and a line saying what it is doing right now.  It is a MODEL ESTIMATE read off the run's own transcript, not a measurement — `estimated` says so on every answer, and a run whose progress cannot be told reports phase \"unknown\" with no percentage rather than a zero it does not mean. A session that has already finished answers from its own status instead, and is marked not estimated.  The list and detail reads carry the same value; this address is the one that WAITS. Where the stored estimate has gone stale it is remade before answering, so a human deciding whether to step into a run gets a current reading rather than the last poll's — which costs one small completion, charged to the same wallet the session already names, at most once every thirty seconds per run.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the session to act on, from the path.
  Future<SessionProgress?> getAgentsSessionsByIdProgress(String id,) async {
    final response = await getAgentsSessionsByIdProgressWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SessionProgress',) as SessionProgress;
    
    }
    return null;
  }

  /// Returns the subagent-flow graph rooted at this session: the session, its children, their children, each node carrying its own event count.
  ///
  /// Returns the subagent-flow graph rooted at this session: the session, its children, their children, each node carrying its own event count. One indexed read pulls the whole flow (every node of a flow shares a root id), so the shape is assembled in memory rather than by walking the store per node.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the session to act on, from the path.
  Future<Response> getAgentsSessionsByIdTreeWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/sessions/{id}/tree'
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

  /// Returns the subagent-flow graph rooted at this session: the session, its children, their children, each node carrying its own event count.
  ///
  /// Returns the subagent-flow graph rooted at this session: the session, its children, their children, each node carrying its own event count. One indexed read pulls the whole flow (every node of a flow shares a root id), so the shape is assembled in memory rather than by walking the store per node.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the session to act on, from the path.
  Future<TreeNode?> getAgentsSessionsByIdTree(String id,) async {
    final response = await getAgentsSessionsByIdTreeWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TreeNode',) as TreeNode;
    
    }
    return null;
  }

  /// Live session and event updates for the caller's org, as Server-Sent Events.
  ///
  /// Holds the connection open as text/event-stream and pushes a frame each time the org's registry moves: an `event: session` frame carrying the same session shape the list and detail reads answer with (a registration, an update, or a login-manager revoke tearing a session down), and an `event: event` frame carrying one appended turn. Optional ?root=<session id> narrows the feed to a single subagent tree.  Requires a validated principal carrying an org; 403 without one. Org-scoped fail-closed: the bus filters on tenant before it fans out, so a subscriber only ever receives its own org's updates, and ?root= narrows that further but can never widen it.  Delivery is best-effort and the GET reads remain the source of truth. A subscriber that falls more than 256 frames behind is DROPPED — its channel is closed and the stream ends — so one stuck dashboard can never back-pressure a session write; the client reconnects and re-reads the session endpoints to resynchronise. A `: ping` comment every 25 seconds holds the connection open through proxies and is how a departed client is noticed.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAgentsSessionsStreamWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/sessions/stream';

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

  /// Live session and event updates for the caller's org, as Server-Sent Events.
  ///
  /// Holds the connection open as text/event-stream and pushes a frame each time the org's registry moves: an `event: session` frame carrying the same session shape the list and detail reads answer with (a registration, an update, or a login-manager revoke tearing a session down), and an `event: event` frame carrying one appended turn. Optional ?root=<session id> narrows the feed to a single subagent tree.  Requires a validated principal carrying an org; 403 without one. Org-scoped fail-closed: the bus filters on tenant before it fans out, so a subscriber only ever receives its own org's updates, and ?root= narrows that further but can never widen it.  Delivery is best-effort and the GET reads remain the source of truth. A subscriber that falls more than 256 frames behind is DROPPED — its channel is closed and the stream ends — so one stuck dashboard can never back-pressure a session write; the client reconnects and re-reads the session endpoints to resynchronise. A `: ping` comment every 25 seconds holds the connection open through proxies and is how a departed client is noticed.
  Future<void> getAgentsSessionsStream() async {
    final response = await getAgentsSessionsStreamWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns every machine registered to the caller's org, newest first, each with its live session load.
  ///
  /// Returns every machine registered to the caller's org, newest first, each with its live session load.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAgentsTargetsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/targets';

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

  /// Returns every machine registered to the caller's org, newest first, each with its live session load.
  ///
  /// Returns every machine registered to the caller's org, newest first, each with its live session load.
  Future<TargetList?> getAgentsTargets() async {
    final response = await getAgentsTargetsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TargetList',) as TargetList;
    
    }
    return null;
  }

  /// Returns one registered machine, with its live session load.
  ///
  /// Returns one registered machine, with its live session load.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the target to act on, from the path.
  Future<Response> getAgentsTargetsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/targets/{id}'
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

  /// Returns one registered machine, with its live session load.
  ///
  /// Returns one registered machine, with its live session load.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the target to act on, from the path.
  Future<TargetView?> getAgentsTargetsById(String id,) async {
    final response = await getAgentsTargetsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TargetView',) as TargetView;
    
    }
    return null;
  }

  /// Changes an agent in place.
  ///
  /// Changes an agent in place. Every field is optional; a field the request omits keeps its stored value. The resulting mode+schedule are re-validated together, so a partial update can never leave a long-running agent without the cron the scheduler needs to fire it, and a transition INTO long-running counts against the per-org cap on scheduled agents.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ref (required):
  ///   Ref is the agent to update — its public id or org-unique name, from the path.
  ///
  /// * [UpdateAgentIn] updateAgentIn (required):
  Future<Response> patchAgentsByRefWithHttpInfo(String ref, UpdateAgentIn updateAgentIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/{ref}'
      .replaceAll('{ref}', ref);

    // ignore: prefer_final_locals
    Object? postBody = updateAgentIn;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Changes an agent in place.
  ///
  /// Changes an agent in place. Every field is optional; a field the request omits keeps its stored value. The resulting mode+schedule are re-validated together, so a partial update can never leave a long-running agent without the cron the scheduler needs to fire it, and a transition INTO long-running counts against the per-org cap on scheduled agents.
  ///
  /// Parameters:
  ///
  /// * [String] ref (required):
  ///   Ref is the agent to update — its public id or org-unique name, from the path.
  ///
  /// * [UpdateAgentIn] updateAgentIn (required):
  Future<AgentView?> patchAgentsByRef(String ref, UpdateAgentIn updateAgentIn,) async {
    final response = await patchAgentsByRefWithHttpInfo(ref, updateAgentIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentView',) as AgentView;
    
    }
    return null;
  }

  /// Updates a session's surface-owned truth: its status, its title, the run-target it is dispatched to, and the product it built plus whether that build's story is public.
  ///
  /// Updates a session's surface-owned truth: its status, its title, the run-target it is dispatched to, and the product it built plus whether that build's story is public. A FINISHED session stays finished — reopening a done/error run would fabricate liveness — and publishing is refused unless the session names the project it built, because the public build route is keyed on (org, project).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the session to update, from the path.
  ///
  /// * [PatchSessionIn] patchSessionIn (required):
  Future<Response> patchAgentsSessionsByIdWithHttpInfo(String id, PatchSessionIn patchSessionIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/sessions/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = patchSessionIn;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Updates a session's surface-owned truth: its status, its title, the run-target it is dispatched to, and the product it built plus whether that build's story is public.
  ///
  /// Updates a session's surface-owned truth: its status, its title, the run-target it is dispatched to, and the product it built plus whether that build's story is public. A FINISHED session stays finished — reopening a done/error run would fabricate liveness — and publishing is refused unless the session names the project it built, because the public build route is keyed on (org, project).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the session to update, from the path.
  ///
  /// * [PatchSessionIn] patchSessionIn (required):
  Future<SessionView?> patchAgentsSessionsById(String id, PatchSessionIn patchSessionIn,) async {
    final response = await patchAgentsSessionsByIdWithHttpInfo(id, patchSessionIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SessionView',) as SessionView;
    
    }
    return null;
  }

  /// Updates one machine in place.
  ///
  /// Updates one machine in place. Every field is optional; a field the request omits is left alone. A metrics patch IS a heartbeat — the server stamps its own clock, so a client can neither forge nor backdate staleness.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the target to update, from the path.
  ///
  /// * [PatchTargetIn] patchTargetIn (required):
  Future<Response> patchAgentsTargetsByIdWithHttpInfo(String id, PatchTargetIn patchTargetIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/targets/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = patchTargetIn;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Updates one machine in place.
  ///
  /// Updates one machine in place. Every field is optional; a field the request omits is left alone. A metrics patch IS a heartbeat — the server stamps its own clock, so a client can neither forge nor backdate staleness.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the target to update, from the path.
  ///
  /// * [PatchTargetIn] patchTargetIn (required):
  Future<TargetView?> patchAgentsTargetsById(String id, PatchTargetIn patchTargetIn,) async {
    final response = await patchAgentsTargetsByIdWithHttpInfo(id, patchTargetIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TargetView',) as TargetView;
    
    }
    return null;
  }

  /// Defines an agent in the caller's org: a model, a system prompt (instructions) and a set of tool names.
  ///
  /// Defines an agent in the caller's org: a model, a system prompt (instructions) and a set of tool names. The name must be unique in the org and match ^[A-Za-z0-9][A-Za-z0-9._-]{0,63}$. An omitted model takes the deployment's configured default; a named one is checked against the gateway's served catalog, so a model this deployment never serves is refused here rather than failing at run time. A long-running agent must carry a 5-field cron schedule (the scheduler would otherwise never fire it) and counts against a per-org cap on scheduled agents.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateAgentIn] createAgentIn (required):
  Future<Response> postAgentsWithHttpInfo(CreateAgentIn createAgentIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents';

    // ignore: prefer_final_locals
    Object? postBody = createAgentIn;

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

  /// Defines an agent in the caller's org: a model, a system prompt (instructions) and a set of tool names.
  ///
  /// Defines an agent in the caller's org: a model, a system prompt (instructions) and a set of tool names. The name must be unique in the org and match ^[A-Za-z0-9][A-Za-z0-9._-]{0,63}$. An omitted model takes the deployment's configured default; a named one is checked against the gateway's served catalog, so a model this deployment never serves is refused here rather than failing at run time. A long-running agent must carry a 5-field cron schedule (the scheduler would otherwise never fire it) and counts against a per-org cap on scheduled agents.
  ///
  /// Parameters:
  ///
  /// * [CreateAgentIn] createAgentIn (required):
  Future<AgentView?> postAgents(CreateAgentIn createAgentIn,) async {
    final response = await postAgentsWithHttpInfo(createAgentIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentView',) as AgentView;
    
    }
    return null;
  }

  /// Run one of your org's agents and get the recorded run back.
  ///
  /// Composes the agent's stored instructions with the caller's `input`, executes one real chat completion through the same in-process AI client the rest of the console uses, and answers with the run that was recorded: its id, status, model, output, duration and error. Every run this returns reflects an execution that actually happened — a model failure is recorded and reported, never hidden and never fabricated. A transient upstream failure (429, 5xx, empty choices) is retried up to three times with jittered backoff, and a configured failover model is tried before the run is called an error.  `ref` is the agent's public `agent_…` id or its org-unique name; either resolves the same agent, and it must belong to the caller's org, so an agent in another tenant is a 404 exactly like one that does not exist. A validated principal is required and the check is made twice on purpose: this route MOVES MONEY, so the debit's principal requirement is asserted where the money moves rather than inherited from the tenant lookup.  The org's balance is authorized BEFORE any inference, so an unfunded tenant gets 402 and no free compute, and a billing plane that cannot answer gets 503 rather than a free run. The flat per-run fee is an operator knob; setting it to zero makes runs free and removes the balance gate with them. Only a SUCCESSFUL run is billed, attributed to the model actually used — a failover run bills the model it fell over to, not the one it started on. A deployment with no inference wired answers 503 before any of this.  THE RULE A READER GETS WRONG: a failed run is a 502 whose body is the RUN, not an error envelope. The execution happened, the run was persisted to this agent's history, and its `error` field is the product — so a client that treats every non-2xx as an opaque failure throws away the only account of what went wrong. Each run also opens a root session in the live session registry, best-effort: a bookkeeping failure there never fails the run, because the run and its billing already happened.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ref (required):
  Future<Response> postAgentsByRefRunWithHttpInfo(String ref,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/{ref}/run'
      .replaceAll('{ref}', ref);

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

  /// Run one of your org's agents and get the recorded run back.
  ///
  /// Composes the agent's stored instructions with the caller's `input`, executes one real chat completion through the same in-process AI client the rest of the console uses, and answers with the run that was recorded: its id, status, model, output, duration and error. Every run this returns reflects an execution that actually happened — a model failure is recorded and reported, never hidden and never fabricated. A transient upstream failure (429, 5xx, empty choices) is retried up to three times with jittered backoff, and a configured failover model is tried before the run is called an error.  `ref` is the agent's public `agent_…` id or its org-unique name; either resolves the same agent, and it must belong to the caller's org, so an agent in another tenant is a 404 exactly like one that does not exist. A validated principal is required and the check is made twice on purpose: this route MOVES MONEY, so the debit's principal requirement is asserted where the money moves rather than inherited from the tenant lookup.  The org's balance is authorized BEFORE any inference, so an unfunded tenant gets 402 and no free compute, and a billing plane that cannot answer gets 503 rather than a free run. The flat per-run fee is an operator knob; setting it to zero makes runs free and removes the balance gate with them. Only a SUCCESSFUL run is billed, attributed to the model actually used — a failover run bills the model it fell over to, not the one it started on. A deployment with no inference wired answers 503 before any of this.  THE RULE A READER GETS WRONG: a failed run is a 502 whose body is the RUN, not an error envelope. The execution happened, the run was persisted to this agent's history, and its `error` field is the product — so a client that treats every non-2xx as an opaque failure throws away the only account of what went wrong. Each run also opens a root session in the live session registry, best-effort: a bookkeeping failure there never fails the run, because the run and its billing already happened.
  ///
  /// Parameters:
  ///
  /// * [String] ref (required):
  Future<void> postAgentsByRefRun(String ref,) async {
    final response = await postAgentsByRefRunWithHttpInfo(ref,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Run one tool-calling round against your org's own tools
  ///
  /// Answers one turn of a conversation with four things: the model's `reply`, the `actions` the server executed on the caller's behalf, the `ops` the client must apply itself, and the `conversationId` the turn was recorded under.  The split between actions and ops is the rule most easily got wrong. A tool call is executed HERE only when the chosen preset is server-executing AND the tool resolves in the caller's own scope; every other call is handed back as an op for the client to apply to its own graph or UI. A tool that fails still comes back as an action, carrying its error rather than failing the round.  `preset` selects the system prompt and the tool set (`capability` is a legacy alias for it); an unknown one is refused. `conversationId` continues an existing thread, and its absence starts one. A validated principal with a non-empty org is required — the org is the sole authority for both persistence and tool scope, and is NEVER read from the body.  A completion refused for the caller's own reason — 402 insufficient balance, 429, 403 — is relayed with its own status and body verbatim, so the real billing message reaches the client instead of an opaque gateway error. Only a genuine upstream fault becomes a 502.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAgentsChatWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/chat';

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
  Future<void> postAgentsChat() async {
    final response = await postAgentsChatWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Start one autonomous coding run against a repo in the caller's org
  ///
  /// Runs a coding task on a repository: clones it into a sandbox, lets a model read and edit the code, run the tests, and push the work to a branch. Say the thing you want done — \"fix the failing auth test in hanzoai/cloud\" — and the run infers the repo, the branch and the plan. No prefix, no ceremony.  It answers 202 with the run's handle the moment the run is ADMITTED — not when it finishes. A coding run takes minutes; holding a request open for one would tie a connection to a model loop and give the caller nothing it cannot get better from the session stream.  The handle is a session id, and that is deliberate: the session is already the run's durable record and its live stream (/v1/agents/sessions/{id}/stream), so this op does not grow a progress endpoint, a status endpoint or a cancel endpoint of its own. One way to watch a run, whoever started it.  It is also how work CONTINUES. Pass an earlier run's session as `after` and this one starts from where that one stopped, so \"now add tests for it\" builds on the branch already pushed instead of a fresh clone. The follow-up still gets its own branch and its own session — one run, one branch, always reviewable on its own.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CodingStartIn] codingStartIn (required):
  Future<Response> postAgentsCodingWithHttpInfo(CodingStartIn codingStartIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/coding';

    // ignore: prefer_final_locals
    Object? postBody = codingStartIn;

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

  /// Start one autonomous coding run against a repo in the caller's org
  ///
  /// Runs a coding task on a repository: clones it into a sandbox, lets a model read and edit the code, run the tests, and push the work to a branch. Say the thing you want done — \"fix the failing auth test in hanzoai/cloud\" — and the run infers the repo, the branch and the plan. No prefix, no ceremony.  It answers 202 with the run's handle the moment the run is ADMITTED — not when it finishes. A coding run takes minutes; holding a request open for one would tie a connection to a model loop and give the caller nothing it cannot get better from the session stream.  The handle is a session id, and that is deliberate: the session is already the run's durable record and its live stream (/v1/agents/sessions/{id}/stream), so this op does not grow a progress endpoint, a status endpoint or a cancel endpoint of its own. One way to watch a run, whoever started it.  It is also how work CONTINUES. Pass an earlier run's session as `after` and this one starts from where that one stopped, so \"now add tests for it\" builds on the branch already pushed instead of a fresh clone. The follow-up still gets its own branch and its own session — one run, one branch, always reviewable on its own.
  ///
  /// Parameters:
  ///
  /// * [CodingStartIn] codingStartIn (required):
  Future<CodingStarted?> postAgentsCoding(CodingStartIn codingStartIn,) async {
    final response = await postAgentsCodingWithHttpInfo(codingStartIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CodingStarted',) as CodingStarted;
    
    }
    return null;
  }

  /// Opens a live agent session in the caller's org — the row every surface (the CLI's outer agent, hanzo.bot, the console, chat) hangs its activity off.
  ///
  /// Opens a live agent session in the caller's org — the row every surface (the CLI's outer agent, hanzo.bot, the console, chat) hangs its activity off. A session with a parentSessionId becomes a subagent of that session and inherits its root, so one flow is one tree; without one it is itself a root. Registering with a terminal status records a session that has already finished.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RegisterReq] registerReq (required):
  Future<Response> postAgentsSessionsWithHttpInfo(RegisterReq registerReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/sessions';

    // ignore: prefer_final_locals
    Object? postBody = registerReq;

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

  /// Opens a live agent session in the caller's org — the row every surface (the CLI's outer agent, hanzo.bot, the console, chat) hangs its activity off.
  ///
  /// Opens a live agent session in the caller's org — the row every surface (the CLI's outer agent, hanzo.bot, the console, chat) hangs its activity off. A session with a parentSessionId becomes a subagent of that session and inherits its root, so one flow is one tree; without one it is itself a root. Registering with a terminal status records a session that has already finished.
  ///
  /// Parameters:
  ///
  /// * [RegisterReq] registerReq (required):
  Future<SessionView?> postAgentsSessions(RegisterReq registerReq,) async {
    final response = await postAgentsSessionsWithHttpInfo(registerReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SessionView',) as SessionView;
    
    }
    return null;
  }

  /// Records one turn of a session's transcript and answers 201 with it.
  ///
  /// Records one turn of a session's transcript and answers 201 with it.  A `progress` turn additionally MOVES THE SESSION'S PROGRESS, marked as the run's own word rather than an estimate, and pushes the updated session onto the live stream — so a board's bar follows the run without polling and without a second write path. See progress.go.  THE TURN IS SCANNED BEFORE IT IS STORED. The same engine the code-security surface runs reads the payload at this boundary, and a credential in it refuses the append with 422 rather than redacting it — a redacted transcript is one that still had the secret in it once, and this way the author learns which value to rotate. The refusal carries every finding: the rule, the severity, the line, a MASKED preview and the fingerprint. The secret is never in the answer.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the session to append to, from the path.
  ///
  /// * [EventIn] eventIn (required):
  Future<Response> postAgentsSessionsByIdEventsWithHttpInfo(String id, EventIn eventIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/sessions/{id}/events'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = eventIn;

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

  /// Records one turn of a session's transcript and answers 201 with it.
  ///
  /// Records one turn of a session's transcript and answers 201 with it.  A `progress` turn additionally MOVES THE SESSION'S PROGRESS, marked as the run's own word rather than an estimate, and pushes the updated session onto the live stream — so a board's bar follows the run without polling and without a second write path. See progress.go.  THE TURN IS SCANNED BEFORE IT IS STORED. The same engine the code-security surface runs reads the payload at this boundary, and a credential in it refuses the append with 422 rather than redacting it — a redacted transcript is one that still had the secret in it once, and this way the author learns which value to rotate. The refusal carries every finding: the rule, the severity, the line, a MASKED preview and the fingerprint. The secret is never in the answer.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the session to append to, from the path.
  ///
  /// * [EventIn] eventIn (required):
  Future<EventView?> postAgentsSessionsByIdEvents(String id, EventIn eventIn,) async {
    final response = await postAgentsSessionsByIdEventsWithHttpInfo(id, eventIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EventView',) as EventView;
    
    }
    return null;
  }

  /// Sends a steering message to a running session — the endpoint a human or another agent interrupts through.
  ///
  /// Sends a steering message to a running session — the endpoint a human or another agent interrupts through. It requires a `message` or a `payload`; the other three commands do not.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the session to steer, from the path.
  ///
  /// * [ControlIn] controlIn (required):
  Future<Response> postAgentsSessionsByIdMessageWithHttpInfo(String id, ControlIn controlIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/sessions/{id}/message'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = controlIn;

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

  /// Sends a steering message to a running session — the endpoint a human or another agent interrupts through.
  ///
  /// Sends a steering message to a running session — the endpoint a human or another agent interrupts through. It requires a `message` or a `payload`; the other three commands do not.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the session to steer, from the path.
  ///
  /// * [ControlIn] controlIn (required):
  Future<ControlResult?> postAgentsSessionsByIdMessage(String id, ControlIn controlIn,) async {
    final response = await postAgentsSessionsByIdMessageWithHttpInfo(id, controlIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ControlResult',) as ControlResult;
    
    }
    return null;
  }

  /// Asks a running session to pause.
  ///
  /// Asks a running session to pause. Recorded durably, and forwarded to the durable-execution engine when the session is task-backed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the session to steer, from the path.
  ///
  /// * [ControlIn] controlIn (required):
  Future<Response> postAgentsSessionsByIdPauseWithHttpInfo(String id, ControlIn controlIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/sessions/{id}/pause'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = controlIn;

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

  /// Asks a running session to pause.
  ///
  /// Asks a running session to pause. Recorded durably, and forwarded to the durable-execution engine when the session is task-backed.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the session to steer, from the path.
  ///
  /// * [ControlIn] controlIn (required):
  Future<ControlResult?> postAgentsSessionsByIdPause(String id, ControlIn controlIn,) async {
    final response = await postAgentsSessionsByIdPauseWithHttpInfo(id, controlIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ControlResult',) as ControlResult;
    
    }
    return null;
  }

  /// Asks a paused session to continue, on the same terms as a pause.
  ///
  /// Asks a paused session to continue, on the same terms as a pause.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the session to steer, from the path.
  ///
  /// * [ControlIn] controlIn (required):
  Future<Response> postAgentsSessionsByIdResumeWithHttpInfo(String id, ControlIn controlIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/sessions/{id}/resume'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = controlIn;

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

  /// Asks a paused session to continue, on the same terms as a pause.
  ///
  /// Asks a paused session to continue, on the same terms as a pause.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the session to steer, from the path.
  ///
  /// * [ControlIn] controlIn (required):
  Future<ControlResult?> postAgentsSessionsByIdResume(String id, ControlIn controlIn,) async {
    final response = await postAgentsSessionsByIdResumeWithHttpInfo(id, controlIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ControlResult',) as ControlResult;
    
    }
    return null;
  }

  /// Ends a running session.
  ///
  /// Ends a running session. `message` is recorded as the cancellation reason, which is what a later reader of the transcript sees.  STOPPING IS NOT DELETING: the session, its transcript and anything it produced stay readable. A session that has already finished is 409 rather than a second stop.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the session to steer, from the path.
  ///
  /// * [ControlIn] controlIn (required):
  Future<Response> postAgentsSessionsByIdStopWithHttpInfo(String id, ControlIn controlIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/sessions/{id}/stop'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = controlIn;

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

  /// Ends a running session.
  ///
  /// Ends a running session. `message` is recorded as the cancellation reason, which is what a later reader of the transcript sees.  STOPPING IS NOT DELETING: the session, its transcript and anything it produced stay readable. A session that has already finished is 409 rather than a second stop.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the session to steer, from the path.
  ///
  /// * [ControlIn] controlIn (required):
  Future<ControlResult?> postAgentsSessionsByIdStop(String id, ControlIn controlIn,) async {
    final response = await postAgentsSessionsByIdStopWithHttpInfo(id, controlIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ControlResult',) as ControlResult;
    
    }
    return null;
  }

  /// Registers a machine as an agent target, or re-links one that is already registered.
  ///
  /// Registers a machine as an agent target, or re-links one that is already registered. Re-linking is idempotent and keyed on org+host+owner, so a machine that reconnects refreshes its own row rather than piling up duplicates; it answers 200, while a first registration answers 201.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TargetReq] targetReq (required):
  Future<Response> postAgentsTargetsWithHttpInfo(TargetReq targetReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/targets';

    // ignore: prefer_final_locals
    Object? postBody = targetReq;

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

  /// Registers a machine as an agent target, or re-links one that is already registered.
  ///
  /// Registers a machine as an agent target, or re-links one that is already registered. Re-linking is idempotent and keyed on org+host+owner, so a machine that reconnects refreshes its own row rather than piling up duplicates; it answers 200, while a first registration answers 201.
  ///
  /// Parameters:
  ///
  /// * [TargetReq] targetReq (required):
  Future<TargetView?> postAgentsTargets(TargetReq targetReq,) async {
    final response = await postAgentsTargetsWithHttpInfo(targetReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TargetView',) as TargetView;
    
    }
    return null;
  }

  /// ClaimRoutedRun is the machine's long poll for work: it authenticates the daemon, stamps the liveness the dispatch gate reads (the poll IS the proof a runner is listening), and waits up to 25 seconds for the next run addressed to THIS machine.
  ///
  /// ClaimRoutedRun is the machine's long poll for work: it authenticates the daemon, stamps the liveness the dispatch gate reads (the poll IS the proof a runner is listening), and waits up to 25 seconds for the next run addressed to THIS machine. It answers the run when one arrives and 204 with no body when the window elapses, on which the daemon re-polls immediately.  TWO independent proofs are required and both fail closed to the same 403: the caller must own this machine (or be an org admin) AND present its claim key in X-Target-Key. A run offered to one machine is unreachable from another's claim.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the target to act on, from the path.
  Future<Response> postAgentsTargetsByIdClaimWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/targets/{id}/claim'
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

  /// ClaimRoutedRun is the machine's long poll for work: it authenticates the daemon, stamps the liveness the dispatch gate reads (the poll IS the proof a runner is listening), and waits up to 25 seconds for the next run addressed to THIS machine.
  ///
  /// ClaimRoutedRun is the machine's long poll for work: it authenticates the daemon, stamps the liveness the dispatch gate reads (the poll IS the proof a runner is listening), and waits up to 25 seconds for the next run addressed to THIS machine. It answers the run when one arrives and 204 with no body when the window elapses, on which the daemon re-polls immediately.  TWO independent proofs are required and both fail closed to the same 403: the caller must own this machine (or be an org admin) AND present its claim key in X-Target-Key. A run offered to one machine is unreachable from another's claim.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the target to act on, from the path.
  Future<RoutedRunOut?> postAgentsTargetsByIdClaim(String id,) async {
    final response = await postAgentsTargetsByIdClaimWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RoutedRunOut',) as RoutedRunOut;
    
    }
    return null;
  }

  /// Mints (or rotates) the claim key a `hanzo code --serve` daemon presents to claim work for this machine, and returns it ONCE: only its SHA-256 hash is stored.
  ///
  /// Mints (or rotates) the claim key a `hanzo code --serve` daemon presents to claim work for this machine, and returns it ONCE: only its SHA-256 hash is stored. Rotating supersedes any prior daemon, so only the machine's owner — or an org admin — may call it; every other caller gets the same not-found an unknown id gets, and learns nothing about what exists.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the target to act on, from the path.
  Future<Response> postAgentsTargetsByIdKeyWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/targets/{id}/key'
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

  /// Mints (or rotates) the claim key a `hanzo code --serve` daemon presents to claim work for this machine, and returns it ONCE: only its SHA-256 hash is stored.
  ///
  /// Mints (or rotates) the claim key a `hanzo code --serve` daemon presents to claim work for this machine, and returns it ONCE: only its SHA-256 hash is stored. Rotating supersedes any prior daemon, so only the machine's owner — or an org admin — may call it; every other caller gets the same not-found an unknown id gets, and learns nothing about what exists.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the target to act on, from the path.
  Future<ClaimKeyOut?> postAgentsTargetsByIdKey(String id,) async {
    final response = await postAgentsTargetsByIdKeyWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClaimKeyOut',) as ClaimKeyOut;
    
    }
    return null;
  }

  /// Completes a claimed run: it delivers the terminal result to the run's durable owner, which is what lets that workflow finish.
  ///
  /// Completes a claimed run: it delivers the terminal result to the run's durable owner, which is what lets that workflow finish. Scoped to (org, target, run) and claim-key authenticated, so a machine can only ever report a run it legitimately holds. Idempotent — a report for an unknown or already-finished run answers delivered:false rather than failing, because the session's terminal state was already set by the machine's own stream.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the machine reporting, from the path.
  ///
  /// * [String] runId (required):
  ///   RunID is the routed run being completed, from the path.
  ///
  /// * [ReportRunIn] reportRunIn (required):
  Future<Response> postAgentsTargetsByIdRunsByRunidReportWithHttpInfo(String id, String runId, ReportRunIn reportRunIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/targets/{id}/runs/{runId}/report'
      .replaceAll('{id}', id)
      .replaceAll('{runId}', runId);

    // ignore: prefer_final_locals
    Object? postBody = reportRunIn;

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

  /// Completes a claimed run: it delivers the terminal result to the run's durable owner, which is what lets that workflow finish.
  ///
  /// Completes a claimed run: it delivers the terminal result to the run's durable owner, which is what lets that workflow finish. Scoped to (org, target, run) and claim-key authenticated, so a machine can only ever report a run it legitimately holds. Idempotent — a report for an unknown or already-finished run answers delivered:false rather than failing, because the session's terminal state was already set by the machine's own stream.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the machine reporting, from the path.
  ///
  /// * [String] runId (required):
  ///   RunID is the routed run being completed, from the path.
  ///
  /// * [ReportRunIn] reportRunIn (required):
  Future<ReportOut?> postAgentsTargetsByIdRunsByRunidReport(String id, String runId, ReportRunIn reportRunIn,) async {
    final response = await postAgentsTargetsByIdRunsByRunidReportWithHttpInfo(id, runId, reportRunIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReportOut',) as ReportOut;
    
    }
    return null;
  }
}
