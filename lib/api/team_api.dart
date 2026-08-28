//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class TeamApi {
  TeamApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Signs this browser out of team by expiring the HttpOnly account-token cookie the OAuth callback set.
  ///
  /// Signs this browser out of team by expiring the HttpOnly account-token cookie the OAuth callback set. It is the counterpart of the cookie PUT, it takes nothing — the cookie it clears is named by this service, never by the caller — and it is unconditional: a caller with no cookie, an expired one or a forged one all get the same acknowledgement, because clearing something that is not there is the same outcome as clearing something that is.  It clears ONLY the team session cookie. The IAM access-token cookie the same callback set is a different credential with a different lifetime and is left alone, so this is a team sign-out, not a platform one.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteTeamAccountCookieWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/team/account/cookie';

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

  /// Signs this browser out of team by expiring the HttpOnly account-token cookie the OAuth callback set.
  ///
  /// Signs this browser out of team by expiring the HttpOnly account-token cookie the OAuth callback set. It is the counterpart of the cookie PUT, it takes nothing — the cookie it clears is named by this service, never by the caller — and it is unconditional: a caller with no cookie, an expired one or a forged one all get the same acknowledgement, because clearing something that is not there is the same outcome as clearing something that is.  It clears ONLY the team session cookie. The IAM access-token cookie the same callback set is a different credential with a different lifetime and is left alone, so this is a team sign-out, not a platform one.
  Future<CookieAck?> deleteTeamAccountCookie() async {
    final response = await deleteTeamAccountCookieWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CookieAck',) as CookieAck;
    
    }
    return null;
  }

  /// Removes one blob from a workspace's file store.
  ///
  /// Removes one blob from a workspace's file store. The caller must hold a verified session AND be a member of the workspace; anything else — an unknown workspace, another tenant's workspace, a workspace the caller is not in — answers the same 404, so a probe learns nothing about what exists.  It is IDEMPOTENT: deleting a present or an absent blob both answer 204, so a delete never confirms a blob's existence and a foreign blob id (a physical key the caller can never name into another tenant's box) is a harmless no-op. A storage backend that is unavailable fails closed with 502 rather than lying about success.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] workspace (required):
  ///   Workspace is the workspace uuid the blob belongs to, from the path.
  ///
  /// * [String] filename (required):
  ///   Filename is the last path segment, which the front sets to the blob id when it sends no explicit `file`.
  ///
  /// * [String] file:
  ///   File is the blob id, and wins over the path segment when both are present.
  Future<Response> deleteTeamFilesByWorkspaceByFilenameWithHttpInfo(String workspace, String filename, { String? file, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/team/files/{workspace}/{filename}'
      .replaceAll('{workspace}', workspace)
      .replaceAll('{filename}', filename);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (file != null) {
      queryParams.addAll(_queryParams('', 'file', file));
    }

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

  /// Removes one blob from a workspace's file store.
  ///
  /// Removes one blob from a workspace's file store. The caller must hold a verified session AND be a member of the workspace; anything else — an unknown workspace, another tenant's workspace, a workspace the caller is not in — answers the same 404, so a probe learns nothing about what exists.  It is IDEMPOTENT: deleting a present or an absent blob both answer 204, so a delete never confirms a blob's existence and a foreign blob id (a physical key the caller can never name into another tenant's box) is a harmless no-op. A storage backend that is unavailable fails closed with 502 rather than lying about success.
  ///
  /// Parameters:
  ///
  /// * [String] workspace (required):
  ///   Workspace is the workspace uuid the blob belongs to, from the path.
  ///
  /// * [String] filename (required):
  ///   Filename is the last path segment, which the front sets to the blob id when it sends no explicit `file`.
  ///
  /// * [String] file:
  ///   File is the blob id, and wins over the path segment when both are present.
  Future<void> deleteTeamFilesByWorkspaceByFilename(String workspace, String filename, { String? file, }) async {
    final response = await deleteTeamFilesByWorkspaceByFilenameWithHttpInfo(workspace, filename,  file: file, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Start a sign-in at hanzo.id
  ///
  /// STARTS the OAuth hop: answers 302 to hanzo.id's authorize endpoint and sets the short-lived HttpOnly state cookie that binds the flow to this browser. NO TOKEN COMES BACK FROM THIS CALL — the session is minted by the callback below, and a client that expects JSON here gets a redirect with no body.  A browser is the intended caller. Anything else must follow the Location AND keep the Set-Cookie, because the callback refuses a flow whose state it cannot match. That cookie carries the random nonce plus the client's navigateUrl, so the round trip needs no second channel, and it lives ten minutes — the whole budget for the hop.  The provider segment only picks a hint: the redirect_uri is ALWAYS the canonical openid callback, the one IAM has registered. Measured end to end, hanzo.id strips that hint today, so /auth/google and /auth/openid land on the same Hanzo sign-in page — the federation shortcut is an upstream fix, not a second endpoint here.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  Future<Response> getTeamAccountAuthByProviderWithHttpInfo(String provider,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/team/account/auth/{provider}'
      .replaceAll('{provider}', provider);

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

  /// Start a sign-in at hanzo.id
  ///
  /// STARTS the OAuth hop: answers 302 to hanzo.id's authorize endpoint and sets the short-lived HttpOnly state cookie that binds the flow to this browser. NO TOKEN COMES BACK FROM THIS CALL — the session is minted by the callback below, and a client that expects JSON here gets a redirect with no body.  A browser is the intended caller. Anything else must follow the Location AND keep the Set-Cookie, because the callback refuses a flow whose state it cannot match. That cookie carries the random nonce plus the client's navigateUrl, so the round trip needs no second channel, and it lives ten minutes — the whole budget for the hop.  The provider segment only picks a hint: the redirect_uri is ALWAYS the canonical openid callback, the one IAM has registered. Measured end to end, hanzo.id strips that hint today, so /auth/google and /auth/openid land on the same Hanzo sign-in page — the federation shortcut is an upstream fix, not a second endpoint here.
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  Future<void> getTeamAccountAuthByProvider(String provider,) async {
    final response = await getTeamAccountAuthByProviderWithHttpInfo(provider,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Complete a sign-in and hand the browser its session
  ///
  /// COMPLETES the OAuth hop: hanzo.id redirects the browser here with ?code and ?state, and the answer is another 302 — back to the client's login route carrying the freshly minted team session token in the query. Never JSON, and never a token in this response's own body.  THE STATE IS CHECKED FIRST, before the code is even looked at: the flow cookie is read and cleared one-shot, and a callback whose ?state does not equal the nonce it held is bounced with error=state_mismatch and NEVER exchanged. That is what makes a forged or replayed callback inert. Only then is the code exchanged server-side — team is a confidential client with a client_secret, so there is no PKCE and the code never passes through the browser's JS.  The tenant is derived from the IAM access token VERIFIED RS256 against the JWKS, the same trust anchor the identity boundary uses; a token whose owner claim is empty fails closed with no login at all. Every org that token proves gets a workspace ensured, so a member of two orgs is a counted seat in both. The IAM access token is also parked in an HttpOnly cookie for the same-origin agents proxy — page JS never reads it.  EVERY failure is a redirect, not a status: a denied consent, a missing code, a failed exchange, an unreadable userinfo, an unverifiable org and a token-mint failure each bounce to the login page with an ?error code naming the step.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  Future<Response> getTeamAccountAuthByProviderCallbackWithHttpInfo(String provider,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/team/account/auth/{provider}/callback'
      .replaceAll('{provider}', provider);

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

  /// Complete a sign-in and hand the browser its session
  ///
  /// COMPLETES the OAuth hop: hanzo.id redirects the browser here with ?code and ?state, and the answer is another 302 — back to the client's login route carrying the freshly minted team session token in the query. Never JSON, and never a token in this response's own body.  THE STATE IS CHECKED FIRST, before the code is even looked at: the flow cookie is read and cleared one-shot, and a callback whose ?state does not equal the nonce it held is bounced with error=state_mismatch and NEVER exchanged. That is what makes a forged or replayed callback inert. Only then is the code exchanged server-side — team is a confidential client with a client_secret, so there is no PKCE and the code never passes through the browser's JS.  The tenant is derived from the IAM access token VERIFIED RS256 against the JWKS, the same trust anchor the identity boundary uses; a token whose owner claim is empty fails closed with no login at all. Every org that token proves gets a workspace ensured, so a member of two orgs is a counted seat in both. The IAM access token is also parked in an HttpOnly cookie for the same-origin agents proxy — page JS never reads it.  EVERY failure is a redirect, not a status: a denied consent, a missing code, a failed exchange, an unreadable userinfo, an unverifiable org and a token-mint failure each bounce to the login page with an ?error code naming the step.
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  Future<void> getTeamAccountAuthByProviderCallback(String provider,) async {
    final response = await getTeamAccountAuthByProviderCallbackWithHttpInfo(provider,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the identity providers this deployment starts a login with.
  ///
  /// Returns the identity providers this deployment starts a login with. It is always exactly one — hanzo.id. Which identities that provider accepts (Google, GitHub, passkey, password) is IAM's question, answered on IAM's own page next to the identity check and the training-data consent that must precede a first session; listing them here would be a second place holding that answer, and the two drift the moment IAM gains or drops one.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTeamAccountProvidersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/team/account/providers';

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

  /// Returns the identity providers this deployment starts a login with.
  ///
  /// Returns the identity providers this deployment starts a login with. It is always exactly one — hanzo.id. Which identities that provider accepts (Google, GitHub, passkey, password) is IAM's question, answered on IAM's own page next to the identity check and the training-data consent that must precede a first session; listing them here would be a second place holding that answer, and the two drift the moment IAM gains or drops one.
  Future<List<ProviderInfo>?> getTeamAccountProviders() async {
    final response = await getTeamAccountProvidersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ProviderInfo>') as List)
        .cast<ProviderInfo>()
        .toList(growable: false);

    }
    return null;
  }

  /// Returns the plan and seat counts for the caller's OWN org, resolved from the VERIFIED team session token — never a client header.
  ///
  /// Returns the plan and seat counts for the caller's OWN org, resolved from the VERIFIED team session token — never a client header. Seats and guests are the org's distinct active human members (a bot member is not a seat); the plan comes from the licensing entitlement and is empty when that read is unavailable, so the page shows an honest dash rather than a fabricated tier. A caller with no verified session gets 401, and a real seat-read failure is a 502 rather than a false \"0 members\".
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTeamBillingPlanWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/team/billing/plan';

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

  /// Returns the plan and seat counts for the caller's OWN org, resolved from the VERIFIED team session token — never a client header.
  ///
  /// Returns the plan and seat counts for the caller's OWN org, resolved from the VERIFIED team session token — never a client header. Seats and guests are the org's distinct active human members (a bot member is not a seat); the plan comes from the licensing entitlement and is empty when that read is unavailable, so the page shows an honest dash rather than a fabricated tier. A caller with no verified session gets 401, and a real seat-read failure is a 502 rather than a false \"0 members\".
  Future<PlanInfo?> getTeamBillingPlan() async {
    final response = await getTeamBillingPlanWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlanInfo',) as PlanInfo;
    
    }
    return null;
  }

  /// Open the wallet page
  ///
  /// Serves the usage-and-wallet page the Team front links to — HTML, not JSON. It is a static React build compiled into this binary, so there is no upstream to be down and no build step at request time.  SESSION-GATED: without a verified team session token — bearer, else the HttpOnly account cookie — the caller gets 401 and not one byte of the page, so an anonymous browser meets a refusal rather than a shell that then fails to load anything.  The page is markup only. It reads money SAME-ORIGIN from cloud's own balance and usage endpoints, which pin the org from the IAM cookie the team OAuth callback set — nothing under this path proxies a money read, so there is no second auth mechanism here to get wrong. A deployment whose page was never built answers 503 naming the missing bundle, never a blank 200.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTeamBillingUiWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/team/billing/ui';

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

  /// Open the wallet page
  ///
  /// Serves the usage-and-wallet page the Team front links to — HTML, not JSON. It is a static React build compiled into this binary, so there is no upstream to be down and no build step at request time.  SESSION-GATED: without a verified team session token — bearer, else the HttpOnly account cookie — the caller gets 401 and not one byte of the page, so an anonymous browser meets a refusal rather than a shell that then fails to load anything.  The page is markup only. It reads money SAME-ORIGIN from cloud's own balance and usage endpoints, which pin the org from the IAM cookie the team OAuth callback set — nothing under this path proxies a money read, so there is no second auth mechanism here to get wrong. A deployment whose page was never built answers 503 naming the missing bundle, never a blank 200.
  Future<MultipartFile?> getTeamBillingUi() async {
    final response = await getTeamBillingUiWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Returns the caller org's bot members — the org's agents projected as the workspace Employees they become, each with the member account uuid and Person reference the roster addresses it by.
  ///
  /// Returns the caller org's bot members — the org's agents projected as the workspace Employees they become, each with the member account uuid and Person reference the roster addresses it by. An agents subsystem that is not mounted answers an empty list, never an error.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTeamBotsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/team/bots';

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

  /// Returns the caller org's bot members — the org's agents projected as the workspace Employees they become, each with the member account uuid and Person reference the roster addresses it by.
  ///
  /// Returns the caller org's bot members — the org's agents projected as the workspace Employees they become, each with the member account uuid and Person reference the roster addresses it by. An agents subsystem that is not mounted answers an empty list, never an error.
  Future<BotRoster?> getTeamBots() async {
    final response = await getTeamBotsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BotRoster',) as BotRoster;
    
    }
    return null;
  }

  /// Open the live collaborative-editing socket
  ///
  /// Upgrades to the hocuspocus WebSocket the Team editor syncs its Y.js documents over: binary frames of document name, message type and payload, with ONE socket multiplexing every document a tab has open. The server is a relay and an ordered update log, not a CRDT engine — it replays the log to each joining peer and broadcasts every update to the rest, which converges because Y.js updates are commutative and idempotent. There is no body; the response is a protocol upgrade.  BOTH LANES SHARE ONE ROOT. The client derives them from one configured URL — this socket at its root, the markup-snapshot RPC one segment in — so pointing the editor at this service is one value, and the two lanes cannot drift apart.  AUTH IS IN-BAND, PER DOCUMENT, NOT ON THE UPGRADE. The handshake gates only on browser Origin (403 outside the team surfaces; no Origin at all is admitted, which is what a non-browser sends), and then the first frame for a document must be an Auth message carrying the same session or workspace token every other team route verifies — a browser WebSocket cannot set an Authorization header, which is why the token rides inside the protocol. Anything else on an unauthenticated document is answered with one permission denial and nothing further.  Every document is authorized on its own: the document's workspace must be the token's workspace when the token pins one, and the caller must be a member of it. A mismatch, an unknown workspace and a non-member deny alike with \"document not found\". Rooms are keyed by org and workspace and the persisted log's key embeds both, so a foreign document id can neither join a room nor read a blob.  The server pings every twenty seconds and drops a socket silent for sixty, so a backgrounded tab — whose JS timers are throttled but whose network stack still auto-pongs — stays connected instead of dying into a reconnect loop.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTeamCollaboratorWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/team/collaborator';

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

  /// Open the live collaborative-editing socket
  ///
  /// Upgrades to the hocuspocus WebSocket the Team editor syncs its Y.js documents over: binary frames of document name, message type and payload, with ONE socket multiplexing every document a tab has open. The server is a relay and an ordered update log, not a CRDT engine — it replays the log to each joining peer and broadcasts every update to the rest, which converges because Y.js updates are commutative and idempotent. There is no body; the response is a protocol upgrade.  BOTH LANES SHARE ONE ROOT. The client derives them from one configured URL — this socket at its root, the markup-snapshot RPC one segment in — so pointing the editor at this service is one value, and the two lanes cannot drift apart.  AUTH IS IN-BAND, PER DOCUMENT, NOT ON THE UPGRADE. The handshake gates only on browser Origin (403 outside the team surfaces; no Origin at all is admitted, which is what a non-browser sends), and then the first frame for a document must be an Auth message carrying the same session or workspace token every other team route verifies — a browser WebSocket cannot set an Authorization header, which is why the token rides inside the protocol. Anything else on an unauthenticated document is answered with one permission denial and nothing further.  Every document is authorized on its own: the document's workspace must be the token's workspace when the token pins one, and the caller must be a member of it. A mismatch, an unknown workspace and a non-member deny alike with \"document not found\". Rooms are keyed by org and workspace and the persisted log's key embeds both, so a foreign document id can neither join a room nor read a blob.  The server pings every twenty seconds and drops a socket silent for sixty, so a backgrounded tab — whose JS timers are throttled but whose network stack still auto-pongs — stays connected instead of dying into a reconnect loop.
  Future<void> getTeamCollaborator() async {
    final response = await getTeamCollaboratorWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Download a workspace file
  ///
  /// Streams one blob's raw BYTES back — this is the read side of the workspace file store, not a JSON envelope around it.  THE BLOB IS NAMED BY THE `file` QUERY PARAMETER, NOT BY :filename. The path segment is only the name a browser saves the download under; a request without ?file= is a 400 no matter what the path says.  The Content-Type is derived from the STORED BYTES, never from the name: only png, jpeg, gif and webp, recognized by their magic bytes, are served inline under their true type, and everything else is served inert as application/octet-stream with an attachment disposition. Every response carries nosniff, so a file uploaded under an .svg or .html name cannot be talked into executing in a viewer's origin. Blobs are immutable, so a hit caches privately for a year.  Same gate as the upload: verified token, membership of the workspace. A genuine miss, another tenant's workspace, a workspace the caller is not in, and a blob id belonging to a different workspace are ONE answer — 404 — because the physical key is org- and workspace-scoped and a foreign id is simply a key that does not exist. An unavailable backend is a 502, never an empty 200.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] filename (required):
  Future<Response> getTeamFilesByWorkspaceByFilenameWithHttpInfo(String workspace, String filename,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/team/files/{workspace}/{filename}'
      .replaceAll('{workspace}', workspace)
      .replaceAll('{filename}', filename);

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

  /// Download a workspace file
  ///
  /// Streams one blob's raw BYTES back — this is the read side of the workspace file store, not a JSON envelope around it.  THE BLOB IS NAMED BY THE `file` QUERY PARAMETER, NOT BY :filename. The path segment is only the name a browser saves the download under; a request without ?file= is a 400 no matter what the path says.  The Content-Type is derived from the STORED BYTES, never from the name: only png, jpeg, gif and webp, recognized by their magic bytes, are served inline under their true type, and everything else is served inert as application/octet-stream with an attachment disposition. Every response carries nosniff, so a file uploaded under an .svg or .html name cannot be talked into executing in a viewer's origin. Blobs are immutable, so a hit caches privately for a year.  Same gate as the upload: verified token, membership of the workspace. A genuine miss, another tenant's workspace, a workspace the caller is not in, and a blob id belonging to a different workspace are ONE answer — 404 — because the physical key is org- and workspace-scoped and a foreign id is simply a key that does not exist. An unavailable backend is a 502, never an empty 200.
  ///
  /// Parameters:
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] filename (required):
  Future<MultipartFile?> getTeamFilesByWorkspaceByFilename(String workspace, String filename,) async {
    final response = await getTeamFilesByWorkspaceByFilenameWithHttpInfo(workspace, filename,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Returns every room of the caller's org, across the workspaces it owns, with the work facet each carries.
  ///
  /// Returns every room of the caller's org, across the workspaces it owns, with the work facet each carries.  It reads the SAME Chunter documents the transactor serves, so a room opened in the Team client appears here with no sync, and a facet written here is read by anything holding the document. Direct messages are included: a room between two people is a room with no name, not a different kind of thing.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTeamRoomsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/team/rooms';

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

  /// Returns every room of the caller's org, across the workspaces it owns, with the work facet each carries.
  ///
  /// Returns every room of the caller's org, across the workspaces it owns, with the work facet each carries.  It reads the SAME Chunter documents the transactor serves, so a room opened in the Team client appears here with no sync, and a facet written here is read by anything holding the document. Direct messages are included: a room between two people is a room with no name, not a different kind of thing.
  Future<TeamRooms?> getTeamRooms() async {
    final response = await getTeamRoomsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TeamRooms',) as TeamRooms;
    
    }
    return null;
  }

  /// Open the workspace data-plane socket
  ///
  /// Upgrades to the WebSocket the Team client runs an entire workspace over: every frame is a ZAP envelope wrapping one JSON-RPC message — findAll/findOne reads against the workspace's documents, tx writes that broadcast to the other live sessions, hello negotiating JSON rather than msgpack. The response is a protocol upgrade, so there is no body to read.  THE PATH SEGMENT IS THE CREDENTIAL. It is the workspace token selectWorkspace minted — bearer-equivalent, and sitting in a URL that proxies and access logs record, which is exactly why it expires in twelve hours and is re-minted on demand rather than being long-lived like the session token. It is decoded and verified (signature and expiry) BEFORE the upgrade, so a bad one is a 401 and never a socket that is accepted and then dropped, and it must carry both an account and a workspace claim. Nothing ambient authorizes this socket: a WebSocket is exempt from CORS, so a cookie-borne credential would make the Origin check the only access control on the whole data plane.  The tenant is the token's SIGNED org claim and it keys every store path, so no header can name another workspace's data. The upgrade ALSO refuses a browser Origin outside the team surfaces with 403 — otherwise any page could open an authenticated socket with a token it lured out of a logged-in browser — while a request with no Origin at all is admitted, because that is what a non-browser client sends.  On connect the workspace's system spaces are seeded once and the roster is reconciled every time, so the org's human members and its bots are present as workspace people without a separate sync call.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  Future<Response> getTeamTransactorByTokenWithHttpInfo(String token,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/team/transactor/{token}'
      .replaceAll('{token}', token);

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

  /// Open the workspace data-plane socket
  ///
  /// Upgrades to the WebSocket the Team client runs an entire workspace over: every frame is a ZAP envelope wrapping one JSON-RPC message — findAll/findOne reads against the workspace's documents, tx writes that broadcast to the other live sessions, hello negotiating JSON rather than msgpack. The response is a protocol upgrade, so there is no body to read.  THE PATH SEGMENT IS THE CREDENTIAL. It is the workspace token selectWorkspace minted — bearer-equivalent, and sitting in a URL that proxies and access logs record, which is exactly why it expires in twelve hours and is re-minted on demand rather than being long-lived like the session token. It is decoded and verified (signature and expiry) BEFORE the upgrade, so a bad one is a 401 and never a socket that is accepted and then dropped, and it must carry both an account and a workspace claim. Nothing ambient authorizes this socket: a WebSocket is exempt from CORS, so a cookie-borne credential would make the Origin check the only access control on the whole data plane.  The tenant is the token's SIGNED org claim and it keys every store path, so no header can name another workspace's data. The upgrade ALSO refuses a browser Origin outside the team surfaces with 403 — otherwise any page could open an authenticated socket with a token it lured out of a logged-in browser — while a request with no Origin at all is admitted, because that is what a non-browser client sends.  On connect the workspace's system spaces are seeded once and the roster is reconciled every time, so the org's human members and its bots are present as workspace people without a separate sync call.
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  Future<void> getTeamTransactorByToken(String token,) async {
    final response = await getTeamTransactorByTokenWithHttpInfo(token,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Statistics returns the transactor's live sessions for the workspace the caller's credential names — the endpoint the front's workspace switcher and server panel poll on the transactor base.
  ///
  /// Statistics returns the transactor's live sessions for the workspace the caller's credential names — the endpoint the front's workspace switcher and server panel poll on the transactor base. `token` carries the same two lanes the socket's path segment does: a workspace UUID names the workspace and is authorized against the membership rows, an HS256 workspace token names it in its signed claims. activeSessions carries ONLY that one workspace, never another tenant's sessions. An unverifiable credential, or one the caller is no member under, is 401.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] token:
  ///   Token is the workspace token minted by selectWorkspace.
  Future<Response> getTeamTransactorStatisticsWithHttpInfo({ String? token, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/team/transactor/statistics';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (token != null) {
      queryParams.addAll(_queryParams('', 'token', token));
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

  /// Statistics returns the transactor's live sessions for the workspace the caller's credential names — the endpoint the front's workspace switcher and server panel poll on the transactor base.
  ///
  /// Statistics returns the transactor's live sessions for the workspace the caller's credential names — the endpoint the front's workspace switcher and server panel poll on the transactor base. `token` carries the same two lanes the socket's path segment does: a workspace UUID names the workspace and is authorized against the membership rows, an HS256 workspace token names it in its signed claims. activeSessions carries ONLY that one workspace, never another tenant's sessions. An unverifiable credential, or one the caller is no member under, is 401.
  ///
  /// Parameters:
  ///
  /// * [String] token:
  ///   Token is the workspace token minted by selectWorkspace.
  Future<StatsOut?> getTeamTransactorStatistics({ String? token, }) async {
    final response = await getTeamTransactorStatisticsWithHttpInfo( token: token, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StatsOut',) as StatsOut;
    
    }
    return null;
  }

  /// Read the caller's account and switch workspace
  ///
  /// The account control plane the Team client speaks: one POST carries a `method` verb and its `params`, and answers {\"result\": …}. The verbs are the session's own reads and the workspace switch — getLoginInfoByToken, getUserWorkspaces, selectWorkspace, getWorkspaceInfo, getMemberships, getPerson, getSocialIds, getRegionInfo, isReadOnlyGuest — plus sendInvite, which adds a member to a workspace and is refused for a caller who is not its owner or admin.  A REFUSAL IS HTTP 200 carrying {\"error\": {severity, code, params}} — the platform Status the client translates — not a 4xx. An unreadable body, an unauthorized session and an unknown verb all arrive that way, so a caller that reads only the status code reads every failure here as a success.  NO CREDENTIAL IS EVER HANDLED HERE. login, signUp, the OTP verbs, password change and reset, join and the guest-token exchange each answer Unauthorized with \"sign in at hanzo.id\" — a stated policy, not an unknown method, so the refusal is a fact a test can pin. Sessions come from the OAuth pair under /account/auth.  Auth is the team session token: Authorization: Bearer, else the HttpOnly account-token cookie. The tenant is that token's SIGNED org claim, never a header, and selectWorkspace resolves only among the orgs the token proves membership of. It also demands an explicit workspaceUrl — it never falls back to a first workspace, and a slug that resolves in two of the caller's orgs answers Ambiguous rather than picking one.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postTeamAccountWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/team/account';

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

  /// Read the caller's account and switch workspace
  ///
  /// The account control plane the Team client speaks: one POST carries a `method` verb and its `params`, and answers {\"result\": …}. The verbs are the session's own reads and the workspace switch — getLoginInfoByToken, getUserWorkspaces, selectWorkspace, getWorkspaceInfo, getMemberships, getPerson, getSocialIds, getRegionInfo, isReadOnlyGuest — plus sendInvite, which adds a member to a workspace and is refused for a caller who is not its owner or admin.  A REFUSAL IS HTTP 200 carrying {\"error\": {severity, code, params}} — the platform Status the client translates — not a 4xx. An unreadable body, an unauthorized session and an unknown verb all arrive that way, so a caller that reads only the status code reads every failure here as a success.  NO CREDENTIAL IS EVER HANDLED HERE. login, signUp, the OTP verbs, password change and reset, join and the guest-token exchange each answer Unauthorized with \"sign in at hanzo.id\" — a stated policy, not an unknown method, so the refusal is a fact a test can pin. Sessions come from the OAuth pair under /account/auth.  Auth is the team session token: Authorization: Bearer, else the HttpOnly account-token cookie. The tenant is that token's SIGNED org claim, never a header, and selectWorkspace resolves only among the orgs the token proves membership of. It also demands an explicit workspaceUrl — it never falls back to a first workspace, and a slug that resolves in two of the caller's orgs answers Ambiguous rather than picking one.
  Future<void> postTeamAccount() async {
    final response = await postTeamAccountWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// SyncBots re-projects the caller org's agents as workspace members into EVERY workspace of the org, and removes the ones whose agent is gone.
  ///
  /// SyncBots re-projects the caller org's agents as workspace members into EVERY workspace of the org, and removes the ones whose agent is gone. It is idempotent, and admin only: mutating a workspace's roster requires the gateway-minted admin flag, which a client can never forge. It answers how many roster entries the reconcile touched.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postTeamBotsSyncWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/team/bots/sync';

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

  /// SyncBots re-projects the caller org's agents as workspace members into EVERY workspace of the org, and removes the ones whose agent is gone.
  ///
  /// SyncBots re-projects the caller org's agents as workspace members into EVERY workspace of the org, and removes the ones whose agent is gone. It is idempotent, and admin only: mutating a workspace's roster requires the gateway-minted admin flag, which a client can never forge. It answers how many roster entries the reconcile touched.
  Future<BotSync?> postTeamBotsSync() async {
    final response = await postTeamBotsSyncWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BotSync',) as BotSync;
    
    }
    return null;
  }

  /// CollabRPC is the collaborative-markup snapshot plane the Team front's editor speaks: createContent stores a document field's markup at a fresh, immutable blob ref and returns it, updateContent stores a new snapshot and answers nothing, and getContent reads back the exact snapshot a ref names.
  ///
  /// CollabRPC is the collaborative-markup snapshot plane the Team front's editor speaks: createContent stores a document field's markup at a fresh, immutable blob ref and returns it, updateContent stores a new snapshot and answers nothing, and getContent reads back the exact snapshot a ref names.  createContent ALSO seeds the live-editing update log from the front-supplied Y.js update, so a dialog-authored description is visible in the collaborative editor — which replays that log — and not only in snapshot reads. updateContent never touches that log: peers may be live-editing the document, and their edits are not this call's to overwrite.  Every call is scoped to the caller's VERIFIED session or workspace token: the documentId's workspace must be the token's workspace when the token names one, and the caller must be a member of it. An unknown workspace, another tenant's workspace and a workspace the caller is not in all answer the same 404, so a probe learns nothing about what exists.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///   DocumentID addresses the document field, as \"<workspaceUuid>|<objectClass>|<objectId>|<objectAttr>\" — the collaborator-client encodeDocumentId shape, from the path.
  ///
  /// * [CollabRequest] collabRequest (required):
  Future<Response> postTeamCollaboratorRpcByDocumentidWithHttpInfo(String documentId, CollabRequest collabRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/team/collaborator/rpc/{documentId}'
      .replaceAll('{documentId}', documentId);

    // ignore: prefer_final_locals
    Object? postBody = collabRequest;

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

  /// CollabRPC is the collaborative-markup snapshot plane the Team front's editor speaks: createContent stores a document field's markup at a fresh, immutable blob ref and returns it, updateContent stores a new snapshot and answers nothing, and getContent reads back the exact snapshot a ref names.
  ///
  /// CollabRPC is the collaborative-markup snapshot plane the Team front's editor speaks: createContent stores a document field's markup at a fresh, immutable blob ref and returns it, updateContent stores a new snapshot and answers nothing, and getContent reads back the exact snapshot a ref names.  createContent ALSO seeds the live-editing update log from the front-supplied Y.js update, so a dialog-authored description is visible in the collaborative editor — which replays that log — and not only in snapshot reads. updateContent never touches that log: peers may be live-editing the document, and their edits are not this call's to overwrite.  Every call is scoped to the caller's VERIFIED session or workspace token: the documentId's workspace must be the token's workspace when the token names one, and the caller must be a member of it. An unknown workspace, another tenant's workspace and a workspace the caller is not in all answer the same 404, so a probe learns nothing about what exists.
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///   DocumentID addresses the document field, as \"<workspaceUuid>|<objectClass>|<objectId>|<objectAttr>\" — the collaborator-client encodeDocumentId shape, from the path.
  ///
  /// * [CollabRequest] collabRequest (required):
  Future<CollabResult?> postTeamCollaboratorRpcByDocumentid(String documentId, CollabRequest collabRequest,) async {
    final response = await postTeamCollaboratorRpcByDocumentidWithHttpInfo(documentId, collabRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CollabResult',) as CollabResult;
    
    }
    return null;
  }

  /// Upload a file into a workspace
  ///
  /// Stores one file in a workspace's blob store and answers the blob id it is addressable by, as plain text — the front discards that body, it is there for a caller driving this by hand.  The body is a multipart form with a `file` part, and THAT PART'S FILENAME IS THE BLOB ID: the client mints it (a uuid v4) and the server stores under it, so a part whose filename is not a uuid is refused rather than assigned one. A file over 100 MiB is 413 and an empty one is 400.  The caller must hold a verified session or workspace token AND be a member of the workspace; an unknown workspace, another tenant's workspace and a workspace the caller is not in all answer the same 404, so a probe learns nothing about what exists. The stored key embeds the verified org and the workspace, so an upload cannot land in another tenant's box whatever id it names. A storage backend that is unavailable fails closed with 502 rather than reporting a write it never made.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] workspace (required):
  ///
  /// * [MultipartFile] body:
  Future<Response> postTeamFilesByWorkspaceWithHttpInfo(String workspace, { MultipartFile? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/team/files/{workspace}'
      .replaceAll('{workspace}', workspace);

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

  /// Upload a file into a workspace
  ///
  /// Stores one file in a workspace's blob store and answers the blob id it is addressable by, as plain text — the front discards that body, it is there for a caller driving this by hand.  The body is a multipart form with a `file` part, and THAT PART'S FILENAME IS THE BLOB ID: the client mints it (a uuid v4) and the server stores under it, so a part whose filename is not a uuid is refused rather than assigned one. A file over 100 MiB is 413 and an empty one is 400.  The caller must hold a verified session or workspace token AND be a member of the workspace; an unknown workspace, another tenant's workspace and a workspace the caller is not in all answer the same 404, so a probe learns nothing about what exists. The stored key embeds the verified org and the workspace, so an upload cannot land in another tenant's box whatever id it names. A storage backend that is unavailable fails closed with 502 rather than reporting a write it never made.
  ///
  /// Parameters:
  ///
  /// * [String] workspace (required):
  ///
  /// * [MultipartFile] body:
  Future<MultipartFile?> postTeamFilesByWorkspace(String workspace, { MultipartFile? body, }) async {
    final response = await postTeamFilesByWorkspaceWithHttpInfo(workspace,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Store the session token as this browser's cookie
  ///
  /// Writes the team session token into the HttpOnly `account-token` cookie — Secure, SameSite=Lax, whole-origin scope, thirty days — and answers {\"result\": true}. This is how the client turns the token it caught off the OAuth bounce into a credential page JS can no longer read, which IS the security property: script that cannot see the cookie cannot exfiltrate it, and every later call on the files, billing and collaborator planes authenticates from it when no bearer is sent.  The token is VERIFIED — signature and expiry, against this service's own signing secret — BEFORE it is stored. Anything this service did not sign is 401 and nothing is written; persisting a caller-supplied value unchecked would be a session-fixation hole, where an attacker pins a cookie the victim's browser then presents as its own.  The token may arrive as `token` in the JSON body or, when the body is absent or unparseable, from the Authorization bearer — an unreadable body is NOT an error here. The sibling DELETE clears this same cookie and signs the browser out of team only: the IAM cookie set alongside it is a different credential with its own lifetime and is left alone.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> putTeamAccountCookieWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/team/account/cookie';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Store the session token as this browser's cookie
  ///
  /// Writes the team session token into the HttpOnly `account-token` cookie — Secure, SameSite=Lax, whole-origin scope, thirty days — and answers {\"result\": true}. This is how the client turns the token it caught off the OAuth bounce into a credential page JS can no longer read, which IS the security property: script that cannot see the cookie cannot exfiltrate it, and every later call on the files, billing and collaborator planes authenticates from it when no bearer is sent.  The token is VERIFIED — signature and expiry, against this service's own signing secret — BEFORE it is stored. Anything this service did not sign is 401 and nothing is written; persisting a caller-supplied value unchecked would be a session-fixation hole, where an attacker pins a cookie the victim's browser then presents as its own.  The token may arrive as `token` in the JSON body or, when the body is absent or unparseable, from the Authorization bearer — an unreadable body is NOT an error here. The sibling DELETE clears this same cookie and signs the browser out of team only: the IAM cookie set alongside it is a different credential with its own lifetime and is left alone.
  Future<CookieAck?> putTeamAccountCookie() async {
    final response = await putTeamAccountCookieWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CookieAck',) as CookieAck;
    
    }
    return null;
  }

  /// States what a room is for: its lifecycle intent, and what it is about.
  ///
  /// States what a room is for: its lifecycle intent, and what it is about. It answers the room as it now stands.  The write is a platform MIXIN on the room document, applied through the SAME applyTx path the Team client's own writes take and broadcast to every connected client — so a room bound here updates live in an open workspace rather than on the next reload.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the room to bind, from the path. The URL is the authority; a body carrying another id cannot redirect the write.
  ///
  /// * [TeamRoomBind] teamRoomBind (required):
  Future<Response> putTeamRoomsByIdWithHttpInfo(String id, TeamRoomBind teamRoomBind,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/team/rooms/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = teamRoomBind;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// States what a room is for: its lifecycle intent, and what it is about.
  ///
  /// States what a room is for: its lifecycle intent, and what it is about. It answers the room as it now stands.  The write is a platform MIXIN on the room document, applied through the SAME applyTx path the Team client's own writes take and broadcast to every connected client — so a room bound here updates live in an open workspace rather than on the next reload.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the room to bind, from the path. The URL is the authority; a body carrying another id cannot redirect the write.
  ///
  /// * [TeamRoomBind] teamRoomBind (required):
  Future<TeamRoom?> putTeamRoomsById(String id, TeamRoomBind teamRoomBind,) async {
    final response = await putTeamRoomsByIdWithHttpInfo(id, teamRoomBind,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TeamRoom',) as TeamRoom;
    
    }
    return null;
  }
}
