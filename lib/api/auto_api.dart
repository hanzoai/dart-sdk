//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class AutoApi {
  AutoApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Deletes one of the caller's flows.
  ///
  /// Deletes one of the caller's flows. A foreign id answers 404 and deletes nothing.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] flow (required):
  ///   Flow is the flow's id, taken from the path.
  Future<Response> deleteAutoFlowsByFlowWithHttpInfo(String flow,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/auto/flows/{flow}'
      .replaceAll('{flow}', flow);

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

  /// Deletes one of the caller's flows.
  ///
  /// Deletes one of the caller's flows. A foreign id answers 404 and deletes nothing.
  ///
  /// Parameters:
  ///
  /// * [String] flow (required):
  ///   Flow is the flow's id, taken from the path.
  Future<Object?> deleteAutoFlowsByFlow(String flow,) async {
    final response = await deleteAutoFlowsByFlowWithHttpInfo(flow,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Flows lists the caller's flows, newest first.
  ///
  /// Flows lists the caller's flows, newest first. The list is scoped by the product to the caller's org — it can only ever hold the caller's own flows.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAutoFlowsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/auto/flows';

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

  /// Flows lists the caller's flows, newest first.
  ///
  /// Flows lists the caller's flows, newest first. The list is scoped by the product to the caller's org — it can only ever hold the caller's own flows.
  Future<Object?> getAutoFlows() async {
    final response = await getAutoFlowsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Flow reads one of the caller's flows — the full record, graph included.
  ///
  /// Flow reads one of the caller's flows — the full record, graph included. A flow outside the caller's org answers 404, indistinguishable from one that does not exist.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] flow (required):
  ///   Flow is the flow's id, taken from the path.
  Future<Response> getAutoFlowsByFlowWithHttpInfo(String flow,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/auto/flows/{flow}'
      .replaceAll('{flow}', flow);

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

  /// Flow reads one of the caller's flows — the full record, graph included.
  ///
  /// Flow reads one of the caller's flows — the full record, graph included. A flow outside the caller's org answers 404, indistinguishable from one that does not exist.
  ///
  /// Parameters:
  ///
  /// * [String] flow (required):
  ///   Flow is the flow's id, taken from the path.
  Future<Object?> getAutoFlowsByFlow(String flow,) async {
    final response = await getAutoFlowsByFlowWithHttpInfo(flow,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Pieces lists the product's built-in piece catalog: the trigger and action types a flow's nodes can use (webhook, schedule, http, set, branch), each with its input descriptors.
  ///
  /// Pieces lists the product's built-in piece catalog: the trigger and action types a flow's nodes can use (webhook, schedule, http, set, branch), each with its input descriptors. The catalog is compiled into the product — adding a piece is a product release, not a platform call.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAutoPiecesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/auto/pieces';

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

  /// Pieces lists the product's built-in piece catalog: the trigger and action types a flow's nodes can use (webhook, schedule, http, set, branch), each with its input descriptors.
  ///
  /// Pieces lists the product's built-in piece catalog: the trigger and action types a flow's nodes can use (webhook, schedule, http, set, branch), each with its input descriptors. The catalog is compiled into the product — adding a piece is a product release, not a platform call.
  Future<Object?> getAutoPieces() async {
    final response = await getAutoPiecesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Runs lists the caller's run records, newest first — optionally one flow's.
  ///
  /// Runs lists the caller's run records, newest first — optionally one flow's. Each record carries the run's status (queued, running, completed, failed), its input, and its output once the run finished.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] flow:
  ///   Flow narrows the list to one flow's runs when present.
  Future<Response> getAutoRunsWithHttpInfo({ String? flow, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/auto/runs';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (flow != null) {
      queryParams.addAll(_queryParams('', 'flow', flow));
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

  /// Runs lists the caller's run records, newest first — optionally one flow's.
  ///
  /// Runs lists the caller's run records, newest first — optionally one flow's. Each record carries the run's status (queued, running, completed, failed), its input, and its output once the run finished.
  ///
  /// Parameters:
  ///
  /// * [String] flow:
  ///   Flow narrows the list to one flow's runs when present.
  Future<Object?> getAutoRuns({ String? flow, }) async {
    final response = await getAutoRunsWithHttpInfo( flow: flow, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Run reads one run record: status, input, output (each executed node's result keyed by node id once completed), error detail if it failed, and timestamps.
  ///
  /// Run reads one run record: status, input, output (each executed node's result keyed by node id once completed), error detail if it failed, and timestamps. A run outside the caller's org answers 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] run (required):
  ///   Run is the run's id, taken from the path.
  Future<Response> getAutoRunsByRunWithHttpInfo(String run,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/auto/runs/{run}'
      .replaceAll('{run}', run);

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

  /// Run reads one run record: status, input, output (each executed node's result keyed by node id once completed), error detail if it failed, and timestamps.
  ///
  /// Run reads one run record: status, input, output (each executed node's result keyed by node id once completed), error detail if it failed, and timestamps. A run outside the caller's org answers 404.
  ///
  /// Parameters:
  ///
  /// * [String] run (required):
  ///   Run is the run's id, taken from the path.
  Future<Object?> getAutoRunsByRun(String run,) async {
    final response = await getAutoRunsByRunWithHttpInfo(run,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Status reports whether the auto service is reachable — its own health endpoint as an honest lens for \"is the automation plane up\".
  ///
  /// Status reports whether the auto service is reachable — its own health endpoint as an honest lens for \"is the automation plane up\".
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAutoStatusWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/auto/status';

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

  /// Status reports whether the auto service is reachable — its own health endpoint as an honest lens for \"is the automation plane up\".
  ///
  /// Status reports whether the auto service is reachable — its own health endpoint as an honest lens for \"is the automation plane up\".
  Future<AutoStatus?> getAutoStatus() async {
    final response = await getAutoStatusWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AutoStatus',) as AutoStatus;
    
    }
    return null;
  }

  /// Patches one of the caller's flows: the name, the graph, or both — only the stated fields move.
  ///
  /// Patches one of the caller's flows: the name, the graph, or both — only the stated fields move.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] flow (required):
  ///   Flow is the flow's id, taken from the path.
  ///
  /// * [AutoUpdate] autoUpdate (required):
  Future<Response> patchAutoFlowsByFlowWithHttpInfo(String flow, AutoUpdate autoUpdate,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/auto/flows/{flow}'
      .replaceAll('{flow}', flow);

    // ignore: prefer_final_locals
    Object? postBody = autoUpdate;

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

  /// Patches one of the caller's flows: the name, the graph, or both — only the stated fields move.
  ///
  /// Patches one of the caller's flows: the name, the graph, or both — only the stated fields move.
  ///
  /// Parameters:
  ///
  /// * [String] flow (required):
  ///   Flow is the flow's id, taken from the path.
  ///
  /// * [AutoUpdate] autoUpdate (required):
  Future<Object?> patchAutoFlowsByFlow(String flow, AutoUpdate autoUpdate,) async {
    final response = await patchAutoFlowsByFlowWithHttpInfo(flow, autoUpdate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Creates a flow in the caller's org.
  ///
  /// Creates a flow in the caller's org. The org is stamped server-side from the validated principal — there is no field by which a caller could place a flow in another org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AutoCreate] autoCreate (required):
  Future<Response> postAutoFlowsWithHttpInfo(AutoCreate autoCreate,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/auto/flows';

    // ignore: prefer_final_locals
    Object? postBody = autoCreate;

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

  /// Creates a flow in the caller's org.
  ///
  /// Creates a flow in the caller's org. The org is stamped server-side from the validated principal — there is no field by which a caller could place a flow in another org.
  ///
  /// Parameters:
  ///
  /// * [AutoCreate] autoCreate (required):
  Future<Object?> postAutoFlows(AutoCreate autoCreate,) async {
    final response = await postAutoFlowsWithHttpInfo(autoCreate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Publish snapshots the flow's current graph as its next immutable version and arms the flow's triggers.
  ///
  /// Publish snapshots the flow's current graph as its next immutable version and arms the flow's triggers. Past versions stay addressable in the product for rollback; runs always execute the graph as it was dispatched.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] flow (required):
  ///   Flow is the flow's id, taken from the path.
  Future<Response> postAutoFlowsByFlowPublishWithHttpInfo(String flow,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/auto/flows/{flow}/publish'
      .replaceAll('{flow}', flow);

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

  /// Publish snapshots the flow's current graph as its next immutable version and arms the flow's triggers.
  ///
  /// Publish snapshots the flow's current graph as its next immutable version and arms the flow's triggers. Past versions stay addressable in the product for rollback; runs always execute the graph as it was dispatched.
  ///
  /// Parameters:
  ///
  /// * [String] flow (required):
  ///   Flow is the flow's id, taken from the path.
  Future<Object?> postAutoFlowsByFlowPublish(String flow,) async {
    final response = await postAutoFlowsByFlowPublishWithHttpInfo(flow,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Start begins one asynchronous run of a flow: the product dispatches the graph to its durable execution engine (the hanzo tasks plane) and answers immediately with the run record in status running.
  ///
  /// Start begins one asynchronous run of a flow: the product dispatches the graph to its durable execution engine (the hanzo tasks plane) and answers immediately with the run record in status running. Poll the run until it reaches completed — its output then holds each node's result keyed by node id — or failed, with the error. A flow whose engine is unreachable answers the product's 503: dispatch is real or it is refused, never queued into the void.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AutoStart] autoStart (required):
  Future<Response> postAutoRunsWithHttpInfo(AutoStart autoStart,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/auto/runs';

    // ignore: prefer_final_locals
    Object? postBody = autoStart;

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

  /// Start begins one asynchronous run of a flow: the product dispatches the graph to its durable execution engine (the hanzo tasks plane) and answers immediately with the run record in status running.
  ///
  /// Start begins one asynchronous run of a flow: the product dispatches the graph to its durable execution engine (the hanzo tasks plane) and answers immediately with the run record in status running. Poll the run until it reaches completed — its output then holds each node's result keyed by node id — or failed, with the error. A flow whose engine is unreachable answers the product's 503: dispatch is real or it is refused, never queued into the void.
  ///
  /// Parameters:
  ///
  /// * [AutoStart] autoStart (required):
  Future<Object?> postAutoRuns(AutoStart autoStart,) async {
    final response = await postAutoRunsWithHttpInfo(autoStart,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }
}
