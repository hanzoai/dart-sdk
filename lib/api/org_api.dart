//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class OrgApi {
  OrgApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteOrgSettingsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/org/settings';

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
  Future<void> deleteOrgSettings() async {
    final response = await deleteOrgSettingsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteOrgSettingsListWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/org/settings/list';

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
  Future<void> deleteOrgSettingsList() async {
    final response = await deleteOrgSettingsListWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getOrgSettingsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/org/settings';

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
  Future<void> getOrgSettings() async {
    final response = await getOrgSettingsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getOrgSettingsListWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/org/settings/list';

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
  Future<void> getOrgSettingsList() async {
    final response = await getOrgSettingsListWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> patchOrgSettingsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/org/settings';

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
  Future<void> patchOrgSettings() async {
    final response = await patchOrgSettingsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> patchOrgSettingsListWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/org/settings/list';

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
  Future<void> patchOrgSettingsList() async {
    final response = await patchOrgSettingsListWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postOrgSettingsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/org/settings';

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
  Future<void> postOrgSettings() async {
    final response = await postOrgSettingsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postOrgSettingsListWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/org/settings/list';

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
  Future<void> postOrgSettingsList() async {
    final response = await postOrgSettingsListWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> putOrgSettingsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/org/settings';

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
  Future<void> putOrgSettings() async {
    final response = await putOrgSettingsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]).
  ///
  /// The HTTP transport binding for the RESTful router-config nouns (/v1/router/{policy,defaults,ledger,rewards,artifact-meta} and /v1/org/settings[/list]). It dispatches IN-PROCESS through dispatchGateway — the SAME canonical ZAP gateway registry (zap_registry.go) that the MsgType 200 handler serves over the gateway transport. The native ZAP handler is the ONE and ONLY implementation of these routes; this is purely the api.hanzo.ai HTTP binding, so there is NO controller twin to drift from and the split-brain the router refactor removed stays removed.  Why a bridge and not a twin controller method: every other migrated route (get-records, get-connections, …) carries BOTH a controller method and a ZAP handler — the exact dual-impl drift that silently NULLed customer router settings (the update-router-policy data-wipe). Routing these nouns through the ZAP handler over one adapter keeps a single source of truth.  Identity is the request's own Bearer credential (Authorization header), which the native handlers resolve exactly as the gateway does — every caller (console, chat, app) already sends it. The dispatched handler returns a ZAP message whose status is field 0 and body is field 4 (BuildCloudResponse / BuildGatewayResponse layout); both are relayed verbatim. The route is mapped \"*\" (any verb) because the native handler is method-aware: /v1/router/policy splits GET (read) vs PUT (write), /v1/org/settings GET/PUT/DELETE, and returns 405 for a verb it does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> putOrgSettingsListWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/org/settings/list';

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
  Future<void> putOrgSettingsList() async {
    final response = await putOrgSettingsListWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
