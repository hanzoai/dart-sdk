//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class ClustersApi {
  ClustersApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Attaches a BYO cluster to the caller's org — the kubeconfig is validated, KMS-sealed and added to the fleet — and answers 201 with the cluster as it now appears on GET /v1/clusters.
  ///
  /// Attaches a BYO cluster to the caller's org — the kubeconfig is validated, KMS-sealed and added to the fleet — and answers 201 with the cluster as it now appears on GET /v1/clusters. Billed the nominal management fee: the customer brings the compute, Hanzo meters the management plane.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ClusterAttach] clusterAttach (required):
  Future<Response> attachClusterWithHttpInfo(ClusterAttach clusterAttach,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/clusters';

    // ignore: prefer_final_locals
    Object? postBody = clusterAttach;

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

  /// Attaches a BYO cluster to the caller's org — the kubeconfig is validated, KMS-sealed and added to the fleet — and answers 201 with the cluster as it now appears on GET /v1/clusters.
  ///
  /// Attaches a BYO cluster to the caller's org — the kubeconfig is validated, KMS-sealed and added to the fleet — and answers 201 with the cluster as it now appears on GET /v1/clusters. Billed the nominal management fee: the customer brings the compute, Hanzo meters the management plane.
  ///
  /// Parameters:
  ///
  /// * [ClusterAttach] clusterAttach (required):
  Future<ClusterView?> attachCluster(ClusterAttach clusterAttach,) async {
    final response = await attachClusterWithHttpInfo(clusterAttach,);
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

  /// Adds a node pool to one of the caller org's clusters and answers 201 with the created pool.
  ///
  /// Adds a node pool to one of the caller org's clusters and answers 201 with the created pool. Only the CreateNodePoolSpec fields are forwarded; owner/provider/clusterId ride in the query exactly as Visor expects them.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] clusterId (required):
  ///   ClusterID is the cluster to add the pool to, from the URL path.
  ///
  /// * [PoolCreate] poolCreate (required):
  Future<Response> createNodePoolWithHttpInfo(String clusterId, PoolCreate poolCreate,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/clusters/{clusterId}/pools'
      .replaceAll('{clusterId}', clusterId);

    // ignore: prefer_final_locals
    Object? postBody = poolCreate;

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

  /// Adds a node pool to one of the caller org's clusters and answers 201 with the created pool.
  ///
  /// Adds a node pool to one of the caller org's clusters and answers 201 with the created pool. Only the CreateNodePoolSpec fields are forwarded; owner/provider/clusterId ride in the query exactly as Visor expects them.
  ///
  /// Parameters:
  ///
  /// * [String] clusterId (required):
  ///   ClusterID is the cluster to add the pool to, from the URL path.
  ///
  /// * [PoolCreate] poolCreate (required):
  Future<NodePoolView?> createNodePool(String clusterId, PoolCreate poolCreate,) async {
    final response = await createNodePoolWithHttpInfo(clusterId, poolCreate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NodePoolView',) as NodePoolView;
    
    }
    return null;
  }

  /// Removes a node pool from one of the caller org's clusters.
  ///
  /// Removes a node pool from one of the caller org's clusters. The owner scopes the delete to the caller's tenant; provider+clusterId drive the provider-side removal. Answers 204.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] clusterId (required):
  ///   ClusterID and PoolID address the pool, from the URL path.
  ///
  /// * [String] poolId (required):
  ///
  /// * [String] provider:
  ///   Provider is the cloud the cluster lives on, from ?provider=. Required.
  Future<Response> deleteNodePoolWithHttpInfo(String clusterId, String poolId, { String? provider, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/clusters/{clusterId}/pools/{poolId}'
      .replaceAll('{clusterId}', clusterId)
      .replaceAll('{poolId}', poolId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (provider != null) {
      queryParams.addAll(_queryParams('', 'provider', provider));
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

  /// Removes a node pool from one of the caller org's clusters.
  ///
  /// Removes a node pool from one of the caller org's clusters. The owner scopes the delete to the caller's tenant; provider+clusterId drive the provider-side removal. Answers 204.
  ///
  /// Parameters:
  ///
  /// * [String] clusterId (required):
  ///   ClusterID and PoolID address the pool, from the URL path.
  ///
  /// * [String] poolId (required):
  ///
  /// * [String] provider:
  ///   Provider is the cloud the cluster lives on, from ?provider=. Required.
  Future<void> deleteNodePool(String clusterId, String poolId, { String? provider, }) async {
    final response = await deleteNodePoolWithHttpInfo(clusterId, poolId,  provider: provider, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes a BYO cluster from the caller org's fleet.
  ///
  /// Removes a BYO cluster from the caller org's fleet. It only ever touches BYO clusters — a managed cluster's nodes are removed through the node-pool routes — and answers 404 when the name is not in this org's fleet.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the cluster's fleet name (the `name` it was attached under), matched lower-cased.
  Future<Response> detachClusterWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/clusters/{id}'
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

  /// Removes a BYO cluster from the caller org's fleet.
  ///
  /// Removes a BYO cluster from the caller org's fleet. It only ever touches BYO clusters — a managed cluster's nodes are removed through the node-pool routes — and answers 404 when the name is not in this org's fleet.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the cluster's fleet name (the `name` it was attached under), matched lower-cased.
  Future<ClusterDetached?> detachCluster(String id,) async {
    final response = await detachClusterWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClusterDetached',) as ClusterDetached;
    
    }
    return null;
  }

  /// Returns the caller org's clusters from both sources: the managed clusters projected from Visor's node pools, and the BYO clusters attached to the caller's project.
  ///
  /// Returns the caller org's clusters from both sources: the managed clusters projected from Visor's node pools, and the BYO clusters attached to the caller's project. A Visor outage costs the managed half only — the BYO half still lists, because a page that 502s on an optional provider is worse than a page that shows what it can.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listClustersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/clusters';

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

  /// Returns the caller org's clusters from both sources: the managed clusters projected from Visor's node pools, and the BYO clusters attached to the caller's project.
  ///
  /// Returns the caller org's clusters from both sources: the managed clusters projected from Visor's node pools, and the BYO clusters attached to the caller's project. A Visor outage costs the managed half only — the BYO half still lists, because a page that 502s on an optional provider is worse than a page that shows what it can.
  Future<ClusterList?> listClusters() async {
    final response = await listClustersWithHttpInfo();
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

  /// Resizes a node pool to an absolute node count and returns the pool as Visor reports it after the change.
  ///
  /// Resizes a node pool to an absolute node count and returns the pool as Visor reports it after the change.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] clusterId (required):
  ///   ClusterID and PoolID address the pool, from the URL path.
  ///
  /// * [String] poolId (required):
  ///
  /// * [PoolScale] poolScale (required):
  Future<Response> scaleNodePoolWithHttpInfo(String clusterId, String poolId, PoolScale poolScale,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/clusters/{clusterId}/pools/{poolId}/scale'
      .replaceAll('{clusterId}', clusterId)
      .replaceAll('{poolId}', poolId);

    // ignore: prefer_final_locals
    Object? postBody = poolScale;

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

  /// Resizes a node pool to an absolute node count and returns the pool as Visor reports it after the change.
  ///
  /// Resizes a node pool to an absolute node count and returns the pool as Visor reports it after the change.
  ///
  /// Parameters:
  ///
  /// * [String] clusterId (required):
  ///   ClusterID and PoolID address the pool, from the URL path.
  ///
  /// * [String] poolId (required):
  ///
  /// * [PoolScale] poolScale (required):
  Future<NodePoolView?> scaleNodePool(String clusterId, String poolId, PoolScale poolScale,) async {
    final response = await scaleNodePoolWithHttpInfo(clusterId, poolId, poolScale,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NodePoolView',) as NodePoolView;
    
    }
    return null;
  }
}
