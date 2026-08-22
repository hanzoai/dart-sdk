//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class EntitlementApi {
  EntitlementApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Projection reports which console apps the CALLER's org may open, and the plan slug that decides it.
  ///
  /// Projection reports which console apps the CALLER's org may open, and the plan slug that decides it. It is the READ side of the unified paywall: the org's plan tier resolved from commerce, which is a different authority from the enablement store behind GET /v1/entitlement/orgs/{org} (that one is the org's own on/off intent).  It fails SAFE-TO-LOCKED, never 500: an unvalidated principal is a 403, but a commerce outage reports every app locked at 200 rather than breaking the shell. The ENFORCEMENT path still fails open, so functionality survives the same outage even while the UI conservatively shows locked.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getEntitlementWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/entitlement';

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

  /// Projection reports which console apps the CALLER's org may open, and the plan slug that decides it.
  ///
  /// Projection reports which console apps the CALLER's org may open, and the plan slug that decides it. It is the READ side of the unified paywall: the org's plan tier resolved from commerce, which is a different authority from the enablement store behind GET /v1/entitlement/orgs/{org} (that one is the org's own on/off intent).  It fails SAFE-TO-LOCKED, never 500: an unvalidated principal is a 403, but a commerce outage reports every app locked at 200 rather than breaking the shell. The ENFORCEMENT path still fails open, so functionality survives the same outage even while the UI conservatively shows locked.
  Future<ProjectionView?> getEntitlement() async {
    final response = await getEntitlementWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectionView',) as ProjectionView;
    
    }
    return null;
  }

  /// Get lists the products an org has ENABLED — its own intent, which the console's paid-product sidebar reads to decide what to show.
  ///
  /// Get lists the products an org has ENABLED — its own intent, which the console's paid-product sidebar reads to decide what to show. It is distinct from what the org's plan ENTITLES it to (that is GET /v1/entitlement, resolved from commerce).  A caller may only read its OWN org's row; a platform super admin may read any.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  Future<Response> getEntitlementOrgsByOrgWithHttpInfo(String org,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/entitlement/orgs/{org}'
      .replaceAll('{org}', org);

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

  /// Get lists the products an org has ENABLED — its own intent, which the console's paid-product sidebar reads to decide what to show.
  ///
  /// Get lists the products an org has ENABLED — its own intent, which the console's paid-product sidebar reads to decide what to show. It is distinct from what the org's plan ENTITLES it to (that is GET /v1/entitlement, resolved from commerce).  A caller may only read its OWN org's row; a platform super admin may read any.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  Future<EntitlementsView?> getEntitlementOrgsByOrg(String org,) async {
    final response = await getEntitlementOrgsByOrgWithHttpInfo(org,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EntitlementsView',) as EntitlementsView;
    
    }
    return null;
  }

  /// Post turns products on or off for an org and returns the enabled set afterwards.
  ///
  /// Post turns products on or off for an org and returns the enabled set afterwards.  A product may only be ENABLED if the org's plan already ENTITLES it, so enabling never spends new money — a product the plan does not grant answers 402 and the console routes that to an upgrade prompt. DISABLING is never gated. A platform super admin bypasses the plan check (operator comp/grant) and may target any org; everyone else may only change their own. Commerce unreachable is a 503, never an implicit yes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [MutateReq] mutateReq (required):
  Future<Response> postEntitlementOrgsByOrgWithHttpInfo(String org, MutateReq mutateReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/entitlement/orgs/{org}'
      .replaceAll('{org}', org);

    // ignore: prefer_final_locals
    Object? postBody = mutateReq;

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

  /// Post turns products on or off for an org and returns the enabled set afterwards.
  ///
  /// Post turns products on or off for an org and returns the enabled set afterwards.  A product may only be ENABLED if the org's plan already ENTITLES it, so enabling never spends new money — a product the plan does not grant answers 402 and the console routes that to an upgrade prompt. DISABLING is never gated. A platform super admin bypasses the plan check (operator comp/grant) and may target any org; everyone else may only change their own. Commerce unreachable is a 503, never an implicit yes.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [MutateReq] mutateReq (required):
  Future<EntitlementsView?> postEntitlementOrgsByOrg(String org, MutateReq mutateReq,) async {
    final response = await postEntitlementOrgsByOrgWithHttpInfo(org, mutateReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EntitlementsView',) as EntitlementsView;
    
    }
    return null;
  }
}
