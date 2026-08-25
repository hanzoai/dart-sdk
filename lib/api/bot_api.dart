//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class BotApi {
  BotApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List returns the caller org's live bot runs, read from the bot runtime and projected into the console contract with each run's live session URL derived here.
  ///
  /// List returns the caller org's live bot runs, read from the bot runtime and projected into the console contract with each run's live session URL derived here.  The org is ALWAYS the validated principal's org, NEVER a request field, and it is what scopes the runtime's answer — so one tenant can never enumerate another's runs. A runtime that cannot answer is an error, not an empty list: [] would tell the caller \"your org has no runs\", which is a different claim from \"we could not ask\", and the difference is the whole reason this endpoint exists.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBotRunsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/bot/runs';

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

  /// List returns the caller org's live bot runs, read from the bot runtime and projected into the console contract with each run's live session URL derived here.
  ///
  /// List returns the caller org's live bot runs, read from the bot runtime and projected into the console contract with each run's live session URL derived here.  The org is ALWAYS the validated principal's org, NEVER a request field, and it is what scopes the runtime's answer — so one tenant can never enumerate another's runs. A runtime that cannot answer is an error, not an empty list: [] would tell the caller \"your org has no runs\", which is a different claim from \"we could not ask\", and the difference is the whole reason this endpoint exists.
  Future<BotRuns?> getBotRuns() async {
    final response = await getBotRunsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BotRuns',) as BotRuns;
    
    }
    return null;
  }

  /// Answers 501 to every call: launching a bot run is not implemented.
  ///
  /// Answers 501 to every call: launching a bot run is not implemented.  The bot runtime exposes no launch operation, so nothing here can start a sandbox. This address is published rather than dropped because it is the collection every run is created in: GET lists them, POST would launch one.  The refusal is total and takes no input. No run id is minted, no session URL is handed back, and no per-run fee is charged. That is the point: the earlier version minted an id the runtime had never heard of, pointed it at a VNC node that did not exist, and took real money for it. 501 is the truth, and the truth is cheaper than a plausible lie.  Listing and stopping runs are live and org-scoped. Only the launch is missing, and it returns in the same change that can prove a bot boots — a runtime-side launch operation first (TS, cross-repo), with the entitlement gate and the meter beside it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postBotRunsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/bot/runs';

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

  /// Answers 501 to every call: launching a bot run is not implemented.
  ///
  /// Answers 501 to every call: launching a bot run is not implemented.  The bot runtime exposes no launch operation, so nothing here can start a sandbox. This address is published rather than dropped because it is the collection every run is created in: GET lists them, POST would launch one.  The refusal is total and takes no input. No run id is minted, no session URL is handed back, and no per-run fee is charged. That is the point: the earlier version minted an id the runtime had never heard of, pointed it at a VNC node that did not exist, and took real money for it. 501 is the truth, and the truth is cheaper than a plausible lie.  Listing and stopping runs are live and org-scoped. Only the launch is missing, and it returns in the same change that can prove a bot boots — a runtime-side launch operation first (TS, cross-repo), with the entitlement gate and the meter beside it.
  Future<void> postBotRuns() async {
    final response = await postBotRunsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Stop terminates one of the caller org's own bot runs and reports its terminal state.
  ///
  /// Stop terminates one of the caller org's own bot runs and reports its terminal state.  The own-key guard is the org: it is the caller's validated org, never theirs to choose, and the runtime resolves the run id UNDER it. A run belonging to another tenant is not among this org's runs, so it answers absent — the same 404 a nonexistent id gets, which is what keeps this from being an oracle.  Absence is honoured ONLY when the runtime answers it. A runtime that does not serve stop reports nothing about the run, and reporting \"stopped\" on that basis would be a stop that cannot fail — so it is a 502.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  ///   RunID is the run to stop, as the bot runtime named it. It is read from the URL — the `{runId}` segment the router matched on — and a body carrying a different id cannot redirect the stop.
  Future<Response> postBotRunsByRunidStopWithHttpInfo(String runId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/bot/runs/{runId}/stop'
      .replaceAll('{runId}', runId);

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

  /// Stop terminates one of the caller org's own bot runs and reports its terminal state.
  ///
  /// Stop terminates one of the caller org's own bot runs and reports its terminal state.  The own-key guard is the org: it is the caller's validated org, never theirs to choose, and the runtime resolves the run id UNDER it. A run belonging to another tenant is not among this org's runs, so it answers absent — the same 404 a nonexistent id gets, which is what keeps this from being an oracle.  Absence is honoured ONLY when the runtime answers it. A runtime that does not serve stop reports nothing about the run, and reporting \"stopped\" on that basis would be a stop that cannot fail — so it is a 502.
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  ///   RunID is the run to stop, as the bot runtime named it. It is read from the URL — the `{runId}` segment the router matched on — and a body carrying a different id cannot redirect the stop.
  Future<BotStopped?> postBotRunsByRunidStop(String runId,) async {
    final response = await postBotRunsByRunidStopWithHttpInfo(runId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BotStopped',) as BotStopped;
    
    }
    return null;
  }
}
