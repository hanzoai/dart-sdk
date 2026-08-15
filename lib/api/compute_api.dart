//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class ComputeApi {
  ComputeApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Tears down both halves of a bot: it unbinds the agent (best-effort — a bot with no binding still deletes), then terminates the machine.
  ///
  /// Tears down both halves of a bot: it unbinds the agent (best-effort — a bot with no binding still deletes), then terminates the machine. Answers 204.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the bot machine's id — the same id the machines surface addresses it by. Scoped to the caller's org upstream, so another tenant's id is 404.
  Future<Response> deleteBotWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/compute/bots/{id}'
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

  /// Tears down both halves of a bot: it unbinds the agent (best-effort — a bot with no binding still deletes), then terminates the machine.
  ///
  /// Tears down both halves of a bot: it unbinds the agent (best-effort — a bot with no binding still deletes), then terminates the machine. Answers 204.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the bot machine's id — the same id the machines surface addresses it by. Scoped to the caller's org upstream, so another tenant's id is 404.
  Future<void> deleteBot(String id,) async {
    final response = await deleteBotWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns one of the caller org's bot machines with its agent binding.
  ///
  /// Returns one of the caller org's bot machines with its agent binding.  A machine counts as a Bot if it carries the hanzo-kind:bot tag OR has an agent binding — either signal is authoritative, so a bot resolves even before its cloud-init has stamped every tag. A machine that is neither is 404: this route answers for bots, not for machines.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the bot machine's id — the same id the machines surface addresses it by. Scoped to the caller's org upstream, so another tenant's id is 404.
  Future<Response> getBotWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/compute/bots/{id}'
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

  /// Returns one of the caller org's bot machines with its agent binding.
  ///
  /// Returns one of the caller org's bot machines with its agent binding.  A machine counts as a Bot if it carries the hanzo-kind:bot tag OR has an agent binding — either signal is authoritative, so a bot resolves even before its cloud-init has stamped every tag. A machine that is neither is 404: this route answers for bots, not for machines.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the bot machine's id — the same id the machines surface addresses it by. Scoped to the caller's org upstream, so another tenant's id is 404.
  Future<BotView?> getBot(String id,) async {
    final response = await getBotWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BotView',) as BotView;
    
    }
    return null;
  }

  /// The regions a machine or GPU can be launched into
  ///
  /// Lists the launch regions the compute catalog offers, passed through verbatim from the provider so the shape stays the provider's single source of truth. The catalog is GLOBAL, not per-tenant: no owner is forwarded and every org sees the same list. It is still gated — a validated principal is required, 403 without one — because the catalog is what backs the launch drawer, not public marketing copy.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getComputeRegionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/compute/regions';

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

  /// The regions a machine or GPU can be launched into
  ///
  /// Lists the launch regions the compute catalog offers, passed through verbatim from the provider so the shape stays the provider's single source of truth. The catalog is GLOBAL, not per-tenant: no owner is forwarded and every org sees the same list. It is still gated — a validated principal is required, 403 without one — because the catalog is what backs the launch drawer, not public marketing copy.
  Future<void> getComputeRegions() async {
    final response = await getComputeRegionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The machine and GPU sizes that can be launched
  ///
  /// Lists the instance sizes the compute catalog offers, passed through verbatim from the provider so the shape stays the provider's single source of truth. These are the values `size` accepts on a launch. The catalog is GLOBAL, not per-tenant: no owner is forwarded and every org sees the same list. It is still gated — a validated principal is required, 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getComputeSizesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/compute/sizes';

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

  /// The machine and GPU sizes that can be launched
  ///
  /// Lists the instance sizes the compute catalog offers, passed through verbatim from the provider so the shape stays the provider's single source of truth. These are the values `size` accepts on a launch. The catalog is GLOBAL, not per-tenant: no owner is forwarded and every org sees the same list. It is still gated — a validated principal is required, 403 without one.
  Future<void> getComputeSizes() async {
    final response = await getComputeSizesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the caller org's bot machines — the kind=bot machines — each joined with the agent binding that says which cloud Agent it runs.
  ///
  /// Returns the caller org's bot machines — the kind=bot machines — each joined with the agent binding that says which cloud Agent it runs.  The bindings are read ONCE and joined by machine id, so the list is O(1) upstream calls, not N+1. A bindings read that fails only costs the reconciled status: a bot still lists without it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listBotsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/compute/bots';

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

  /// Returns the caller org's bot machines — the kind=bot machines — each joined with the agent binding that says which cloud Agent it runs.
  ///
  /// Returns the caller org's bot machines — the kind=bot machines — each joined with the agent binding that says which cloud Agent it runs.  The bindings are read ONCE and joined by machine id, so the list is O(1) upstream calls, not N+1. A bindings read that fails only costs the reconciled status: a bot still lists without it.
  Future<BotList?> listBots() async {
    final response = await listBotsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BotList',) as BotList;
    
    }
    return null;
  }

  /// Message a bot, or stop it, by naming the action in the path
  ///
  /// Dispatches one verb against a bot the caller's org owns. `message` runs the bot's bound agent with the request body as the message and streams the agent's answer back VERBATIM — the upstream body, its content type and its status — so a message is a real agent run, recorded, billed and traced exactly like any other, under the caller's own identity rather than a fabricated one. `stop` and `pause` are the same single honest capability: they halt the runtime by unbinding the agent while LEAVING THE MACHINE UP, so the bot stops answering but keeps costing — rebind to resume, or delete the bot to tear it down. Stopping is idempotent; a bot with no binding still reports stopped.  Org-scoped and fails closed: a validated principal is required (403 without one) and the bot is addressed under the caller's OWN org, so another tenant's id is not reachable. An unknown action is a clean 400 naming the three it accepts, never a silent no-op, and messaging a bot with no bound agent is a 400.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] action (required):
  Future<Response> postComputeBotsByIdByActionWithHttpInfo(String id, String action,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/compute/bots/{id}/{action}'
      .replaceAll('{id}', id)
      .replaceAll('{action}', action);

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

  /// Message a bot, or stop it, by naming the action in the path
  ///
  /// Dispatches one verb against a bot the caller's org owns. `message` runs the bot's bound agent with the request body as the message and streams the agent's answer back VERBATIM — the upstream body, its content type and its status — so a message is a real agent run, recorded, billed and traced exactly like any other, under the caller's own identity rather than a fabricated one. `stop` and `pause` are the same single honest capability: they halt the runtime by unbinding the agent while LEAVING THE MACHINE UP, so the bot stops answering but keeps costing — rebind to resume, or delete the bot to tear it down. Stopping is idempotent; a bot with no binding still reports stopped.  Org-scoped and fails closed: a validated principal is required (403 without one) and the bot is addressed under the caller's OWN org, so another tenant's id is not reachable. An unknown action is a clean 400 naming the three it accepts, never a silent no-op, and messaging a bot with no bound agent is a 400.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] action (required):
  Future<void> postComputeBotsByIdByAction(String id, String action,) async {
    final response = await postComputeBotsByIdByActionWithHttpInfo(id, action,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Launch a bot machine — an agent plus the machine that runs it — or price one
  ///
  /// Creates BOTH halves of a bot in one call and answers 201 with the bot: the cloud agent it runs, then a bot-kind machine bootstrapped with the bot runtime, then the binding between them, so a launched bot is immediately messageable. Send `dryRun: true` for a price quote instead — 200 with the upstream quote verbatim, no agent created, no machine launched, nothing spent.  The agent is created FIRST and on purpose: it is create-if-absent (an agent that already exists is reused, so a relaunch is fine and several bots may share one explicit `agent`), and doing it before the machine means a bad request — a model that is not in the catalog, say — fails with the real reason BEFORE any metered machine is provisioned. `agent` defaults to the bot's name and an empty `model` takes the deployment default.  Org-scoped and fails closed: a validated principal is required (403 without one), the owning org is that principal's and never a body field, `size` is required (400), and `name` is required for a real launch though not for a quote.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postComputeBotsLaunchWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/compute/bots/launch';

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

  /// Launch a bot machine — an agent plus the machine that runs it — or price one
  ///
  /// Creates BOTH halves of a bot in one call and answers 201 with the bot: the cloud agent it runs, then a bot-kind machine bootstrapped with the bot runtime, then the binding between them, so a launched bot is immediately messageable. Send `dryRun: true` for a price quote instead — 200 with the upstream quote verbatim, no agent created, no machine launched, nothing spent.  The agent is created FIRST and on purpose: it is create-if-absent (an agent that already exists is reused, so a relaunch is fine and several bots may share one explicit `agent`), and doing it before the machine means a bad request — a model that is not in the catalog, say — fails with the real reason BEFORE any metered machine is provisioned. `agent` defaults to the bot's name and an empty `model` takes the deployment default.  Org-scoped and fails closed: a validated principal is required (403 without one), the owning org is that principal's and never a body field, `size` is required (400), and `name` is required for a real launch though not for a quote.
  Future<void> postComputeBotsLaunch() async {
    final response = await postComputeBotsLaunchWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
