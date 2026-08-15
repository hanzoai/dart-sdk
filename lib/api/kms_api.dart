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

  /// Delete one secret from your org
  ///
  /// Removes one secret from the caller's own org and confirms the name and environment that were removed. Deleting a secret that is not there is a 404, not a silent success, so a caller can tell a real deletion from a typo.  The trailing path is the secret's subpath and name beneath the caller's org root, and `env` selects the environment, defaulting when omitted. Scoped to the caller's own org — the store root comes from the validated claim, never from the request.  Requires ADMIN authority over the org, like the write: destroying a secret is an administrative act, and a credential distributed to read one must not be able to remove it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> deleteKmsSecretsByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/kms/secrets/{wildcard1}'
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

  /// Delete one secret from your org
  ///
  /// Removes one secret from the caller's own org and confirms the name and environment that were removed. Deleting a secret that is not there is a 404, not a silent success, so a caller can tell a real deletion from a typo.  The trailing path is the secret's subpath and name beneath the caller's org root, and `env` selects the environment, defaulting when omitted. Scoped to the caller's own org — the store root comes from the validated claim, never from the request.  Requires ADMIN authority over the org, like the write: destroying a secret is an administrative act, and a credential distributed to read one must not be able to remove it.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> deleteKmsSecretsByWildcard1(String wildcard1,) async {
    final response = await deleteKmsSecretsByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Runtime configuration for the KMS console
  ///
  /// Returns what the console needs before anyone has signed in: the brand, the OIDC issuer it authenticates against, the API base for this subsystem and the path of the login exchange.  Public on purpose, and it holds nothing sensitive — it is deliberately kept under this subsystem's own namespace rather than under an admin prefix, so a gateway that admin-gates the admin routes cannot break the console's legitimate pre-login fetch.
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

  /// Runtime configuration for the KMS console
  ///
  /// Returns what the console needs before anyone has signed in: the brand, the OIDC issuer it authenticates against, the API base for this subsystem and the path of the login exchange.  Public on purpose, and it holds nothing sensitive — it is deliberately kept under this subsystem's own namespace rather than under an admin prefix, so a gateway that admin-gates the admin routes cannot break the console's legitimate pre-login fetch.
  Future<void> getKmsConfig() async {
    final response = await getKmsConfigWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Whether this broker can actually serve secrets
  ///
  /// A real readiness probe, not a liveness stub: 200 only when the store is open AND a master key is configured, with `signing` reporting whether signing keys are set up too. Anything less answers 503 with `ready:false` and the reason — no in-process store, or no master key — which are exactly the two states in which the secret operations refuse.  Not token-gated, because the platform must be able to probe it without a credential. It reports the broker's configuration state only; no secret, no key material and no tenant name appears in it.
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

  /// Whether this broker can actually serve secrets
  ///
  /// A real readiness probe, not a liveness stub: 200 only when the store is open AND a master key is configured, with `signing` reporting whether signing keys are set up too. Anything less answers 503 with `ready:false` and the reason — no in-process store, or no master key — which are exactly the two states in which the secret operations refuse.  Not token-gated, because the platform must be able to probe it without a credential. It reports the broker's configuration state only; no secret, no key material and no tenant name appears in it.
  Future<void> getKmsHealth() async {
    final response = await getKmsHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List the secrets your org holds, without their values
  ///
  /// Returns the METADATA of the caller's own secrets: each one's name, path, environment and sealing scheme. No value and no ciphertext is included — this operation exists to enumerate what is held, and reading a value is a separate, per-secret call.  Scoped to the caller's own org and nothing else, structurally: there is no org in the path, the store root is derived from the validated org claim, and a caller therefore has no way to name another tenant's namespace. `path` narrows to a subpath and `env` selects the environment; both are also accepted under the operator's spellings, `secretPath` and `environment`.  Admission is fail-closed and in order: a validated member, an org that is a DNS-1123 label, and a store holding a master key — 403, 400 and 503 respectively, all decided before any record is touched.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getKmsSecretsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/kms/secrets';

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

  /// List the secrets your org holds, without their values
  ///
  /// Returns the METADATA of the caller's own secrets: each one's name, path, environment and sealing scheme. No value and no ciphertext is included — this operation exists to enumerate what is held, and reading a value is a separate, per-secret call.  Scoped to the caller's own org and nothing else, structurally: there is no org in the path, the store root is derived from the validated org claim, and a caller therefore has no way to name another tenant's namespace. `path` narrows to a subpath and `env` selects the environment; both are also accepted under the operator's spellings, `secretPath` and `environment`.  Admission is fail-closed and in order: a validated member, an org that is a DNS-1123 label, and a store holding a master key — 403, 400 and 503 respectively, all decided before any record is touched.
  Future<void> getKmsSecrets() async {
    final response = await getKmsSecretsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Read one secret's value
  ///
  /// Opens one sealed secret belonging to the caller's own org and returns its value in the response body, with the name and environment it was resolved under. This is the broker's purpose, and the response body is the ONLY place the value appears — it is not logged, and it is never carried in an error.  The trailing path is the secret's subpath and name beneath the caller's org root; `env` selects the environment and falls back to the default when omitted. A secret that is not there is a plain 404 that names nothing about the store.  Scoped to the caller's own org and nothing else: there is no org in the path, so another tenant's secret is not merely refused, it is unnameable. Admission is fail-closed — validated member, well-formed org, master key present — and an unconfigured master key is 503 rather than an empty read.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> getKmsSecretsByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/kms/secrets/{wildcard1}'
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

  /// Read one secret's value
  ///
  /// Opens one sealed secret belonging to the caller's own org and returns its value in the response body, with the name and environment it was resolved under. This is the broker's purpose, and the response body is the ONLY place the value appears — it is not logged, and it is never carried in an error.  The trailing path is the secret's subpath and name beneath the caller's org root; `env` selects the environment and falls back to the default when omitted. A secret that is not there is a plain 404 that names nothing about the store.  Scoped to the caller's own org and nothing else: there is no org in the path, so another tenant's secret is not merely refused, it is unnameable. Admission is fail-closed — validated member, well-formed org, master key present — and an unconfigured master key is 503 rather than an empty read.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> getKmsSecretsByWildcard1(String wildcard1,) async {
    final response = await getKmsSecretsByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Exchange a machine credential for an IAM bearer token
  ///
  /// Takes a tenant's machine credential — a client id and client secret — and returns an owner-scoped IAM access token with its lifetime, which is the bearer the caller then carries on the org-scoped secret operations.  It is deliberately public and unauthenticated, because it IS the credential exchange and runs before any principal exists. That makes it the one route in this subsystem rate-limited PER SOURCE IP, keyed on the real TCP peer rather than on any caller-supplied header.  The submitted secret is never logged and never echoed, and failures collapse to one clean status with no upstream detail: 401 when the credential does not authenticate, 502 when the identity provider is unreachable, 503 when no issuer is configured. That is on purpose — a richer error would be a validity oracle for guessed credentials.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postKmsAuthLoginWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/kms/auth/login';

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

  /// Exchange a machine credential for an IAM bearer token
  ///
  /// Takes a tenant's machine credential — a client id and client secret — and returns an owner-scoped IAM access token with its lifetime, which is the bearer the caller then carries on the org-scoped secret operations.  It is deliberately public and unauthenticated, because it IS the credential exchange and runs before any principal exists. That makes it the one route in this subsystem rate-limited PER SOURCE IP, keyed on the real TCP peer rather than on any caller-supplied header.  The submitted secret is never logged and never echoed, and failures collapse to one clean status with no upstream detail: 401 when the credential does not authenticate, 502 when the identity provider is unreachable, 503 when no issuer is configured. That is on purpose — a richer error would be a validity oracle for guessed credentials.
  Future<void> postKmsAuthLogin() async {
    final response = await postKmsAuthLoginWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Store or replace one secret in your org
  ///
  /// Upserts one secret under the caller's own org. The value is sealed before it is written — a fresh per-secret data key, itself wrapped by the master key — so plaintext never reaches disk. The receipt confirms the name and environment that were written and does not echo the value.  `env` is REQUIRED on a write and has no default, which is the rule most easily got wrong here: reads and deletes still fall back to the default environment for older callers, but a write must not, because the environment is part of the storage key. A silently defaulted write lands in a bucket the readers that resolve project, environment and path never look in, and the stale value keeps being served — so the write fails loudly instead.  `name` is required, `path` is an optional subpath beneath the org root, and the org is taken from the validated claim rather than the body.  Requires ADMIN authority over the org — a member reads, an admin writes. A machine credential holds no membership and so is never an org admin: it can read the secrets it was issued for and cannot replace one. Fail-closed admission, in order: admin of the org, well-formed org, master key present — 403, 400 and 503, all decided before any record is touched.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postKmsSecretsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/kms/secrets';

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

  /// Store or replace one secret in your org
  ///
  /// Upserts one secret under the caller's own org. The value is sealed before it is written — a fresh per-secret data key, itself wrapped by the master key — so plaintext never reaches disk. The receipt confirms the name and environment that were written and does not echo the value.  `env` is REQUIRED on a write and has no default, which is the rule most easily got wrong here: reads and deletes still fall back to the default environment for older callers, but a write must not, because the environment is part of the storage key. A silently defaulted write lands in a bucket the readers that resolve project, environment and path never look in, and the stale value keeps being served — so the write fails loudly instead.  `name` is required, `path` is an optional subpath beneath the org root, and the org is taken from the validated claim rather than the body.  Requires ADMIN authority over the org — a member reads, an admin writes. A machine credential holds no membership and so is never an org admin: it can read the secrets it was issued for and cannot replace one. Fail-closed admission, in order: admin of the org, well-formed org, master key present — 403, 400 and 503, all decided before any record is touched.
  Future<void> postKmsSecrets() async {
    final response = await postKmsSecretsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
