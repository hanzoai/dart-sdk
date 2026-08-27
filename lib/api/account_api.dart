//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class AccountApi {
  AccountApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Revokes the caller's own API key of the requested class.
  ///
  /// Revokes the caller's own API key of the requested class. The class is the same field mint takes — `?type=publishable`, defaulting to secret — so revoking the key that ships in a browser bundle does not sign its holder out of their own API: the other key keeps working.  Revoking is how a key is replaced when it does not need replacing; minting the same class again rotates it in one step. IAM drops the credential immediately, but the gateway caches keys for a few minutes, so a request that beat the cache expiry may still be served.  For callers written against the older shape, the class is also accepted in a JSON request body, read only when `?type=` is absent.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] type:
  ///   Type is the key class to act on: \"secret\" (sk-, session-equivalent, belongs on a server) or \"publishable\" (pk-, org-identifying, safe in a browser bundle). Omitted means secret, which is what every existing caller means.
  Future<Response> deleteAccountKeysWithHttpInfo({ String? type, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/account/keys';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
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

  /// Revokes the caller's own API key of the requested class.
  ///
  /// Revokes the caller's own API key of the requested class. The class is the same field mint takes — `?type=publishable`, defaulting to secret — so revoking the key that ships in a browser bundle does not sign its holder out of their own API: the other key keeps working.  Revoking is how a key is replaced when it does not need replacing; minting the same class again rotates it in one step. IAM drops the credential immediately, but the gateway caches keys for a few minutes, so a request that beat the cache expiry may still be served.  For callers written against the older shape, the class is also accepted in a JSON request body, read only when `?type=` is absent.
  ///
  /// Parameters:
  ///
  /// * [String] type:
  ///   Type is the key class to act on: \"secret\" (sk-, session-equivalent, belongs on a server) or \"publishable\" (pk-, org-identifying, safe in a browser bundle). Omitted means secret, which is what every existing caller means.
  Future<RevokedKey?> deleteAccountKeys({ String? type, }) async {
    final response = await deleteAccountKeysWithHttpInfo( type: type, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RevokedKey',) as RevokedKey;
    
    }
    return null;
  }

  /// Returns the signed-in caller's own appearance preference — text size, density and accent — read from their IAM account so it is the same on every device and every Hanzo surface.
  ///
  /// Returns the signed-in caller's own appearance preference — text size, density and accent — read from their IAM account so it is the same on every device and every Hanzo surface. An unset preference is an empty object.  A transient IAM read failure reports the empty preference rather than a 5xx, so a surface applies its published default and never error-toasts on load — the same fail-soft the key read uses.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAccountAppearanceWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/account/appearance';

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

  /// Returns the signed-in caller's own appearance preference — text size, density and accent — read from their IAM account so it is the same on every device and every Hanzo surface.
  ///
  /// Returns the signed-in caller's own appearance preference — text size, density and accent — read from their IAM account so it is the same on every device and every Hanzo surface. An unset preference is an empty object.  A transient IAM read failure reports the empty preference rather than a 5xx, so a surface applies its published default and never error-toasts on load — the same fail-soft the key read uses.
  Future<Appearance?> getAccountAppearance() async {
    final response = await getAccountAppearanceWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Appearance',) as Appearance;
    
    }
    return null;
  }

  /// Fetch a profile photo
  ///
  /// Streams a profile photo's raw BYTES. This is the address stored on the user's IAM record and rendered directly by an `<img>`, so it takes no credentials — the 64-hex content digest in the path is the capability, and it can only be produced by someone who already has the image.  The Content-Type is derived from the stored bytes and the response carries nosniff, so only a real raster image is ever served and only under its true type. Anything else — a miss, a malformed path, an object that is not an image — is one 404, and a hit caches for a year because the address is the content.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] user (required):
  ///
  /// * [String] digest (required):
  Future<Response> getAccountAvatarByOrgByUserByDigestWithHttpInfo(String org, String user, String digest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/account/avatar/{org}/{user}/{digest}'
      .replaceAll('{org}', org)
      .replaceAll('{user}', user)
      .replaceAll('{digest}', digest);

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

  /// Fetch a profile photo
  ///
  /// Streams a profile photo's raw BYTES. This is the address stored on the user's IAM record and rendered directly by an `<img>`, so it takes no credentials — the 64-hex content digest in the path is the capability, and it can only be produced by someone who already has the image.  The Content-Type is derived from the stored bytes and the response carries nosniff, so only a real raster image is ever served and only under its true type. Anything else — a miss, a malformed path, an object that is not an image — is one 404, and a hit caches for a year because the address is the content.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] user (required):
  ///
  /// * [String] digest (required):
  Future<void> getAccountAvatarByOrgByUserByDigest(String org, String user, String digest,) async {
    final response = await getAccountAvatarByOrgByUserByDigestWithHttpInfo(org, user, digest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// IssueCSRFToken mints the anti-forgery token a browser echoes as X-CSRF-Token on every change it asks for.
  ///
  /// IssueCSRFToken mints the anti-forgery token a browser echoes as X-CSRF-Token on every change it asks for. The token is bound to the caller's validated identity and expires, so one minted for one identity cannot authorize a change as another.  It is answered no-store, so it is never cached by a shared proxy. This is the same-origin endpoint the embedded console reads — the Same-Origin Policy is what stops a cross-site page from reading the response and forging a change.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAccountCsrfWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/account/csrf';

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

  /// IssueCSRFToken mints the anti-forgery token a browser echoes as X-CSRF-Token on every change it asks for.
  ///
  /// IssueCSRFToken mints the anti-forgery token a browser echoes as X-CSRF-Token on every change it asks for. The token is bound to the caller's validated identity and expires, so one minted for one identity cannot authorize a change as another.  It is answered no-store, so it is never cached by a shared proxy. This is the same-origin endpoint the embedded console reads — the Same-Origin Policy is what stops a cross-site page from reading the response and forging a change.
  Future<CsrfResp?> getAccountCsrf() async {
    final response = await getAccountCsrfWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CsrfResp',) as CsrfResp;
    
    }
    return null;
  }

  /// Reports whether one of this brand's shared embedded apps (cms, erp, help) may be framed by the caller and is actually running, so a console module can choose between the embed and the provision panel.
  ///
  /// Reports whether one of this brand's shared embedded apps (cms, erp, help) may be framed by the caller and is actually running, so a console module can choose between the embed and the provision panel.  It answers two questions the browser cannot answer for itself. ENTITLEMENT is server-authoritative: each app is a single shared per-BRAND instance, so only a member of the owning brand org — or a SuperAdmin — is given the embed URL; every other caller gets phase \"not-entitled\" and no URL. REACHABILITY is a probe of that origin, which a cross-origin page cannot read for itself.  The probed host is always <app>.<this deployment's own brand domain>: no part of it comes from the request, so this can never be steered into probing an arbitrary origin.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] app:
  ///   App is the embedded app to report on: cms (Content Studio), erp or help.
  Future<Response> getAccountEmbedWithHttpInfo({ String? app, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/account/embed';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (app != null) {
      queryParams.addAll(_queryParams('', 'app', app));
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

  /// Reports whether one of this brand's shared embedded apps (cms, erp, help) may be framed by the caller and is actually running, so a console module can choose between the embed and the provision panel.
  ///
  /// Reports whether one of this brand's shared embedded apps (cms, erp, help) may be framed by the caller and is actually running, so a console module can choose between the embed and the provision panel.  It answers two questions the browser cannot answer for itself. ENTITLEMENT is server-authoritative: each app is a single shared per-BRAND instance, so only a member of the owning brand org — or a SuperAdmin — is given the embed URL; every other caller gets phase \"not-entitled\" and no URL. REACHABILITY is a probe of that origin, which a cross-origin page cannot read for itself.  The probed host is always <app>.<this deployment's own brand domain>: no part of it comes from the request, so this can never be steered into probing an arbitrary origin.
  ///
  /// Parameters:
  ///
  /// * [String] app:
  ///   App is the embedded app to report on: cms (Content Studio), erp or help.
  Future<EmbedStatusResp?> getAccountEmbed({ String? app, }) async {
    final response = await getAccountEmbedWithHttpInfo( app: app, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmbedStatusResp',) as EmbedStatusResp;
    
    }
    return null;
  }

  /// Returns the caller's own API keys — every type they hold, read AUTHORITATIVELY from IAM rather than from the session claim, which lags a key minted moments ago.
  ///
  /// Returns the caller's own API keys — every type they hold, read AUTHORITATIVELY from IAM rather than from the session claim, which lags a key minted moments ago. No secret material comes back: a secret key is represented by its prefix, and only a publishable key (public by construction) carries its full value.  A transient IAM read failure reports an empty set rather than a 5xx, so the page shows the honest empty state and never a fabricated key.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAccountKeysWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/account/keys';

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

  /// Returns the caller's own API keys — every type they hold, read AUTHORITATIVELY from IAM rather than from the session claim, which lags a key minted moments ago.
  ///
  /// Returns the caller's own API keys — every type they hold, read AUTHORITATIVELY from IAM rather than from the session claim, which lags a key minted moments ago. No secret material comes back: a secret key is represented by its prefix, and only a publishable key (public by construction) carries its full value.  A transient IAM read failure reports an empty set rather than a 5xx, so the page shows the honest empty state and never a fabricated key.
  Future<ApiKeyList?> getAccountKeys() async {
    final response = await getAccountKeysWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApiKeyList',) as ApiKeyList;
    
    }
    return null;
  }

  /// Stores the caller's appearance preference on their IAM account, preserving every other field of the row.
  ///
  /// Stores the caller's appearance preference on their IAM account, preserving every other field of the row. The accent is validated as a real colour token before it is stored; an unset or invalid axis is dropped rather than stored.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Appearance] appearance (required):
  Future<Response> postAccountAppearanceWithHttpInfo(Appearance appearance,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/account/appearance';

    // ignore: prefer_final_locals
    Object? postBody = appearance;

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

  /// Stores the caller's appearance preference on their IAM account, preserving every other field of the row.
  ///
  /// Stores the caller's appearance preference on their IAM account, preserving every other field of the row. The accent is validated as a real colour token before it is stored; an unset or invalid axis is dropped rather than stored.
  ///
  /// Parameters:
  ///
  /// * [Appearance] appearance (required):
  Future<Appearance?> postAccountAppearance(Appearance appearance,) async {
    final response = await postAccountAppearanceWithHttpInfo(appearance,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Appearance',) as Appearance;
    
    }
    return null;
  }

  /// Set your profile photo
  ///
  /// Stores one image as the signed-in user's profile photo and answers the URL it is served from, which is also written to the user's IAM record — so every surface that already renders `avatar` picks it up with no further call.  The body is a multipart form with a `file` part. The format is decided by the BYTES, never the filename or the part's Content-Type: png, jpeg, gif and webp are accepted and everything else is refused with 415, so an SVG cannot be stored as a picture and later served as a program. Over 8 MiB is 413; empty is 400.  The photo is addressed by the sha256 of its bytes, so setting a new one yields a new URL rather than a stale cache of the old face. The caller is taken from the validated identity ONLY — there is no way to name a different subject — so this always sets your own photo, and a caller with no organization yet is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAccountAvatarWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/account/avatar';

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

  /// Set your profile photo
  ///
  /// Stores one image as the signed-in user's profile photo and answers the URL it is served from, which is also written to the user's IAM record — so every surface that already renders `avatar` picks it up with no further call.  The body is a multipart form with a `file` part. The format is decided by the BYTES, never the filename or the part's Content-Type: png, jpeg, gif and webp are accepted and everything else is refused with 415, so an SVG cannot be stored as a picture and later served as a program. Over 8 MiB is 413; empty is 400.  The photo is addressed by the sha256 of its bytes, so setting a new one yields a new URL rather than a stale cache of the old face. The caller is taken from the validated identity ONLY — there is no way to name a different subject — so this always sets your own photo, and a caller with no organization yet is refused.
  Future<void> postAccountAvatar() async {
    final response = await postAccountAvatarWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Creates — or rotates — the caller's API key of the requested type and returns it ONCE.
  ///
  /// Creates — or rotates — the caller's API key of the requested type and returns it ONCE. A real IAM failure surfaces as 502, never a fabricated key.  Rotating is what creating means here: a user holds one key per type, so the endpoint is idempotent by (caller, type) and the superseded credential stops working. Two live secrets for one user would make \"revoke my key\" a lie.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [KeyTypeIn] keyTypeIn (required):
  Future<Response> postAccountKeysWithHttpInfo(KeyTypeIn keyTypeIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/account/keys';

    // ignore: prefer_final_locals
    Object? postBody = keyTypeIn;

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

  /// Creates — or rotates — the caller's API key of the requested type and returns it ONCE.
  ///
  /// Creates — or rotates — the caller's API key of the requested type and returns it ONCE. A real IAM failure surfaces as 502, never a fabricated key.  Rotating is what creating means here: a user holds one key per type, so the endpoint is idempotent by (caller, type) and the superseded credential stops working. Two live secrets for one user would make \"revoke my key\" a lie.
  ///
  /// Parameters:
  ///
  /// * [KeyTypeIn] keyTypeIn (required):
  Future<MintedKey?> postAccountKeys(KeyTypeIn keyTypeIn,) async {
    final response = await postAccountKeysWithHttpInfo(keyTypeIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MintedKey',) as MintedKey;
    
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
  Future<Response> postAccountOrgsWithHttpInfo(OnboardReq onboardReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/account/orgs';

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
  Future<OnboardResp?> postAccountOrgs(OnboardReq onboardReq,) async {
    final response = await postAccountOrgsWithHttpInfo(onboardReq,);
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
}
