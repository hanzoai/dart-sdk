//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class ReferralApi {
  ReferralApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns the caller's referral code, share link and the referrals they have made.
  ///
  /// Returns the caller's referral code, share link and the referrals they have made.  The code is a stable, deterministic function of the org, so the link in this response is the same one every time. Each row carries the referee and the status of that attribution.  IT IS A PURE READ. It advances no referral, grants nothing and deposits nothing — a GET reports state, it never changes it. Qualification is the admin sweep's job (POST /v1/admin/referral/sweep). The one row this handler can write is the caller's OWN code-directory entry (EnsureCode), which materialises a value deriveCode already computes deterministically from the org id so the code has an O(1) reverse lookup; it carries no money, no referral state and no other tenant.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getReferralWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/referral';

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

  /// Returns the caller's referral code, share link and the referrals they have made.
  ///
  /// Returns the caller's referral code, share link and the referrals they have made.  The code is a stable, deterministic function of the org, so the link in this response is the same one every time. Each row carries the referee and the status of that attribution.  IT IS A PURE READ. It advances no referral, grants nothing and deposits nothing — a GET reports state, it never changes it. Qualification is the admin sweep's job (POST /v1/admin/referral/sweep). The one row this handler can write is the caller's OWN code-directory entry (EnsureCode), which materialises a value deriveCode already computes deterministically from the org id so the code has an O(1) reverse lookup; it carries no money, no referral state and no other tenant.
  Future<MyReferrals?> getReferral() async {
    final response = await getReferralWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MyReferrals',) as MyReferrals;
    
    }
    return null;
  }

  /// Records that the caller's org signed up through a referral code.
  ///
  /// Records that the caller's org signed up through a referral code.  The REFEREE is the validated caller, never a client field, and the referrer is resolved from the code — so a caller can only ever attach THEMSELVES to someone else's code. Referring yourself is 400 and an unknown code is 404.  It is idempotent and first-touch: an org can be referred once, ever. A repeat call returns the referral already on file with created=false and 200, where the first call answers 201.  Recording a referral grants nothing, and neither does anything downstream of it: the edge later advances to qualified when the referee makes metered spend (POST /v1/admin/referral/sweep), and that is the end of it. No credit is ever issued from this package.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ClaimRequest] claimRequest (required):
  Future<Response> postReferralClaimWithHttpInfo(ClaimRequest claimRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/referral/claim';

    // ignore: prefer_final_locals
    Object? postBody = claimRequest;

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

  /// Records that the caller's org signed up through a referral code.
  ///
  /// Records that the caller's org signed up through a referral code.  The REFEREE is the validated caller, never a client field, and the referrer is resolved from the code — so a caller can only ever attach THEMSELVES to someone else's code. Referring yourself is 400 and an unknown code is 404.  It is idempotent and first-touch: an org can be referred once, ever. A repeat call returns the referral already on file with created=false and 200, where the first call answers 201.  Recording a referral grants nothing, and neither does anything downstream of it: the edge later advances to qualified when the referee makes metered spend (POST /v1/admin/referral/sweep), and that is the end of it. No credit is ever issued from this package.
  ///
  /// Parameters:
  ///
  /// * [ClaimRequest] claimRequest (required):
  Future<ClaimView?> postReferralClaim(ClaimRequest claimRequest,) async {
    final response = await postReferralClaimWithHttpInfo(claimRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClaimView',) as ClaimView;
    
    }
    return null;
  }
}
