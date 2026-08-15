//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class TasksApi {
  TasksApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Redirect to the tasks API root
  ///
  /// Answers 307 with Location /v1/tasks/ — this address serves nothing itself. The redirect is a routing fact derived from the engine's subtree, decided before any handler runs, so it is the same on every method.  A 307 preserves both the method and the body, so a client that follows redirects re-sends the request unchanged to /v1/tasks/ and nothing is lost. A client that does NOT follow redirects sees only the 307 and performs no work — address /v1/tasks/ directly and the hop disappears.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteTasksWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tasks';

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

  /// Redirect to the tasks API root
  ///
  /// Answers 307 with Location /v1/tasks/ — this address serves nothing itself. The redirect is a routing fact derived from the engine's subtree, decided before any handler runs, so it is the same on every method.  A 307 preserves both the method and the body, so a client that follows redirects re-sends the request unchanged to /v1/tasks/ and nothing is lost. A client that does NOT follow redirects sees only the 307 and performs no work — address /v1/tasks/ directly and the hop disappears.
  Future<void> deleteTasks() async {
    final response = await deleteTasksWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete an engine resource
  ///
  /// Removes a resource the engine owns — a namespace and the like — inside the caller's own tenant shard.  It is the narrowest of the three working methods: most of the engine's surface is read on GET and acted on with POST, so a delete that finds no route for its path answers the same plain-text 404 any unrouted path does.  This single address fronts the whole durable-workflow engine — namespaces, workflows, schedules, batches, deployments, nexus, task queues, workers, activities and the rest — matched by path segment inside the engine's own router, which is why the document publishes one wildcard rather than sixty-four operations.  Most of it requires a validated principal and is refused 403 otherwise; the settings and cluster probes are open, because capability flags and cluster health carry no tenant data. A principal that is validated but carries NO org is refused too — that request would otherwise read the shared unscoped store instead of anyone's shard, so it fails closed. Admitted, the org, project and user are threaded into the engine, and every read and write lands in that tenant's own shard.  Two things about the answers differ from the rest of this API and will bite a generic client: errors here carry `code` as a NUMBER rather than the usual `status`, and the address serves several content types — JSON, plain-text refusals, and an event stream at the events path. Until the engine is wired the whole surface answers 503.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> deleteTasksByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tasks/{wildcard1}'
      .replaceAll('{wildcard1}', wildcard1);

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

  /// Delete an engine resource
  ///
  /// Removes a resource the engine owns — a namespace and the like — inside the caller's own tenant shard.  It is the narrowest of the three working methods: most of the engine's surface is read on GET and acted on with POST, so a delete that finds no route for its path answers the same plain-text 404 any unrouted path does.  This single address fronts the whole durable-workflow engine — namespaces, workflows, schedules, batches, deployments, nexus, task queues, workers, activities and the rest — matched by path segment inside the engine's own router, which is why the document publishes one wildcard rather than sixty-four operations.  Most of it requires a validated principal and is refused 403 otherwise; the settings and cluster probes are open, because capability flags and cluster health carry no tenant data. A principal that is validated but carries NO org is refused too — that request would otherwise read the shared unscoped store instead of anyone's shard, so it fails closed. Admitted, the org, project and user are threaded into the engine, and every read and write lands in that tenant's own shard.  Two things about the answers differ from the rest of this API and will bite a generic client: errors here carry `code` as a NUMBER rather than the usual `status`, and the address serves several content types — JSON, plain-text refusals, and an event stream at the events path. Until the engine is wired the whole surface answers 503.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> deleteTasksByWildcard1(String wildcard1,) async {
    final response = await deleteTasksByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Redirect to the tasks API root
  ///
  /// Answers 307 with Location /v1/tasks/ — this address serves nothing itself. The redirect is a routing fact derived from the engine's subtree, decided before any handler runs, so it is the same on every method.  A 307 preserves both the method and the body, so a client that follows redirects re-sends the request unchanged to /v1/tasks/ and nothing is lost. A client that does NOT follow redirects sees only the 307 and performs no work — address /v1/tasks/ directly and the hop disappears.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTasksWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tasks';

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

  /// Redirect to the tasks API root
  ///
  /// Answers 307 with Location /v1/tasks/ — this address serves nothing itself. The redirect is a routing fact derived from the engine's subtree, decided before any handler runs, so it is the same on every method.  A 307 preserves both the method and the body, so a client that follows redirects re-sends the request unchanged to /v1/tasks/ and nothing is lost. A client that does NOT follow redirects sees only the 307 and performs no work — address /v1/tasks/ directly and the hop disappears.
  Future<void> getTasks() async {
    final response = await getTasksWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Read workflow state from the durable engine
  ///
  /// Reads from the durable engine: list namespaces, workflows, schedules, batches, deployments, task queues, workers and search attributes, fetch one workflow with its history, or subscribe to the realtime event stream. The cluster and settings probes are on this method too.  This single address fronts the whole durable-workflow engine — namespaces, workflows, schedules, batches, deployments, nexus, task queues, workers, activities and the rest — matched by path segment inside the engine's own router, which is why the document publishes one wildcard rather than sixty-four operations.  Most of it requires a validated principal and is refused 403 otherwise; the settings and cluster probes are open, because capability flags and cluster health carry no tenant data. A principal that is validated but carries NO org is refused too — that request would otherwise read the shared unscoped store instead of anyone's shard, so it fails closed. Admitted, the org, project and user are threaded into the engine, and every read and write lands in that tenant's own shard.  Two things about the answers differ from the rest of this API and will bite a generic client: errors here carry `code` as a NUMBER rather than the usual `status`, and the address serves several content types — JSON, plain-text refusals, and an event stream at the events path. Until the engine is wired the whole surface answers 503.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> getTasksByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tasks/{wildcard1}'
      .replaceAll('{wildcard1}', wildcard1);

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

  /// Read workflow state from the durable engine
  ///
  /// Reads from the durable engine: list namespaces, workflows, schedules, batches, deployments, task queues, workers and search attributes, fetch one workflow with its history, or subscribe to the realtime event stream. The cluster and settings probes are on this method too.  This single address fronts the whole durable-workflow engine — namespaces, workflows, schedules, batches, deployments, nexus, task queues, workers, activities and the rest — matched by path segment inside the engine's own router, which is why the document publishes one wildcard rather than sixty-four operations.  Most of it requires a validated principal and is refused 403 otherwise; the settings and cluster probes are open, because capability flags and cluster health carry no tenant data. A principal that is validated but carries NO org is refused too — that request would otherwise read the shared unscoped store instead of anyone's shard, so it fails closed. Admitted, the org, project and user are threaded into the engine, and every read and write lands in that tenant's own shard.  Two things about the answers differ from the rest of this API and will bite a generic client: errors here carry `code` as a NUMBER rather than the usual `status`, and the address serves several content types — JSON, plain-text refusals, and an event stream at the events path. Until the engine is wired the whole surface answers 503.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> getTasksByWildcard1(String wildcard1,) async {
    final response = await getTasksByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Redirect to the tasks API root
  ///
  /// Answers 307 with Location /v1/tasks/ — this address serves nothing itself. The redirect is a routing fact derived from the engine's subtree, decided before any handler runs, so it is the same on every method.  A 307 preserves both the method and the body, so a client that follows redirects re-sends the request unchanged to /v1/tasks/ and nothing is lost. A client that does NOT follow redirects sees only the 307 and performs no work — address /v1/tasks/ directly and the hop disappears.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> patchTasksWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tasks';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Redirect to the tasks API root
  ///
  /// Answers 307 with Location /v1/tasks/ — this address serves nothing itself. The redirect is a routing fact derived from the engine's subtree, decided before any handler runs, so it is the same on every method.  A 307 preserves both the method and the body, so a client that follows redirects re-sends the request unchanged to /v1/tasks/ and nothing is lost. A client that does NOT follow redirects sees only the 307 and performs no work — address /v1/tasks/ directly and the hop disappears.
  Future<void> patchTasks() async {
    final response = await patchTasksWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Not served by the engine
  ///
  /// Published because this address accepts every method, but the engine routes no PATCH: the answer is a plain-text 404, not a 405, and no state changes.  There is no partial update on this surface. State advances by appending events, so the operations that change a running workflow — signal, cancel, terminate, reset — are all POST.  This single address fronts the whole durable-workflow engine — namespaces, workflows, schedules, batches, deployments, nexus, task queues, workers, activities and the rest — matched by path segment inside the engine's own router, which is why the document publishes one wildcard rather than sixty-four operations.  Most of it requires a validated principal and is refused 403 otherwise; the settings and cluster probes are open, because capability flags and cluster health carry no tenant data. A principal that is validated but carries NO org is refused too — that request would otherwise read the shared unscoped store instead of anyone's shard, so it fails closed. Admitted, the org, project and user are threaded into the engine, and every read and write lands in that tenant's own shard.  Two things about the answers differ from the rest of this API and will bite a generic client: errors here carry `code` as a NUMBER rather than the usual `status`, and the address serves several content types — JSON, plain-text refusals, and an event stream at the events path. Until the engine is wired the whole surface answers 503.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> patchTasksByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tasks/{wildcard1}'
      .replaceAll('{wildcard1}', wildcard1);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Not served by the engine
  ///
  /// Published because this address accepts every method, but the engine routes no PATCH: the answer is a plain-text 404, not a 405, and no state changes.  There is no partial update on this surface. State advances by appending events, so the operations that change a running workflow — signal, cancel, terminate, reset — are all POST.  This single address fronts the whole durable-workflow engine — namespaces, workflows, schedules, batches, deployments, nexus, task queues, workers, activities and the rest — matched by path segment inside the engine's own router, which is why the document publishes one wildcard rather than sixty-four operations.  Most of it requires a validated principal and is refused 403 otherwise; the settings and cluster probes are open, because capability flags and cluster health carry no tenant data. A principal that is validated but carries NO org is refused too — that request would otherwise read the shared unscoped store instead of anyone's shard, so it fails closed. Admitted, the org, project and user are threaded into the engine, and every read and write lands in that tenant's own shard.  Two things about the answers differ from the rest of this API and will bite a generic client: errors here carry `code` as a NUMBER rather than the usual `status`, and the address serves several content types — JSON, plain-text refusals, and an event stream at the events path. Until the engine is wired the whole surface answers 503.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> patchTasksByWildcard1(String wildcard1,) async {
    final response = await patchTasksByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Redirect to the tasks API root
  ///
  /// Answers 307 with Location /v1/tasks/ — this address serves nothing itself. The redirect is a routing fact derived from the engine's subtree, decided before any handler runs, so it is the same on every method.  A 307 preserves both the method and the body, so a client that follows redirects re-sends the request unchanged to /v1/tasks/ and nothing is lost. A client that does NOT follow redirects sees only the 307 and performs no work — address /v1/tasks/ directly and the hop disappears.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postTasksWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tasks';

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

  /// Redirect to the tasks API root
  ///
  /// Answers 307 with Location /v1/tasks/ — this address serves nothing itself. The redirect is a routing fact derived from the engine's subtree, decided before any handler runs, so it is the same on every method.  A 307 preserves both the method and the body, so a client that follows redirects re-sends the request unchanged to /v1/tasks/ and nothing is lost. A client that does NOT follow redirects sees only the 307 and performs no work — address /v1/tasks/ directly and the hop disappears.
  Future<void> postTasks() async {
    final response = await postTasksWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Start workflows and act on running ones
  ///
  /// Everything that changes the engine's state: register a namespace, start a workflow or signal-with-start one, and signal, query, cancel, terminate or reset a workflow that is already running. The MCP tool surface is on this method as well, and is the one part of it that refuses a non-POST with a plain-text 405.  The engine is event-sourced and exactly-once, so an action is durable once it is accepted and survives a process crash — a started workflow resumes rather than restarts.  This single address fronts the whole durable-workflow engine — namespaces, workflows, schedules, batches, deployments, nexus, task queues, workers, activities and the rest — matched by path segment inside the engine's own router, which is why the document publishes one wildcard rather than sixty-four operations.  Most of it requires a validated principal and is refused 403 otherwise; the settings and cluster probes are open, because capability flags and cluster health carry no tenant data. A principal that is validated but carries NO org is refused too — that request would otherwise read the shared unscoped store instead of anyone's shard, so it fails closed. Admitted, the org, project and user are threaded into the engine, and every read and write lands in that tenant's own shard.  Two things about the answers differ from the rest of this API and will bite a generic client: errors here carry `code` as a NUMBER rather than the usual `status`, and the address serves several content types — JSON, plain-text refusals, and an event stream at the events path. Until the engine is wired the whole surface answers 503.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> postTasksByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tasks/{wildcard1}'
      .replaceAll('{wildcard1}', wildcard1);

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

  /// Start workflows and act on running ones
  ///
  /// Everything that changes the engine's state: register a namespace, start a workflow or signal-with-start one, and signal, query, cancel, terminate or reset a workflow that is already running. The MCP tool surface is on this method as well, and is the one part of it that refuses a non-POST with a plain-text 405.  The engine is event-sourced and exactly-once, so an action is durable once it is accepted and survives a process crash — a started workflow resumes rather than restarts.  This single address fronts the whole durable-workflow engine — namespaces, workflows, schedules, batches, deployments, nexus, task queues, workers, activities and the rest — matched by path segment inside the engine's own router, which is why the document publishes one wildcard rather than sixty-four operations.  Most of it requires a validated principal and is refused 403 otherwise; the settings and cluster probes are open, because capability flags and cluster health carry no tenant data. A principal that is validated but carries NO org is refused too — that request would otherwise read the shared unscoped store instead of anyone's shard, so it fails closed. Admitted, the org, project and user are threaded into the engine, and every read and write lands in that tenant's own shard.  Two things about the answers differ from the rest of this API and will bite a generic client: errors here carry `code` as a NUMBER rather than the usual `status`, and the address serves several content types — JSON, plain-text refusals, and an event stream at the events path. Until the engine is wired the whole surface answers 503.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> postTasksByWildcard1(String wildcard1,) async {
    final response = await postTasksByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Redirect to the tasks API root
  ///
  /// Answers 307 with Location /v1/tasks/ — this address serves nothing itself. The redirect is a routing fact derived from the engine's subtree, decided before any handler runs, so it is the same on every method.  A 307 preserves both the method and the body, so a client that follows redirects re-sends the request unchanged to /v1/tasks/ and nothing is lost. A client that does NOT follow redirects sees only the 307 and performs no work — address /v1/tasks/ directly and the hop disappears.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> putTasksWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tasks';

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

  /// Redirect to the tasks API root
  ///
  /// Answers 307 with Location /v1/tasks/ — this address serves nothing itself. The redirect is a routing fact derived from the engine's subtree, decided before any handler runs, so it is the same on every method.  A 307 preserves both the method and the body, so a client that follows redirects re-sends the request unchanged to /v1/tasks/ and nothing is lost. A client that does NOT follow redirects sees only the 307 and performs no work — address /v1/tasks/ directly and the hop disappears.
  Future<void> putTasks() async {
    final response = await putTasksWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Not served by the engine
  ///
  /// Published because this address accepts every method, but the engine routes no PUT: the answer is a plain-text 404, not a 405, and no state changes.  Nothing here is updated by replacement. The engine is event-sourced — a workflow is changed by signalling, cancelling, terminating or resetting it, all of which are POST — so a client reaching for PUT wants POST.  This single address fronts the whole durable-workflow engine — namespaces, workflows, schedules, batches, deployments, nexus, task queues, workers, activities and the rest — matched by path segment inside the engine's own router, which is why the document publishes one wildcard rather than sixty-four operations.  Most of it requires a validated principal and is refused 403 otherwise; the settings and cluster probes are open, because capability flags and cluster health carry no tenant data. A principal that is validated but carries NO org is refused too — that request would otherwise read the shared unscoped store instead of anyone's shard, so it fails closed. Admitted, the org, project and user are threaded into the engine, and every read and write lands in that tenant's own shard.  Two things about the answers differ from the rest of this API and will bite a generic client: errors here carry `code` as a NUMBER rather than the usual `status`, and the address serves several content types — JSON, plain-text refusals, and an event stream at the events path. Until the engine is wired the whole surface answers 503.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> putTasksByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tasks/{wildcard1}'
      .replaceAll('{wildcard1}', wildcard1);

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

  /// Not served by the engine
  ///
  /// Published because this address accepts every method, but the engine routes no PUT: the answer is a plain-text 404, not a 405, and no state changes.  Nothing here is updated by replacement. The engine is event-sourced — a workflow is changed by signalling, cancelling, terminating or resetting it, all of which are POST — so a client reaching for PUT wants POST.  This single address fronts the whole durable-workflow engine — namespaces, workflows, schedules, batches, deployments, nexus, task queues, workers, activities and the rest — matched by path segment inside the engine's own router, which is why the document publishes one wildcard rather than sixty-four operations.  Most of it requires a validated principal and is refused 403 otherwise; the settings and cluster probes are open, because capability flags and cluster health carry no tenant data. A principal that is validated but carries NO org is refused too — that request would otherwise read the shared unscoped store instead of anyone's shard, so it fails closed. Admitted, the org, project and user are threaded into the engine, and every read and write lands in that tenant's own shard.  Two things about the answers differ from the rest of this API and will bite a generic client: errors here carry `code` as a NUMBER rather than the usual `status`, and the address serves several content types — JSON, plain-text refusals, and an event stream at the events path. Until the engine is wired the whole surface answers 503.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> putTasksByWildcard1(String wildcard1,) async {
    final response = await putTasksByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
