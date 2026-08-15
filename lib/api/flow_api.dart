//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class FlowApi {
  FlowApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Deletes one of the caller's workflows and its runs.
  ///
  /// Deletes one of the caller's workflows and its runs. Ownership is verified first; a foreign id answers 404 and deletes nothing.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] workflow (required):
  ///   Workflow is the workflow's UUID, taken from the path.
  Future<Response> deleteFlowWorkflowsByWorkflowWithHttpInfo(String workflow,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/flow/workflows/{workflow}'
      .replaceAll('{workflow}', workflow);

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

  /// Deletes one of the caller's workflows and its runs.
  ///
  /// Deletes one of the caller's workflows and its runs. Ownership is verified first; a foreign id answers 404 and deletes nothing.
  ///
  /// Parameters:
  ///
  /// * [String] workflow (required):
  ///   Workflow is the workflow's UUID, taken from the path.
  Future<Object?> deleteFlowWorkflowsByWorkflow(String workflow,) async {
    final response = await deleteFlowWorkflowsByWorkflowWithHttpInfo(workflow,);
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

  /// Runs reads one workflow's recorded runs: every component build with its result, keyed by component.
  ///
  /// Runs reads one workflow's recorded runs: every component build with its result, keyed by component. Ownership is verified first — run records never cross the org boundary.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] workflow:
  ///   Workflow is the UUID of the workflow whose run records to read. It rides the query string.
  Future<Response> getFlowRunsWithHttpInfo({ String? workflow, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/flow/runs';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (workflow != null) {
      queryParams.addAll(_queryParams('', 'workflow', workflow));
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

  /// Runs reads one workflow's recorded runs: every component build with its result, keyed by component.
  ///
  /// Runs reads one workflow's recorded runs: every component build with its result, keyed by component. Ownership is verified first — run records never cross the org boundary.
  ///
  /// Parameters:
  ///
  /// * [String] workflow:
  ///   Workflow is the UUID of the workflow whose run records to read. It rides the query string.
  Future<Object?> getFlowRuns({ String? workflow, }) async {
    final response = await getFlowRunsWithHttpInfo( workflow: workflow, );
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

  /// Status reports whether the flow service is reachable and which version it runs.
  ///
  /// Status reports whether the flow service is reachable and which version it runs. It is the product's own /health and /v1/version composed — an honest lens for \"is the workflow plane up\", never a fabricated ok.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getFlowStatusWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/flow/status';

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

  /// Status reports whether the flow service is reachable and which version it runs.
  ///
  /// Status reports whether the flow service is reachable and which version it runs. It is the product's own /health and /v1/version composed — an honest lens for \"is the workflow plane up\", never a fabricated ok.
  Future<FlowStatus?> getFlowStatus() async {
    final response = await getFlowStatusWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FlowStatus',) as FlowStatus;
    
    }
    return null;
  }

  /// Workflows lists the caller's workflows, paged.
  ///
  /// Workflows lists the caller's workflows, paged. The list is scoped server-side to the org's project — the page can only ever hold the caller's own workflows.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] page:
  ///   Page is the 1-based page of workflows to return.
  ///
  /// * [String] size:
  ///   Size is how many workflows one page holds (the product caps it at 100).
  Future<Response> getFlowWorkflowsWithHttpInfo({ String? page, String? size, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/flow/workflows';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
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

  /// Workflows lists the caller's workflows, paged.
  ///
  /// Workflows lists the caller's workflows, paged. The list is scoped server-side to the org's project — the page can only ever hold the caller's own workflows.
  ///
  /// Parameters:
  ///
  /// * [String] page:
  ///   Page is the 1-based page of workflows to return.
  ///
  /// * [String] size:
  ///   Size is how many workflows one page holds (the product caps it at 100).
  Future<Object?> getFlowWorkflows({ String? page, String? size, }) async {
    final response = await getFlowWorkflowsWithHttpInfo( page: page, size: size, );
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

  /// Workflow reads one of the caller's workflows — the full record, graph included.
  ///
  /// Workflow reads one of the caller's workflows — the full record, graph included. A workflow outside the caller's org answers 404, indistinguishable from one that does not exist.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] workflow (required):
  ///   Workflow is the workflow's UUID, taken from the path.
  Future<Response> getFlowWorkflowsByWorkflowWithHttpInfo(String workflow,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/flow/workflows/{workflow}'
      .replaceAll('{workflow}', workflow);

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

  /// Workflow reads one of the caller's workflows — the full record, graph included.
  ///
  /// Workflow reads one of the caller's workflows — the full record, graph included. A workflow outside the caller's org answers 404, indistinguishable from one that does not exist.
  ///
  /// Parameters:
  ///
  /// * [String] workflow (required):
  ///   Workflow is the workflow's UUID, taken from the path.
  Future<Object?> getFlowWorkflowsByWorkflow(String workflow,) async {
    final response = await getFlowWorkflowsByWorkflowWithHttpInfo(workflow,);
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

  /// Patches one of the caller's workflows: name, description, graph, or the locked flag — only the stated fields move.
  ///
  /// Patches one of the caller's workflows: name, description, graph, or the locked flag — only the stated fields move. Ownership is verified before the patch reaches the product.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] workflow (required):
  ///   Workflow is the workflow's UUID, taken from the path.
  ///
  /// * [FlowUpdate] flowUpdate (required):
  Future<Response> patchFlowWorkflowsByWorkflowWithHttpInfo(String workflow, FlowUpdate flowUpdate,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/flow/workflows/{workflow}'
      .replaceAll('{workflow}', workflow);

    // ignore: prefer_final_locals
    Object? postBody = flowUpdate;

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

  /// Patches one of the caller's workflows: name, description, graph, or the locked flag — only the stated fields move.
  ///
  /// Patches one of the caller's workflows: name, description, graph, or the locked flag — only the stated fields move. Ownership is verified before the patch reaches the product.
  ///
  /// Parameters:
  ///
  /// * [String] workflow (required):
  ///   Workflow is the workflow's UUID, taken from the path.
  ///
  /// * [FlowUpdate] flowUpdate (required):
  Future<Object?> patchFlowWorkflowsByWorkflow(String workflow, FlowUpdate flowUpdate,) async {
    final response = await patchFlowWorkflowsByWorkflowWithHttpInfo(workflow, flowUpdate,);
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

  /// Run executes one of the caller's workflows synchronously: the graph runs in the flow service and the response carries the run's session and outputs.
  ///
  /// Run executes one of the caller's workflows synchronously: the graph runs in the flow service and the response carries the run's session and outputs. A graph whose components fail reports the product's own error. Runs are bounded by the product's five-minute sync ceiling.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FlowRun] flowRun (required):
  Future<Response> postFlowRunsWithHttpInfo(FlowRun flowRun,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/flow/runs';

    // ignore: prefer_final_locals
    Object? postBody = flowRun;

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

  /// Run executes one of the caller's workflows synchronously: the graph runs in the flow service and the response carries the run's session and outputs.
  ///
  /// Run executes one of the caller's workflows synchronously: the graph runs in the flow service and the response carries the run's session and outputs. A graph whose components fail reports the product's own error. Runs are bounded by the product's five-minute sync ceiling.
  ///
  /// Parameters:
  ///
  /// * [FlowRun] flowRun (required):
  Future<Object?> postFlowRuns(FlowRun flowRun,) async {
    final response = await postFlowRunsWithHttpInfo(flowRun,);
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

  /// Creates a workflow in the caller's org.
  ///
  /// Creates a workflow in the caller's org. The org's project id is pinned server-side from the validated principal — there is no field by which a caller could place a workflow in another org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FlowCreate] flowCreate (required):
  Future<Response> postFlowWorkflowsWithHttpInfo(FlowCreate flowCreate,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/flow/workflows';

    // ignore: prefer_final_locals
    Object? postBody = flowCreate;

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

  /// Creates a workflow in the caller's org.
  ///
  /// Creates a workflow in the caller's org. The org's project id is pinned server-side from the validated principal — there is no field by which a caller could place a workflow in another org.
  ///
  /// Parameters:
  ///
  /// * [FlowCreate] flowCreate (required):
  Future<Object?> postFlowWorkflows(FlowCreate flowCreate,) async {
    final response = await postFlowWorkflowsWithHttpInfo(flowCreate,);
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
