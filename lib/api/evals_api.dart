//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class EvalsApi {
  EvalsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Removes the named dataset of the caller's org AND all of its examples, in one transaction.
  ///
  /// Removes the named dataset of the caller's org AND all of its examples, in one transaction.  This is not a detach: the examples are gone with the set, so a dataset cannot be resurrected by re-creating the name. A name this org does not have is 404 — never a silent success — and a name belonging to another tenant is the same 404, because the delete is predicated on the validated org. Requires a validated principal; 403 without one. Runs and scores already recorded against the dataset are telemetry events and are NOT deleted with it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the dataset the URL names.
  Future<Response> deleteEvalsDatasetsByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/evals/datasets/{name}'
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

  /// Removes the named dataset of the caller's org AND all of its examples, in one transaction.
  ///
  /// Removes the named dataset of the caller's org AND all of its examples, in one transaction.  This is not a detach: the examples are gone with the set, so a dataset cannot be resurrected by re-creating the name. A name this org does not have is 404 — never a silent success — and a name belonging to another tenant is the same 404, because the delete is predicated on the validated org. Requires a validated principal; 403 without one. Runs and scores already recorded against the dataset are telemetry events and are NOT deleted with it.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the dataset the URL names.
  Future<Object?> deleteEvalsDatasetsByName(String name,) async {
    final response = await deleteEvalsDatasetsByNameWithHttpInfo(name,);
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

  /// Is the datasets your org has, each with its name, description, metadata and timestamps.
  ///
  /// Is the datasets your org has, each with its name, description, metadata and timestamps.  It is the only way to enumerate what an org holds. Requires a validated principal; 403 without one. Every row is filtered on the validated org, so there is no parameter that reaches another tenant's datasets. The item count is NOT populated here — read one dataset to get it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned. It defaults to 100 and is capped at 500; a non-positive or unparseable value falls back to the default rather than failing, because a typo about paging is not a reason to refuse a read.
  Future<Response> getEvalsDatasetsWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/evals/datasets';

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

  /// Is the datasets your org has, each with its name, description, metadata and timestamps.
  ///
  /// Is the datasets your org has, each with its name, description, metadata and timestamps.  It is the only way to enumerate what an org holds. Requires a validated principal; 403 without one. Every row is filtered on the validated org, so there is no parameter that reaches another tenant's datasets. The item count is NOT populated here — read one dataset to get it.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned. It defaults to 100 and is capped at 500; a non-positive or unparseable value falls back to the default rather than failing, because a typo about paging is not a reason to refuse a read.
  Future<DatasetList?> getEvalsDatasets({ int? limit, }) async {
    final response = await getEvalsDatasetsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DatasetList',) as DatasetList;
    
    }
    return null;
  }

  /// Returns one dataset of the caller's org by name, together with its live item count — the one read that answers how big the set actually is.
  ///
  /// Returns one dataset of the caller's org by name, together with its live item count — the one read that answers how big the set actually is.  A name this org does not have is 404, which is also what another tenant's dataset looks like from here. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the dataset the URL names.
  Future<Response> getEvalsDatasetsByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/evals/datasets/{name}'
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

  /// Returns one dataset of the caller's org by name, together with its live item count — the one read that answers how big the set actually is.
  ///
  /// Returns one dataset of the caller's org by name, together with its live item count — the one read that answers how big the set actually is.  A name this org does not have is 404, which is also what another tenant's dataset looks like from here. Requires a validated principal; 403 without one.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the dataset the URL names.
  Future<DatasetView?> getEvalsDatasetsByName(String name,) async {
    final response = await getEvalsDatasetsByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DatasetView',) as DatasetView;
    
    }
    return null;
  }

  /// Is the examples in one of your datasets — the set is named in the path, because this collection only exists inside one.
  ///
  /// Is the examples in one of your datasets — the set is named in the path, because this collection only exists inside one.  Archived examples are included, so the caller sees the whole set rather than only what a run would use. Requires a validated principal; 403 without one, and the read is filtered on the validated org, so naming another tenant's dataset returns nothing rather than its contents.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Dataset is the set to read, from the path — this collection only exists inside one.
  ///
  /// * [int] limit:
  Future<Response> getEvalsDatasetsByNameItemsWithHttpInfo(String name, { int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/evals/datasets/{name}/items'
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

  /// Is the examples in one of your datasets — the set is named in the path, because this collection only exists inside one.
  ///
  /// Is the examples in one of your datasets — the set is named in the path, because this collection only exists inside one.  Archived examples are included, so the caller sees the whole set rather than only what a run would use. Requires a validated principal; 403 without one, and the read is filtered on the validated org, so naming another tenant's dataset returns nothing rather than its contents.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Dataset is the set to read, from the path — this collection only exists inside one.
  ///
  /// * [int] limit:
  Future<ItemList?> getEvalsDatasetsByNameItems(String name, { int? limit, }) async {
    final response = await getEvalsDatasetsByNameItemsWithHttpInfo(name,  limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ItemList',) as ItemList;
    
    }
    return null;
  }

  /// Is the judges your org has defined, each with its judge model, criteria and the score name it writes under.
  ///
  /// Is the judges your org has defined, each with its judge model, criteria and the score name it writes under.  Requires a validated principal; 403 without one, and the listing is filtered on the validated org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned. It defaults to 100 and is capped at 500; a non-positive or unparseable value falls back to the default rather than failing, because a typo about paging is not a reason to refuse a read.
  Future<Response> getEvalsEvaluatorsWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/evals/evaluators';

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

  /// Is the judges your org has defined, each with its judge model, criteria and the score name it writes under.
  ///
  /// Is the judges your org has defined, each with its judge model, criteria and the score name it writes under.  Requires a validated principal; 403 without one, and the listing is filtered on the validated org.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned. It defaults to 100 and is capped at 500; a non-positive or unparseable value falls back to the default rather than failing, because a typo about paging is not a reason to refuse a read.
  Future<EvaluatorList?> getEvalsEvaluators({ int? limit, }) async {
    final response = await getEvalsEvaluatorsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EvaluatorList',) as EvaluatorList;
    
    }
    return null;
  }

  /// Is your org's AI overview board over a window: totals (generations, prompt and completion tokens, cost in cents, errors, success rate, distinct models and users), a gap-filled time series, a per-model breakdown with the long tail folded into \"other\", and latency percentiles read from the GenAI spans.
  ///
  /// Is your org's AI overview board over a window: totals (generations, prompt and completion tokens, cost in cents, errors, success rate, distinct models and users), a gap-filled time series, a per-model breakdown with the long tail folded into \"other\", and latency percentiles read from the GenAI spans.  The window the answer was actually computed over is echoed back, so a client never has to infer it. A platform admin sees the board across ALL orgs; everyone else sees their own.  The board is HONEST-EMPTY where it cannot be computed: with no datastore wired, or under a named project scope the usage ledger does not yet carry, it answers a valid board with zero totals and a flat series rather than a fabricated number or a 500. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range is 24h (the default), 7d or 30d. Anything else normalises to 24h rather than failing, so the board always has a valid window.
  ///
  /// * [String] interval:
  ///   Interval overrides the bucket the series is grouped into: \"hour\" or \"day\". Any other value leaves the range's own default in place.
  Future<Response> getEvalsMetricsWithHttpInfo({ String? range, String? interval, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/evals/metrics';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (range != null) {
      queryParams.addAll(_queryParams('', 'range', range));
    }
    if (interval != null) {
      queryParams.addAll(_queryParams('', 'interval', interval));
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

  /// Is your org's AI overview board over a window: totals (generations, prompt and completion tokens, cost in cents, errors, success rate, distinct models and users), a gap-filled time series, a per-model breakdown with the long tail folded into \"other\", and latency percentiles read from the GenAI spans.
  ///
  /// Is your org's AI overview board over a window: totals (generations, prompt and completion tokens, cost in cents, errors, success rate, distinct models and users), a gap-filled time series, a per-model breakdown with the long tail folded into \"other\", and latency percentiles read from the GenAI spans.  The window the answer was actually computed over is echoed back, so a client never has to infer it. A platform admin sees the board across ALL orgs; everyone else sees their own.  The board is HONEST-EMPTY where it cannot be computed: with no datastore wired, or under a named project scope the usage ledger does not yet carry, it answers a valid board with zero totals and a flat series rather than a fabricated number or a 500. Requires a validated principal; 403 without one.
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range is 24h (the default), 7d or 30d. Anything else normalises to 24h rather than failing, so the board always has a valid window.
  ///
  /// * [String] interval:
  ///   Interval overrides the bucket the series is grouped into: \"hour\" or \"day\". Any other value leaves the range's own default in place.
  Future<Board?> getEvalsMetrics({ String? range, String? interval, }) async {
    final response = await getEvalsMetricsWithHttpInfo( range: range, interval: interval, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Board',) as Board;
    
    }
    return null;
  }

  /// Is the score shapes your org has declared — each name's data type, its numeric bounds and its allowed categories.
  ///
  /// Is the score shapes your org has declared — each name's data type, its numeric bounds and its allowed categories.  Requires a validated principal; 403 without one, and the listing is filtered on the validated org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned. It defaults to 100 and is capped at 500; a non-positive or unparseable value falls back to the default rather than failing, because a typo about paging is not a reason to refuse a read.
  Future<Response> getEvalsRubricsWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/evals/rubrics';

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

  /// Is the score shapes your org has declared — each name's data type, its numeric bounds and its allowed categories.
  ///
  /// Is the score shapes your org has declared — each name's data type, its numeric bounds and its allowed categories.  Requires a validated principal; 403 without one, and the listing is filtered on the validated org.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned. It defaults to 100 and is capped at 500; a non-positive or unparseable value falls back to the default rather than failing, because a typo about paging is not a reason to refuse a read.
  Future<ScoreConfigList?> getEvalsRubrics({ int? limit, }) async {
    final response = await getEvalsRubricsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScoreConfigList',) as ScoreConfigList;
    
    }
    return null;
  }

  /// Is your past runs and how they scored — the dataset and model, the judge model, how many examples were attempted and how many scored, the average score, and when it happened.
  ///
  /// Is your past runs and how they scored — the dataset and model, the judge model, how many examples were attempted and how many scored, the average score, and when it happened.  Requires a validated principal; 403 without one, and rows are filtered on the validated org. These records come from the metastore rather than the datastore, so they are readable on a deployment with no telemetry wired — but a run's traces and scores are not.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] datasetName:
  ///   Dataset narrows to the runs against one dataset.
  ///
  /// * [int] limit:
  Future<Response> getEvalsRunsWithHttpInfo({ String? datasetName, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/evals/runs';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (datasetName != null) {
      queryParams.addAll(_queryParams('', 'datasetName', datasetName));
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

  /// Is your past runs and how they scored — the dataset and model, the judge model, how many examples were attempted and how many scored, the average score, and when it happened.
  ///
  /// Is your past runs and how they scored — the dataset and model, the judge model, how many examples were attempted and how many scored, the average score, and when it happened.  Requires a validated principal; 403 without one, and rows are filtered on the validated org. These records come from the metastore rather than the datastore, so they are readable on a deployment with no telemetry wired — but a run's traces and scores are not.
  ///
  /// Parameters:
  ///
  /// * [String] datasetName:
  ///   Dataset narrows to the runs against one dataset.
  ///
  /// * [int] limit:
  Future<Runs?> getEvalsRuns({ String? datasetName, int? limit, }) async {
    final response = await getEvalsRunsWithHttpInfo( datasetName: datasetName, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Runs',) as Runs;
    
    }
    return null;
  }

  /// Is the score events your org has recorded, narrowed by any of name, runName and traceId.
  ///
  /// Is the score events your org has recorded, narrowed by any of name, runName and traceId.  The org is bound as an authoritative predicate on the query, never taken from a header, so a filter can narrow the caller's own scores but can never widen past them. Requires a validated principal; 403 without one. Scores live in the datastore, so a deployment with none wired answers 503 rather than an empty page that would read as \"no scores\".
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name:
  ///   Name narrows to one score name.
  ///
  /// * [String] runName:
  ///   RunName narrows to the scores of one run.
  ///
  /// * [String] traceId:
  ///   TraceID narrows to the scores on one model call.
  ///
  /// * [int] limit:
  Future<Response> getEvalsScoresWithHttpInfo({ String? name, String? runName, String? traceId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/evals/scores';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (runName != null) {
      queryParams.addAll(_queryParams('', 'runName', runName));
    }
    if (traceId != null) {
      queryParams.addAll(_queryParams('', 'traceId', traceId));
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

  /// Is the score events your org has recorded, narrowed by any of name, runName and traceId.
  ///
  /// Is the score events your org has recorded, narrowed by any of name, runName and traceId.  The org is bound as an authoritative predicate on the query, never taken from a header, so a filter can narrow the caller's own scores but can never widen past them. Requires a validated principal; 403 without one. Scores live in the datastore, so a deployment with none wired answers 503 rather than an empty page that would read as \"no scores\".
  ///
  /// Parameters:
  ///
  /// * [String] name:
  ///   Name narrows to one score name.
  ///
  /// * [String] runName:
  ///   RunName narrows to the scores of one run.
  ///
  /// * [String] traceId:
  ///   TraceID narrows to the scores on one model call.
  ///
  /// * [int] limit:
  Future<ScoreList?> getEvalsScores({ String? name, String? runName, String? traceId, int? limit, }) async {
    final response = await getEvalsScoresWithHttpInfo( name: name, runName: runName, traceId: traceId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScoreList',) as ScoreList;
    
    }
    return null;
  }

  /// Is the traces behind your evaluations — one per model call an evaluation made, carrying its input, output, model and timing — narrowed by any of sessionId, runName and datasetName.
  ///
  /// Is the traces behind your evaluations — one per model call an evaluation made, carrying its input, output, model and timing — narrowed by any of sessionId, runName and datasetName.  Scoped by org AND by project: the project is the caller's server-minted scope, not a parameter, so it cannot be widened by asking. Requires a validated principal; 403 without one. Traces live in the datastore, so a deployment with none wired answers 503 rather than an empty page.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sessionId:
  ///   SessionID narrows to one session, which for an evaluation is one run.
  ///
  /// * [String] runName:
  ///   RunName narrows to the calls one run made.
  ///
  /// * [String] datasetName:
  ///   Dataset narrows to the calls made against one dataset.
  ///
  /// * [int] limit:
  Future<Response> getEvalsTracesWithHttpInfo({ String? sessionId, String? runName, String? datasetName, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/evals/traces';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sessionId != null) {
      queryParams.addAll(_queryParams('', 'sessionId', sessionId));
    }
    if (runName != null) {
      queryParams.addAll(_queryParams('', 'runName', runName));
    }
    if (datasetName != null) {
      queryParams.addAll(_queryParams('', 'datasetName', datasetName));
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

  /// Is the traces behind your evaluations — one per model call an evaluation made, carrying its input, output, model and timing — narrowed by any of sessionId, runName and datasetName.
  ///
  /// Is the traces behind your evaluations — one per model call an evaluation made, carrying its input, output, model and timing — narrowed by any of sessionId, runName and datasetName.  Scoped by org AND by project: the project is the caller's server-minted scope, not a parameter, so it cannot be widened by asking. Requires a validated principal; 403 without one. Traces live in the datastore, so a deployment with none wired answers 503 rather than an empty page.
  ///
  /// Parameters:
  ///
  /// * [String] sessionId:
  ///   SessionID narrows to one session, which for an evaluation is one run.
  ///
  /// * [String] runName:
  ///   RunName narrows to the calls one run made.
  ///
  /// * [String] datasetName:
  ///   Dataset narrows to the calls made against one dataset.
  ///
  /// * [int] limit:
  Future<TraceList?> getEvalsTraces({ String? sessionId, String? runName, String? datasetName, int? limit, }) async {
    final response = await getEvalsTracesWithHttpInfo( sessionId: sessionId, runName: runName, datasetName: datasetName, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TraceList',) as TraceList;
    
    }
    return null;
  }

  /// Writes a dataset — the named set of graded examples a run scores a model against — under the caller's org and answers 201 with it.
  ///
  /// Writes a dataset — the named set of graded examples a run scores a model against — under the caller's org and answers 201 with it.  The NAME is the key, not an id: posting a name the org already has updates that dataset's description and metadata and keeps its original creation time, so this is create-or-edit and never a duplicate. Its items are untouched.  Requires a validated principal; 403 without one. The org comes from the validated owner claim, never from a client X-Org-Id, so a dataset can only ever be written under the caller's own tenant. A description over 64 KiB is 400.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DatasetReq] datasetReq (required):
  Future<Response> postEvalsDatasetsWithHttpInfo(DatasetReq datasetReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/evals/datasets';

    // ignore: prefer_final_locals
    Object? postBody = datasetReq;

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

  /// Writes a dataset — the named set of graded examples a run scores a model against — under the caller's org and answers 201 with it.
  ///
  /// Writes a dataset — the named set of graded examples a run scores a model against — under the caller's org and answers 201 with it.  The NAME is the key, not an id: posting a name the org already has updates that dataset's description and metadata and keeps its original creation time, so this is create-or-edit and never a duplicate. Its items are untouched.  Requires a validated principal; 403 without one. The org comes from the validated owner claim, never from a client X-Org-Id, so a dataset can only ever be written under the caller's own tenant. A description over 64 KiB is 400.
  ///
  /// Parameters:
  ///
  /// * [DatasetReq] datasetReq (required):
  Future<DatasetView?> postEvalsDatasets(DatasetReq datasetReq,) async {
    final response = await postEvalsDatasetsWithHttpInfo(datasetReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DatasetView',) as DatasetView;
    
    }
    return null;
  }

  /// Writes one graded example — its input, its expected output, free-form metadata and a status — into the dataset named in the path, and answers 201 with it.
  ///
  /// Writes one graded example — its input, its expected output, free-form metadata and a status — into the dataset named in the path, and answers 201 with it.  That dataset MUST already exist for this org: an unknown one is 404, never a silent create. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///
  /// * [ItemReq] itemReq (required):
  Future<Response> postEvalsDatasetsByNameItemsWithHttpInfo(String name, ItemReq itemReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/evals/datasets/{name}/items'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = itemReq;

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

  /// Writes one graded example — its input, its expected output, free-form metadata and a status — into the dataset named in the path, and answers 201 with it.
  ///
  /// Writes one graded example — its input, its expected output, free-form metadata and a status — into the dataset named in the path, and answers 201 with it.  That dataset MUST already exist for this org: an unknown one is 404, never a silent create. Requires a validated principal; 403 without one.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///
  /// * [ItemReq] itemReq (required):
  Future<ItemView?> postEvalsDatasetsByNameItems(String name, ItemReq itemReq,) async {
    final response = await postEvalsDatasetsByNameItemsWithHttpInfo(name, itemReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ItemView',) as ItemView;
    
    }
    return null;
  }

  /// Saves a reusable judge for the caller's org — the judge model and the written criteria it grades against — and answers 201 with it.
  ///
  /// Saves a reusable judge for the caller's org — the judge model and the written criteria it grades against — and answers 201 with it.  Like a dataset, the NAME is the key: re-posting a name edits that judge rather than adding a second one. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EvaluatorReq] evaluatorReq (required):
  Future<Response> postEvalsEvaluatorsWithHttpInfo(EvaluatorReq evaluatorReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/evals/evaluators';

    // ignore: prefer_final_locals
    Object? postBody = evaluatorReq;

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

  /// Saves a reusable judge for the caller's org — the judge model and the written criteria it grades against — and answers 201 with it.
  ///
  /// Saves a reusable judge for the caller's org — the judge model and the written criteria it grades against — and answers 201 with it.  Like a dataset, the NAME is the key: re-posting a name edits that judge rather than adding a second one. Requires a validated principal; 403 without one.
  ///
  /// Parameters:
  ///
  /// * [EvaluatorReq] evaluatorReq (required):
  Future<EvaluatorView?> postEvalsEvaluators(EvaluatorReq evaluatorReq,) async {
    final response = await postEvalsEvaluatorsWithHttpInfo(evaluatorReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EvaluatorView',) as EvaluatorView;
    
    }
    return null;
  }

  /// Defines the shape of one score name for the caller's org and answers 201 with it.
  ///
  /// Defines the shape of one score name for the caller's org and answers 201 with it.  This is the integrity contract, not documentation: once a rubric exists for a name, every score recorded under that name is checked against it and the rubric's data type is AUTHORITATIVE — a caller cannot claim a different one. Out-of-range values, unlisted labels and non-finite numbers are refused at write time.  A CATEGORICAL rubric with no categories is 400, as is a non-finite bound or a minValue above maxValue. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ScoreConfigReq] scoreConfigReq (required):
  Future<Response> postEvalsRubricsWithHttpInfo(ScoreConfigReq scoreConfigReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/evals/rubrics';

    // ignore: prefer_final_locals
    Object? postBody = scoreConfigReq;

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

  /// Defines the shape of one score name for the caller's org and answers 201 with it.
  ///
  /// Defines the shape of one score name for the caller's org and answers 201 with it.  This is the integrity contract, not documentation: once a rubric exists for a name, every score recorded under that name is checked against it and the rubric's data type is AUTHORITATIVE — a caller cannot claim a different one. Out-of-range values, unlisted labels and non-finite numbers are refused at write time.  A CATEGORICAL rubric with no categories is 400, as is a non-finite bound or a minValue above maxValue. Requires a validated principal; 403 without one.
  ///
  /// Parameters:
  ///
  /// * [ScoreConfigReq] scoreConfigReq (required):
  Future<ScoreConfigView?> postEvalsRubrics(ScoreConfigReq scoreConfigReq,) async {
    final response = await postEvalsRubricsWithHttpInfo(scoreConfigReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScoreConfigView',) as ScoreConfigView;
    
    }
    return null;
  }

  /// Runs a real evaluation and answers the summary when it is finished — this is synchronous work, not a job id.
  ///
  /// Runs a real evaluation and answers the summary when it is finished — this is synchronous work, not a job id.  For each ACTIVE example in the dataset it calls the model under test, records a trace, calls the LLM-as-judge, and records the judge's score with its reasoning. The answer carries the per-item results (item id, trace id, score, output or error) alongside items, scored and avgScore.  The dataset must belong to the caller's org (404 otherwise) and must have at least one ACTIVE example (422 otherwise).  It runs as YOU: the caller's own Authorization bearer drives the model gateway, so a request without one is 401 rather than a run made anonymously or under a service identity. Only a non-reversible hash of that credential is recorded on the traces.  Bounded and honest about it: an org may have at most 4 runs in flight and the fifth is 429 rather than queued, and the whole run is capped at 10 minutes — examples past the deadline come back with an error instead of a score, and scored counts only real successes. A run where NOTHING scored answers 502, not a 200 that looks like an evaluation. A run must be able to persist what it produces, so a deployment with no datastore wired is 503 up front. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RunRequest] runRequest (required):
  ///
  /// * [String] authorization:
  Future<Response> postEvalsRunsWithHttpInfo(RunRequest runRequest, { String? authorization, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/evals/runs';

    // ignore: prefer_final_locals
    Object? postBody = runRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (authorization != null) {
      headerParams[r'Authorization'] = parameterToString(authorization);
    }

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

  /// Runs a real evaluation and answers the summary when it is finished — this is synchronous work, not a job id.
  ///
  /// Runs a real evaluation and answers the summary when it is finished — this is synchronous work, not a job id.  For each ACTIVE example in the dataset it calls the model under test, records a trace, calls the LLM-as-judge, and records the judge's score with its reasoning. The answer carries the per-item results (item id, trace id, score, output or error) alongside items, scored and avgScore.  The dataset must belong to the caller's org (404 otherwise) and must have at least one ACTIVE example (422 otherwise).  It runs as YOU: the caller's own Authorization bearer drives the model gateway, so a request without one is 401 rather than a run made anonymously or under a service identity. Only a non-reversible hash of that credential is recorded on the traces.  Bounded and honest about it: an org may have at most 4 runs in flight and the fifth is 429 rather than queued, and the whole run is capped at 10 minutes — examples past the deadline come back with an error instead of a score, and scored counts only real successes. A run where NOTHING scored answers 502, not a 200 that looks like an evaluation. A run must be able to persist what it produces, so a deployment with no datastore wired is 503 up front. Requires a validated principal; 403 without one.
  ///
  /// Parameters:
  ///
  /// * [RunRequest] runRequest (required):
  ///
  /// * [String] authorization:
  Future<RunSummary?> postEvalsRuns(RunRequest runRequest, { String? authorization, }) async {
    final response = await postEvalsRunsWithHttpInfo(runRequest,  authorization: authorization, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RunSummary',) as RunSummary;
    
    }
    return null;
  }

  /// Files one score event for the caller's org and answers 201 with it.
  ///
  /// Files one score event for the caller's org and answers 201 with it.  This is how human review and out-of-band graders land beside the automatic ones: name the score, give it a value (or a stringValue for a categorical label), and attach it to a trace, a run, a dataset example, or any combination.  Scores are validated fail-closed. A value must be FINITE — NaN and Inf are 400 — and if the org has declared a rubric for this name, that rubric decides the type and the value must satisfy it: inside the numeric bounds, or one of the allowed categories. A caller cannot override the declared type by sending a different dataType.  A score is TELEMETRY, not metadata, so it needs the datastore: a deployment with none wired answers 503 rather than accepting a score it cannot persist. Requires a validated principal; 403 without one, and the org is stamped from the validated claim rather than read off the body.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ScoreReq] scoreReq (required):
  Future<Response> postEvalsScoresWithHttpInfo(ScoreReq scoreReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/evals/scores';

    // ignore: prefer_final_locals
    Object? postBody = scoreReq;

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

  /// Files one score event for the caller's org and answers 201 with it.
  ///
  /// Files one score event for the caller's org and answers 201 with it.  This is how human review and out-of-band graders land beside the automatic ones: name the score, give it a value (or a stringValue for a categorical label), and attach it to a trace, a run, a dataset example, or any combination.  Scores are validated fail-closed. A value must be FINITE — NaN and Inf are 400 — and if the org has declared a rubric for this name, that rubric decides the type and the value must satisfy it: inside the numeric bounds, or one of the allowed categories. A caller cannot override the declared type by sending a different dataType.  A score is TELEMETRY, not metadata, so it needs the datastore: a deployment with none wired answers 503 rather than accepting a score it cannot persist. Requires a validated principal; 403 without one, and the org is stamped from the validated claim rather than read off the body.
  ///
  /// Parameters:
  ///
  /// * [ScoreReq] scoreReq (required):
  Future<ScoreView?> postEvalsScores(ScoreReq scoreReq,) async {
    final response = await postEvalsScoresWithHttpInfo(scoreReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScoreView',) as ScoreView;
    
    }
    return null;
  }
}
