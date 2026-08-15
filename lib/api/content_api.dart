//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class ContentApi {
  ContentApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Aggregates the caller org's marketing content across every publishable content type into ONE queue board — the cross-type read the framework's per-DocType list cannot give.
  ///
  /// Aggregates the caller org's marketing content across every publishable content type into ONE queue board — the cross-type read the framework's per-DocType list cannot give. It never fails on a partial outage: a content type the org has not installed, or one whose search errors, is skipped and logged rather than failing the whole board.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   Status keeps only items in one lifecycle state (draft, in_review, approved, queued, published, archived). An undefined state is refused.
  ///
  /// * [String] project:
  ///   Project keeps only items in one brand/site sub-scope.
  ///
  /// * [String] doctype:
  ///   DocType keeps only one content type; omitted, the board spans every publishable type. An unknown type is refused.
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned, clamped to 1000. Defaults to 200, which is also what a non-positive or unparseable value takes.
  Future<Response> getContentBoardWithHttpInfo({ String? status, String? project, String? doctype, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/content/board';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (project != null) {
      queryParams.addAll(_queryParams('', 'project', project));
    }
    if (doctype != null) {
      queryParams.addAll(_queryParams('', 'doctype', doctype));
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

  /// Aggregates the caller org's marketing content across every publishable content type into ONE queue board — the cross-type read the framework's per-DocType list cannot give.
  ///
  /// Aggregates the caller org's marketing content across every publishable content type into ONE queue board — the cross-type read the framework's per-DocType list cannot give. It never fails on a partial outage: a content type the org has not installed, or one whose search errors, is skipped and logged rather than failing the whole board.
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   Status keeps only items in one lifecycle state (draft, in_review, approved, queued, published, archived). An undefined state is refused.
  ///
  /// * [String] project:
  ///   Project keeps only items in one brand/site sub-scope.
  ///
  /// * [String] doctype:
  ///   DocType keeps only one content type; omitted, the board spans every publishable type. An unknown type is refused.
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned, clamped to 1000. Defaults to 200, which is also what a non-positive or unparseable value takes.
  Future<BoardPage?> getContentBoard({ String? status, String? project, String? doctype, int? limit, }) async {
    final response = await getContentBoardWithHttpInfo( status: status, project: project, doctype: doctype, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BoardPage',) as BoardPage;
    
    }
    return null;
  }

  /// Lists the distribution channels the caller's org has connected — the social integrations a publish can target.
  ///
  /// Lists the distribution channels the caller's org has connected — the social integrations a publish can target. A deployment with no distribution edge wired answers 503 rather than an empty list that would read as \"no channels\".
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getContentChannelsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/content/channels';

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

  /// Lists the distribution channels the caller's org has connected — the social integrations a publish can target.
  ///
  /// Lists the distribution channels the caller's org has connected — the social integrations a publish can target. A deployment with no distribution edge wired answers 503 rather than an empty list that would read as \"no channels\".
  Future<ChannelList?> getContentChannels() async {
    final response = await getContentChannelsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ChannelList',) as ChannelList;
    
    }
    return null;
  }

  /// Returns the ONE marketing-content state machine: the ordered lifecycle states, which state a fresh document starts in, which one is publicly live, and the legal successors of every state.
  ///
  /// Returns the ONE marketing-content state machine: the ordered lifecycle states, which state a fresh document starts in, which one is publicly live, and the legal successors of every state. The console builds its board columns and its per-item action buttons from this single answer, so the UI and the write-time enforcement hook can never disagree about what is legal.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getContentLifecycleWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/content/lifecycle';

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

  /// Returns the ONE marketing-content state machine: the ordered lifecycle states, which state a fresh document starts in, which one is publicly live, and the legal successors of every state.
  ///
  /// Returns the ONE marketing-content state machine: the ordered lifecycle states, which state a fresh document starts in, which one is publicly live, and the legal successors of every state. The console builds its board columns and its per-item action buttons from this single answer, so the UI and the write-time enforcement hook can never disagree about what is legal.
  Future<StateGraph?> getContentLifecycle() async {
    final response = await getContentLifecycleWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StateGraph',) as StateGraph;
    
    }
    return null;
  }

  /// Moves one content item to a new lifecycle state and, on the move to published, fans it out to the item's channels.
  ///
  /// Moves one content item to a new lifecycle state and, on the move to published, fans it out to the item's channels. The edge must be legal for the item's current state — an illegal move is refused with 409 — and the status write re-validates it at the storage boundary. Distribution is best effort: its honest state is reported on the result and a distribution failure never rolls the status change back.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] doctype (required):
  ///   DocType is the content type to act on, from the path.
  ///
  /// * [String] name (required):
  ///   Name is the document to act on, from the path.
  ///
  /// * [TransitionIn] transitionIn (required):
  Future<Response> postContentByDoctypeByNameTransitionWithHttpInfo(String doctype, String name, TransitionIn transitionIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/content/{doctype}/{name}/transition'
      .replaceAll('{doctype}', doctype)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = transitionIn;

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

  /// Moves one content item to a new lifecycle state and, on the move to published, fans it out to the item's channels.
  ///
  /// Moves one content item to a new lifecycle state and, on the move to published, fans it out to the item's channels. The edge must be legal for the item's current state — an illegal move is refused with 409 — and the status write re-validates it at the storage boundary. Distribution is best effort: its honest state is reported on the result and a distribution failure never rolls the status change back.
  ///
  /// Parameters:
  ///
  /// * [String] doctype (required):
  ///   DocType is the content type to act on, from the path.
  ///
  /// * [String] name (required):
  ///   Name is the document to act on, from the path.
  ///
  /// * [TransitionIn] transitionIn (required):
  Future<TransitionResult?> postContentByDoctypeByNameTransition(String doctype, String name, TransitionIn transitionIn,) async {
    final response = await postContentByDoctypeByNameTransitionWithHttpInfo(doctype, name, transitionIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TransitionResult',) as TransitionResult;
    
    }
    return null;
  }

  /// Draft a piece of marketing content and file it in the CMS as a draft.
  ///
  /// Draft a piece of marketing content and file it in the CMS as a draft.  Answers 201 with the created draft's identity — {doctype, name, status} — and the document itself lands in the CMS through the SAME validate and lifecycle-hook pipeline an ordinary create runs. This is a WRITE, not a preview: there is no dry-run, and every call that succeeds leaves a document behind.  `doctype` picks which of two generation planes runs, and they are the only two. Campaign and SocialPost are drafted as brand COPY on the platform AI plane (zen5 by default, overridable per request with `model` or per deployment); Asset is a studio image render the AI plane never sees. Everything else about the call is identical.  MONEY, metered in exactly one place per mode and never both. Copy rides the platform's own inference meter — the org's balance is authorised before the model call and debited at the exact token cost after — so content never re-bills it. A studio render is invisible to that meter, so content is the sole meter for it: the org is gated BEFORE the GPU compute and refused 402 when out of funds or over its spend cap, and the debit is recorded only once the render actually returns, because the billable event is the consumed compute and not the CMS row. `project` rides the BODY rather than a server-minted identity claim, so it attributes spend but a project-scoped cap stays soft on it — the org is the value that is enforced.  The org is the caller's own, resolved once from the validated principal and never read from the body; a caller without one is refused 403. Status is not the generator's to choose: a generated item is ALWAYS a draft, and the storage-boundary hook enforces that a second time.  It fails closed rather than inventing anything. An unknown content type is 404 and a deployment whose marketing module is not installed is 409 naming the install call. An AI plane or studio that is unconfigured or unreachable, a graph the studio rejects, and a render that does not return in time all degrade to 503 — never fabricated copy, never a fake render. A `source_media` that fails the SSRF and traversal validator is 400 raised before the billing gate and before the studio is contacted, so a hostile source never costs the caller anything.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GenerateInput] generateInput (required):
  Future<Response> postContentGenerateWithHttpInfo(GenerateInput generateInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/content/generate';

    // ignore: prefer_final_locals
    Object? postBody = generateInput;

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

  /// Draft a piece of marketing content and file it in the CMS as a draft.
  ///
  /// Draft a piece of marketing content and file it in the CMS as a draft.  Answers 201 with the created draft's identity — {doctype, name, status} — and the document itself lands in the CMS through the SAME validate and lifecycle-hook pipeline an ordinary create runs. This is a WRITE, not a preview: there is no dry-run, and every call that succeeds leaves a document behind.  `doctype` picks which of two generation planes runs, and they are the only two. Campaign and SocialPost are drafted as brand COPY on the platform AI plane (zen5 by default, overridable per request with `model` or per deployment); Asset is a studio image render the AI plane never sees. Everything else about the call is identical.  MONEY, metered in exactly one place per mode and never both. Copy rides the platform's own inference meter — the org's balance is authorised before the model call and debited at the exact token cost after — so content never re-bills it. A studio render is invisible to that meter, so content is the sole meter for it: the org is gated BEFORE the GPU compute and refused 402 when out of funds or over its spend cap, and the debit is recorded only once the render actually returns, because the billable event is the consumed compute and not the CMS row. `project` rides the BODY rather than a server-minted identity claim, so it attributes spend but a project-scoped cap stays soft on it — the org is the value that is enforced.  The org is the caller's own, resolved once from the validated principal and never read from the body; a caller without one is refused 403. Status is not the generator's to choose: a generated item is ALWAYS a draft, and the storage-boundary hook enforces that a second time.  It fails closed rather than inventing anything. An unknown content type is 404 and a deployment whose marketing module is not installed is 409 naming the install call. An AI plane or studio that is unconfigured or unreachable, a graph the studio rejects, and a render that does not return in time all degrade to 503 — never fabricated copy, never a fake render. A `source_media` that fails the SSRF and traversal validator is 400 raised before the billing gate and before the studio is contacted, so a hostile source never costs the caller anything.
  ///
  /// Parameters:
  ///
  /// * [GenerateInput] generateInput (required):
  Future<GenerateResult?> postContentGenerate(GenerateInput generateInput,) async {
    final response = await postContentGenerateWithHttpInfo(generateInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GenerateResult',) as GenerateResult;
    
    }
    return null;
  }

  /// Publish distributes one CMS content item to the channels recorded on it and returns the honest per-channel outcome.
  ///
  /// Publish distributes one CMS content item to the channels recorded on it and returns the honest per-channel outcome. The item names itself — its caption, media and channel list are read from the stored document, not from this request. It is idempotent per channel (a channel already posted for this item is skipped), and a publish that loses the per-item lease to a live publisher answers status \"in_progress\" having posted nothing.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PublishInput] publishInput (required):
  Future<Response> postContentPublishWithHttpInfo(PublishInput publishInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/content/publish';

    // ignore: prefer_final_locals
    Object? postBody = publishInput;

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

  /// Publish distributes one CMS content item to the channels recorded on it and returns the honest per-channel outcome.
  ///
  /// Publish distributes one CMS content item to the channels recorded on it and returns the honest per-channel outcome. The item names itself — its caption, media and channel list are read from the stored document, not from this request. It is idempotent per channel (a channel already posted for this item is skipped), and a publish that loses the per-item lease to a live publisher answers status \"in_progress\" having posted nothing.
  ///
  /// Parameters:
  ///
  /// * [PublishInput] publishInput (required):
  Future<PublishResult?> postContentPublish(PublishInput publishInput,) async {
    final response = await postContentPublishWithHttpInfo(publishInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PublishResult',) as PublishResult;
    
    }
    return null;
  }
}
