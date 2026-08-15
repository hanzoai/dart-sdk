//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class FinetuneApi {
  FinetuneApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Proxies a HuggingFace dataset search (dataset picker).
  ///
  /// Proxies a HuggingFace dataset search (dataset picker).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getFinetuneHfDatasetsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/finetune/hf/datasets';

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

  /// Proxies a HuggingFace dataset search (dataset picker).
  ///
  /// Proxies a HuggingFace dataset search (dataset picker).
  Future<void> getFinetuneHfDatasets() async {
    final response = await getFinetuneHfDatasetsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Proxies a HuggingFace model search (base-model picker).
  ///
  /// Proxies a HuggingFace model search (base-model picker).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getFinetuneHfModelsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/finetune/hf/models';

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

  /// Proxies a HuggingFace model search (base-model picker).
  ///
  /// Proxies a HuggingFace model search (base-model picker).
  Future<void> getFinetuneHfModels() async {
    final response = await getFinetuneHfModelsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns a repo's detail (files, gated/private state).
  ///
  /// Returns a repo's detail (files, gated/private state). ?id=&kind=model|dataset
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getFinetuneHfRepoWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/finetune/hf/repo';

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

  /// Returns a repo's detail (files, gated/private state).
  ///
  /// Returns a repo's detail (files, gated/private state). ?id=&kind=model|dataset
  Future<void> getFinetuneHfRepo() async {
    final response = await getFinetuneHfRepoWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns one job with refreshed live status.
  ///
  /// Returns one job with refreshed live status. ?id=owner/name or ?name=
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getFinetuneJobWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/finetune/job';

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

  /// Returns one job with refreshed live status.
  ///
  /// Returns one job with refreshed live status. ?id=owner/name or ?name=
  Future<void> getFinetuneJob() async {
    final response = await getFinetuneJobWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the org's jobs, refreshing live status for active ones.
  ///
  /// Returns the org's jobs, refreshing live status for active ones.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getFinetuneJobsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/finetune/jobs';

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

  /// Returns the org's jobs, refreshing live status for active ones.
  ///
  /// Returns the org's jobs, refreshing live status for active ones.
  Future<void> getFinetuneJobs() async {
    final response = await getFinetuneJobsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the new-job catalog plus, when a selection is passed (?baseModel&method&task&preset[&datasetExamples]), the recommended config so the console can render \"Recommended\" as a one-click, ready-to-run default.
  ///
  /// Returns the new-job catalog plus, when a selection is passed (?baseModel&method&task&preset[&datasetExamples]), the recommended config so the console can render \"Recommended\" as a one-click, ready-to-run default.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getFinetunePresetsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/finetune/presets';

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

  /// Returns the new-job catalog plus, when a selection is passed (?baseModel&method&task&preset[&datasetExamples]), the recommended config so the console can render \"Recommended\" as a one-click, ready-to-run default.
  ///
  /// Returns the new-job catalog plus, when a selection is passed (?baseModel&method&task&preset[&datasetExamples]), the recommended config so the console can render \"Recommended\" as a one-click, ready-to-run default.
  Future<void> getFinetunePresets() async {
    final response = await getFinetunePresetsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deletes the TrainJob CR, meters the GPU-hours used so far, and marks the job cancelled.
  ///
  /// Deletes the TrainJob CR, meters the GPU-hours used so far, and marks the job cancelled. ?id= or ?name=
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postFinetuneCancelWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/finetune/cancel';

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

  /// Deletes the TrainJob CR, meters the GPU-hours used so far, and marks the job cancelled.
  ///
  /// Deletes the TrainJob CR, meters the GPU-hours used so far, and marks the job cancelled. ?id= or ?name=
  Future<void> postFinetuneCancel() async {
    final response = await postFinetuneCancelWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Serves a completed job's checkpoints and registers the result as a routable model on api.hanzo.ai.
  ///
  /// Serves a completed job's checkpoints and registers the result as a routable model on api.hanzo.ai. ?id= or ?name=
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postFinetuneDeployWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/finetune/deploy';

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

  /// Serves a completed job's checkpoints and registers the result as a routable model on api.hanzo.ai.
  ///
  /// Serves a completed job's checkpoints and registers the result as a routable model on api.hanzo.ai. ?id= or ?name=
  Future<void> postFinetuneDeploy() async {
    final response = await postFinetuneDeployWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Validates the request, resolves efficient defaults, persists the job, and submits a real TrainJob CR.
  ///
  /// Validates the request, resolves efficient defaults, persists the job, and submits a real TrainJob CR. A submit failure (e.g. no cluster wired) is surfaced honestly: the job is saved with status \"failed\" + the reason, never faked.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postFinetuneJobsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/finetune/jobs';

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

  /// Validates the request, resolves efficient defaults, persists the job, and submits a real TrainJob CR.
  ///
  /// Validates the request, resolves efficient defaults, persists the job, and submits a real TrainJob CR. A submit failure (e.g. no cluster wired) is surfaced honestly: the job is saved with status \"failed\" + the reason, never faked.
  Future<void> postFinetuneJobs() async {
    final response = await postFinetuneJobsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
