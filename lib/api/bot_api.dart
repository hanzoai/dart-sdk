//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class BotApi {
  BotApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Relay one of the bot runtime's own operational paths
  ///
  /// Forwards a request to the bot runtime — the service that executes channels and skills — and hands back its answer unchanged. `/v1/bot` is stripped before forwarding, because the runtime serves bare paths: /v1/bot/health reaches it as /health.  This is the runtime's OPS face, not a control plane. A liveness probe is not a tenant-scoped resource, so it stays a relay rather than being reimplemented in Go; everything a tenant can ACT on is native and typed at /v1/bots.  A validated principal is required and the request is refused with 403 before anything is forwarded — the runtime trusts the identity headers it receives as gateway-minted, so an unauthenticated call must never be allowed to hand it a victim tenant. The caller's Authorization, org, user, email, project and environment headers ride along; nothing is minted here. The runtime's own status code and Content-Type come back verbatim (frequently not JSON), the body is bounded at 16 MiB, and a runtime that cannot be reached is 502.  One registration owns this address for every method, so which methods actually answer is the runtime's decision, not this edge's.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> deleteBotByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/bot/{wildcard1}'
      .replaceAll('{wildcard1}', wildcard1);

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

  /// Relay one of the bot runtime's own operational paths
  ///
  /// Forwards a request to the bot runtime — the service that executes channels and skills — and hands back its answer unchanged. `/v1/bot` is stripped before forwarding, because the runtime serves bare paths: /v1/bot/health reaches it as /health.  This is the runtime's OPS face, not a control plane. A liveness probe is not a tenant-scoped resource, so it stays a relay rather than being reimplemented in Go; everything a tenant can ACT on is native and typed at /v1/bots.  A validated principal is required and the request is refused with 403 before anything is forwarded — the runtime trusts the identity headers it receives as gateway-minted, so an unauthenticated call must never be allowed to hand it a victim tenant. The caller's Authorization, org, user, email, project and environment headers ride along; nothing is minted here. The runtime's own status code and Content-Type come back verbatim (frequently not JSON), the body is bounded at 16 MiB, and a runtime that cannot be reached is 502.  One registration owns this address for every method, so which methods actually answer is the runtime's decision, not this edge's.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> deleteBotByWildcard1(String wildcard1,) async {
    final response = await deleteBotByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Relay one of the bot runtime's own operational paths
  ///
  /// Forwards a request to the bot runtime — the service that executes channels and skills — and hands back its answer unchanged. `/v1/bot` is stripped before forwarding, because the runtime serves bare paths: /v1/bot/health reaches it as /health.  This is the runtime's OPS face, not a control plane. A liveness probe is not a tenant-scoped resource, so it stays a relay rather than being reimplemented in Go; everything a tenant can ACT on is native and typed at /v1/bots.  A validated principal is required and the request is refused with 403 before anything is forwarded — the runtime trusts the identity headers it receives as gateway-minted, so an unauthenticated call must never be allowed to hand it a victim tenant. The caller's Authorization, org, user, email, project and environment headers ride along; nothing is minted here. The runtime's own status code and Content-Type come back verbatim (frequently not JSON), the body is bounded at 16 MiB, and a runtime that cannot be reached is 502.  One registration owns this address for every method, so which methods actually answer is the runtime's decision, not this edge's.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> getBotByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/bot/{wildcard1}'
      .replaceAll('{wildcard1}', wildcard1);

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

  /// Relay one of the bot runtime's own operational paths
  ///
  /// Forwards a request to the bot runtime — the service that executes channels and skills — and hands back its answer unchanged. `/v1/bot` is stripped before forwarding, because the runtime serves bare paths: /v1/bot/health reaches it as /health.  This is the runtime's OPS face, not a control plane. A liveness probe is not a tenant-scoped resource, so it stays a relay rather than being reimplemented in Go; everything a tenant can ACT on is native and typed at /v1/bots.  A validated principal is required and the request is refused with 403 before anything is forwarded — the runtime trusts the identity headers it receives as gateway-minted, so an unauthenticated call must never be allowed to hand it a victim tenant. The caller's Authorization, org, user, email, project and environment headers ride along; nothing is minted here. The runtime's own status code and Content-Type come back verbatim (frequently not JSON), the body is bounded at 16 MiB, and a runtime that cannot be reached is 502.  One registration owns this address for every method, so which methods actually answer is the runtime's decision, not this edge's.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> getBotByWildcard1(String wildcard1,) async {
    final response = await getBotByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The socket a bot node dials and holds open to become invokable.
  ///
  /// Upgrades to a WebSocket and keeps it for the life of the node. cloud writes a challenge frame immediately; the node answers with a connect frame naming the protocol range it speaks, the role `node`, its own node id, and the display name, platform, agent version, capabilities and commands it reports for itself. On acceptance the session is registered, the node appears in this org's node list, and invocations begin arriving as frames on the same connection.  The upgrade needs a validated principal and answers 403 without one. The org is the gateway's verdict — injected after IAM validation and after any client copy is stripped — and is never read from the request itself, because a caller that could name an org could attach a machine into someone else's tenant.  A request carrying an Origin header is refused outright. A node is a daemon and a browser has no business here; since no same-origin policy applies to WebSockets, a page could otherwise ride a signed-in viewer's session into registering a node. Removing the whole category is the gate, not an allowlist of brand domains. The handshake deadline is one fixed instant rather than a per-read timer, so a peer cannot hold a pre-handshake socket open indefinitely by sending frames this endpoint ignores.  Two things to get right. Everything the node declares about itself — capabilities, commands, platform — is a SELF-REPORT: it is useful to show and never load-bearing, because what the node may actually be asked to run is decided at this socket against the deployment's allowlist. And a node can only ever answer calls placed on its own connection: correlation ids are minted under the connection id and checked against it, so naming another node's in-flight call resolves nothing.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBotConnectWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/bot/connect';

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

  /// The socket a bot node dials and holds open to become invokable.
  ///
  /// Upgrades to a WebSocket and keeps it for the life of the node. cloud writes a challenge frame immediately; the node answers with a connect frame naming the protocol range it speaks, the role `node`, its own node id, and the display name, platform, agent version, capabilities and commands it reports for itself. On acceptance the session is registered, the node appears in this org's node list, and invocations begin arriving as frames on the same connection.  The upgrade needs a validated principal and answers 403 without one. The org is the gateway's verdict — injected after IAM validation and after any client copy is stripped — and is never read from the request itself, because a caller that could name an org could attach a machine into someone else's tenant.  A request carrying an Origin header is refused outright. A node is a daemon and a browser has no business here; since no same-origin policy applies to WebSockets, a page could otherwise ride a signed-in viewer's session into registering a node. Removing the whole category is the gate, not an allowlist of brand domains. The handshake deadline is one fixed instant rather than a per-read timer, so a peer cannot hold a pre-handshake socket open indefinitely by sending frames this endpoint ignores.  Two things to get right. Everything the node declares about itself — capabilities, commands, platform — is a SELF-REPORT: it is useful to show and never load-bearing, because what the node may actually be asked to run is decided at this socket against the deployment's allowlist. And a node can only ever answer calls placed on its own connection: correlation ids are minted under the connection id and checked against it, so naming another node's in-flight call resolves nothing.
  Future<void> getBotConnect() async {
    final response = await getBotConnectWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the caller org's currently connected bot nodes: what each one calls itself, the platform it runs on, its agent version, when its socket was established, and the capabilities and commands it reported.
  ///
  /// Returns the caller org's currently connected bot nodes: what each one calls itself, the platform it runs on, its agent version, when its socket was established, and the capabilities and commands it reported.  Only this org's nodes are listed — the org is half of every key in the table it reads — and only nodes attached to THIS replica, because the list is of live sockets rather than of registrations. The capability and command lists are the node's own self-report: useful to show, never load-bearing, because what a node may actually be asked to do is decided at the socket against the deployment's allowlist.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBotNodesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/bot/nodes';

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

  /// Returns the caller org's currently connected bot nodes: what each one calls itself, the platform it runs on, its agent version, when its socket was established, and the capabilities and commands it reported.
  ///
  /// Returns the caller org's currently connected bot nodes: what each one calls itself, the platform it runs on, its agent version, when its socket was established, and the capabilities and commands it reported.  Only this org's nodes are listed — the org is half of every key in the table it reads — and only nodes attached to THIS replica, because the list is of live sockets rather than of registrations. The capability and command lists are the node's own self-report: useful to show, never load-bearing, because what a node may actually be asked to do is decided at the socket against the deployment's allowlist.
  Future<NodesView?> getBotNodes() async {
    final response = await getBotNodesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NodesView',) as NodesView;
    
    }
    return null;
  }

  /// Relay one of the bot runtime's own operational paths
  ///
  /// Forwards a request to the bot runtime — the service that executes channels and skills — and hands back its answer unchanged. `/v1/bot` is stripped before forwarding, because the runtime serves bare paths: /v1/bot/health reaches it as /health.  This is the runtime's OPS face, not a control plane. A liveness probe is not a tenant-scoped resource, so it stays a relay rather than being reimplemented in Go; everything a tenant can ACT on is native and typed at /v1/bots.  A validated principal is required and the request is refused with 403 before anything is forwarded — the runtime trusts the identity headers it receives as gateway-minted, so an unauthenticated call must never be allowed to hand it a victim tenant. The caller's Authorization, org, user, email, project and environment headers ride along; nothing is minted here. The runtime's own status code and Content-Type come back verbatim (frequently not JSON), the body is bounded at 16 MiB, and a runtime that cannot be reached is 502.  One registration owns this address for every method, so which methods actually answer is the runtime's decision, not this edge's.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> patchBotByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/bot/{wildcard1}'
      .replaceAll('{wildcard1}', wildcard1);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Relay one of the bot runtime's own operational paths
  ///
  /// Forwards a request to the bot runtime — the service that executes channels and skills — and hands back its answer unchanged. `/v1/bot` is stripped before forwarding, because the runtime serves bare paths: /v1/bot/health reaches it as /health.  This is the runtime's OPS face, not a control plane. A liveness probe is not a tenant-scoped resource, so it stays a relay rather than being reimplemented in Go; everything a tenant can ACT on is native and typed at /v1/bots.  A validated principal is required and the request is refused with 403 before anything is forwarded — the runtime trusts the identity headers it receives as gateway-minted, so an unauthenticated call must never be allowed to hand it a victim tenant. The caller's Authorization, org, user, email, project and environment headers ride along; nothing is minted here. The runtime's own status code and Content-Type come back verbatim (frequently not JSON), the body is bounded at 16 MiB, and a runtime that cannot be reached is 502.  One registration owns this address for every method, so which methods actually answer is the runtime's decision, not this edge's.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> patchBotByWildcard1(String wildcard1,) async {
    final response = await patchBotByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Relay one of the bot runtime's own operational paths
  ///
  /// Forwards a request to the bot runtime — the service that executes channels and skills — and hands back its answer unchanged. `/v1/bot` is stripped before forwarding, because the runtime serves bare paths: /v1/bot/health reaches it as /health.  This is the runtime's OPS face, not a control plane. A liveness probe is not a tenant-scoped resource, so it stays a relay rather than being reimplemented in Go; everything a tenant can ACT on is native and typed at /v1/bots.  A validated principal is required and the request is refused with 403 before anything is forwarded — the runtime trusts the identity headers it receives as gateway-minted, so an unauthenticated call must never be allowed to hand it a victim tenant. The caller's Authorization, org, user, email, project and environment headers ride along; nothing is minted here. The runtime's own status code and Content-Type come back verbatim (frequently not JSON), the body is bounded at 16 MiB, and a runtime that cannot be reached is 502.  One registration owns this address for every method, so which methods actually answer is the runtime's decision, not this edge's.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> postBotByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/bot/{wildcard1}'
      .replaceAll('{wildcard1}', wildcard1);

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

  /// Relay one of the bot runtime's own operational paths
  ///
  /// Forwards a request to the bot runtime — the service that executes channels and skills — and hands back its answer unchanged. `/v1/bot` is stripped before forwarding, because the runtime serves bare paths: /v1/bot/health reaches it as /health.  This is the runtime's OPS face, not a control plane. A liveness probe is not a tenant-scoped resource, so it stays a relay rather than being reimplemented in Go; everything a tenant can ACT on is native and typed at /v1/bots.  A validated principal is required and the request is refused with 403 before anything is forwarded — the runtime trusts the identity headers it receives as gateway-minted, so an unauthenticated call must never be allowed to hand it a victim tenant. The caller's Authorization, org, user, email, project and environment headers ride along; nothing is minted here. The runtime's own status code and Content-Type come back verbatim (frequently not JSON), the body is bounded at 16 MiB, and a runtime that cannot be reached is 502.  One registration owns this address for every method, so which methods actually answer is the runtime's decision, not this edge's.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> postBotByWildcard1(String wildcard1,) async {
    final response = await postBotByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Ask one of your connected machines to run a command, and get its answer back.
  ///
  /// Sends {command, params, timeoutMs, idempotencyKey} to the named node and answers with what the node returned: {ok, payload, code, message}, where payload is the node's own JSON passed through — cloud routes the call, it does not interpret the result. A reply that is not valid JSON becomes an empty payload rather than corrupting the response, which ok and code already qualify.  Neither the node nor the org is a body field: the node is the path and the org is the caller's validated identity, and a field for either would be a field somebody could set to a stranger's. A validated principal is required (403 without one), and a node id that belongs to another org answers exactly like one that does not exist — not found — so this cannot be used to probe another tenant's fleet.  Authorization happened ONCE, at the socket, on the replica holding that node — the only place that knows what the node declared it can do. A node attached to a different replica is reached through the peer forward and is authorized by the same code with the same session in hand, so a local node and a forwarded one cannot get different answers. The timeout defaults to 30s and is clamped to 5 minutes, so one request can never pin a node's socket open indefinitely.  system.run is rewritten before dispatch: its approval control fields are re-derived from the approval record and whatever the caller claimed is discarded, because a caller that could pre-approve itself is the whole thing approvals exist to prevent. No approval registry is wired today, so an invocation CLAIMING an approval is refused while an ordinary one is unaffected.  The one thing to get right: a refusal is a 403 carrying a DOMAIN body — {error, code, reason} — not the flat error envelope the rest of cloud returns, and the same body comes back whether the pre-flight sanitize refused it or the node's own gate did. Switch on `code`. The remaining failures are ordinary statuses: the node not answering in time is 504, and a node that disconnected or could not be reached is 502.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> postBotNodesByIdInvokeWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/bot/nodes/{id}/invoke'
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

  /// Ask one of your connected machines to run a command, and get its answer back.
  ///
  /// Sends {command, params, timeoutMs, idempotencyKey} to the named node and answers with what the node returned: {ok, payload, code, message}, where payload is the node's own JSON passed through — cloud routes the call, it does not interpret the result. A reply that is not valid JSON becomes an empty payload rather than corrupting the response, which ok and code already qualify.  Neither the node nor the org is a body field: the node is the path and the org is the caller's validated identity, and a field for either would be a field somebody could set to a stranger's. A validated principal is required (403 without one), and a node id that belongs to another org answers exactly like one that does not exist — not found — so this cannot be used to probe another tenant's fleet.  Authorization happened ONCE, at the socket, on the replica holding that node — the only place that knows what the node declared it can do. A node attached to a different replica is reached through the peer forward and is authorized by the same code with the same session in hand, so a local node and a forwarded one cannot get different answers. The timeout defaults to 30s and is clamped to 5 minutes, so one request can never pin a node's socket open indefinitely.  system.run is rewritten before dispatch: its approval control fields are re-derived from the approval record and whatever the caller claimed is discarded, because a caller that could pre-approve itself is the whole thing approvals exist to prevent. No approval registry is wired today, so an invocation CLAIMING an approval is refused while an ordinary one is unaffected.  The one thing to get right: a refusal is a 403 carrying a DOMAIN body — {error, code, reason} — not the flat error envelope the rest of cloud returns, and the same body comes back whether the pre-flight sanitize refused it or the node's own gate did. Switch on `code`. The remaining failures are ordinary statuses: the node not answering in time is 504, and a node that disconnected or could not be reached is 502.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> postBotNodesByIdInvoke(String id,) async {
    final response = await postBotNodesByIdInvokeWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replica-to-replica forward of one invocation to the pod holding the node's socket.
  ///
  /// A machine hop, not a caller-facing route. A node's socket lands on one replica while invocations land on any, so the replica that took the request forwards it here to the one that actually holds the node, and returns that answer as its own.  It authenticates with the shared peer token, compared in constant time, and carries no user identity at all. That is why the org arrives IN THE BODY here: the forwarding replica already derived it from a gateway-validated header, so the value is a fact being relayed rather than a claim being made. On any caller-facing route the same field would be a cross-tenant invoke primitive.  It fails closed on its own configuration: with no peer token set, or a half-wired cluster that has presence but no way to forward, it serves 503 and forwards nothing — an unauthenticated endpoint that takes an org from a body is precisely the hole. A missing or wrong token is 403, and the forwarded body is bounded on read.  Two things to get right. Its refusals are text/plain rather than the JSON every zip error uses, so a client decoding them as JSON will fail on the error path only. And an invocation that RAN but was denied still answers 200 here, carrying a stable error token in the JSON body — no such node, timeout, node gone, denied, failed — which the calling replica maps back onto the status codes a caller sees. Authorization already ran on this replica at the socket and is deliberately not repeated.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postBotPeerInvokeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/bot/peer/invoke';

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

  /// Replica-to-replica forward of one invocation to the pod holding the node's socket.
  ///
  /// A machine hop, not a caller-facing route. A node's socket lands on one replica while invocations land on any, so the replica that took the request forwards it here to the one that actually holds the node, and returns that answer as its own.  It authenticates with the shared peer token, compared in constant time, and carries no user identity at all. That is why the org arrives IN THE BODY here: the forwarding replica already derived it from a gateway-validated header, so the value is a fact being relayed rather than a claim being made. On any caller-facing route the same field would be a cross-tenant invoke primitive.  It fails closed on its own configuration: with no peer token set, or a half-wired cluster that has presence but no way to forward, it serves 503 and forwards nothing — an unauthenticated endpoint that takes an org from a body is precisely the hole. A missing or wrong token is 403, and the forwarded body is bounded on read.  Two things to get right. Its refusals are text/plain rather than the JSON every zip error uses, so a client decoding them as JSON will fail on the error path only. And an invocation that RAN but was denied still answers 200 here, carrying a stable error token in the JSON body — no such node, timeout, node gone, denied, failed — which the calling replica maps back onto the status codes a caller sees. Authorization already ran on this replica at the socket and is deliberately not repeated.
  Future<void> postBotPeerInvoke() async {
    final response = await postBotPeerInvokeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Relay one of the bot runtime's own operational paths
  ///
  /// Forwards a request to the bot runtime — the service that executes channels and skills — and hands back its answer unchanged. `/v1/bot` is stripped before forwarding, because the runtime serves bare paths: /v1/bot/health reaches it as /health.  This is the runtime's OPS face, not a control plane. A liveness probe is not a tenant-scoped resource, so it stays a relay rather than being reimplemented in Go; everything a tenant can ACT on is native and typed at /v1/bots.  A validated principal is required and the request is refused with 403 before anything is forwarded — the runtime trusts the identity headers it receives as gateway-minted, so an unauthenticated call must never be allowed to hand it a victim tenant. The caller's Authorization, org, user, email, project and environment headers ride along; nothing is minted here. The runtime's own status code and Content-Type come back verbatim (frequently not JSON), the body is bounded at 16 MiB, and a runtime that cannot be reached is 502.  One registration owns this address for every method, so which methods actually answer is the runtime's decision, not this edge's.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> putBotByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/bot/{wildcard1}'
      .replaceAll('{wildcard1}', wildcard1);

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

  /// Relay one of the bot runtime's own operational paths
  ///
  /// Forwards a request to the bot runtime — the service that executes channels and skills — and hands back its answer unchanged. `/v1/bot` is stripped before forwarding, because the runtime serves bare paths: /v1/bot/health reaches it as /health.  This is the runtime's OPS face, not a control plane. A liveness probe is not a tenant-scoped resource, so it stays a relay rather than being reimplemented in Go; everything a tenant can ACT on is native and typed at /v1/bots.  A validated principal is required and the request is refused with 403 before anything is forwarded — the runtime trusts the identity headers it receives as gateway-minted, so an unauthenticated call must never be allowed to hand it a victim tenant. The caller's Authorization, org, user, email, project and environment headers ride along; nothing is minted here. The runtime's own status code and Content-Type come back verbatim (frequently not JSON), the body is bounded at 16 MiB, and a runtime that cannot be reached is 502.  One registration owns this address for every method, so which methods actually answer is the runtime's decision, not this edge's.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> putBotByWildcard1(String wildcard1,) async {
    final response = await putBotByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
