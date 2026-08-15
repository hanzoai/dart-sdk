//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class SandboxesApi {
  SandboxesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// End a sandbox
  ///
  /// Stops the sandbox's pod and drops the lease. The VOLUME survives by default, so a `dev` or `desktop` sandbox can be leased again over the same project and find its checkout where it left it.  `purge=1` deletes the volume too. It is opt-in because it is the one part of this that cannot be undone.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteSandboxesByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandboxes/{id}'
      .replaceAll('{id}', id);

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

  /// End a sandbox
  ///
  /// Stops the sandbox's pod and drops the lease. The VOLUME survives by default, so a `dev` or `desktop` sandbox can be leased again over the same project and find its checkout where it left it.  `purge=1` deletes the volume too. It is opt-in because it is the one part of this that cannot be undone.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteSandboxesById(String id,) async {
    final response = await deleteSandboxesByIdWithHttpInfo(id,);
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
    final path = r'/v1/sandboxes/end';

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

  /// The sandboxes this org holds
  ///
  /// Lists the caller org's sandboxes, newest first. `project` and `status` narrow it, and both are read from the QUERY STRING.  It answers from the org's own store rather than from the cluster, so a sandbox whose pod has since died still appears, carrying the status it was last known to have. That is deliberate: a lease you are being charged for should not vanish from the list because the thing behind it fell over.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSandboxesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandboxes';

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

  /// The sandboxes this org holds
  ///
  /// Lists the caller org's sandboxes, newest first. `project` and `status` narrow it, and both are read from the QUERY STRING.  It answers from the org's own store rather than from the cluster, so a sandbox whose pod has since died still appears, carrying the status it was last known to have. That is deliberate: a lease you are being charged for should not vanish from the list because the thing behind it fell over.
  Future<void> getSandboxes() async {
    final response = await getSandboxesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// One sandbox
  ///
  /// Returns one of the caller org's sandboxes. An id belonging to another org answers 404 and not 403 — a 403 would confirm the id exists, and whether a given sandbox exists is itself a cross-tenant fact.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getSandboxesByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandboxes/{id}'
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

  /// One sandbox
  ///
  /// Returns one of the caller org's sandboxes. An id belonging to another org answers 404 and not 403 — a 403 would confirm the id exists, and whether a given sandbox exists is itself a cross-tenant fact.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> getSandboxesById(String id,) async {
    final response = await getSandboxesByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
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
  Future<Response> getSandboxesByIdFsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandboxes/{id}/fs'
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
  Future<void> getSandboxesByIdFs(String id,) async {
    final response = await getSandboxesByIdFsWithHttpInfo(id,);
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
  Future<Response> getSandboxesByIdScreenWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandboxes/{id}/screen'
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
  Future<void> getSandboxesByIdScreen(String id,) async {
    final response = await getSandboxesByIdScreenWithHttpInfo(id,);
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
  Future<Response> getSandboxesByIdScreenWsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandboxes/{id}/screen/ws'
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
  Future<void> getSandboxesByIdScreenWs(String id,) async {
    final response = await getSandboxesByIdScreenWsWithHttpInfo(id,);
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
  Future<Response> getSandboxesByIdTerminalWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandboxes/{id}/terminal'
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
  Future<void> getSandboxesByIdTerminal(String id,) async {
    final response = await getSandboxesByIdTerminalWithHttpInfo(id,);
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
  Future<Response> getSandboxesByIdTerminalWsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandboxes/{id}/terminal/ws'
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
  Future<void> getSandboxesByIdTerminalWs(String id,) async {
    final response = await getSandboxesByIdTerminalWsWithHttpInfo(id,);
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
    final path = r'/v1/sandboxes/lease';

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

  /// Lease a sandbox
  ///
  /// Creates a sandbox and returns it. `class` is one of `exec`, `dev`, `desktop` or `android`; `dev` and `desktop` are attached to a `project`, which is required for them and names the volume the work persists on. `ttlSec` bounds the lease, and `image` overrides the class default.  This is the ONLY path that creates cluster objects. The isolation boundary is the pod's runtime class, one field, so what a sandbox is confined by is a deployment decision rather than anything this operation negotiates.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postSandboxesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandboxes';

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

  /// Lease a sandbox
  ///
  /// Creates a sandbox and returns it. `class` is one of `exec`, `dev`, `desktop` or `android`; `dev` and `desktop` are attached to a `project`, which is required for them and names the volume the work persists on. `ttlSec` bounds the lease, and `image` overrides the class default.  This is the ONLY path that creates cluster objects. The isolation boundary is the pod's runtime class, one field, so what a sandbox is confined by is a deployment decision rather than anything this operation negotiates.
  Future<void> postSandboxes() async {
    final response = await postSandboxesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Run a command in a sandbox
  ///
  /// Runs a command inside the sandbox and returns its exit code, stdout and stderr. A non-zero exit is a SUCCESSFUL call carrying a failed program — the HTTP status stays 200, because \"the tests failed\" and \"the sandbox is broken\" are different facts.  NOTHING RUNS IN cloud. The command is streamed to the Kubernetes exec subresource of the sandbox's pod, which runs under the gVisor runtime class. The sandbox is addressed by pod NAME through the apiserver, never by address.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> postSandboxesByIdExecWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandboxes/{id}/exec'
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

  /// Run a command in a sandbox
  ///
  /// Runs a command inside the sandbox and returns its exit code, stdout and stderr. A non-zero exit is a SUCCESSFUL call carrying a failed program — the HTTP status stays 200, because \"the tests failed\" and \"the sandbox is broken\" are different facts.  NOTHING RUNS IN cloud. The command is streamed to the Kubernetes exec subresource of the sandbox's pod, which runs under the gVisor runtime class. The sandbox is addressed by pod NAME through the apiserver, never by address.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> postSandboxesByIdExec(String id,) async {
    final response = await postSandboxesByIdExecWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
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
  Future<Response> postSandboxesByIdFsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandboxes/{id}/fs'
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
  Future<void> postSandboxesByIdFs(String id,) async {
    final response = await postSandboxesByIdFsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Open a screen
  ///
  /// Mints a SINGLE-USE ticket for this sandbox's DISPLAY and returns `{ticket, expiresIn, url}`, where url is the desktop PAGE with the ticket already on it. The same ticket as the terminal's, minted for a different door.  A ticket says which org and which sandbox, and the terminal and the screen are two views of one machine: a caller who may type in a sandbox may look at it. What the door decides is the URL handed back, which is the only part that differs.  Mint one per screen, and mint a fresh one to reconnect.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> postSandboxesByIdScreenTicketWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandboxes/{id}/screen/ticket'
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

  /// Open a screen
  ///
  /// Mints a SINGLE-USE ticket for this sandbox's DISPLAY and returns `{ticket, expiresIn, url}`, where url is the desktop PAGE with the ticket already on it. The same ticket as the terminal's, minted for a different door.  A ticket says which org and which sandbox, and the terminal and the screen are two views of one machine: a caller who may type in a sandbox may look at it. What the door decides is the URL handed back, which is the only part that differs.  Mint one per screen, and mint a fresh one to reconnect.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> postSandboxesByIdScreenTicket(String id,) async {
    final response = await postSandboxesByIdScreenTicketWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Open a terminal
  ///
  /// Mints a SINGLE-USE ticket for one interactive terminal in this sandbox and returns `{ticket, expiresIn, url}`, where url is the terminal PAGE with the ticket already on it.  It exists because a browser carries no Authorization header into a WebSocket or an iframe, so a terminal cannot be authenticated the way every other route here is. The ticket is a credential MINTED for that one terminal: bound to this org and this sandbox, valid for thirty seconds, and gone the first time it is presented. A long-lived bearer in a query string would instead be written into every access log on the path.  Mint one per terminal, and mint a fresh one to reconnect.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> postSandboxesByIdTerminalTicketWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sandboxes/{id}/terminal/ticket'
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

  /// Open a terminal
  ///
  /// Mints a SINGLE-USE ticket for one interactive terminal in this sandbox and returns `{ticket, expiresIn, url}`, where url is the terminal PAGE with the ticket already on it.  It exists because a browser carries no Authorization header into a WebSocket or an iframe, so a terminal cannot be authenticated the way every other route here is. The ticket is a credential MINTED for that one terminal: bound to this org and this sandbox, valid for thirty seconds, and gone the first time it is presented. A long-lived bearer in a query string would instead be written into every access log on the path.  Mint one per terminal, and mint a fresh one to reconnect.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> postSandboxesByIdTerminalTicket(String id,) async {
    final response = await postSandboxesByIdTerminalTicketWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
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
    final path = r'/v1/sandboxes/read';

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
    final path = r'/v1/sandboxes/run';

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
    final path = r'/v1/sandboxes/stop';

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
    final path = r'/v1/sandboxes/write';

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
