//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class RouterApi {
  RouterApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteRouterArtifactMetaWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/artifact-meta';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> deleteRouterArtifactMeta() async {
    final response = await deleteRouterArtifactMetaWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Data
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteRouterDataWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/data';

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

  /// Data
  Future<Envelope?> deleteRouterData() async {
    final response = await deleteRouterDataWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteRouterDefaultsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/defaults';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> deleteRouterDefaults() async {
    final response = await deleteRouterDefaultsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteRouterLedgerWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/ledger';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> deleteRouterLedger() async {
    final response = await deleteRouterLedgerWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteRouterPolicyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/policy';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> deleteRouterPolicy() async {
    final response = await deleteRouterPolicyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteRouterRewardsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/rewards';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> deleteRouterRewards() async {
    final response = await deleteRouterRewardsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getRouterArtifactMetaWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/artifact-meta';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> getRouterArtifactMeta() async {
    final response = await getRouterArtifactMetaWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Data
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getRouterDataWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/data';

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

  /// Data
  Future<Envelope?> getRouterData() async {
    final response = await getRouterDataWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Envelope',) as Envelope;
    
    }
    return null;
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getRouterDefaultsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/defaults';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> getRouterDefaults() async {
    final response = await getRouterDefaultsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the router-improvement time-series.
  ///
  /// Returns the router-improvement time-series. Two scopes, one route, mirroring /v1/router/stats:    - ?scope=platform — PUBLIC-safe aggregate over ALL orgs, no authentication. Emits     the daily reward/cost-saved/adoption series (task mix included, model ids NOT)     and the retrain timeline. This is what world.hanzo.ai polls.   - default (org scope) — requires a signed-in principal, scoped to the caller's OWN     org (a super admin may pass ?org= to target another or \"\" for all).  Window: ?days=N (default 30, capped at 90). Aggregates only.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getRouterHistoryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/history';

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

  /// Returns the router-improvement time-series.
  ///
  /// Returns the router-improvement time-series. Two scopes, one route, mirroring /v1/router/stats:    - ?scope=platform — PUBLIC-safe aggregate over ALL orgs, no authentication. Emits     the daily reward/cost-saved/adoption series (task mix included, model ids NOT)     and the retrain timeline. This is what world.hanzo.ai polls.   - default (org scope) — requires a signed-in principal, scoped to the caller's OWN     org (a super admin may pass ?org= to target another or \"\" for all).  Window: ?days=N (default 30, capped at 90). Aggregates only.
  Future<void> getRouterHistory() async {
    final response = await getRouterHistoryWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the LIVE Mean-Field Judge Panel state: the configured panel + dynamic judge posture (enabled/sample) resolved from the \"*\" GlobalDefaultOwner row, the live in-process per-judge calibration (weight/mean/n), and the static published benchmark.
  ///
  /// Returns the LIVE Mean-Field Judge Panel state: the configured panel + dynamic judge posture (enabled/sample) resolved from the \"*\" GlobalDefaultOwner row, the live in-process per-judge calibration (weight/mean/n), and the static published benchmark. PUBLIC-safe and platform-global (model ids + scalars only), so it rides the same unauthenticated, balance-exempt class as /v1/router/stats?scope=platform — the world widget polls it with no auth. The judge state is a single in-process population (not per-org), so there is nothing to scope; ?scope=platform is accepted for symmetry with router-stats.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getRouterJudgePanelWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/judge-panel';

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

  /// Returns the LIVE Mean-Field Judge Panel state: the configured panel + dynamic judge posture (enabled/sample) resolved from the \"*\" GlobalDefaultOwner row, the live in-process per-judge calibration (weight/mean/n), and the static published benchmark.
  ///
  /// Returns the LIVE Mean-Field Judge Panel state: the configured panel + dynamic judge posture (enabled/sample) resolved from the \"*\" GlobalDefaultOwner row, the live in-process per-judge calibration (weight/mean/n), and the static published benchmark. PUBLIC-safe and platform-global (model ids + scalars only), so it rides the same unauthenticated, balance-exempt class as /v1/router/stats?scope=platform — the world widget polls it with no auth. The judge state is a single in-process population (not per-org), so there is nothing to scope; ?scope=platform is accepted for symmetry with router-stats.
  Future<void> getRouterJudgePanel() async {
    final response = await getRouterJudgePanelWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getRouterLedgerWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/ledger';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> getRouterLedger() async {
    final response = await getRouterLedgerWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getRouterPolicyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/policy';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> getRouterPolicy() async {
    final response = await getRouterPolicyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getRouterRewardsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/rewards';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> getRouterRewards() async {
    final response = await getRouterRewardsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the router observability aggregate.
  ///
  /// Returns the router observability aggregate. Two scopes, one route:    - ?scope=platform — PUBLIC-safe aggregate over ALL orgs, no authentication.     Emits rates, shares, per-task/per-model counts, throughput, and the cost     RATIO (saved_pct) + counterfactual model id, but NEVER absolute $ levels,     org identity, raw events, or feature vectors. This is what world.hanzo.ai     polls.   - default (org scope) — requires a signed-in principal; scoped to the caller's     OWN org (a super admin may pass ?org= to target another org or \"\" for all).     Carries the absolute $/MTok indices for the admin savings panel.  Window: ?since= (RFC3339) or ?hours= (default 24, capped). Aggregates only.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getRouterStatsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/stats';

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

  /// Returns the router observability aggregate.
  ///
  /// Returns the router observability aggregate. Two scopes, one route:    - ?scope=platform — PUBLIC-safe aggregate over ALL orgs, no authentication.     Emits rates, shares, per-task/per-model counts, throughput, and the cost     RATIO (saved_pct) + counterfactual model id, but NEVER absolute $ levels,     org identity, raw events, or feature vectors. This is what world.hanzo.ai     polls.   - default (org scope) — requires a signed-in principal; scoped to the caller's     OWN org (a super admin may pass ?org= to target another org or \"\" for all).     Carries the absolute $/MTok indices for the admin savings panel.  Window: ?since= (RFC3339) or ?hours= (default 24, capped). Aggregates only.
  Future<void> getRouterStats() async {
    final response = await getRouterStatsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> patchRouterArtifactMetaWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/artifact-meta';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> patchRouterArtifactMeta() async {
    final response = await patchRouterArtifactMetaWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> patchRouterDefaultsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/defaults';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> patchRouterDefaults() async {
    final response = await patchRouterDefaultsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> patchRouterLedgerWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/ledger';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> patchRouterLedger() async {
    final response = await patchRouterLedgerWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> patchRouterPolicyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/policy';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> patchRouterPolicy() async {
    final response = await patchRouterPolicyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> patchRouterRewardsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/rewards';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> patchRouterRewards() async {
    final response = await patchRouterRewardsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postRouterArtifactMetaWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/artifact-meta';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> postRouterArtifactMeta() async {
    final response = await postRouterArtifactMetaWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postRouterDefaultsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/defaults';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> postRouterDefaults() async {
    final response = await postRouterDefaultsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postRouterLedgerWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/ledger';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> postRouterLedger() async {
    final response = await postRouterLedgerWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postRouterPolicyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/policy';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> postRouterPolicy() async {
    final response = await postRouterPolicyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postRouterRewardsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/rewards';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> postRouterRewards() async {
    final response = await postRouterRewardsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> putRouterArtifactMetaWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/artifact-meta';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> putRouterArtifactMeta() async {
    final response = await putRouterArtifactMetaWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> putRouterDefaultsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/defaults';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> putRouterDefaults() async {
    final response = await putRouterDefaultsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> putRouterLedgerWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/ledger';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> putRouterLedger() async {
    final response = await putRouterLedgerWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> putRouterPolicyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/policy';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> putRouterPolicy() async {
    final response = await putRouterPolicyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> putRouterRewardsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/router/rewards';

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

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  Future<void> putRouterRewards() async {
    final response = await putRouterRewardsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
