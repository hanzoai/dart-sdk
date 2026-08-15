//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class AuthzApi {
  AuthzApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Liveness of the policy engine
  ///
  /// Reports that the authz process is up. Unauthenticated by design and never org-scoped: it answers while every tenant's enforcer is still cold, because a probe that needed a tenant would fail for reasons that have nothing to do with the process being alive.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAuthzHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/authz/health';

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

  /// Liveness of the policy engine
  ///
  /// Reports that the authz process is up. Unauthenticated by design and never org-scoped: it answers while every tenant's enforcer is still cold, because a probe that needed a tenant would fail for reasons that have nothing to do with the process being alive.
  Future<void> getAuthzHealth() async {
    final response = await getAuthzHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Readiness of the policy engine
  ///
  /// Reports that the authz process is ready to serve decisions. Unauthenticated and not org-scoped, for the same reason health is: readiness is a property of this process, not of any one tenant's policy set.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAuthzReadyzWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/authz/readyz';

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

  /// Readiness of the policy engine
  ///
  /// Reports that the authz process is ready to serve decisions. Unauthenticated and not org-scoped, for the same reason health is: readiness is a property of this process, not of any one tenant's policy set.
  Future<void> getAuthzReadyz() async {
    final response = await getAuthzReadyzWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Ask whether a subject may act on an object
  ///
  /// Answers one policy question — may this subject take this action on this object — against the CALLER'S OWN org policy set, and answers it with a bare allow/deny.  The org comes from the gateway-minted X-Org-Id and picks the per-org enforcer, so a decision is always rendered by that tenant's policies and never by another's. A request carrying no org is refused rather than answered from a shared or default set: collapsing tenants together is the one failure a policy engine must not have.  Body: {sub, obj, act}, all three required. The reply echoes them beside `allow` so a cached or logged decision carries the question it answered.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAuthzCheckWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/authz/check';

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

  /// Ask whether a subject may act on an object
  ///
  /// Answers one policy question — may this subject take this action on this object — against the CALLER'S OWN org policy set, and answers it with a bare allow/deny.  The org comes from the gateway-minted X-Org-Id and picks the per-org enforcer, so a decision is always rendered by that tenant's policies and never by another's. A request carrying no org is refused rather than answered from a shared or default set: collapsing tenants together is the one failure a policy engine must not have.  Body: {sub, obj, act}, all three required. The reply echoes them beside `allow` so a cached or logged decision carries the question it answered.
  Future<void> postAuthzCheck() async {
    final response = await postAuthzCheckWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
