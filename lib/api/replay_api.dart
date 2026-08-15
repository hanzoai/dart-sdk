//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class ReplayApi {
  ReplayApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Record a session-replay snapshot batch
  ///
  /// Accepts a batch of rrweb events from a browser recorder and hands it to the session-replay pipeline, which stores the recording and derives the session summary a player reads back.  ONE REQUEST IS ONE BATCH, and it is all-or-nothing: the recording is made durable before this answers, so a 200 {\"accepted\":1} means stored and never \"buffered somewhere\". There is no partial count, because a half-written recording is not a recording.  `sessionId` is REQUIRED and bounded — at most 70 characters of ASCII letters, digits or '-'. It is the key every batch of one visit is grouped and ordered by, so an id outside that grammar is refused 400 here rather than accepted and dropped further down. `windowId` separates two tabs of one session and `distinctId` attributes the recording to a person; both are optional. `events` is the rrweb batch, each element a raw eventWithTime object, carried VERBATIM — the summary (click, keypress and mouse-activity counts, size) is derived downstream from exactly these bytes, so nothing is re-encoded or dropped.  THE CALLER'S CREDENTIAL DECIDES THE TENANT, and the body never does: the recording lands in the org the presented credential resolves to. It takes the SAME credentials as /v1/event — a validated bearer, an org API key, or a publishable pk- key on Authorization: Bearer, x-hanzo-ingest-key or ?ingest_key= — so a browser bundle already holding a pk- for events needs nothing new to record. A caller that presents nothing is 401 `ingest_key_required`; one whose key resolves to no project is 403 `ingest_key_unknown`; a reduced principal (a Hanzo Team workspace token) is 403 `insufficient_capability`, because a full-fidelity screen recording has no projected form that is safe for a guest to write into a host org.  BOUNDS: 413 over 512 KiB of body, and that is the only bound on one batch — a recorder is expected to chunk a long session rather than send it whole, and the cap is the size one message can carry rather than an arbitrary number. 503 when the pipeline cannot take the batch: honest unavailability the caller can retry, never a 200 over a discarded recording.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ReplayBody] replayBody:
  Future<Response> postReplayWithHttpInfo({ ReplayBody? replayBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/replay';

    // ignore: prefer_final_locals
    Object? postBody = replayBody;

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

  /// Record a session-replay snapshot batch
  ///
  /// Accepts a batch of rrweb events from a browser recorder and hands it to the session-replay pipeline, which stores the recording and derives the session summary a player reads back.  ONE REQUEST IS ONE BATCH, and it is all-or-nothing: the recording is made durable before this answers, so a 200 {\"accepted\":1} means stored and never \"buffered somewhere\". There is no partial count, because a half-written recording is not a recording.  `sessionId` is REQUIRED and bounded — at most 70 characters of ASCII letters, digits or '-'. It is the key every batch of one visit is grouped and ordered by, so an id outside that grammar is refused 400 here rather than accepted and dropped further down. `windowId` separates two tabs of one session and `distinctId` attributes the recording to a person; both are optional. `events` is the rrweb batch, each element a raw eventWithTime object, carried VERBATIM — the summary (click, keypress and mouse-activity counts, size) is derived downstream from exactly these bytes, so nothing is re-encoded or dropped.  THE CALLER'S CREDENTIAL DECIDES THE TENANT, and the body never does: the recording lands in the org the presented credential resolves to. It takes the SAME credentials as /v1/event — a validated bearer, an org API key, or a publishable pk- key on Authorization: Bearer, x-hanzo-ingest-key or ?ingest_key= — so a browser bundle already holding a pk- for events needs nothing new to record. A caller that presents nothing is 401 `ingest_key_required`; one whose key resolves to no project is 403 `ingest_key_unknown`; a reduced principal (a Hanzo Team workspace token) is 403 `insufficient_capability`, because a full-fidelity screen recording has no projected form that is safe for a guest to write into a host org.  BOUNDS: 413 over 512 KiB of body, and that is the only bound on one batch — a recorder is expected to chunk a long session rather than send it whole, and the cap is the size one message can carry rather than an arbitrary number. 503 when the pipeline cannot take the batch: honest unavailability the caller can retry, never a 200 over a discarded recording.
  ///
  /// Parameters:
  ///
  /// * [ReplayBody] replayBody:
  Future<CaptureResult?> postReplay({ ReplayBody? replayBody, }) async {
    final response = await postReplayWithHttpInfo( replayBody: replayBody, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CaptureResult',) as CaptureResult;
    
    }
    return null;
  }
}
