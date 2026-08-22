//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class SandboxApi {
  SandboxApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Ends a sandbox and releases the compute behind it.
  ///
  /// Ends a sandbox and releases the compute behind it. Answers 204.  ENDING IS NOT STOPPING. This releases the resource: the pod goes and anything only inside it goes with it. To end what a sandbox is RUNNING while keeping the sandbox — the checkout, the logs, the half-written file — the verb is POST /v1/sandbox/stop.  `?purge=1` additionally removes the record, so the sandbox stops being listed at all rather than being listed as ended.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sandbox to end, from the path.
  ///
  /// * [String] purge:
  Future<Response> deleteSandboxByIdWithHttpInfo(String id, { String? purge, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandbox/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (purge != null) {
      queryParams.addAll(_queryParams('', 'purge', purge));
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

  /// Ends a sandbox and releases the compute behind it.
  ///
  /// Ends a sandbox and releases the compute behind it. Answers 204.  ENDING IS NOT STOPPING. This releases the resource: the pod goes and anything only inside it goes with it. To end what a sandbox is RUNNING while keeping the sandbox — the checkout, the logs, the half-written file — the verb is POST /v1/sandbox/stop.  `?purge=1` additionally removes the record, so the sandbox stops being listed at all rather than being listed as ended.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sandbox to end, from the path.
  ///
  /// * [String] purge:
  Future<void> deleteSandboxById(String id, { String? purge, }) async {
    final response = await deleteSandboxByIdWithHttpInfo(id,  purge: purge, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// End a sandbox and release it
  ///
  /// Ends the caller's sandbox lease: the pod goes, and the volume goes only when the caller asked for that too.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EndIn] endIn (required):
  Future<Response> endSandboxWithHttpInfo(EndIn endIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandbox/end';

    // ignore: prefer_final_locals
    Object? postBody = endIn;

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

  /// End a sandbox and release it
  ///
  /// Ends the caller's sandbox lease: the pod goes, and the volume goes only when the caller asked for that too.
  ///
  /// Parameters:
  ///
  /// * [EndIn] endIn (required):
  Future<void> endSandbox(EndIn endIn,) async {
    final response = await endSandboxWithHttpInfo(endIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists the caller org's sandboxes, newest first.
  ///
  /// Lists the caller org's sandboxes, newest first.  `?project=` and `?status=` narrow it. Only the caller's org's: the store is keyed on the validated org, so another tenant's sandbox is not something this operation can return.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project:
  ///
  /// * [String] status:
  Future<Response> getSandboxWithHttpInfo({ String? project, String? status, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandbox';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (project != null) {
      queryParams.addAll(_queryParams('', 'project', project));
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

  /// Lists the caller org's sandboxes, newest first.
  ///
  /// Lists the caller org's sandboxes, newest first.  `?project=` and `?status=` narrow it. Only the caller's org's: the store is keyed on the validated org, so another tenant's sandbox is not something this operation can return.
  ///
  /// Parameters:
  ///
  /// * [String] project:
  ///
  /// * [String] status:
  Future<SandboxList?> getSandbox({ String? project, String? status, }) async {
    final response = await getSandboxWithHttpInfo( project: project, status: status, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SandboxList',) as SandboxList;
    
    }
    return null;
  }

  /// Returns one sandbox: its class, project, image, the runtime it was given, its status and when its lease ends.
  ///
  /// Returns one sandbox: its class, project, image, the runtime it was given, its status and when its lease ends.  An id the caller's org does not hold is the same 404 an unknown id gives — the store is keyed on the org, so a cross-tenant id simply is not there.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sandbox to address, from the path.
  Future<Response> getSandboxByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandbox/{id}'
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

  /// Returns one sandbox: its class, project, image, the runtime it was given, its status and when its lease ends.
  ///
  /// Returns one sandbox: its class, project, image, the runtime it was given, its status and when its lease ends.  An id the caller's org does not hold is the same 404 an unknown id gives — the store is keyed on the org, so a cross-tenant id simply is not there.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sandbox to address, from the path.
  Future<Sandbox?> getSandboxById(String id,) async {
    final response = await getSandboxByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Sandbox',) as Sandbox;
    
    }
    return null;
  }

  /// Read a file, or list a directory
  ///
  /// Reads one file from the sandbox's project directory as text, or lists the entries when the path names a directory. Paths resolve under the project root and a path that climbs out is refused rather than rewritten.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getSandboxByIdFsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandbox/{id}/fs'
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

  /// Read a file, or list a directory
  ///
  /// Reads one file from the sandbox's project directory as text, or lists the entries when the path names a directory. Paths resolve under the project root and a path that climbs out is refused rather than rewritten.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> getSandboxByIdFs(String id,) async {
    final response = await getSandboxByIdFsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The screen, as a page
  ///
  /// A complete, self-contained desktop — noVNC inline, no other origin — that opens its own socket and draws this sandbox's display. Embed it in an iframe and there is nothing else to build.  `ticket` is the credential from the POST above, carried through to the socket. The page is NOT gated: it is inert markup and does not redeem the ticket, because a ticket is spent once and a page that spent it would hold a credential that no longer opens anything. `frame-ancestors` admits our own brands' hosts and nothing further.  It is served for every class, not only for `desktop`. The class is a fact about the image, and a sandbox with no VNC server already fails exactly — the connection is refused and the page says so — where a check here would be a second opinion about what is running inside a pod, formed from a label rather than from the pod.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getSandboxByIdScreenWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandbox/{id}/screen'
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

  /// The screen, as a page
  ///
  /// A complete, self-contained desktop — noVNC inline, no other origin — that opens its own socket and draws this sandbox's display. Embed it in an iframe and there is nothing else to build.  `ticket` is the credential from the POST above, carried through to the socket. The page is NOT gated: it is inert markup and does not redeem the ticket, because a ticket is spent once and a page that spent it would hold a credential that no longer opens anything. `frame-ancestors` admits our own brands' hosts and nothing further.  It is served for every class, not only for `desktop`. The class is a fact about the image, and a sandbox with no VNC server already fails exactly — the connection is refused and the page says so — where a check here would be a second opinion about what is running inside a pod, formed from a label rather than from the pod.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> getSandboxByIdScreen(String id,) async {
    final response = await getSandboxByIdScreenWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The screen, as a socket
  ///
  /// Upgrades to a WebSocket carrying RFB — the VNC wire protocol — from the sandbox's display, for a host that brings its own client. Requires `ticket`; a missing, expired or already-spent one answers 401 without upgrading.  THE WIRE IS RFB, in BINARY frames both ways, and it is not interpreted here: this is a pipe between the caller's client and the server inside the pod.  THE PIXELS COME OUT THROUGH THE EXEC CHANNEL. The display binds 127.0.0.1 only and deliberately nothing else, so there is no address to dial — `socat` joins the stream to that loopback port over the same Kubernetes exec subresource every other call into a sandbox uses. One way in, one thing to authorize, nothing further exposed.  The window size is ignored. A browser pane is not the X server's geometry, and the client scales what it is given rather than asking a server with no RandR to resize itself.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getSandboxByIdScreenWsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandbox/{id}/screen/ws'
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

  /// The screen, as a socket
  ///
  /// Upgrades to a WebSocket carrying RFB — the VNC wire protocol — from the sandbox's display, for a host that brings its own client. Requires `ticket`; a missing, expired or already-spent one answers 401 without upgrading.  THE WIRE IS RFB, in BINARY frames both ways, and it is not interpreted here: this is a pipe between the caller's client and the server inside the pod.  THE PIXELS COME OUT THROUGH THE EXEC CHANNEL. The display binds 127.0.0.1 only and deliberately nothing else, so there is no address to dial — `socat` joins the stream to that loopback port over the same Kubernetes exec subresource every other call into a sandbox uses. One way in, one thing to authorize, nothing further exposed.  The window size is ignored. A browser pane is not the X server's geometry, and the client scales what it is given rather than asking a server with no RandR to resize itself.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> getSandboxByIdScreenWs(String id,) async {
    final response = await getSandboxByIdScreenWsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The terminal, as a page
  ///
  /// A complete, self-contained terminal — xterm inline, no other origin — that opens its own socket and runs a shell in this sandbox. Embed it in an iframe and there is nothing else to build.  `ticket` is the credential from the POST above and `arg` names the session (see the socket below); both are simply carried through to the socket. The page is NOT gated — it is inert markup and does not redeem the ticket, because a ticket is spent once and a page that spent it would hold a credential that no longer opens anything.  When the terminal is up it posts `{source:\"hanzo-term\", ready:true}` to its parent frame, so a host can tell a live terminal from a page that failed into something else. `frame-ancestors` admits our own brands' hosts and nothing further.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getSandboxByIdTerminalWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandbox/{id}/terminal'
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

  /// The terminal, as a page
  ///
  /// A complete, self-contained terminal — xterm inline, no other origin — that opens its own socket and runs a shell in this sandbox. Embed it in an iframe and there is nothing else to build.  `ticket` is the credential from the POST above and `arg` names the session (see the socket below); both are simply carried through to the socket. The page is NOT gated — it is inert markup and does not redeem the ticket, because a ticket is spent once and a page that spent it would hold a credential that no longer opens anything.  When the terminal is up it posts `{source:\"hanzo-term\", ready:true}` to its parent frame, so a host can tell a live terminal from a page that failed into something else. `frame-ancestors` admits our own brands' hosts and nothing further.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> getSandboxByIdTerminal(String id,) async {
    final response = await getSandboxByIdTerminalWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The terminal, as a socket
  ///
  /// Upgrades to a WebSocket carrying a login shell on a pseudo-terminal inside the sandbox — for a host that brings its own emulator. Requires `ticket`; a missing, expired or already-spent one answers 401 without upgrading.  THE WIRE. A text frame is stdin, unless it is the one control object `{\"resize\":{\"cols\":N,\"rows\":M}}`; a binary frame is always stdin. Output comes back as BINARY frames, because a pty emits arbitrary bytes cut at arbitrary offsets and a text frame carrying half a rune is one the browser closes the connection over.  `arg` names a SESSION: the shell runs under `tmux new -A -s <arg>`, which attaches to that session if it exists and creates it if it does not — so one sandbox holds as many terminals as a caller has names for. It is 1-64 characters of letters, digits, `-` or `_` and may not begin with `-`; anything else is 400. Without `arg` the shell is unnamed and unmultiplexed.  The shell is `zsh -l`, falling back to `bash -l` and then to `sh -l`, and to the plain shell again when the image has no tmux. Every step is a preference and none is a requirement: whatever else the image carries — the hanzo CLI included — is a command to type, never a condition for getting a prompt.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getSandboxByIdTerminalWsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandbox/{id}/terminal/ws'
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

  /// The terminal, as a socket
  ///
  /// Upgrades to a WebSocket carrying a login shell on a pseudo-terminal inside the sandbox — for a host that brings its own emulator. Requires `ticket`; a missing, expired or already-spent one answers 401 without upgrading.  THE WIRE. A text frame is stdin, unless it is the one control object `{\"resize\":{\"cols\":N,\"rows\":M}}`; a binary frame is always stdin. Output comes back as BINARY frames, because a pty emits arbitrary bytes cut at arbitrary offsets and a text frame carrying half a rune is one the browser closes the connection over.  `arg` names a SESSION: the shell runs under `tmux new -A -s <arg>`, which attaches to that session if it exists and creates it if it does not — so one sandbox holds as many terminals as a caller has names for. It is 1-64 characters of letters, digits, `-` or `_` and may not begin with `-`; anything else is 400. Without `arg` the shell is unnamed and unmultiplexed.  The shell is `zsh -l`, falling back to `bash -l` and then to `sh -l`, and to the plain shell again when the image has no tmux. Every step is a preference and none is a requirement: whatever else the image carries — the hanzo CLI included — is a command to type, never a condition for getting a prompt.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> getSandboxByIdTerminalWs(String id,) async {
    final response = await getSandboxByIdTerminalWsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lease a sandbox — a real computer — or resume one you hold
  ///
  /// Leases the caller's sandbox, or returns the one it named if that lease is still running.  What comes back is a real computer: a pod under a runtime boundary with a toolchain already in it, its own filesystem, and a lease that ends it. Every other op here acts on the one this returns.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [LeaseIn] leaseIn (required):
  Future<Response> leaseSandboxWithHttpInfo(LeaseIn leaseIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandbox/lease';

    // ignore: prefer_final_locals
    Object? postBody = leaseIn;

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

  /// Lease a sandbox — a real computer — or resume one you hold
  ///
  /// Leases the caller's sandbox, or returns the one it named if that lease is still running.  What comes back is a real computer: a pod under a runtime boundary with a toolchain already in it, its own filesystem, and a lease that ends it. Every other op here acts on the one this returns.
  ///
  /// Parameters:
  ///
  /// * [LeaseIn] leaseIn (required):
  Future<Leased?> leaseSandbox(LeaseIn leaseIn,) async {
    final response = await leaseSandboxWithHttpInfo(leaseIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Leased',) as Leased;
    
    }
    return null;
  }

  /// Leases a sandbox — a real computer — for the caller's org.
  ///
  /// Leases a sandbox — a real computer — for the caller's org.  The class decides what it is for and therefore its image, working directory and isolation. A dev or desktop sandbox is SINGLE-ATTACH per project, so asking twice for one project resumes the one that exists rather than paying for a second; an exec sandbox carries no project and is bounded per org instead, refused 429 past the ceiling because the caller's correct response is to wait.  Answers 201 with the sandbox as leased, which names the runtime it GOT — not the one that was asked for.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [LeaseIn] leaseIn (required):
  Future<Response> postSandboxWithHttpInfo(LeaseIn leaseIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandbox';

    // ignore: prefer_final_locals
    Object? postBody = leaseIn;

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

  /// Leases a sandbox — a real computer — for the caller's org.
  ///
  /// Leases a sandbox — a real computer — for the caller's org.  The class decides what it is for and therefore its image, working directory and isolation. A dev or desktop sandbox is SINGLE-ATTACH per project, so asking twice for one project resumes the one that exists rather than paying for a second; an exec sandbox carries no project and is bounded per org instead, refused 429 past the ceiling because the caller's correct response is to wait.  Answers 201 with the sandbox as leased, which names the runtime it GOT — not the one that was asked for.
  ///
  /// Parameters:
  ///
  /// * [LeaseIn] leaseIn (required):
  Future<Sandbox?> postSandbox(LeaseIn leaseIn,) async {
    final response = await postSandboxWithHttpInfo(leaseIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Sandbox',) as Sandbox;
    
    }
    return null;
  }

  /// Runs one command in a sandbox the caller holds and answers with its exit code, stdout and stderr.
  ///
  /// Runs one command in a sandbox the caller holds and answers with its exit code, stdout and stderr.  Send `argv` — an argument vector cannot be word-split by accident — or `command` for a shell line, which is the only input here that ever reaches a shell. A non-zero exit is a SUCCESSFUL call carrying a failed command: the status is 200 and the exit code is in the answer, because \"the command failed\" and \"the call failed\" are different facts.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sandbox to run in, from the path.
  ///
  /// * [ExecRequest] execRequest (required):
  Future<Response> postSandboxByIdExecWithHttpInfo(String id, ExecRequest execRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandbox/{id}/exec'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = execRequest;

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

  /// Runs one command in a sandbox the caller holds and answers with its exit code, stdout and stderr.
  ///
  /// Runs one command in a sandbox the caller holds and answers with its exit code, stdout and stderr.  Send `argv` — an argument vector cannot be word-split by accident — or `command` for a shell line, which is the only input here that ever reaches a shell. A non-zero exit is a SUCCESSFUL call carrying a failed command: the status is 200 and the exit code is in the answer, because \"the command failed\" and \"the call failed\" are different facts.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sandbox to run in, from the path.
  ///
  /// * [ExecRequest] execRequest (required):
  Future<ExecResult?> postSandboxByIdExec(String id, ExecRequest execRequest,) async {
    final response = await postSandboxByIdExecWithHttpInfo(id, execRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExecResult',) as ExecResult;
    
    }
    return null;
  }

  /// Write a file
  ///
  /// Writes the request body to one file in the sandbox's project directory, creating parent directories. Same confinement as the read above.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> postSandboxByIdFsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandbox/{id}/fs'
      .replaceAll('{id}', id);

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

  /// Write a file
  ///
  /// Writes the request body to one file in the sandbox's project directory, creating parent directories. Same confinement as the read above.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> postSandboxByIdFs(String id,) async {
    final response = await postSandboxByIdFsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Mints a short-lived grant to open the screen of a desktop sandbox.
  ///
  /// Mints a short-lived grant to open the screen of a desktop sandbox. Same properties as the terminal ticket, for the other door.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sandbox to address, from the path.
  Future<Response> postSandboxByIdScreenTicketWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandbox/{id}/screen/ticket'
      .replaceAll('{id}', id);

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

  /// Mints a short-lived grant to open the screen of a desktop sandbox.
  ///
  /// Mints a short-lived grant to open the screen of a desktop sandbox. Same properties as the terminal ticket, for the other door.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sandbox to address, from the path.
  Future<TicketGrant?> postSandboxByIdScreenTicket(String id,) async {
    final response = await postSandboxByIdScreenTicketWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TicketGrant',) as TicketGrant;
    
    }
    return null;
  }

  /// Mints a short-lived grant to open a terminal on a sandbox.
  ///
  /// Mints a short-lived grant to open a terminal on a sandbox.  The ticket travels in the query string of the URL it answers with, because a browser cannot set an Authorization header on a WebSocket handshake. It is single-purpose and short-lived for exactly that reason. A sandbox that is not running is 409 rather than a ticket that cannot be used.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sandbox to address, from the path.
  Future<Response> postSandboxByIdTerminalTicketWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandbox/{id}/terminal/ticket'
      .replaceAll('{id}', id);

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

  /// Mints a short-lived grant to open a terminal on a sandbox.
  ///
  /// Mints a short-lived grant to open a terminal on a sandbox.  The ticket travels in the query string of the URL it answers with, because a browser cannot set an Authorization header on a WebSocket handshake. It is single-purpose and short-lived for exactly that reason. A sandbox that is not running is 409 rather than a ticket that cannot be used.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sandbox to address, from the path.
  Future<TicketGrant?> postSandboxByIdTerminalTicket(String id,) async {
    final response = await postSandboxByIdTerminalTicketWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TicketGrant',) as TicketGrant;
    
    }
    return null;
  }

  /// Read a file from a sandbox you hold
  ///
  /// Reads one path in the caller's sandbox: a file's bytes, or a directory's entries when the path names one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PathIn] pathIn (required):
  Future<Response> readSandboxFileWithHttpInfo(PathIn pathIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandbox/read';

    // ignore: prefer_final_locals
    Object? postBody = pathIn;

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

  /// Read a file from a sandbox you hold
  ///
  /// Reads one path in the caller's sandbox: a file's bytes, or a directory's entries when the path names one.
  ///
  /// Parameters:
  ///
  /// * [PathIn] pathIn (required):
  Future<Blob?> readSandboxFile(PathIn pathIn,) async {
    final response = await readSandboxFileWithHttpInfo(pathIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Blob',) as Blob;
    
    }
    return null;
  }

  /// Run a command in a sandbox you hold and read its output
  ///
  /// Runs one command inside the caller's sandbox and answers its exit code, stdout and stderr. A non-zero exit is a successful call carrying a failed program, so it comes back as data and not as an error.  Name a `session` and the command NARRATES INTO IT: its output is appended to that session's live log as the program produces it, so anything watching the session — GET /v1/agents/sessions/stream, scoped to one run with ?root= — watches the work happen rather than waiting for the verdict. Without it the call is what it always was: silent until it returns, which for an agentic run is twenty-five minutes of blank screen.  The session is named; the TENANT is not. It is the org the caller already proved, so a session belonging to somebody else is absent from the org this call acts for and the append is refused there.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RunIn] runIn (required):
  Future<Response> runInSandboxWithHttpInfo(RunIn runIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandbox/run';

    // ignore: prefer_final_locals
    Object? postBody = runIn;

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

  /// Run a command in a sandbox you hold and read its output
  ///
  /// Runs one command inside the caller's sandbox and answers its exit code, stdout and stderr. A non-zero exit is a successful call carrying a failed program, so it comes back as data and not as an error.  Name a `session` and the command NARRATES INTO IT: its output is appended to that session's live log as the program produces it, so anything watching the session — GET /v1/agents/sessions/stream, scoped to one run with ?root= — watches the work happen rather than waiting for the verdict. Without it the call is what it always was: silent until it returns, which for an agentic run is twenty-five minutes of blank screen.  The session is named; the TENANT is not. It is the org the caller already proved, so a session belonging to somebody else is absent from the org this call acts for and the append is refused there.
  ///
  /// Parameters:
  ///
  /// * [RunIn] runIn (required):
  Future<Ran?> runInSandbox(RunIn runIn,) async {
    final response = await runInSandboxWithHttpInfo(runIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Ran',) as Ran;
    
    }
    return null;
  }

  /// Stop what a sandbox is running, and keep the sandbox
  ///
  /// Interrupts whatever the caller's sandbox is running and answers how many commands it ended. The sandbox stays leased — stop ends the WORK, end ends the RESOURCE — so whoever stopped a run can still read what it left behind.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [StopIn] stopIn (required):
  Future<Response> stopRunWithHttpInfo(StopIn stopIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandbox/stop';

    // ignore: prefer_final_locals
    Object? postBody = stopIn;

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

  /// Stop what a sandbox is running, and keep the sandbox
  ///
  /// Interrupts whatever the caller's sandbox is running and answers how many commands it ended. The sandbox stays leased — stop ends the WORK, end ends the RESOURCE — so whoever stopped a run can still read what it left behind.
  ///
  /// Parameters:
  ///
  /// * [StopIn] stopIn (required):
  Future<Stopped?> stopRun(StopIn stopIn,) async {
    final response = await stopRunWithHttpInfo(stopIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Stopped',) as Stopped;
    
    }
    return null;
  }

  /// Write a file into a sandbox you hold
  ///
  /// Writes bytes to one path in the caller's sandbox, creating parents, and answers the resolved path.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [WriteIn] writeIn (required):
  Future<Response> writeSandboxFileWithHttpInfo(WriteIn writeIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandbox/write';

    // ignore: prefer_final_locals
    Object? postBody = writeIn;

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

  /// Write a file into a sandbox you hold
  ///
  /// Writes bytes to one path in the caller's sandbox, creating parents, and answers the resolved path.
  ///
  /// Parameters:
  ///
  /// * [WriteIn] writeIn (required):
  Future<Wrote?> writeSandboxFile(WriteIn writeIn,) async {
    final response = await writeSandboxFileWithHttpInfo(writeIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Wrote',) as Wrote;
    
    }
    return null;
  }
}
