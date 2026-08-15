//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class FleetApi {
  FleetApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Cancels a queued or running render in the caller's org.
  ///
  /// Cancels a queued or running render in the caller's org. The engine cancel is org-scoped, so a tenant can only ever cancel its OWN job: a job in another tenant's shard is 404, exactly like one that never existed. An already-finished job is 409.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the job (activity) id, from the URL path.
  ///
  /// * [JobCancel] jobCancel (required):
  Future<Response> cancelFleetJobWithHttpInfo(String id, JobCancel jobCancel,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/fleet/jobs/{id}/cancel'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = jobCancel;

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

  /// Cancels a queued or running render in the caller's org.
  ///
  /// Cancels a queued or running render in the caller's org. The engine cancel is org-scoped, so a tenant can only ever cancel its OWN job: a job in another tenant's shard is 404, exactly like one that never existed. An already-finished job is 409.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the job (activity) id, from the URL path.
  ///
  /// * [JobCancel] jobCancel (required):
  Future<JobCanceled?> cancelFleetJob(String id, JobCancel jobCancel,) async {
    final response = await cancelFleetJobWithHttpInfo(id, jobCancel,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JobCanceled',) as JobCanceled;
    
    }
    return null;
  }

  /// Returns every compute unit the caller's org has, from every source, each carrying its latest utilization: agent run-targets, the BYO machines that dialed in, attached BYO clusters and Visor-provisioned machines.
  ///
  /// Returns every compute unit the caller's org has, from every source, each carrying its latest utilization: agent run-targets, the BYO machines that dialed in, attached BYO clusters and Visor-provisioned machines.  A unit with a live snapshot of its own keeps it; the rest are overlaid from the utilization series, and only when the sample agrees about the SOURCE — two planes could mint the same unit id, and a board must never show one machine's load on another's row. BYO GPU units also carry their gpu-jobs queue depth. Every source is folded in independently: a broken one costs its own rows and nothing else.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listFleetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/fleet';

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

  /// Returns every compute unit the caller's org has, from every source, each carrying its latest utilization: agent run-targets, the BYO machines that dialed in, attached BYO clusters and Visor-provisioned machines.
  ///
  /// Returns every compute unit the caller's org has, from every source, each carrying its latest utilization: agent run-targets, the BYO machines that dialed in, attached BYO clusters and Visor-provisioned machines.  A unit with a live snapshot of its own keeps it; the rest are overlaid from the utilization series, and only when the sample agrees about the SOURCE — two planes could mint the same unit id, and a board must never show one machine's load on another's row. BYO GPU units also carry their gpu-jobs queue depth. Every source is folded in independently: a broken one costs its own rows and nothing else.
  Future<FleetBoard?> listFleet() async {
    final response = await listFleetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FleetBoard',) as FleetBoard;
    
    }
    return null;
  }

  /// Returns the caller org's gpu-jobs render queue, each row tagged with the GPU it targets (empty = the shared any-GPU lane) and the node claiming it, optionally narrowed to one GPU's queue and/or one status.
  ///
  /// Returns the caller org's gpu-jobs render queue, each row tagged with the GPU it targets (empty = the shared any-GPU lane) and the node claiming it, optionally narrowed to one GPU's queue and/or one status.  A job whose worker died — STARTED with an elapsed lease and not yet reclaimed — reads \"stalled\", not \"running\". Fail-soft: an unavailable tasks engine yields an empty queue rather than an error.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] gpu:
  ///   GPU selects one node's lane: jobs TARGETED at it (gpu:<node>) or CLAIMED by it. The literal \"shared\" selects the any-GPU lane — no target, no claimant. Matched case-insensitively.
  ///
  /// * [String] status:
  ///   Status selects one lifecycle state: queued, running, stalled, completed, failed or canceled.
  Future<Response> listFleetJobsWithHttpInfo({ String? gpu, String? status, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/fleet/jobs';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (gpu != null) {
      queryParams.addAll(_queryParams('', 'gpu', gpu));
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

  /// Returns the caller org's gpu-jobs render queue, each row tagged with the GPU it targets (empty = the shared any-GPU lane) and the node claiming it, optionally narrowed to one GPU's queue and/or one status.
  ///
  /// Returns the caller org's gpu-jobs render queue, each row tagged with the GPU it targets (empty = the shared any-GPU lane) and the node claiming it, optionally narrowed to one GPU's queue and/or one status.  A job whose worker died — STARTED with an elapsed lease and not yet reclaimed — reads \"stalled\", not \"running\". Fail-soft: an unavailable tasks engine yields an empty queue rather than an error.
  ///
  /// Parameters:
  ///
  /// * [String] gpu:
  ///   GPU selects one node's lane: jobs TARGETED at it (gpu:<node>) or CLAIMED by it. The literal \"shared\" selects the any-GPU lane — no target, no claimant. Matched case-insensitively.
  ///
  /// * [String] status:
  ///   Status selects one lifecycle state: queued, running, stalled, completed, failed or canceled.
  Future<JobList?> listFleetJobs({ String? gpu, String? status, }) async {
    final response = await listFleetJobsWithHttpInfo( gpu: gpu, status: status, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JobList',) as JobList;
    
    }
    return null;
  }

  /// Returns the caller org's utilization series, oldest first.
  ///
  /// Returns the caller org's utilization series, oldest first.  A rejected narrower is a 400 carrying its own reason (the vocabulary is ours and safe to echo); a warehouse failure is logged and answered 503 \"unavailable\", because a chart that silently reads \"no load\" when the truth is \"we cannot tell\" is worse than one that says so. An ABSENT warehouse is different again: it returns an empty series, which renders honestly as \"no samples yet\".
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] unit:
  ///   Unit selects one compute unit's series by its source-local id.
  ///
  /// * [String] source_:
  ///   Source selects one plane: \"agent\", \"byo\" or \"visor\".
  ///
  /// * [String] range:
  ///   Range is the lookback window (e.g. \"1h\", \"24h\", \"7d\"); empty takes the warehouse default.
  Future<Response> listFleetSamplesWithHttpInfo({ String? unit, String? source_, String? range, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/fleet/samples';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (unit != null) {
      queryParams.addAll(_queryParams('', 'unit', unit));
    }
    if (source_ != null) {
      queryParams.addAll(_queryParams('', 'source', source_));
    }
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

  /// Returns the caller org's utilization series, oldest first.
  ///
  /// Returns the caller org's utilization series, oldest first.  A rejected narrower is a 400 carrying its own reason (the vocabulary is ours and safe to echo); a warehouse failure is logged and answered 503 \"unavailable\", because a chart that silently reads \"no load\" when the truth is \"we cannot tell\" is worse than one that says so. An ABSENT warehouse is different again: it returns an empty series, which renders honestly as \"no samples yet\".
  ///
  /// Parameters:
  ///
  /// * [String] unit:
  ///   Unit selects one compute unit's series by its source-local id.
  ///
  /// * [String] source_:
  ///   Source selects one plane: \"agent\", \"byo\" or \"visor\".
  ///
  /// * [String] range:
  ///   Range is the lookback window (e.g. \"1h\", \"24h\", \"7d\"); empty takes the warehouse default.
  Future<SampleList?> listFleetSamples({ String? unit, String? source_, String? range, }) async {
    final response = await listFleetSamplesWithHttpInfo( unit: unit, source_: source_, range: range, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SampleList',) as SampleList;
    
    }
    return null;
  }

  /// Returns the caller org's BYO machines — the ones that dialed in via `hanzo link` — with everything each host reported about itself.
  ///
  /// Returns the caller org's BYO machines — the ones that dialed in via `hanzo link` — with everything each host reported about itself. The Machines and GPUs pages fold the same data into their normalized shapes; this is the canonical raw list a fleet view (or the CLI's `status`) reads.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listFleetWorkersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/fleet/workers';

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

  /// Returns the caller org's BYO machines — the ones that dialed in via `hanzo link` — with everything each host reported about itself.
  ///
  /// Returns the caller org's BYO machines — the ones that dialed in via `hanzo link` — with everything each host reported about itself. The Machines and GPUs pages fold the same data into their normalized shapes; this is the canonical raw list a fleet view (or the CLI's `status`) reads.
  Future<WorkerList?> listFleetWorkers() async {
    final response = await listFleetWorkersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WorkerList',) as WorkerList;
    
    }
    return null;
  }

  /// Records a BYO worker's live GPU utilization into the SAME series the fleet board overlays.
  ///
  /// Records a BYO worker's live GPU utilization into the SAME series the fleet board overlays. The org is the validated principal and source/kind are fixed server-side, so a worker names only its own metrics — never another tenant or another source. Answers 202: the warehouse write is DETACHED (its own bounded context, never in the response path), so a slow or absent warehouse cannot stall a heartbeat.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SampleIngest] sampleIngest (required):
  Future<Response> recordFleetSampleWithHttpInfo(SampleIngest sampleIngest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/fleet/samples';

    // ignore: prefer_final_locals
    Object? postBody = sampleIngest;

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

  /// Records a BYO worker's live GPU utilization into the SAME series the fleet board overlays.
  ///
  /// Records a BYO worker's live GPU utilization into the SAME series the fleet board overlays. The org is the validated principal and source/kind are fixed server-side, so a worker names only its own metrics — never another tenant or another source. Answers 202: the warehouse write is DETACHED (its own bounded context, never in the response path), so a slow or absent warehouse cannot stall a heartbeat.
  ///
  /// Parameters:
  ///
  /// * [SampleIngest] sampleIngest (required):
  Future<SampleAccepted?> recordFleetSample(SampleIngest sampleIngest,) async {
    final response = await recordFleetSampleWithHttpInfo(sampleIngest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SampleAccepted',) as SampleAccepted;
    
    }
    return null;
  }
}
