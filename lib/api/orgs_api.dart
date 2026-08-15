//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class OrgsApi {
  OrgsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get lists the products an org has ENABLED — its own intent, which the console's paid-product sidebar reads to decide what to show.
  ///
  /// Get lists the products an org has ENABLED — its own intent, which the console's paid-product sidebar reads to decide what to show. It is distinct from what the org's plan ENTITLES it to (that is GET /v1/entitlements, resolved from commerce).  A caller may only read its OWN org's row; a platform super admin may read any.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  Future<Response> getOrgsByOrgEntitlementsWithHttpInfo(String org,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orgs/{org}/entitlements'
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
  /// Get lists the products an org has ENABLED — its own intent, which the console's paid-product sidebar reads to decide what to show. It is distinct from what the org's plan ENTITLES it to (that is GET /v1/entitlements, resolved from commerce).  A caller may only read its OWN org's row; a platform super admin may read any.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  Future<EntitlementsView?> getOrgsByOrgEntitlements(String org,) async {
    final response = await getOrgsByOrgEntitlementsWithHttpInfo(org,);
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

  /// Onboard creates the caller's organization.
  ///
  /// Onboard creates the caller's organization. Two flows, keyed on whether the caller already has a home org (mirrors app/onboard/route.ts):    - FIRST-RUN (no home org): create + MOVE the user in as admin, so their next     JWT carries the new owner and the cloud scopes everything to it. This is the     path a fresh OAuth sign-up takes, from the sign-up application's org.   - ADDITIONAL (owner set): create the org but do NOT move the user — a move     changes their IAM owner (stripping a SuperAdmin's status + orphaning their     current org). They reach the new org via the OrgSwitcher, which re-scopes     X-Org-Id without touching IAM membership. A personal-org request from someone     who already has an org is meaningless → 409.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [OnboardReq] onboardReq (required):
  Future<Response> postOrgsWithHttpInfo(OnboardReq onboardReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orgs';

    // ignore: prefer_final_locals
    Object? postBody = onboardReq;

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

  /// Onboard creates the caller's organization.
  ///
  /// Onboard creates the caller's organization. Two flows, keyed on whether the caller already has a home org (mirrors app/onboard/route.ts):    - FIRST-RUN (no home org): create + MOVE the user in as admin, so their next     JWT carries the new owner and the cloud scopes everything to it. This is the     path a fresh OAuth sign-up takes, from the sign-up application's org.   - ADDITIONAL (owner set): create the org but do NOT move the user — a move     changes their IAM owner (stripping a SuperAdmin's status + orphaning their     current org). They reach the new org via the OrgSwitcher, which re-scopes     X-Org-Id without touching IAM membership. A personal-org request from someone     who already has an org is meaningless → 409.
  ///
  /// Parameters:
  ///
  /// * [OnboardReq] onboardReq (required):
  Future<OnboardResp?> postOrgs(OnboardReq onboardReq,) async {
    final response = await postOrgsWithHttpInfo(onboardReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OnboardResp',) as OnboardResp;
    
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
  Future<Response> postOrgsByOrgEntitlementsWithHttpInfo(String org, MutateReq mutateReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orgs/{org}/entitlements'
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
  Future<EntitlementsView?> postOrgsByOrgEntitlements(String org, MutateReq mutateReq,) async {
    final response = await postOrgsByOrgEntitlementsWithHttpInfo(org, mutateReq,);
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
