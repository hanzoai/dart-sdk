//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class KmsApi {
  KmsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns the runtime configuration for the KMS console.
  ///
  /// Returns the runtime configuration for the KMS console.  What the console needs before anyone has signed in: the brand, the OIDC issuer it authenticates against, the API base for this subsystem and the path of the login exchange.  Public on purpose, and it holds nothing sensitive — it is deliberately kept under this subsystem's own namespace rather than under an admin prefix, so a gateway that admin-gates the admin routes cannot break the console's legitimate pre-login fetch.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getKmsConfigWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/kms/config';

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

  /// Returns the runtime configuration for the KMS console.
  ///
  /// Returns the runtime configuration for the KMS console.  What the console needs before anyone has signed in: the brand, the OIDC issuer it authenticates against, the API base for this subsystem and the path of the login exchange.  Public on purpose, and it holds nothing sensitive — it is deliberately kept under this subsystem's own namespace rather than under an admin prefix, so a gateway that admin-gates the admin routes cannot break the console's legitimate pre-login fetch.
  Future<KmsConfig?> getKmsConfig() async {
    final response = await getKmsConfigWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KmsConfig',) as KmsConfig;
    
    }
    return null;
  }

  /// Reports whether this broker can actually serve secrets.
  ///
  /// Reports whether this broker can actually serve secrets.  A real readiness probe, not a liveness stub: 200 only when the store is open AND a master key is configured, with `signing` reporting whether signing keys are set up too. Anything less answers 503 with `ready:false` and the reason — no in-process store, or no master key — which are exactly the two states in which the secret operations refuse.  Not token-gated, because the platform must be able to probe it without a credential. It reports the broker's configuration state only; no secret, no key material and no tenant name appears in it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getKmsHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/kms/health';

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

  /// Reports whether this broker can actually serve secrets.
  ///
  /// Reports whether this broker can actually serve secrets.  A real readiness probe, not a liveness stub: 200 only when the store is open AND a master key is configured, with `signing` reporting whether signing keys are set up too. Anything less answers 503 with `ready:false` and the reason — no in-process store, or no master key — which are exactly the two states in which the secret operations refuse.  Not token-gated, because the platform must be able to probe it without a credential. It reports the broker's configuration state only; no secret, no key material and no tenant name appears in it.
  Future<KmsHealth?> getKmsHealth() async {
    final response = await getKmsHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KmsHealth',) as KmsHealth;
    
    }
    return null;
  }

  /// Lists the secrets your org holds, without their values.
  ///
  /// Lists the secrets your org holds, without their values.  Returns the METADATA of the caller's own secrets: each one's name, path, environment and sealing scheme. No value and no ciphertext is included — this operation exists to enumerate what is held, and reading a value is a separate, per-secret call.  Scoped to the caller's own org and nothing else, structurally: there is no org in the path, the store root is derived from the validated org claim, and a caller therefore has no way to name another tenant's namespace. `path` narrows to a subpath and `env` selects the environment; both are also accepted under the operator's spellings, `secretPath` and `environment`. An omitted `env` means every environment and an omitted `path` means the whole org, because a default here reported a populated store as empty.  Admission is fail-closed and in order: a validated member, an org that is a DNS-1123 label, and a store holding a master key — 403, 400 and 503 respectively, all decided before any record is touched.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] env:
  ///
  /// * [String] environment:
  ///
  /// * [String] pathParam:
  ///
  /// * [String] secretPath:
  Future<Response> getKmsSecretsWithHttpInfo({ String? env, String? environment, String? pathParam, String? secretPath, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/kms/secrets';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (env != null) {
      queryParams.addAll(_queryParams('', 'env', env));
    }
    if (environment != null) {
      queryParams.addAll(_queryParams('', 'environment', environment));
    }
    if (pathParam != null) {
      queryParams.addAll(_queryParams('', 'path', pathParam));
    }
    if (secretPath != null) {
      queryParams.addAll(_queryParams('', 'secretPath', secretPath));
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

  /// Lists the secrets your org holds, without their values.
  ///
  /// Lists the secrets your org holds, without their values.  Returns the METADATA of the caller's own secrets: each one's name, path, environment and sealing scheme. No value and no ciphertext is included — this operation exists to enumerate what is held, and reading a value is a separate, per-secret call.  Scoped to the caller's own org and nothing else, structurally: there is no org in the path, the store root is derived from the validated org claim, and a caller therefore has no way to name another tenant's namespace. `path` narrows to a subpath and `env` selects the environment; both are also accepted under the operator's spellings, `secretPath` and `environment`. An omitted `env` means every environment and an omitted `path` means the whole org, because a default here reported a populated store as empty.  Admission is fail-closed and in order: a validated member, an org that is a DNS-1123 label, and a store holding a master key — 403, 400 and 503 respectively, all decided before any record is touched.
  ///
  /// Parameters:
  ///
  /// * [String] env:
  ///
  /// * [String] environment:
  ///
  /// * [String] pathParam:
  ///
  /// * [String] secretPath:
  Future<KmsSecrets?> getKmsSecrets({ String? env, String? environment, String? pathParam, String? secretPath, }) async {
    final response = await getKmsSecretsWithHttpInfo( env: env, environment: environment, pathParam: pathParam, secretPath: secretPath, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KmsSecrets',) as KmsSecrets;
    
    }
    return null;
  }

  /// Exchanges a machine credential for an IAM bearer token.
  ///
  /// Exchanges a machine credential for an IAM bearer token.  Takes a tenant's machine credential — a client id and client secret — and returns an owner-scoped IAM access token with its lifetime, which is the bearer the caller then carries on the org-scoped secret operations.  It is deliberately public and unauthenticated, because it IS the credential exchange and runs before any principal exists. That makes it the one route in this subsystem rate-limited PER SOURCE IP, keyed on the real TCP peer rather than on any caller-supplied header, and body-capped at the same door.  The submitted secret is never logged and never echoed, and failures collapse to one clean status with no upstream detail: 401 when the credential does not authenticate, 502 when the identity provider is unreachable, 503 when no issuer is configured. That is on purpose — a richer error would be a validity oracle for guessed credentials.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [KmsLogin] kmsLogin (required):
  Future<Response> postKmsAuthLoginWithHttpInfo(KmsLogin kmsLogin,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/kms/auth/login';

    // ignore: prefer_final_locals
    Object? postBody = kmsLogin;

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

  /// Exchanges a machine credential for an IAM bearer token.
  ///
  /// Exchanges a machine credential for an IAM bearer token.  Takes a tenant's machine credential — a client id and client secret — and returns an owner-scoped IAM access token with its lifetime, which is the bearer the caller then carries on the org-scoped secret operations.  It is deliberately public and unauthenticated, because it IS the credential exchange and runs before any principal exists. That makes it the one route in this subsystem rate-limited PER SOURCE IP, keyed on the real TCP peer rather than on any caller-supplied header, and body-capped at the same door.  The submitted secret is never logged and never echoed, and failures collapse to one clean status with no upstream detail: 401 when the credential does not authenticate, 502 when the identity provider is unreachable, 503 when no issuer is configured. That is on purpose — a richer error would be a validity oracle for guessed credentials.
  ///
  /// Parameters:
  ///
  /// * [KmsLogin] kmsLogin (required):
  Future<KmsToken?> postKmsAuthLogin(KmsLogin kmsLogin,) async {
    final response = await postKmsAuthLoginWithHttpInfo(kmsLogin,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KmsToken',) as KmsToken;
    
    }
    return null;
  }

  /// Stores or replaces one secret in your org.
  ///
  /// Stores or replaces one secret in your org.  Upserts one secret under the caller's own org. The value is sealed before it is written — a fresh per-secret data key, itself wrapped by the master key — so plaintext never reaches disk. The receipt confirms the name and environment that were written and does not echo the value.  `env` is REQUIRED on a write and has no default, which is the rule most easily got wrong here: reads and deletes still fall back to the default environment for older callers, but a write must not, because the environment is part of the storage key. A silently defaulted write lands in a bucket the readers that resolve project, environment and path never look in, and the stale value keeps being served — so the write fails loudly instead.  `name` is required, `path` is an optional subpath beneath the org root, and the org is taken from the validated claim rather than the body.  Requires ADMIN authority over the org — a member reads, an admin writes. A machine credential holds no membership and so is never an org admin: it can read the secrets it was issued for and cannot replace one. Fail-closed admission, in order: admin of the org, well-formed org, master key present — 403, 400 and 503, all decided before any record is touched.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [KmsPut] kmsPut (required):
  Future<Response> postKmsSecretsWithHttpInfo(KmsPut kmsPut,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/kms/secrets';

    // ignore: prefer_final_locals
    Object? postBody = kmsPut;

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

  /// Stores or replaces one secret in your org.
  ///
  /// Stores or replaces one secret in your org.  Upserts one secret under the caller's own org. The value is sealed before it is written — a fresh per-secret data key, itself wrapped by the master key — so plaintext never reaches disk. The receipt confirms the name and environment that were written and does not echo the value.  `env` is REQUIRED on a write and has no default, which is the rule most easily got wrong here: reads and deletes still fall back to the default environment for older callers, but a write must not, because the environment is part of the storage key. A silently defaulted write lands in a bucket the readers that resolve project, environment and path never look in, and the stale value keeps being served — so the write fails loudly instead.  `name` is required, `path` is an optional subpath beneath the org root, and the org is taken from the validated claim rather than the body.  Requires ADMIN authority over the org — a member reads, an admin writes. A machine credential holds no membership and so is never an org admin: it can read the secrets it was issued for and cannot replace one. Fail-closed admission, in order: admin of the org, well-formed org, master key present — 403, 400 and 503, all decided before any record is touched.
  ///
  /// Parameters:
  ///
  /// * [KmsPut] kmsPut (required):
  Future<KmsStored?> postKmsSecrets(KmsPut kmsPut,) async {
    final response = await postKmsSecretsWithHttpInfo(kmsPut,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KmsStored',) as KmsStored;
    
    }
    return null;
  }
}
