//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class LicensingApi {
  LicensingApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Download resolves a release to its artifact, gated on a valid license.
  ///
  /// Download resolves a release to its artifact, gated on a valid license.  The gate is the LICENSE token, not the IAM bearer: being signed in is not permission to download a paid binary — holding a good license for it is. The token must verify against this deployment's public key, be unrevoked, be scoped to the release's app, and carry every feature the release requires. Present it as the `X-License-Token` header (preferred, since a header does not land in proxy logs) or as `?token=`.  The response pairs the artifact URL with its cosign signature so the client verifies the binary BEFORE trusting it: a signed URL alone proves where the bytes came from, not what they are. A yanked release is 410 Gone.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] release (required):
  ///
  /// * [String] xLicenseToken:
  ///
  /// * [String] token:
  Future<Response> getLicensingDownloadByReleaseWithHttpInfo(String release, { String? xLicenseToken, String? token, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/licensing/download/{release}'
      .replaceAll('{release}', release);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (token != null) {
      queryParams.addAll(_queryParams('', 'token', token));
    }

    if (xLicenseToken != null) {
      headerParams[r'X-License-Token'] = parameterToString(xLicenseToken);
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

  /// Download resolves a release to its artifact, gated on a valid license.
  ///
  /// Download resolves a release to its artifact, gated on a valid license.  The gate is the LICENSE token, not the IAM bearer: being signed in is not permission to download a paid binary — holding a good license for it is. The token must verify against this deployment's public key, be unrevoked, be scoped to the release's app, and carry every feature the release requires. Present it as the `X-License-Token` header (preferred, since a header does not land in proxy logs) or as `?token=`.  The response pairs the artifact URL with its cosign signature so the client verifies the binary BEFORE trusting it: a signed URL alone proves where the bytes came from, not what they are. A yanked release is 410 Gone.
  ///
  /// Parameters:
  ///
  /// * [String] release (required):
  ///
  /// * [String] xLicenseToken:
  ///
  /// * [String] token:
  Future<LicensingReleaseAsset?> getLicensingDownloadByRelease(String release, { String? xLicenseToken, String? token, }) async {
    final response = await getLicensingDownloadByReleaseWithHttpInfo(release,  xLicenseToken: xLicenseToken, token: token, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LicensingReleaseAsset',) as LicensingReleaseAsset;
    
    }
    return null;
  }

  /// Health reports which signer this deployment mints with, and in which env.
  ///
  /// Health reports which signer this deployment mints with, and in which env.  It answers 200 whenever the process is up: there is nothing downstream to probe, since the KMS is reached only when a token is actually minted. Its value is the `signer` field — `\"signer\":\"local\"` on a production host says that deployment is signing licenses with a development key, which is a misconfiguration worth paging on rather than a healthy 200.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getLicensingHealthzWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/licensing/healthz';

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

  /// Health reports which signer this deployment mints with, and in which env.
  ///
  /// Health reports which signer this deployment mints with, and in which env.  It answers 200 whenever the process is up: there is nothing downstream to probe, since the KMS is reached only when a token is actually minted. Its value is the `signer` field — `\"signer\":\"local\"` on a production host says that deployment is signing licenses with a development key, which is a misconfiguration worth paging on rather than a healthy 200.
  Future<LicensingHealthView?> getLicensingHealthz() async {
    final response = await getLicensingHealthzWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LicensingHealthView',) as LicensingHealthView;
    
    }
    return null;
  }

  /// Pubkey publishes the Ed25519 PUBLIC verification key, at both /pubkey and /jwks.
  ///
  /// Pubkey publishes the Ed25519 PUBLIC verification key, at both /pubkey and /jwks.  This is the only public-safe surface here and the reason the whole scheme works offline: the engine embeds or fetches this key once and then verifies every license itself, with no call home per launch. The private half never enters this process — it lives in the KMS — so nothing served here is a secret. `provider` names the KMS holding that half; `\"local\"` means a development key, and a token signed by one is not a production credential.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getLicensingJwksWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/licensing/jwks';

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

  /// Pubkey publishes the Ed25519 PUBLIC verification key, at both /pubkey and /jwks.
  ///
  /// Pubkey publishes the Ed25519 PUBLIC verification key, at both /pubkey and /jwks.  This is the only public-safe surface here and the reason the whole scheme works offline: the engine embeds or fetches this key once and then verifies every license itself, with no call home per launch. The private half never enters this process — it lives in the KMS — so nothing served here is a secret. `provider` names the KMS holding that half; `\"local\"` means a development key, and a token signed by one is not a production credential.
  Future<LicensingPubkeyView?> getLicensingJwks() async {
    final response = await getLicensingJwksWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LicensingPubkeyView',) as LicensingPubkeyView;
    
    }
    return null;
  }

  /// Pubkey publishes the Ed25519 PUBLIC verification key, at both /pubkey and /jwks.
  ///
  /// Pubkey publishes the Ed25519 PUBLIC verification key, at both /pubkey and /jwks.  This is the only public-safe surface here and the reason the whole scheme works offline: the engine embeds or fetches this key once and then verifies every license itself, with no call home per launch. The private half never enters this process — it lives in the KMS — so nothing served here is a secret. `provider` names the KMS holding that half; `\"local\"` means a development key, and a token signed by one is not a production credential.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getLicensingPubkeyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/licensing/pubkey';

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

  /// Pubkey publishes the Ed25519 PUBLIC verification key, at both /pubkey and /jwks.
  ///
  /// Pubkey publishes the Ed25519 PUBLIC verification key, at both /pubkey and /jwks.  This is the only public-safe surface here and the reason the whole scheme works offline: the engine embeds or fetches this key once and then verifies every license itself, with no call home per launch. The private half never enters this process — it lives in the KMS — so nothing served here is a secret. `provider` names the KMS holding that half; `\"local\"` means a development key, and a token signed by one is not a production credential.
  Future<LicensingPubkeyView?> getLicensingPubkey() async {
    final response = await getLicensingPubkeyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LicensingPubkeyView',) as LicensingPubkeyView;
    
    }
    return null;
  }

  /// Lists the signed binary releases this deployment can serve.
  ///
  /// Lists the signed binary releases this deployment can serve.  Metadata only, and no download URL: the artifact is behind GET /v1/licensing/download/{release}, which is gated on a valid license token. Knowing that a release exists is not permission to run it, which is why this list needs no license of its own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getLicensingReleasesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/licensing/releases';

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

  /// Lists the signed binary releases this deployment can serve.
  ///
  /// Lists the signed binary releases this deployment can serve.  Metadata only, and no download URL: the artifact is behind GET /v1/licensing/download/{release}, which is gated on a valid license token. Knowing that a release exists is not permission to run it, which is why this list needs no license of its own.
  Future<LicensingReleaseList?> getLicensingReleases() async {
    final response = await getLicensingReleasesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LicensingReleaseList',) as LicensingReleaseList;
    
    }
    return null;
  }

  /// Reads one release's metadata: its product, version, platform and the cosign material a client verifies the binary against.
  ///
  /// Reads one release's metadata: its product, version, platform and the cosign material a client verifies the binary against.  An unknown id is 404. Like the list, this is metadata only — the bytes are behind the license-gated download.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] release (required):
  Future<Response> getLicensingReleasesByReleaseWithHttpInfo(String release,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/licensing/releases/{release}'
      .replaceAll('{release}', release);

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

  /// Reads one release's metadata: its product, version, platform and the cosign material a client verifies the binary against.
  ///
  /// Reads one release's metadata: its product, version, platform and the cosign material a client verifies the binary against.  An unknown id is 404. Like the list, this is metadata only — the bytes are behind the license-gated download.
  ///
  /// Parameters:
  ///
  /// * [String] release (required):
  Future<LicensingRelease?> getLicensingReleasesByRelease(String release,) async {
    final response = await getLicensingReleasesByReleaseWithHttpInfo(release,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LicensingRelease',) as LicensingRelease;
    
    }
    return null;
  }

  /// Fingerprint turns raw device signals into the opaque value that binds a license to one machine.
  ///
  /// Fingerprint turns raw device signals into the opaque value that binds a license to one machine.  This is the anti-copy step: the value returned here is folded into the signed token, so a token minted with it runs only on the device it was bound to. The derivation is one-way and salted — the signals are never stored and never echoed back — so the response is safe to persist client-side and pass to issue. Signals too weak to identify a machine (a hostname alone) are refused rather than turned into a binding that would collide with other machines.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [LicensingFingerprintRequest] licensingFingerprintRequest (required):
  Future<Response> postLicensingFingerprintWithHttpInfo(LicensingFingerprintRequest licensingFingerprintRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/licensing/fingerprint';

    // ignore: prefer_final_locals
    Object? postBody = licensingFingerprintRequest;

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

  /// Fingerprint turns raw device signals into the opaque value that binds a license to one machine.
  ///
  /// Fingerprint turns raw device signals into the opaque value that binds a license to one machine.  This is the anti-copy step: the value returned here is folded into the signed token, so a token minted with it runs only on the device it was bound to. The derivation is one-way and salted — the signals are never stored and never echoed back — so the response is safe to persist client-side and pass to issue. Signals too weak to identify a machine (a hostname alone) are refused rather than turned into a binding that would collide with other machines.
  ///
  /// Parameters:
  ///
  /// * [LicensingFingerprintRequest] licensingFingerprintRequest (required):
  Future<LicensingFingerprintResponse?> postLicensingFingerprint(LicensingFingerprintRequest licensingFingerprintRequest,) async {
    final response = await postLicensingFingerprintWithHttpInfo(licensingFingerprintRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LicensingFingerprintResponse',) as LicensingFingerprintResponse;
    
    }
    return null;
  }

  /// Issue mints a signed license token for a product the caller's org already pays for.
  ///
  /// Issue mints a signed license token for a product the caller's org already pays for.  The order is the whole security argument: the caller is an IAM-validated principal, commerce is then asked whether that principal's ORG holds an ACTIVE entitlement for the product, and only then is a token signed — by the KMS, never by key material in this process. A product the org does not own answers 403 and no token. The signed features are the plan's features verbatim, so the engine enforces exactly what was bought, and the expiry is clamped to the entitlement's so a token cannot outlive the subscription that paid for it.  The token is the credential the engine runs on. Treat it as a secret.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [LicensingIssueRequest] licensingIssueRequest (required):
  Future<Response> postLicensingIssueWithHttpInfo(LicensingIssueRequest licensingIssueRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/licensing/issue';

    // ignore: prefer_final_locals
    Object? postBody = licensingIssueRequest;

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

  /// Issue mints a signed license token for a product the caller's org already pays for.
  ///
  /// Issue mints a signed license token for a product the caller's org already pays for.  The order is the whole security argument: the caller is an IAM-validated principal, commerce is then asked whether that principal's ORG holds an ACTIVE entitlement for the product, and only then is a token signed — by the KMS, never by key material in this process. A product the org does not own answers 403 and no token. The signed features are the plan's features verbatim, so the engine enforces exactly what was bought, and the expiry is clamped to the entitlement's so a token cannot outlive the subscription that paid for it.  The token is the credential the engine runs on. Treat it as a secret.
  ///
  /// Parameters:
  ///
  /// * [LicensingIssueRequest] licensingIssueRequest (required):
  Future<LicensingIssueResponse?> postLicensingIssue(LicensingIssueRequest licensingIssueRequest,) async {
    final response = await postLicensingIssueWithHttpInfo(licensingIssueRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LicensingIssueResponse',) as LicensingIssueResponse;
    
    }
    return null;
  }

  /// Publishes a signed binary release, answering 201 Created.
  ///
  /// Publishes a signed binary release, answering 201 Created.  Outside dev a release MUST carry its cosign signature: this is how a binary becomes downloadable, so accepting an unsigned one would let an unverifiable artifact into the distribution path. Org-admin only — publishing is an operator action, not something a licensee does.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [LicensingRelease] licensingRelease (required):
  Future<Response> postLicensingReleasesWithHttpInfo(LicensingRelease licensingRelease,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/licensing/releases';

    // ignore: prefer_final_locals
    Object? postBody = licensingRelease;

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

  /// Publishes a signed binary release, answering 201 Created.
  ///
  /// Publishes a signed binary release, answering 201 Created.  Outside dev a release MUST carry its cosign signature: this is how a binary becomes downloadable, so accepting an unsigned one would let an unverifiable artifact into the distribution path. Org-admin only — publishing is an operator action, not something a licensee does.
  ///
  /// Parameters:
  ///
  /// * [LicensingRelease] licensingRelease (required):
  Future<LicensingRelease?> postLicensingReleases(LicensingRelease licensingRelease,) async {
    final response = await postLicensingReleasesWithHttpInfo(licensingRelease,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LicensingRelease',) as LicensingRelease;
    
    }
    return null;
  }

  /// Revoke turns off tokens that have already been issued.
  ///
  /// Revoke turns off tokens that have already been issued.  A signed token cannot be un-signed, so revocation is the only way to withdraw one: this appends an entry that verify and the license-gated download both consult. It is a POST rather than a DELETE because it APPENDS a durable, attributed record — the entry names the admin who recorded it and when — rather than removing one.  Org-admin only. Scope it as narrowly as the incident allows: \"nonce\" for one leaked token, \"holder\" for one compromised account, \"fingerprint\" for one stolen machine, \"release\" when a whole build is bad.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [LicensingRevokeRequest] licensingRevokeRequest (required):
  Future<Response> postLicensingRevokeWithHttpInfo(LicensingRevokeRequest licensingRevokeRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/licensing/revoke';

    // ignore: prefer_final_locals
    Object? postBody = licensingRevokeRequest;

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

  /// Revoke turns off tokens that have already been issued.
  ///
  /// Revoke turns off tokens that have already been issued.  A signed token cannot be un-signed, so revocation is the only way to withdraw one: this appends an entry that verify and the license-gated download both consult. It is a POST rather than a DELETE because it APPENDS a durable, attributed record — the entry names the admin who recorded it and when — rather than removing one.  Org-admin only. Scope it as narrowly as the incident allows: \"nonce\" for one leaked token, \"holder\" for one compromised account, \"fingerprint\" for one stolen machine, \"release\" when a whole build is bad.
  ///
  /// Parameters:
  ///
  /// * [LicensingRevokeRequest] licensingRevokeRequest (required):
  Future<LicensingRevokeResponse?> postLicensingRevoke(LicensingRevokeRequest licensingRevokeRequest,) async {
    final response = await postLicensingRevokeWithHttpInfo(licensingRevokeRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LicensingRevokeResponse',) as LicensingRevokeResponse;
    
    }
    return null;
  }

  /// Verify checks a license token online: signature, schema, expiry, app_id and the revocation list.
  ///
  /// Verify checks a license token online: signature, schema, expiry, app_id and the revocation list.  It is UNAUTHENTICATED and always answers 200 — a bad token is `valid:false` with a reason rather than an error status, because \"is this token good\" is a question anyone may ask about a credential they already hold and the answer is the same either way. It is also OPTIONAL: the engine verifies OFFLINE against the published public key (GET /v1/licensing/pubkey) and needs this endpoint only to learn about revocation, so an outage here never stops a paid customer working.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [LicensingVerifyRequest] licensingVerifyRequest (required):
  Future<Response> postLicensingVerifyWithHttpInfo(LicensingVerifyRequest licensingVerifyRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/licensing/verify';

    // ignore: prefer_final_locals
    Object? postBody = licensingVerifyRequest;

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

  /// Verify checks a license token online: signature, schema, expiry, app_id and the revocation list.
  ///
  /// Verify checks a license token online: signature, schema, expiry, app_id and the revocation list.  It is UNAUTHENTICATED and always answers 200 — a bad token is `valid:false` with a reason rather than an error status, because \"is this token good\" is a question anyone may ask about a credential they already hold and the answer is the same either way. It is also OPTIONAL: the engine verifies OFFLINE against the published public key (GET /v1/licensing/pubkey) and needs this endpoint only to learn about revocation, so an outage here never stops a paid customer working.
  ///
  /// Parameters:
  ///
  /// * [LicensingVerifyRequest] licensingVerifyRequest (required):
  Future<LicensingVerifyResponse?> postLicensingVerify(LicensingVerifyRequest licensingVerifyRequest,) async {
    final response = await postLicensingVerifyWithHttpInfo(licensingVerifyRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LicensingVerifyResponse',) as LicensingVerifyResponse;
    
    }
    return null;
  }
}
