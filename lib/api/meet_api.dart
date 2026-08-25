//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class MeetApi {
  MeetApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Health reports whether the office can mint join tokens.
  ///
  /// Health reports whether the office can mint join tokens.  It reports whether this deployment holds the LiveKit key pair it needs: ready:true with 200 when tokens can be minted, the SAME body with ready:false, status \"degraded\" and 503 when they cannot — so a probe and a dashboard both read the degraded state instead of someone grepping a boot log.  It takes no credential and is reachable on every public host, so it withholds both the reason and the signing key's name on purpose: ready is the whole dashboard fact, and the reason — which names the key file and the Secret — is written to the boot log where an operator already is.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMeetHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/meet/health';

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

  /// Health reports whether the office can mint join tokens.
  ///
  /// Health reports whether the office can mint join tokens.  It reports whether this deployment holds the LiveKit key pair it needs: ready:true with 200 when tokens can be minted, the SAME body with ready:false, status \"degraded\" and 503 when they cannot — so a probe and a dashboard both read the degraded state instead of someone grepping a boot log.  It takes no credential and is reachable on every public host, so it withholds both the reason and the signing key's name on purpose: ready is the whole dashboard fact, and the reason — which names the key file and the Secret — is written to the boot log where an operator already is.
  Future<MeetHealth?> getMeetHealth() async {
    final response = await getMeetHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MeetHealth',) as MeetHealth;
    
    }
    return null;
  }

  /// What this caller may open a room in
  ///
  /// Answers the three facts the native lobby cannot know on its own: the identity a seat would be taken under, the LiveKit address the browser dials, and the workspaces this caller may open a room in.  It is the SAME decision getToken makes, asked before the room exists rather than after it is named. A room is bound to its tenant by its name's leading workspace segment, and only a workspace this answer lists will be admitted — so the lobby offers exactly what the mint would grant, and a person is never shown a room they would then be refused. Workspaces the caller holds only a guest role in are omitted for that reason.  An empty list is a real answer, not a fault: an IAM identity with no workspace has no room to open, and the lobby says so instead of failing.  `ws` is empty when this deployment has not been told where its media plane is (LIVEKIT_WS). Token minting is unaffected — the published office client supplies its own address — so this is a degraded native UI, not a degraded service, and the lobby refuses to dial rather than guessing a host.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMeetSessionWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/meet/session';

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

  /// What this caller may open a room in
  ///
  /// Answers the three facts the native lobby cannot know on its own: the identity a seat would be taken under, the LiveKit address the browser dials, and the workspaces this caller may open a room in.  It is the SAME decision getToken makes, asked before the room exists rather than after it is named. A room is bound to its tenant by its name's leading workspace segment, and only a workspace this answer lists will be admitted — so the lobby offers exactly what the mint would grant, and a person is never shown a room they would then be refused. Workspaces the caller holds only a guest role in are omitted for that reason.  An empty list is a real answer, not a fault: an IAM identity with no workspace has no room to open, and the lobby says so instead of failing.  `ws` is empty when this deployment has not been told where its media plane is (LIVEKIT_WS). Token minting is unaffected — the published office client supplies its own address — so this is a degraded native UI, not a degraded service, and the lobby refuses to dial rather than guessing a host.
  Future<void> getMeetSession() async {
    final response = await getMeetSessionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// What is being recorded in a room, and where the file goes
  ///
  /// Answers what is being recorded in a room, and where the file went.  It reports the recording that is RUNNING, and once none is, the most recent one the media server still holds — with its final status and its object. That second case is the one that matters for finding a file: the answer to a start is the only other place the location appears, and a client that lost it, or a colleague who was not the one to press record, has nowhere else to look.  It is behind the same check as starting one: where a recording of a private conversation is kept is a fact about that conversation, so it is told to the people the room admits and to nobody else.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] room (required):
  ///   Room is the LiveKit room, named the way the office client names one (`<workspace>_<name>_<id>`). Its leading segment is what binds the room to a tenant, and it is the segment the caller's membership is checked against.
  Future<Response> meetRecordReadWithHttpInfo(String room,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/meet/record';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'room', room));

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

  /// What is being recorded in a room, and where the file goes
  ///
  /// Answers what is being recorded in a room, and where the file went.  It reports the recording that is RUNNING, and once none is, the most recent one the media server still holds — with its final status and its object. That second case is the one that matters for finding a file: the answer to a start is the only other place the location appears, and a client that lost it, or a colleague who was not the one to press record, has nowhere else to look.  It is behind the same check as starting one: where a recording of a private conversation is kept is a fact about that conversation, so it is told to the people the room admits and to nobody else.
  ///
  /// Parameters:
  ///
  /// * [String] room (required):
  ///   Room is the LiveKit room, named the way the office client names one (`<workspace>_<name>_<id>`). Its leading segment is what binds the room to a tenant, and it is the segment the caller's membership is checked against.
  Future<Recording?> meetRecordRead(String room,) async {
    final response = await meetRecordReadWithHttpInfo(room,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Recording',) as Recording;
    
    }
    return null;
  }

  /// Start recording a room, or return the recording already running
  ///
  /// Begins recording a room, or hands back the recording already running.  A recording is a durable artifact of a conversation, so only someone this room would admit may make one: the caller is authorized by the SAME decision /v1/meet/getToken makes about the same room, and refused with the same 401.  A SECOND START RETURNS THE FIRST rather than refusing it. There is at most one recording per room and this operation's job is to establish that there is one — which is already true when a colleague, or the caller's own double-click, started it a moment ago. The answer is the same shape either way, naming the recording that is actually running, so a client never has to tell the two cases apart to find the id.  A deployment with no media server address or no object store answers 503 naming which, because a recording that silently does not happen is worse than one that is refused. The reason reaches only a caller this room already admits.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RecordIn] recordIn (required):
  Future<Response> meetRecordStartWithHttpInfo(RecordIn recordIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/meet/record';

    // ignore: prefer_final_locals
    Object? postBody = recordIn;

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

  /// Start recording a room, or return the recording already running
  ///
  /// Begins recording a room, or hands back the recording already running.  A recording is a durable artifact of a conversation, so only someone this room would admit may make one: the caller is authorized by the SAME decision /v1/meet/getToken makes about the same room, and refused with the same 401.  A SECOND START RETURNS THE FIRST rather than refusing it. There is at most one recording per room and this operation's job is to establish that there is one — which is already true when a colleague, or the caller's own double-click, started it a moment ago. The answer is the same shape either way, naming the recording that is actually running, so a client never has to tell the two cases apart to find the id.  A deployment with no media server address or no object store answers 503 naming which, because a recording that silently does not happen is worse than one that is refused. The reason reaches only a caller this room already admits.
  ///
  /// Parameters:
  ///
  /// * [RecordIn] recordIn (required):
  Future<Recording?> meetRecordStart(RecordIn recordIn,) async {
    final response = await meetRecordStartWithHttpInfo(recordIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Recording',) as Recording;
    
    }
    return null;
  }

  /// Stop a room's recording
  ///
  /// Ends a room's recording — EVERY one of them.  Whoever the room admits may stop it, including someone who did not start it: a person being recorded has to be able to end it, and a rule that only the starter may stop would deny exactly that. Stopping is free — a caller made to pay to stop being recorded would be paying for the wrong thing.  200 MEANS THE ROOM IS NOT BEING RECORDED, and that is why this ends all of them rather than the first. \"At most one per room\" is an invariant this surface wants and cannot impose: reading the list and starting are two calls, and two replicas racing through that window both start. When the list comes back holding two, two is the truth — and ending one while answering 200 tells the person withdrawing consent that it stopped while a second worker keeps writing. A stop that cannot finish the job says so instead.  Stopping a room that is not being recorded is not an error. The answer names the room with no recording on it, which is the state the caller asked for.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] room (required):
  ///   Room is the LiveKit room, named the way the office client names one (`<workspace>_<name>_<id>`). Its leading segment is what binds the room to a tenant, and it is the segment the caller's membership is checked against.
  Future<Response> meetRecordStopWithHttpInfo(String room,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/meet/record';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'room', room));

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

  /// Stop a room's recording
  ///
  /// Ends a room's recording — EVERY one of them.  Whoever the room admits may stop it, including someone who did not start it: a person being recorded has to be able to end it, and a rule that only the starter may stop would deny exactly that. Stopping is free — a caller made to pay to stop being recorded would be paying for the wrong thing.  200 MEANS THE ROOM IS NOT BEING RECORDED, and that is why this ends all of them rather than the first. \"At most one per room\" is an invariant this surface wants and cannot impose: reading the list and starting are two calls, and two replicas racing through that window both start. When the list comes back holding two, two is the truth — and ending one while answering 200 tells the person withdrawing consent that it stopped while a second worker keeps writing. A stop that cannot finish the job says so instead.  Stopping a room that is not being recorded is not an error. The answer names the room with no recording on it, which is the state the caller asked for.
  ///
  /// Parameters:
  ///
  /// * [String] room (required):
  ///   Room is the LiveKit room, named the way the office client names one (`<workspace>_<name>_<id>`). Its leading segment is what binds the room to a tenant, and it is the segment the caller's membership is checked against.
  Future<Recording?> meetRecordStop(String room,) async {
    final response = await meetRecordStopWithHttpInfo(room,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Recording',) as Recording;
    
    }
    return null;
  }

  /// Mint a join token for one video room
  ///
  /// Answers with a LiveKit join token for exactly the room named in the body. The body is the RAW token as text/plain — one opaque string, not JSON and not wrapped in an envelope, which is what the office client reads.  The caller presents its workspace session as a Bearer. Every clause is a refusal: the session must verify, its SIGNED workspace claim must equal the room's leading name segment — rooms are named `<workspace>_<room>_<id>`, and that prefix is the only thing binding a room to a tenant — and the session must carry a privileged workspace role, so a guest is refused rather than seated.  The participant identity is the SESSION'S, never the body's. `_id` is accepted for compatibility with the published client bundle and deliberately ignored: LiveKit treats the identity as unique and ejects a duplicate, so honouring a caller-chosen one would let anyone in a workspace kick out a colleague and impersonate them. `participantName` is a display name only.  An unconfigured deployment answers 503 under its own name rather than 404, and the refusal states only that the office is unconfigured — the reason names key material and stays in the boot log.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postMeetGettokenWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/meet/getToken';

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

  /// Mint a join token for one video room
  ///
  /// Answers with a LiveKit join token for exactly the room named in the body. The body is the RAW token as text/plain — one opaque string, not JSON and not wrapped in an envelope, which is what the office client reads.  The caller presents its workspace session as a Bearer. Every clause is a refusal: the session must verify, its SIGNED workspace claim must equal the room's leading name segment — rooms are named `<workspace>_<room>_<id>`, and that prefix is the only thing binding a room to a tenant — and the session must carry a privileged workspace role, so a guest is refused rather than seated.  The participant identity is the SESSION'S, never the body's. `_id` is accepted for compatibility with the published client bundle and deliberately ignored: LiveKit treats the identity as unique and ejects a duplicate, so honouring a caller-chosen one would let anyone in a workspace kick out a colleague and impersonate them. `participantName` is a display name only.  An unconfigured deployment answers 503 under its own name rather than 404, and the refusal states only that the office is unconfigured — the reason names key material and stays in the boot log.
  Future<void> postMeetGettoken() async {
    final response = await postMeetGettokenWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
