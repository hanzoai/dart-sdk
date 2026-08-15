//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class EventApi {
  EventApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Capture product events into your org's warehouse
  ///
  /// Stores pageviews, browser errors, identifies and custom commerce events as rows in the caller's own tenant, and answers a receipt {accepted, dropped} that always totals what was sent — a beacon is never silently discarded.  THE STATUS SAYS WHETHER ANYTHING LANDED, so a green check can never mean an empty warehouse. 200 means at least one event was stored (or that nothing was sent), and a nonzero `dropped` beside a nonzero `accepted` is a PARTIAL batch, never a failed one — a batch is not refused whole for its worst element. If NOTHING was stored the request is an error, and it names the one thing that fixes it: 401 `ingest_key_required` when every event was refused for want of a credential (the same events land with a key), and 400 `unroutable_events` when the caller HAD capability and the body still named nothing storable.  ONE door for every wire a Hanzo surface emits, dispatched by the SHAPE of the body and never by a second path: a bare event object, a bare array of them, the {batch:[…]} / {events:[…]} envelope, the team console's snake_case array, and the PostHog wire (spelled `distinct_id`/`api_key`, which the canonical wire never uses). BATCH IS A BODY, NOT A PATH — there is no /v1/event/batch, because an array already is one.  WHAT THE CALLER PRESENTS DECIDES WHAT IT MAY WRITE, and the door itself grants nothing. A validated bearer or an org API key writes the full event at full fidelity. A PUBLISHABLE key (pk-, on Authorization: Bearer, x-hanzo-ingest-key, or ?ingest_key= for navigator.sendBeacon, which cannot set headers) does the same, and is the credential a browser bundle ships: it is deliberately NOT a secret, it resolves WHICH tenant a beacon belongs to and nothing more. A pk- never authenticates and can READ NOTHING — not this org's errors, not a lens, not any other route on this API — so a leaked one lets a stranger write into your stream, and never lets one read out of it. Reading these rows back always takes a real bearer. A Hanzo Team workspace token resolves its org at REDUCED capability: the signed account names the person, so a `distinctId` in the body cannot pin events on a colleague.  NO CREDENTIAL IS REFUSED: a write the server cannot attribute to a project is 401 `ingest_key_required`, and a credential that IS presented but resolves to no project is 403 `ingest_key_unknown`. Nothing is filed under a shared tenant — events nobody can read are worse than events nobody sent, because the caller is told it succeeded. A browser bundle therefore always ships a pk-, which is what /v1/event.js takes.  A REDUCED principal — a Hanzo Team workspace token — writes through the PROJECTION into its own org: narrowed to what the SERVER can name (pageviews and errors, plus the closed autocapture vocabulary $click, $input, $change, $submit, $view), where every one of those names is resolved through a server-owned table and stored as that table's value, so the name on the wire is never the name in the row. Stripped, too, to the fields the projection names, so revenue, personId, groupId and every property but the element annotation cannot reach a row — and an exception is carried only on an error, never on an interaction, so a click cannot ship a stack trace into a row's attributes. It does NOT name the person: the signed account is the identity, so a `distinctId` in the body cannot pin events on a colleague. Everything refused is counted in `dropped`.  The projected lane alone is bounded: 413 over 64 KiB, 400 over 50 events, 429 on the per-client-IP and per-peer caps, and a DNT:1 or Sec-GPC:1 request stores nothing and says so in the receipt. Two stored values carry their own bounds on top, because a request cap does not bound one value: an element annotation over 2 KiB (or a trail over 32 steps) and an exception class over 256 bytes are dropped from the row, which still lands. Authenticated bodies are offered to the observability plane first, which claims LLM-observability ingestion batches and declines everything else.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PostEventRequest] postEventRequest:
  Future<Response> postEventWithHttpInfo({ PostEventRequest? postEventRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/event';

    // ignore: prefer_final_locals
    Object? postBody = postEventRequest;

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

  /// Capture product events into your org's warehouse
  ///
  /// Stores pageviews, browser errors, identifies and custom commerce events as rows in the caller's own tenant, and answers a receipt {accepted, dropped} that always totals what was sent — a beacon is never silently discarded.  THE STATUS SAYS WHETHER ANYTHING LANDED, so a green check can never mean an empty warehouse. 200 means at least one event was stored (or that nothing was sent), and a nonzero `dropped` beside a nonzero `accepted` is a PARTIAL batch, never a failed one — a batch is not refused whole for its worst element. If NOTHING was stored the request is an error, and it names the one thing that fixes it: 401 `ingest_key_required` when every event was refused for want of a credential (the same events land with a key), and 400 `unroutable_events` when the caller HAD capability and the body still named nothing storable.  ONE door for every wire a Hanzo surface emits, dispatched by the SHAPE of the body and never by a second path: a bare event object, a bare array of them, the {batch:[…]} / {events:[…]} envelope, the team console's snake_case array, and the PostHog wire (spelled `distinct_id`/`api_key`, which the canonical wire never uses). BATCH IS A BODY, NOT A PATH — there is no /v1/event/batch, because an array already is one.  WHAT THE CALLER PRESENTS DECIDES WHAT IT MAY WRITE, and the door itself grants nothing. A validated bearer or an org API key writes the full event at full fidelity. A PUBLISHABLE key (pk-, on Authorization: Bearer, x-hanzo-ingest-key, or ?ingest_key= for navigator.sendBeacon, which cannot set headers) does the same, and is the credential a browser bundle ships: it is deliberately NOT a secret, it resolves WHICH tenant a beacon belongs to and nothing more. A pk- never authenticates and can READ NOTHING — not this org's errors, not a lens, not any other route on this API — so a leaked one lets a stranger write into your stream, and never lets one read out of it. Reading these rows back always takes a real bearer. A Hanzo Team workspace token resolves its org at REDUCED capability: the signed account names the person, so a `distinctId` in the body cannot pin events on a colleague.  NO CREDENTIAL IS REFUSED: a write the server cannot attribute to a project is 401 `ingest_key_required`, and a credential that IS presented but resolves to no project is 403 `ingest_key_unknown`. Nothing is filed under a shared tenant — events nobody can read are worse than events nobody sent, because the caller is told it succeeded. A browser bundle therefore always ships a pk-, which is what /v1/event.js takes.  A REDUCED principal — a Hanzo Team workspace token — writes through the PROJECTION into its own org: narrowed to what the SERVER can name (pageviews and errors, plus the closed autocapture vocabulary $click, $input, $change, $submit, $view), where every one of those names is resolved through a server-owned table and stored as that table's value, so the name on the wire is never the name in the row. Stripped, too, to the fields the projection names, so revenue, personId, groupId and every property but the element annotation cannot reach a row — and an exception is carried only on an error, never on an interaction, so a click cannot ship a stack trace into a row's attributes. It does NOT name the person: the signed account is the identity, so a `distinctId` in the body cannot pin events on a colleague. Everything refused is counted in `dropped`.  The projected lane alone is bounded: 413 over 64 KiB, 400 over 50 events, 429 on the per-client-IP and per-peer caps, and a DNT:1 or Sec-GPC:1 request stores nothing and says so in the receipt. Two stored values carry their own bounds on top, because a request cap does not bound one value: an element annotation over 2 KiB (or a trail over 32 steps) and an exception class over 256 bytes are dropped from the row, which still lands. Authenticated bodies are offered to the observability plane first, which claims LLM-observability ingestion batches and declines everything else.
  ///
  /// Parameters:
  ///
  /// * [PostEventRequest] postEventRequest:
  Future<CaptureResult?> postEvent({ PostEventRequest? postEventRequest, }) async {
    final response = await postEventWithHttpInfo( postEventRequest: postEventRequest, );
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

  /// Sentry SDK envelope ingest — errors and traces from an unmodified Sentry client
  ///
  /// Accepts the CURRENT Sentry wire — the framed envelope a modern SDK posts, carrying its items in one request — so an application already instrumented with Sentry reports into Hanzo's error tracking by pointing its DSN here and changing nothing else.  CLOUD ROUTES IT AND READS NONE OF IT. The body is relayed byte-for-byte to the observability plane, which parses the wire, verifies the credential and answers; this door declares no response shape because it does not know one. A deployment with no observability plane mounted answers 503.  THE CREDENTIAL IS A SENTRY DSN KEY, NOT A HANZO PRINCIPAL. This is one of the few writes on the platform that carries no bearer and no org header by design — a Sentry SDK has neither — and it is exempt from the principal gate for that reason. The observability plane verifies the DSN key itself, fail-closed: a request without a valid one is refused there, never admitted here. Presenting a Hanzo bearer instead does nothing.  `project` IS THE DSN'S PROJECT ID — the identifier in the DSN the SDK was configured with, and what the tenant is derived from. It is NOT a Hanzo IAM project and NOT a todo project key. Only these two ingest paths map through: no observability READ API is reachable by any other suffix under this prefix.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///
  /// * [MultipartFile] body:
  Future<Response> postEventByProjectEnvelopeWithHttpInfo(String project, { MultipartFile? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/event/{project}/envelope'
      .replaceAll('{project}', project);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/octet-stream'];


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

  /// Sentry SDK envelope ingest — errors and traces from an unmodified Sentry client
  ///
  /// Accepts the CURRENT Sentry wire — the framed envelope a modern SDK posts, carrying its items in one request — so an application already instrumented with Sentry reports into Hanzo's error tracking by pointing its DSN here and changing nothing else.  CLOUD ROUTES IT AND READS NONE OF IT. The body is relayed byte-for-byte to the observability plane, which parses the wire, verifies the credential and answers; this door declares no response shape because it does not know one. A deployment with no observability plane mounted answers 503.  THE CREDENTIAL IS A SENTRY DSN KEY, NOT A HANZO PRINCIPAL. This is one of the few writes on the platform that carries no bearer and no org header by design — a Sentry SDK has neither — and it is exempt from the principal gate for that reason. The observability plane verifies the DSN key itself, fail-closed: a request without a valid one is refused there, never admitted here. Presenting a Hanzo bearer instead does nothing.  `project` IS THE DSN'S PROJECT ID — the identifier in the DSN the SDK was configured with, and what the tenant is derived from. It is NOT a Hanzo IAM project and NOT a todo project key. Only these two ingest paths map through: no observability READ API is reachable by any other suffix under this prefix.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///
  /// * [MultipartFile] body:
  Future<void> postEventByProjectEnvelope(String project, { MultipartFile? body, }) async {
    final response = await postEventByProjectEnvelopeWithHttpInfo(project,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Sentry SDK store ingest — the legacy single-event wire
  ///
  /// Accepts the LEGACY Sentry wire: one event per request, what an SDK predating envelopes sends. Same door, same credential, same destination as the envelope endpoint — kept open so an old client reports without being upgraded first. New instrumentation has no reason to choose it.  CLOUD ROUTES IT AND READS NONE OF IT. The body is relayed byte-for-byte to the observability plane, which parses the wire, verifies the credential and answers; this door declares no response shape because it does not know one. A deployment with no observability plane mounted answers 503.  THE CREDENTIAL IS A SENTRY DSN KEY, NOT A HANZO PRINCIPAL. This is one of the few writes on the platform that carries no bearer and no org header by design — a Sentry SDK has neither — and it is exempt from the principal gate for that reason. The observability plane verifies the DSN key itself, fail-closed: a request without a valid one is refused there, never admitted here. Presenting a Hanzo bearer instead does nothing.  `project` IS THE DSN'S PROJECT ID — the identifier in the DSN the SDK was configured with, and what the tenant is derived from. It is NOT a Hanzo IAM project and NOT a todo project key. Only these two ingest paths map through: no observability READ API is reachable by any other suffix under this prefix.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///
  /// * [MultipartFile] body:
  Future<Response> postEventByProjectStoreWithHttpInfo(String project, { MultipartFile? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/event/{project}/store'
      .replaceAll('{project}', project);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/octet-stream'];


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

  /// Sentry SDK store ingest — the legacy single-event wire
  ///
  /// Accepts the LEGACY Sentry wire: one event per request, what an SDK predating envelopes sends. Same door, same credential, same destination as the envelope endpoint — kept open so an old client reports without being upgraded first. New instrumentation has no reason to choose it.  CLOUD ROUTES IT AND READS NONE OF IT. The body is relayed byte-for-byte to the observability plane, which parses the wire, verifies the credential and answers; this door declares no response shape because it does not know one. A deployment with no observability plane mounted answers 503.  THE CREDENTIAL IS A SENTRY DSN KEY, NOT A HANZO PRINCIPAL. This is one of the few writes on the platform that carries no bearer and no org header by design — a Sentry SDK has neither — and it is exempt from the principal gate for that reason. The observability plane verifies the DSN key itself, fail-closed: a request without a valid one is refused there, never admitted here. Presenting a Hanzo bearer instead does nothing.  `project` IS THE DSN'S PROJECT ID — the identifier in the DSN the SDK was configured with, and what the tenant is derived from. It is NOT a Hanzo IAM project and NOT a todo project key. Only these two ingest paths map through: no observability READ API is reachable by any other suffix under this prefix.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///
  /// * [MultipartFile] body:
  Future<void> postEventByProjectStore(String project, { MultipartFile? body, }) async {
    final response = await postEventByProjectStoreWithHttpInfo(project,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
