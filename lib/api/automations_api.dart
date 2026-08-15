//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class AutomationsApi {
  AutomationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Deletes one automation, its versions and its run history.
  ///
  /// Deletes one automation, its versions and its run history. It answers no content, and a flow of another org answers not-found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the flow to act on, from the path.
  Future<Response> deleteAutomationsFlowsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/automations/flows/{id}'
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

  /// Deletes one automation, its versions and its run history.
  ///
  /// Deletes one automation, its versions and its run history. It answers no content, and a flow of another org answers not-found.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the flow to act on, from the path.
  Future<void> deleteAutomationsFlowsById(String id,) async {
    final response = await deleteAutomationsFlowsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Connectors returns the connector catalogue.
  ///
  /// Connectors returns the connector catalogue. Each entry is an external service a flow step can invoke, carrying its auth descriptor and the input properties of its actions and triggers. The catalogue is the same for every tenant, so the gate is a validated principal rather than a per-org view.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAutomationsConnectorsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/automations/connectors';

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

  /// Connectors returns the connector catalogue.
  ///
  /// Connectors returns the connector catalogue. Each entry is an external service a flow step can invoke, carrying its auth descriptor and the input properties of its actions and triggers. The catalogue is the same for every tenant, so the gate is a validated principal rather than a per-org view.
  Future<Catalog?> getAutomationsConnectors() async {
    final response = await getAutomationsConnectorsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Catalog',) as Catalog;
    
    }
    return null;
  }

  /// Returns the caller org's automations, most-recently-updated first.
  ///
  /// Returns the caller org's automations, most-recently-updated first. The optional `limit` query bounds the page.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit bounds the page (default 200, maximum 1000).
  Future<Response> getAutomationsFlowsWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/automations/flows';

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

  /// Returns the caller org's automations, most-recently-updated first.
  ///
  /// Returns the caller org's automations, most-recently-updated first. The optional `limit` query bounds the page.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit bounds the page (default 200, maximum 1000).
  Future<FlowPage?> getAutomationsFlows({ int? limit, }) async {
    final response = await getAutomationsFlowsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FlowPage',) as FlowPage;
    
    }
    return null;
  }

  /// Returns one automation and its latest version.
  ///
  /// Returns one automation and its latest version. That is the flow record plus the step tree the builder edits; a flow of another org answers not-found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the flow to act on, from the path.
  Future<Response> getAutomationsFlowsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/automations/flows/{id}'
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

  /// Returns one automation and its latest version.
  ///
  /// Returns one automation and its latest version. That is the flow record plus the step tree the builder edits; a flow of another org answers not-found.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the flow to act on, from the path.
  Future<PopulatedFlow?> getAutomationsFlowsById(String id,) async {
    final response = await getAutomationsFlowsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PopulatedFlow',) as PopulatedFlow;
    
    }
    return null;
  }

  /// Returns one flow's versions, newest first.
  ///
  /// Returns one flow's versions, newest first. The optional `limit` query bounds the page.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the flow whose versions to list, from the path.
  ///
  /// * [int] limit:
  ///   Limit bounds the page (default 200, maximum 1000).
  Future<Response> getAutomationsFlowsByIdVersionsWithHttpInfo(String id, { int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/automations/flows/{id}/versions'
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

  /// Returns one flow's versions, newest first.
  ///
  /// Returns one flow's versions, newest first. The optional `limit` query bounds the page.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the flow whose versions to list, from the path.
  ///
  /// * [int] limit:
  ///   Limit bounds the page (default 200, maximum 1000).
  Future<VersionPage?> getAutomationsFlowsByIdVersions(String id, { int? limit, }) async {
    final response = await getAutomationsFlowsByIdVersionsWithHttpInfo(id,  limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VersionPage',) as VersionPage;
    
    }
    return null;
  }

  /// Pieces is the retired-name alias of the connector catalogue.
  ///
  /// Pieces is the retired-name alias of the connector catalogue. It serves exactly what GET /v1/automations/connectors serves, under the name this surface used before \"piece\" (the ActivePieces term) became \"connector\", and stays valid for clients pinned to the old path. Prefer /connectors.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAutomationsPiecesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/automations/pieces';

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

  /// Pieces is the retired-name alias of the connector catalogue.
  ///
  /// Pieces is the retired-name alias of the connector catalogue. It serves exactly what GET /v1/automations/connectors serves, under the name this surface used before \"piece\" (the ActivePieces term) became \"connector\", and stays valid for clients pinned to the old path. Prefer /connectors.
  Future<Catalog?> getAutomationsPieces() async {
    final response = await getAutomationsPiecesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Catalog',) as Catalog;
    
    }
    return null;
  }

  /// Returns the caller org's run history, newest first.
  ///
  /// Returns the caller org's run history, newest first. The optional `flowId` query narrows it to one flow and `limit` bounds the page.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] flowId:
  ///   FlowID narrows the history to one flow. Omit it for the whole org's runs.
  ///
  /// * [int] limit:
  ///   Limit bounds the page (default 200, maximum 1000).
  Future<Response> getAutomationsRunsWithHttpInfo({ String? flowId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/automations/runs';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (flowId != null) {
      queryParams.addAll(_queryParams('', 'flowId', flowId));
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

  /// Returns the caller org's run history, newest first.
  ///
  /// Returns the caller org's run history, newest first. The optional `flowId` query narrows it to one flow and `limit` bounds the page.
  ///
  /// Parameters:
  ///
  /// * [String] flowId:
  ///   FlowID narrows the history to one flow. Omit it for the whole org's runs.
  ///
  /// * [int] limit:
  ///   Limit bounds the page (default 200, maximum 1000).
  Future<RunPage?> getAutomationsRuns({ String? flowId, int? limit, }) async {
    final response = await getAutomationsRunsWithHttpInfo( flowId: flowId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RunPage',) as RunPage;
    
    }
    return null;
  }

  /// Returns one run.
  ///
  /// Returns one run. A run that has not reached a terminal status is refreshed from the durable engine first — scoped to the org's own namespace — so the caller sees live progress rather than the last status that happened to be persisted.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the run to read, from the path.
  Future<Response> getAutomationsRunsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/automations/runs/{id}'
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

  /// Returns one run.
  ///
  /// Returns one run. A run that has not reached a terminal status is refreshed from the durable engine first — scoped to the org's own namespace — so the caller sees live progress rather than the last status that happened to be persisted.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the run to read, from the path.
  Future<FlowRun?> getAutomationsRunsById(String id,) async {
    final response = await getAutomationsRunsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FlowRun',) as FlowRun;
    
    }
    return null;
  }

  /// Updates one automation's metadata in place.
  ///
  /// Updates one automation's metadata in place. Every field is optional; a field the request omits is left alone. Publishing a version pins which one runs, and is refused unless that version belongs to this flow.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the flow to update, from the path.
  ///
  /// * [PatchFlowIn] patchFlowIn (required):
  Future<Response> patchAutomationsFlowsByIdWithHttpInfo(String id, PatchFlowIn patchFlowIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/automations/flows/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = patchFlowIn;

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

  /// Updates one automation's metadata in place.
  ///
  /// Updates one automation's metadata in place. Every field is optional; a field the request omits is left alone. Publishing a version pins which one runs, and is refused unless that version belongs to this flow.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the flow to update, from the path.
  ///
  /// * [PatchFlowIn] patchFlowIn (required):
  Future<Flow?> patchAutomationsFlowsById(String id, PatchFlowIn patchFlowIn,) async {
    final response = await patchAutomationsFlowsByIdWithHttpInfo(id, patchFlowIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Flow',) as Flow;
    
    }
    return null;
  }

  /// Run executes one connector action in-process and answers the outcome.
  ///
  /// Run executes one connector action in-process and answers the outcome. The caller's resolved credential travels in `auth`, delivered to the action verbatim — the runtime resolves no credential itself. An action that ran and failed (or an action name the connector does not have) answers ok:false with the failure message, not an HTTP error; an unknown connector is 404 and a missing action 422.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the connector to run, from the path.
  ///
  /// * [RunIn] runIn (required):
  Future<Response> postAutomationsConnectorsByIdRunWithHttpInfo(String id, RunIn runIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/automations/connectors/{id}/run'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = runIn;

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

  /// Run executes one connector action in-process and answers the outcome.
  ///
  /// Run executes one connector action in-process and answers the outcome. The caller's resolved credential travels in `auth`, delivered to the action verbatim — the runtime resolves no credential itself. An action that ran and failed (or an action name the connector does not have) answers ok:false with the failure message, not an HTTP error; an unknown connector is 404 and a missing action 422.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the connector to run, from the path.
  ///
  /// * [RunIn] runIn (required):
  Future<RunResp?> postAutomationsConnectorsByIdRun(String id, RunIn runIn,) async {
    final response = await postAutomationsConnectorsByIdRunWithHttpInfo(id, runIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RunResp',) as RunResp;
    
    }
    return null;
  }

  /// Creates an automation and its initial DRAFT version in one call.
  ///
  /// Creates an automation and its initial DRAFT version in one call. The new flow is DISABLED — creating it does not arm its trigger; POST /v1/automations/flows/{id}/enable does that.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateFlowReq] createFlowReq (required):
  Future<Response> postAutomationsFlowsWithHttpInfo(CreateFlowReq createFlowReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/automations/flows';

    // ignore: prefer_final_locals
    Object? postBody = createFlowReq;

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

  /// Creates an automation and its initial DRAFT version in one call.
  ///
  /// Creates an automation and its initial DRAFT version in one call. The new flow is DISABLED — creating it does not arm its trigger; POST /v1/automations/flows/{id}/enable does that.
  ///
  /// Parameters:
  ///
  /// * [CreateFlowReq] createFlowReq (required):
  Future<PopulatedFlow?> postAutomationsFlows(CreateFlowReq createFlowReq,) async {
    final response = await postAutomationsFlowsWithHttpInfo(createFlowReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PopulatedFlow',) as PopulatedFlow;
    
    }
    return null;
  }

  /// Disarms a flow's trigger and marks it DISABLED.
  ///
  /// Disarms a flow's trigger and marks it DISABLED. Its schedule and its event subscriptions are dropped, so a disabled flow is never a live target; runs already in flight are unaffected, and it can still be started on demand.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the flow to act on, from the path.
  Future<Response> postAutomationsFlowsByIdDisableWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/automations/flows/{id}/disable'
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

  /// Disarms a flow's trigger and marks it DISABLED.
  ///
  /// Disarms a flow's trigger and marks it DISABLED. Its schedule and its event subscriptions are dropped, so a disabled flow is never a live target; runs already in flight are unaffected, and it can still be started on demand.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the flow to act on, from the path.
  Future<Flow?> postAutomationsFlowsByIdDisable(String id,) async {
    final response = await postAutomationsFlowsByIdDisableWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Flow',) as Flow;
    
    }
    return null;
  }

  /// Arms a flow's trigger and marks it ENABLED.
  ///
  /// Arms a flow's trigger and marks it ENABLED. A POLLING trigger gets a cron schedule on the durable engine; a WEBHOOK trigger gets a subscription in the routing index, so an inbound event starts it; a MANUAL trigger arms nothing and still runs on demand.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the flow to act on, from the path.
  Future<Response> postAutomationsFlowsByIdEnableWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/automations/flows/{id}/enable'
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

  /// Arms a flow's trigger and marks it ENABLED.
  ///
  /// Arms a flow's trigger and marks it ENABLED. A POLLING trigger gets a cron schedule on the durable engine; a WEBHOOK trigger gets a subscription in the routing index, so an inbound event starts it; a MANUAL trigger arms nothing and still runs on demand.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the flow to act on, from the path.
  Future<Flow?> postAutomationsFlowsByIdEnable(String id,) async {
    final response = await postAutomationsFlowsByIdEnableWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Flow',) as Flow;
    
    }
    return null;
  }

  /// Edit a flow — rename it, retarget its trigger, or add, move and delete steps
  ///
  /// Applies ONE flow operation and answers the thing it changed. The operation is named by `type`, with its arguments under `request`: `CHANGE_NAME`, `UPDATE_TRIGGER`, `ADD_ACTION`, `UPDATE_ACTION`, `MOVE_ACTION`, `DELETE_ACTION` edit the flow's LATEST version and answer with that version, and `CHANGE_STATUS` instead enables or disables the flow and answers with the FLOW. Two response shapes on one address is the rule a reader would otherwise get wrong, and it is why this route is not a typed op.  Edits land on the latest version only — the published version a run executes is untouched until it is republished — and the whole resulting step tree is re-validated against the step-count and size caps after every operation, so a long sequence of `ADD_ACTION` calls cannot grow a flow past a bound one step at a time (422 when it would). Org-scoped and fails closed: a validated principal is required (403 without one), the flow and its version are read under the caller's OWN org so another tenant's id is a 404, and an operation whose `request` does not decode is a 400.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> postAutomationsFlowsByIdOperationsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/automations/flows/{id}/operations'
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

  /// Edit a flow — rename it, retarget its trigger, or add, move and delete steps
  ///
  /// Applies ONE flow operation and answers the thing it changed. The operation is named by `type`, with its arguments under `request`: `CHANGE_NAME`, `UPDATE_TRIGGER`, `ADD_ACTION`, `UPDATE_ACTION`, `MOVE_ACTION`, `DELETE_ACTION` edit the flow's LATEST version and answer with that version, and `CHANGE_STATUS` instead enables or disables the flow and answers with the FLOW. Two response shapes on one address is the rule a reader would otherwise get wrong, and it is why this route is not a typed op.  Edits land on the latest version only — the published version a run executes is untouched until it is republished — and the whole resulting step tree is re-validated against the step-count and size caps after every operation, so a long sequence of `ADD_ACTION` calls cannot grow a flow past a bound one step at a time (422 when it would). Org-scoped and fails closed: a validated principal is required (403 without one), the flow and its version are read under the caller's OWN org so another tenant's id is a 404, and an operation whose `request` does not decode is a 400.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> postAutomationsFlowsByIdOperations(String id,) async {
    final response = await postAutomationsFlowsByIdOperationsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Starts one durable run of a flow now.
  ///
  /// Starts one durable run of a flow now. It runs the flow's published version if one is pinned, else its latest, and answers the run record it created. The run is bounded by the org's per-minute run-start budget and its in-flight concurrency ceiling; over either, or with the engine not ready, no run is started and no run id is burned.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the flow to act on, from the path.
  Future<Response> postAutomationsFlowsByIdRunWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/automations/flows/{id}/run'
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

  /// Starts one durable run of a flow now.
  ///
  /// Starts one durable run of a flow now. It runs the flow's published version if one is pinned, else its latest, and answers the run record it created. The run is bounded by the org's per-minute run-start budget and its in-flight concurrency ceiling; over either, or with the engine not ready, no run is started and no run id is burned.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the flow to act on, from the path.
  Future<FlowRun?> postAutomationsFlowsByIdRun(String id,) async {
    final response = await postAutomationsFlowsByIdRunWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FlowRun',) as FlowRun;
    
    }
    return null;
  }

  /// Adds a new DRAFT version to a flow.
  ///
  /// Adds a new DRAFT version to a flow. The version is created invalid unless it carries a trigger, and it does not become the running version until it is published (PATCH the flow's publishedVersionId) or becomes the latest.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the flow to add a version to, from the path.
  ///
  /// * [CreateVersionIn] createVersionIn (required):
  Future<Response> postAutomationsFlowsByIdVersionsWithHttpInfo(String id, CreateVersionIn createVersionIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/automations/flows/{id}/versions'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = createVersionIn;

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

  /// Adds a new DRAFT version to a flow.
  ///
  /// Adds a new DRAFT version to a flow. The version is created invalid unless it carries a trigger, and it does not become the running version until it is published (PATCH the flow's publishedVersionId) or becomes the latest.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the flow to add a version to, from the path.
  ///
  /// * [CreateVersionIn] createVersionIn (required):
  Future<FlowVersion?> postAutomationsFlowsByIdVersions(String id, CreateVersionIn createVersionIn,) async {
    final response = await postAutomationsFlowsByIdVersionsWithHttpInfo(id, createVersionIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FlowVersion',) as FlowVersion;
    
    }
    return null;
  }

  /// Fire an event that starts every enabled flow subscribed to it
  ///
  /// Delivers one event to the org's automation triggers and answers `{matched:n}` — how many enabled flows had a webhook trigger on this `(source, event)` key and were started by it. A zero match is a success, not an error: nothing was subscribed.  The path is the trigger key and the JSON object body is the event payload, threaded into each started run as `{{trigger.*}}` with all of its keys intact — which is why this is not a typed op, since a declared input struct would silently DISCARD every payload key it had no field for. Re-delivery is a no-op: an `X-Idempotency-Key` header dedupes, and with none the body is content-hashed instead, so a hammer of identical posts collapses to ONE run rather than minting a fresh one per post. An in-platform producer may propagate `X-Causation-Depth` so a firing that a flow caused is bounded against a loop; an absent or invalid header reads as depth 0, an external origin.  Authenticated and org-scoped, unlike a provider's public webhook URL: a validated principal is required (403 without one) and the org is that principal's, never the body's, so a producer can only fire into its own tenant's flows. Both path segments are required (400) and a payload over the size limit is a 413.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] source_ (required):
  ///
  /// * [String] event (required):
  Future<Response> postAutomationsHooksBySourceByEventWithHttpInfo(String source_, String event,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/automations/hooks/{source}/{event}'
      .replaceAll('{source}', source_)
      .replaceAll('{event}', event);

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

  /// Fire an event that starts every enabled flow subscribed to it
  ///
  /// Delivers one event to the org's automation triggers and answers `{matched:n}` — how many enabled flows had a webhook trigger on this `(source, event)` key and were started by it. A zero match is a success, not an error: nothing was subscribed.  The path is the trigger key and the JSON object body is the event payload, threaded into each started run as `{{trigger.*}}` with all of its keys intact — which is why this is not a typed op, since a declared input struct would silently DISCARD every payload key it had no field for. Re-delivery is a no-op: an `X-Idempotency-Key` header dedupes, and with none the body is content-hashed instead, so a hammer of identical posts collapses to ONE run rather than minting a fresh one per post. An in-platform producer may propagate `X-Causation-Depth` so a firing that a flow caused is bounded against a loop; an absent or invalid header reads as depth 0, an external origin.  Authenticated and org-scoped, unlike a provider's public webhook URL: a validated principal is required (403 without one) and the org is that principal's, never the body's, so a producer can only fire into its own tenant's flows. Both path segments are required (400) and a payload over the size limit is a 413.
  ///
  /// Parameters:
  ///
  /// * [String] source_ (required):
  ///
  /// * [String] event (required):
  Future<void> postAutomationsHooksBySourceByEvent(String source_, String event,) async {
    final response = await postAutomationsHooksBySourceByEventWithHttpInfo(source_, event,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Release a run waiting at an approval step, with the approval payload
  ///
  /// Delivers the durable `resume` signal to a run parked on a `wait_for_approval` waitpoint and answers `{resumed:true}` once the engine has taken it.  The body is an ARBITRARY JSON value — object, array, string, number — delivered VERBATIM into the workflow as that waitpoint's output, so it is what the steps after the approval read as their input. An empty body resumes with no payload. That open shape is why this route is not a typed op: an operation's input can carry the payload or the run address, never both.  Org-scoped and fails closed: a validated principal is required (403 without one), the run is read under the caller's OWN org so another tenant's run id is a 404, a body that is not JSON is a 400, and a payload over the size limit is a 413 — it becomes durable engine state, so it is bounded here rather than after it lands. The resume is audited as `automations.run.resume`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> postAutomationsRunsByIdResumeWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/automations/runs/{id}/resume'
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

  /// Release a run waiting at an approval step, with the approval payload
  ///
  /// Delivers the durable `resume` signal to a run parked on a `wait_for_approval` waitpoint and answers `{resumed:true}` once the engine has taken it.  The body is an ARBITRARY JSON value — object, array, string, number — delivered VERBATIM into the workflow as that waitpoint's output, so it is what the steps after the approval read as their input. An empty body resumes with no payload. That open shape is why this route is not a typed op: an operation's input can carry the payload or the run address, never both.  Org-scoped and fails closed: a validated principal is required (403 without one), the run is read under the caller's OWN org so another tenant's run id is a 404, a body that is not JSON is a 400, and a payload over the size limit is a 413 — it becomes durable engine state, so it is bounded here rather than after it lands. The resume is audited as `automations.run.resume`.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> postAutomationsRunsByIdResume(String id,) async {
    final response = await postAutomationsRunsByIdResumeWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
