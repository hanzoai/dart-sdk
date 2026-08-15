//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class VideosApi {
  VideosApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Implements GET /v1/videos/{id} — poll a job's status.
  ///
  /// Implements GET /v1/videos/{id} — poll a job's status.  It authenticates the caller, verifies they OWN the job (the caller's billing subject must equal the job's), performs ONE upstream status poll, and — the first time the job is observed completed — settles the reservation with the actual cost and records the billable usage event (exactly once). Returns the OpenAI-shaped video object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getVideosByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/videos/{id}'
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

  /// Implements GET /v1/videos/{id} — poll a job's status.
  ///
  /// Implements GET /v1/videos/{id} — poll a job's status.  It authenticates the caller, verifies they OWN the job (the caller's billing subject must equal the job's), performs ONE upstream status poll, and — the first time the job is observed completed — settles the reservation with the actual cost and records the billable usage event (exactly once). Returns the OpenAI-shaped video object.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> getVideosById(String id,) async {
    final response = await getVideosByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Implements GET /v1/videos/{id}/content — download the finished MP4.
  ///
  /// Implements GET /v1/videos/{id}/content — download the finished MP4.  It authenticates + ownership-checks the caller, then proxies the upstream /content endpoint (bounded by the download concurrency ceiling) and streams the raw video bytes back inline. A successful download also bills the job once (for the client that downloads without first polling to completion) — idempotent with the poll path via job.markCompleted.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getVideosByIdContentWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/videos/{id}/content'
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

  /// Implements GET /v1/videos/{id}/content — download the finished MP4.
  ///
  /// Implements GET /v1/videos/{id}/content — download the finished MP4.  It authenticates + ownership-checks the caller, then proxies the upstream /content endpoint (bounded by the download concurrency ceiling) and streams the raw video bytes back inline. A successful download also bills the job once (for the client that downloads without first polling to completion) — idempotent with the poll path via job.markCompleted.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> getVideosByIdContent(String id,) async {
    final response = await getVideosByIdContentWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Implements POST /v1/videos/generations — the ASYNC create.
  ///
  /// Implements POST /v1/videos/generations — the ASYNC create.  Body: {\"model\": \"...\", \"prompt\": \"...\", \"size\"?: \"1280x720\", \"seconds\"?: int}  It authenticates the caller, resolves the model to its upstream provider via the shared routing table (zen3-video* / wan2-2-t2v-a14b → the spark-video backend), reserves the per-video budget (the balance gate), creates ONE upstream job, registers it in the in-pod store, and returns the OpenAI-shaped video object with status \"queued\" IMMEDIATELY. The client then polls GET /v1/videos/{id} and downloads GET /v1/videos/{id}/content. Nothing is billed here — the debit lands on completion.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postVideosGenerationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/videos/generations';

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

  /// Implements POST /v1/videos/generations — the ASYNC create.
  ///
  /// Implements POST /v1/videos/generations — the ASYNC create.  Body: {\"model\": \"...\", \"prompt\": \"...\", \"size\"?: \"1280x720\", \"seconds\"?: int}  It authenticates the caller, resolves the model to its upstream provider via the shared routing table (zen3-video* / wan2-2-t2v-a14b → the spark-video backend), reserves the per-video budget (the balance gate), creates ONE upstream job, registers it in the in-pod store, and returns the OpenAI-shaped video object with status \"queued\" IMMEDIATELY. The client then polls GET /v1/videos/{id} and downloads GET /v1/videos/{id}/content. Nothing is billed here — the debit lands on completion.
  Future<void> postVideosGenerations() async {
    final response = await postVideosGenerationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
