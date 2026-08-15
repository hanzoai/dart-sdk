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
