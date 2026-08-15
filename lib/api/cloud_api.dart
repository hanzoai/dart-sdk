//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class CloudApi {
  CloudApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Forgets one linked cloud account: it detaches every fleet cluster THIS account folded (its own names, in its own shard — a neighbour's cluster of the same name is untouched), deletes the sealed credential, and drops the index row.
  ///
  /// Forgets one linked cloud account: it detaches every fleet cluster THIS account folded (its own names, in its own shard — a neighbour's cluster of the same name is untouched), deletes the sealed credential, and drops the index row.  It is idempotent and deliberately not an existence oracle: an account this org does not hold answers exactly the same as one it just removed. A cluster that fails to detach is logged and the unlink continues, so a dead provider cannot strand a credential. Requires org admin.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the cloud the account belongs to: digitalocean, aws, gcp or azure. An unknown provider is not found.
  ///
  /// * [String] label (required):
  ///   Label is the org-chosen name of the account within that provider. Empty means \"default\"; anything outside 1–64 of [A-Za-z0-9._-] is refused.
  Future<Response> deleteCloudByProviderAccountsByLabelWithHttpInfo(String provider, String label,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloud/{provider}/accounts/{label}'
      .replaceAll('{provider}', provider)
      .replaceAll('{label}', label);

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

  /// Forgets one linked cloud account: it detaches every fleet cluster THIS account folded (its own names, in its own shard — a neighbour's cluster of the same name is untouched), deletes the sealed credential, and drops the index row.
  ///
  /// Forgets one linked cloud account: it detaches every fleet cluster THIS account folded (its own names, in its own shard — a neighbour's cluster of the same name is untouched), deletes the sealed credential, and drops the index row.  It is idempotent and deliberately not an existence oracle: an account this org does not hold answers exactly the same as one it just removed. A cluster that fails to detach is logged and the unlink continues, so a dead provider cannot strand a credential. Requires org admin.
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the cloud the account belongs to: digitalocean, aws, gcp or azure. An unknown provider is not found.
  ///
  /// * [String] label (required):
  ///   Label is the org-chosen name of the account within that provider. Empty means \"default\"; anything outside 1–64 of [A-Za-z0-9._-] is refused.
  Future<UnlinkedView?> deleteCloudByProviderAccountsByLabel(String provider, String label,) async {
    final response = await deleteCloudByProviderAccountsByLabelWithHttpInfo(provider, label,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UnlinkedView',) as UnlinkedView;
    
    }
    return null;
  }

  /// Returns the clouds this deployment can link and what linking each one needs — the DigitalOcean token, the AWS role and external id, the GCP credential JSON, the Azure app — plus whether the provider can be linked without storing any long-lived secret.
  ///
  /// Returns the clouds this deployment can link and what linking each one needs — the DigitalOcean token, the AWS role and external id, the GCP credential JSON, the Azure app — plus whether the provider can be linked without storing any long-lived secret. It is the catalog a \"connect a cloud\" screen renders; it reports no account and no credential.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCloudWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloud';

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

  /// Returns the clouds this deployment can link and what linking each one needs — the DigitalOcean token, the AWS role and external id, the GCP credential JSON, the Azure app — plus whether the provider can be linked without storing any long-lived secret.
  ///
  /// Returns the clouds this deployment can link and what linking each one needs — the DigitalOcean token, the AWS role and external id, the GCP credential JSON, the Azure app — plus whether the provider can be linked without storing any long-lived secret. It is the catalog a \"connect a cloud\" screen renders; it reports no account and no credential.
  Future<ProvidersView?> getCloud() async {
    final response = await getCloudWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProvidersView',) as ProvidersView;
    
    }
    return null;
  }

  /// Lists the caller org's linked cloud accounts across every provider: which account each one is at the provider, which fleet clusters it folded, and when it was last discovered.
  ///
  /// Lists the caller org's linked cloud accounts across every provider: which account each one is at the provider, which fleet clusters it folded, and when it was last discovered. Metadata only — a sealed credential never appears in a response. Another org's accounts are not visible and not countable.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCloudAccountsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloud/accounts';

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

  /// Lists the caller org's linked cloud accounts across every provider: which account each one is at the provider, which fleet clusters it folded, and when it was last discovered.
  ///
  /// Lists the caller org's linked cloud accounts across every provider: which account each one is at the provider, which fleet clusters it folded, and when it was last discovered. Metadata only — a sealed credential never appears in a response. Another org's accounts are not visible and not countable.
  Future<CloudAccountsView?> getCloudAccounts() async {
    final response = await getCloudAccountsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CloudAccountsView',) as CloudAccountsView;
    
    }
    return null;
  }

  /// Links one of the caller org's cloud accounts and folds the Kubernetes clusters it finds there into the ONE Hanzo fleet, so they appear at /v1/clusters and can run work like any managed or bring-your-own cluster.
  ///
  /// Links one of the caller org's cloud accounts and folds the Kubernetes clusters it finds there into the ONE Hanzo fleet, so they appear at /v1/clusters and can run work like any managed or bring-your-own cluster. Answers 201.  The credential is verified LIVE against the provider BEFORE anything is stored, so a bad one is refused and nothing is written; it is then sealed in the org's own KMS namespace and never appears in a response, the account index, or a log line. Discovery follows, and a cluster that fails to fold is reported as DATA in the clusters list rather than failing the link.  Re-linking a label that already exists re-seals its credential and re-folds it, so this is how a rotated token is replaced. Requires org admin.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the cloud being linked, from the path: digitalocean, aws, gcp or azure.
  ///
  /// * [VenueLinkRequest] venueLinkRequest (required):
  Future<Response> postCloudByProviderAccountsWithHttpInfo(String provider, VenueLinkRequest venueLinkRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloud/{provider}/accounts'
      .replaceAll('{provider}', provider);

    // ignore: prefer_final_locals
    Object? postBody = venueLinkRequest;

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

  /// Links one of the caller org's cloud accounts and folds the Kubernetes clusters it finds there into the ONE Hanzo fleet, so they appear at /v1/clusters and can run work like any managed or bring-your-own cluster.
  ///
  /// Links one of the caller org's cloud accounts and folds the Kubernetes clusters it finds there into the ONE Hanzo fleet, so they appear at /v1/clusters and can run work like any managed or bring-your-own cluster. Answers 201.  The credential is verified LIVE against the provider BEFORE anything is stored, so a bad one is refused and nothing is written; it is then sealed in the org's own KMS namespace and never appears in a response, the account index, or a log line. Discovery follows, and a cluster that fails to fold is reported as DATA in the clusters list rather than failing the link.  Re-linking a label that already exists re-seals its credential and re-folds it, so this is how a rotated token is replaced. Requires org admin.
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the cloud being linked, from the path: digitalocean, aws, gcp or azure.
  ///
  /// * [VenueLinkRequest] venueLinkRequest (required):
  Future<AccountFoldView?> postCloudByProviderAccounts(String provider, VenueLinkRequest venueLinkRequest,) async {
    final response = await postCloudByProviderAccountsWithHttpInfo(provider, venueLinkRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccountFoldView',) as AccountFoldView;
    
    }
    return null;
  }

  /// Re-discovers one already-linked cloud account and reconciles what it folded: kubeconfigs are refreshed, clusters that appeared since the last sync are folded, and clusters this account folded that the provider no longer returns are detached — only this account's own, in the fleet shard it was linked into.
  ///
  /// Re-discovers one already-linked cloud account and reconciles what it folded: kubeconfigs are refreshed, clusters that appeared since the last sync are folded, and clusters this account folded that the provider no longer returns are detached — only this account's own, in the fleet shard it was linked into.  It is idempotent, it reads the credential already sealed at link time, and a discovery failure leaves the existing fold set alone rather than mass-detaching it. An account this org has not linked is not found. Requires org admin.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the cloud the account belongs to: digitalocean, aws, gcp or azure. An unknown provider is not found.
  ///
  /// * [String] label (required):
  ///   Label is the org-chosen name of the account within that provider. Empty means \"default\"; anything outside 1–64 of [A-Za-z0-9._-] is refused.
  Future<Response> postCloudByProviderAccountsByLabelSyncWithHttpInfo(String provider, String label,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloud/{provider}/accounts/{label}/sync'
      .replaceAll('{provider}', provider)
      .replaceAll('{label}', label);

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

  /// Re-discovers one already-linked cloud account and reconciles what it folded: kubeconfigs are refreshed, clusters that appeared since the last sync are folded, and clusters this account folded that the provider no longer returns are detached — only this account's own, in the fleet shard it was linked into.
  ///
  /// Re-discovers one already-linked cloud account and reconciles what it folded: kubeconfigs are refreshed, clusters that appeared since the last sync are folded, and clusters this account folded that the provider no longer returns are detached — only this account's own, in the fleet shard it was linked into.  It is idempotent, it reads the credential already sealed at link time, and a discovery failure leaves the existing fold set alone rather than mass-detaching it. An account this org has not linked is not found. Requires org admin.
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the cloud the account belongs to: digitalocean, aws, gcp or azure. An unknown provider is not found.
  ///
  /// * [String] label (required):
  ///   Label is the org-chosen name of the account within that provider. Empty means \"default\"; anything outside 1–64 of [A-Za-z0-9._-] is refused.
  Future<AccountFoldView?> postCloudByProviderAccountsByLabelSync(String provider, String label,) async {
    final response = await postCloudByProviderAccountsByLabelSyncWithHttpInfo(provider, label,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccountFoldView',) as AccountFoldView;
    
    }
    return null;
  }
}
