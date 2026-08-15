//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class K8sApi {
  K8sApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Provisions a DOKS cluster for the caller's org and answers 201.
  ///
  /// Provisions a DOKS cluster for the caller's org and answers 201. ADMIN-GATED — a SuperAdmin, or an OrgAdmin of the caller's own org — because provisioning spends real infrastructure on the house account. The request is validated at this boundary, then Visor owns provisioning and the hanzo-org ownership tag.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateClusterReq] createClusterReq (required):
  Future<Response> createKubernetesClusterWithHttpInfo(CreateClusterReq createClusterReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/k8s/clusters';

    // ignore: prefer_final_locals
    Object? postBody = createClusterReq;

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

  /// Provisions a DOKS cluster for the caller's org and answers 201.
  ///
  /// Provisions a DOKS cluster for the caller's org and answers 201. ADMIN-GATED — a SuperAdmin, or an OrgAdmin of the caller's own org — because provisioning spends real infrastructure on the house account. The request is validated at this boundary, then Visor owns provisioning and the hanzo-org ownership tag.
  ///
  /// Parameters:
  ///
  /// * [CreateClusterReq] createClusterReq (required):
  Future<ClusterView?> createKubernetesCluster(CreateClusterReq createClusterReq,) async {
    final response = await createKubernetesClusterWithHttpInfo(createClusterReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClusterView',) as ClusterView;
    
    }
    return null;
  }

  /// Destroys a DOKS cluster by id and answers 204.
  ///
  /// Destroys a DOKS cluster by id and answers 204. ADMIN-GATED, like create. Visor scopes the delete to the org (refuses a foreign id), so this can only ever remove the caller org's own cluster.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the provider's DOKS cluster id. Visor scopes the lookup to the caller's org, so another tenant's id resolves to not-found rather than their cluster.
  Future<Response> deleteKubernetesClusterWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/k8s/clusters/{id}'
      .replaceAll('{id}', id);

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

  /// Destroys a DOKS cluster by id and answers 204.
  ///
  /// Destroys a DOKS cluster by id and answers 204. ADMIN-GATED, like create. Visor scopes the delete to the org (refuses a foreign id), so this can only ever remove the caller org's own cluster.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the provider's DOKS cluster id. Visor scopes the lookup to the caller's org, so another tenant's id resolves to not-found rather than their cluster.
  Future<void> deleteKubernetesCluster(String id,) async {
    final response = await deleteKubernetesClusterWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns one cluster's detail: node pools + worker nodes.
  ///
  /// Returns one cluster's detail: node pools + worker nodes. Visor scopes the lookup to the org (a foreign or missing id resolves to not-found), so a tenant can never read another tenant's cluster by guessing an id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the provider's DOKS cluster id. Visor scopes the lookup to the caller's org, so another tenant's id resolves to not-found rather than their cluster.
  Future<Response> getKubernetesClusterWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/k8s/clusters/{id}'
      .replaceAll('{id}', id);

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

  /// Returns one cluster's detail: node pools + worker nodes.
  ///
  /// Returns one cluster's detail: node pools + worker nodes. Visor scopes the lookup to the org (a foreign or missing id resolves to not-found), so a tenant can never read another tenant's cluster by guessing an id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the provider's DOKS cluster id. Visor scopes the lookup to the caller's org, so another tenant's id resolves to not-found rather than their cluster.
  Future<ClusterDetailView?> getKubernetesCluster(String id,) async {
    final response = await getKubernetesClusterWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClusterDetailView',) as ClusterDetailView;
    
    }
    return null;
  }

  /// Lists the org's DOKS clusters (Visor, house account) folded with the org's BYO clusters — ONE fleet cluster view under the unified k8s noun.
  ///
  /// Lists the org's DOKS clusters (Visor, house account) folded with the org's BYO clusters — ONE fleet cluster view under the unified k8s noun. A Visor outage is logged and skipped so a down optional provider never hides the BYO list.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listKubernetesClustersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/k8s/clusters';

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

  /// Lists the org's DOKS clusters (Visor, house account) folded with the org's BYO clusters — ONE fleet cluster view under the unified k8s noun.
  ///
  /// Lists the org's DOKS clusters (Visor, house account) folded with the org's BYO clusters — ONE fleet cluster view under the unified k8s noun. A Visor outage is logged and skipped so a down optional provider never hides the BYO list.
  Future<ClusterList?> listKubernetesClusters() async {
    final response = await listKubernetesClustersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClusterList',) as ClusterList;
    
    }
    return null;
  }

  /// Returns every DOKS worker node in the org's clusters as a machine — the SAME set the fleet folds in (managedMachines), exposed directly under the k8s noun.
  ///
  /// Returns every DOKS worker node in the org's clusters as a machine — the SAME set the fleet folds in (managedMachines), exposed directly under the k8s noun. House account (hanzo-org cluster tag) + BYOC, deduped by Visor.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listKubernetesNodesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/k8s/nodes';

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

  /// Returns every DOKS worker node in the org's clusters as a machine — the SAME set the fleet folds in (managedMachines), exposed directly under the k8s noun.
  ///
  /// Returns every DOKS worker node in the org's clusters as a machine — the SAME set the fleet folds in (managedMachines), exposed directly under the k8s noun. House account (hanzo-org cluster tag) + BYOC, deduped by Visor.
  Future<NodeList?> listKubernetesNodes() async {
    final response = await listKubernetesNodesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NodeList',) as NodeList;
    
    }
    return null;
  }
}
