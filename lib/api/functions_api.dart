//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class FunctionsApi {
  FunctionsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Removes one of the caller org's functions and answers 204.
  ///
  /// Removes one of the caller org's functions and answers 204.  A name this org does not hold is 404 — never a silent success — and a name belonging to another tenant is the same 404, because the delete is predicated on the validated org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the function the URL names.
  Future<Response> deleteFunctionsByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/functions/{name}'
      .replaceAll('{name}', name);

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

  /// Removes one of the caller org's functions and answers 204.
  ///
  /// Removes one of the caller org's functions and answers 204.  A name this org does not hold is 404 — never a silent success — and a name belonging to another tenant is the same 404, because the delete is predicated on the validated org.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the function the URL names.
  Future<void> deleteFunctionsByName(String name,) async {
    final response = await deleteFunctionsByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Is every serverless function the caller's org has published, each with its real 7-day rollup.
  ///
  /// Is every serverless function the caller's org has published, each with its real 7-day rollup.  A row carries the function's runtime, resource limits, deployment target and its invoke endpoint, plus envCount — how many secrets it mounts. The rollup fields are ABSENT rather than zero when the function has not run in the window, so a console renders \"—\" instead of a fabricated 0.  Requires a validated principal; the listing is scoped to its org.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getFunctionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/functions';

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

  /// Is every serverless function the caller's org has published, each with its real 7-day rollup.
  ///
  /// Is every serverless function the caller's org has published, each with its real 7-day rollup.  A row carries the function's runtime, resource limits, deployment target and its invoke endpoint, plus envCount — how many secrets it mounts. The rollup fields are ABSENT rather than zero when the function has not run in the window, so a console renders \"—\" instead of a fabricated 0.  Requires a validated principal; the listing is scoped to its org.
  Future<FnList?> getFunctions() async {
    final response = await getFunctionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FnList',) as FnList;
    
    }
    return null;
  }

  /// Is one function with everything a detail page needs in one round-trip: its definition, its 7-day rollup, its trigger, its twenty most recent invocations and the NAMES of the secrets it mounts.
  ///
  /// Is one function with everything a detail page needs in one round-trip: its definition, its 7-day rollup, its trigger, its twenty most recent invocations and the NAMES of the secrets it mounts.  Secret values are never read or returned. A name the caller's org does not hold is 404, which is also what another tenant's function looks like from here.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the function the URL names.
  Future<Response> getFunctionsByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/functions/{name}'
      .replaceAll('{name}', name);

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

  /// Is one function with everything a detail page needs in one round-trip: its definition, its 7-day rollup, its trigger, its twenty most recent invocations and the NAMES of the secrets it mounts.
  ///
  /// Is one function with everything a detail page needs in one round-trip: its definition, its 7-day rollup, its trigger, its twenty most recent invocations and the NAMES of the secrets it mounts.  Secret values are never read or returned. A name the caller's org does not hold is 404, which is also what another tenant's function looks like from here.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the function the URL names.
  Future<FunctionDetail?> getFunctionsByName(String name,) async {
    final response = await getFunctionsByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FunctionDetail',) as FunctionDetail;
    
    }
    return null;
  }

  /// Is one function's past runs, newest first — each with its status, HTTP code, method, time and duration.
  ///
  /// Is one function's past runs, newest first — each with its status, HTTP code, method, time and duration.  These are real recorded rows, not a projection: an invocation appears here only once it actually ran. Requires a validated principal; the read is scoped to its org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the function the URL names.
  ///
  /// * [int] limit:
  ///   Limit caps the page, defaulting to 100.
  Future<Response> getFunctionsByNameInvocationsWithHttpInfo(String name, { int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/functions/{name}/invocations'
      .replaceAll('{name}', name);

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

  /// Is one function's past runs, newest first — each with its status, HTTP code, method, time and duration.
  ///
  /// Is one function's past runs, newest first — each with its status, HTTP code, method, time and duration.  These are real recorded rows, not a projection: an invocation appears here only once it actually ran. Requires a validated principal; the read is scoped to its org.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the function the URL names.
  ///
  /// * [int] limit:
  ///   Limit caps the page, defaulting to 100.
  Future<InvocationList?> getFunctionsByNameInvocations(String name, { int? limit, }) async {
    final response = await getFunctionsByNameInvocationsWithHttpInfo(name,  limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InvocationList',) as InvocationList;
    
    }
    return null;
  }

  /// Is the output of a function's most recent run — its error text when that run failed, else what it printed.
  ///
  /// Is the output of a function's most recent run — its error text when that run failed, else what it printed.  It is the LAST run only, and it is empty when the function has never run. There is no log retention behind this beyond the recorded invocation itself.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the function the URL names.
  Future<Response> getFunctionsByNameLogsWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/functions/{name}/logs'
      .replaceAll('{name}', name);

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

  /// Is the output of a function's most recent run — its error text when that run failed, else what it printed.
  ///
  /// Is the output of a function's most recent run — its error text when that run failed, else what it printed.  It is the LAST run only, and it is empty when the function has never run. There is no log retention behind this beyond the recorded invocation itself.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the function the URL names.
  Future<LogLines?> getFunctionsByNameLogs(String name,) async {
    final response = await getFunctionsByNameLogsWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LogLines',) as LogLines;
    
    }
    return null;
  }

  /// Is what is live right now — each function's current record IS its live deployment, so this is the deployment inventory.
  ///
  /// Is what is live right now — each function's current record IS its live deployment, so this is the deployment inventory.  There is no deployment history behind it: a function has one record, and publishing replaces it. The 7-day rollup is deliberately absent here, because this read is about what is deployed rather than about how it has performed.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getFunctionsDeploymentsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/functions/deployments';

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

  /// Is what is live right now — each function's current record IS its live deployment, so this is the deployment inventory.
  ///
  /// Is what is live right now — each function's current record IS its live deployment, so this is the deployment inventory.  There is no deployment history behind it: a function has one record, and publishing replaces it. The 7-day rollup is deliberately absent here, because this read is about what is deployed rather than about how it has performed.
  Future<FnList?> getFunctionsDeployments() async {
    final response = await getFunctionsDeploymentsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FnList',) as FnList;
    
    }
    return null;
  }

  /// Is the org's serverless dashboard over a window: a per-function invocation costLine and how those invocations ended.
  ///
  /// Is the org's serverless dashboard over a window: a per-function invocation costLine and how those invocations ended.  Every point is a REAL count of rows that fell in that bucket — nothing is interpolated or invented, so an empty window draws a flat line rather than a fabricated one.  costCents is null and stays null: there is no per-invocation cost source to read, and reporting a number computed some other way would be a guess presented as a measurement. Requires a validated principal; the read is scoped to its org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range is 1H, 6H, 24H (the default), 7D or 30D. Anything else falls back to 24H rather than failing.
  Future<Response> getFunctionsMetricsWithHttpInfo({ String? range, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/functions/metrics';

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

  /// Is the org's serverless dashboard over a window: a per-function invocation costLine and how those invocations ended.
  ///
  /// Is the org's serverless dashboard over a window: a per-function invocation costLine and how those invocations ended.  Every point is a REAL count of rows that fell in that bucket — nothing is interpolated or invented, so an empty window draws a flat line rather than a fabricated one.  costCents is null and stays null: there is no per-invocation cost source to read, and reporting a number computed some other way would be a guess presented as a measurement. Requires a validated principal; the read is scoped to its org.
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range is 1H, 6H, 24H (the default), 7D or 30D. Anything else falls back to 24H rather than failing.
  Future<Usage?> getFunctionsMetrics({ String? range, }) async {
    final response = await getFunctionsMetricsWithHttpInfo( range: range, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Usage',) as Usage;
    
    }
    return null;
  }

  /// Is the NAMES of the secrets the caller org's functions mount.
  ///
  /// Is the NAMES of the secrets the caller org's functions mount.  Values are NEVER read or returned — this surface knows which names a function asks for and nothing about what is behind them, which is what makes it safe to list at all. One row per distinct (namespace, name).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getFunctionsSecretsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/functions/secrets';

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

  /// Is the NAMES of the secrets the caller org's functions mount.
  ///
  /// Is the NAMES of the secrets the caller org's functions mount.  Values are NEVER read or returned — this surface knows which names a function asks for and nothing about what is behind them, which is what makes it safe to list at all. One row per distinct (namespace, name).
  Future<SecretList?> getFunctionsSecrets() async {
    final response = await getFunctionsSecretsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SecretList',) as SecretList;
    
    }
    return null;
  }

  /// Is what calls the caller org's functions — one row per function.
  ///
  /// Is what calls the caller org's functions — one row per function.  Every function has exactly one trigger today, its HTTP invoke endpoint, so this is the function list read as \"how is each of these reached\".
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getFunctionsTriggersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/functions/triggers';

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

  /// Is what calls the caller org's functions — one row per function.
  ///
  /// Is what calls the caller org's functions — one row per function.  Every function has exactly one trigger today, its HTTP invoke endpoint, so this is the function list read as \"how is each of these reached\".
  Future<TriggerList?> getFunctionsTriggers() async {
    final response = await getFunctionsTriggersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TriggerList',) as TriggerList;
    
    }
    return null;
  }

  /// Publishes a serverless function under the caller's org and answers 201 with it.
  ///
  /// Publishes a serverless function under the caller's org and answers 201 with it.  The name is the key and is claimed once; the names that would shadow a collection route are reserved. runtime and environment are the same field — either spelling is accepted — and default to node.  Bounds are clamped rather than refused where a clamp is honest: a timeout above the 900-second ceiling becomes the ceiling instead of silently reverting to the 30-second default, and an omitted memory limit becomes 256Mi. target=fleet runs on the org's own GPU fleet and supports runtime=python only.  Requires a validated principal; the function is owned by that principal's org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Definition] definition (required):
  Future<Response> postFunctionsWithHttpInfo(Definition definition,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/functions';

    // ignore: prefer_final_locals
    Object? postBody = definition;

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

  /// Publishes a serverless function under the caller's org and answers 201 with it.
  ///
  /// Publishes a serverless function under the caller's org and answers 201 with it.  The name is the key and is claimed once; the names that would shadow a collection route are reserved. runtime and environment are the same field — either spelling is accepted — and default to node.  Bounds are clamped rather than refused where a clamp is honest: a timeout above the 900-second ceiling becomes the ceiling instead of silently reverting to the 30-second default, and an omitted memory limit becomes 256Mi. target=fleet runs on the org's own GPU fleet and supports runtime=python only.  Requires a validated principal; the function is owned by that principal's org.
  ///
  /// Parameters:
  ///
  /// * [Definition] definition (required):
  Future<FunctionView?> postFunctions(Definition definition,) async {
    final response = await postFunctionsWithHttpInfo(definition,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FunctionView',) as FunctionView;
    
    }
    return null;
  }

  /// Runs a function and records a REAL invocation.
  ///
  /// Runs a function and records a REAL invocation.  The answer is the invocation record whatever happened to it: 200 when the org's code ran clean, 502 when it ran and failed, 503 when this deployment has no sandbox to run code in. The record IS the evidence, so it rides the failure rather than being replaced by an error envelope.  Billing is two-part and both parts are prepaid-then-metered on the one shared meter: a flat per-invocation request fee, gated BEFORE any sandbox compute runs so an unfunded org gets 402 and nothing executes, and a usage-native GB-seconds compute debit taken after the run. Either is independently free when its fee is zero, so an operator can bill by request alone, by compute alone, or by both — and a zero request fee removes the balance gate with it.  A TRANSPORT failure is not charged: the sandbox being unreachable ran no billable compute. Code that ran and exited non-zero IS charged — that is a successful invocation of a failing program, not a billing failure.  When the sandbox is not configured on this deployment, a non-fleet function fails closed before anything is recorded — no execution and no fabricated output. Scoped to the caller's org; requires a validated principal.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///
  /// * [InvokeReq] invokeReq (required):
  Future<Response> postFunctionsByNameInvokeWithHttpInfo(String name, InvokeReq invokeReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/functions/{name}/invoke'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = invokeReq;

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

  /// Runs a function and records a REAL invocation.
  ///
  /// Runs a function and records a REAL invocation.  The answer is the invocation record whatever happened to it: 200 when the org's code ran clean, 502 when it ran and failed, 503 when this deployment has no sandbox to run code in. The record IS the evidence, so it rides the failure rather than being replaced by an error envelope.  Billing is two-part and both parts are prepaid-then-metered on the one shared meter: a flat per-invocation request fee, gated BEFORE any sandbox compute runs so an unfunded org gets 402 and nothing executes, and a usage-native GB-seconds compute debit taken after the run. Either is independently free when its fee is zero, so an operator can bill by request alone, by compute alone, or by both — and a zero request fee removes the balance gate with it.  A TRANSPORT failure is not charged: the sandbox being unreachable ran no billable compute. Code that ran and exited non-zero IS charged — that is a successful invocation of a failing program, not a billing failure.  When the sandbox is not configured on this deployment, a non-fleet function fails closed before anything is recorded — no execution and no fabricated output. Scoped to the caller's org; requires a validated principal.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///
  /// * [InvokeReq] invokeReq (required):
  Future<InvocationView?> postFunctionsByNameInvoke(String name, InvokeReq invokeReq,) async {
    final response = await postFunctionsByNameInvokeWithHttpInfo(name, invokeReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InvocationView',) as InvocationView;
    
    }
    return null;
  }
}
