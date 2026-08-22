//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class VisorApi {
  VisorApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Attaches a BYO cluster to the caller's org — the kubeconfig is validated, KMS-sealed and added to the fleet — and answers 201 with the cluster as it now appears on GET /v1/visor/clusters.
  ///
  /// Attaches a BYO cluster to the caller's org — the kubeconfig is validated, KMS-sealed and added to the fleet — and answers 201 with the cluster as it now appears on GET /v1/visor/clusters. Billed the nominal management fee: the customer brings the compute, Hanzo meters the management plane.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ClusterAttach] clusterAttach (required):
  Future<Response> attachClusterWithHttpInfo(ClusterAttach clusterAttach,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/visor/clusters';

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

  /// Attaches a BYO cluster to the caller's org — the kubeconfig is validated, KMS-sealed and added to the fleet — and answers 201 with the cluster as it now appears on GET /v1/visor/clusters.
  ///
  /// Attaches a BYO cluster to the caller's org — the kubeconfig is validated, KMS-sealed and added to the fleet — and answers 201 with the cluster as it now appears on GET /v1/visor/clusters. Billed the nominal management fee: the customer brings the compute, Hanzo meters the management plane.
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

  /// Binds a cloud Agent to one of the caller org's machines: the machine is recorded as running that Agent's @hanzo/bot runtime.
  ///
  /// Binds a cloud Agent to one of the caller org's machines: the machine is recorded as running that Agent's @hanzo/bot runtime. The owning org is the validated tenant, never a client field.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the machine to bind, from the URL path.
  ///
  /// * [BindAgentReq] bindAgentReq (required):
  Future<Response> bindMachineAgentWithHttpInfo(String id, BindAgentReq bindAgentReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/visor/machines/{id}/agent'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = bindAgentReq;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Binds a cloud Agent to one of the caller org's machines: the machine is recorded as running that Agent's @hanzo/bot runtime.
  ///
  /// Binds a cloud Agent to one of the caller org's machines: the machine is recorded as running that Agent's @hanzo/bot runtime. The owning org is the validated tenant, never a client field.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the machine to bind, from the URL path.
  ///
  /// * [BindAgentReq] bindAgentReq (required):
  Future<AgentBinding?> bindMachineAgent(String id, BindAgentReq bindAgentReq,) async {
    final response = await bindMachineAgentWithHttpInfo(id, bindAgentReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentBinding',) as AgentBinding;
    
    }
    return null;
  }

  /// Cancels a queued or running render in the caller's org.
  ///
  /// Cancels a queued or running render in the caller's org. The engine cancel is org-scoped, so a tenant can only ever cancel its OWN job: a job in another tenant's shard is 404, exactly like one that never existed. An already-finished job is 409.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the job (activity) id, from the URL path.
  ///
  /// * [JobCancel] jobCancel (required):
  Future<Response> cancelFleetJobWithHttpInfo(String id, JobCancel jobCancel,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/visor/fleet/jobs/{id}/cancel'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = jobCancel;

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

  /// Cancels a queued or running render in the caller's org.
  ///
  /// Cancels a queued or running render in the caller's org. The engine cancel is org-scoped, so a tenant can only ever cancel its OWN job: a job in another tenant's shard is 404, exactly like one that never existed. An already-finished job is 409.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the job (activity) id, from the URL path.
  ///
  /// * [JobCancel] jobCancel (required):
  Future<JobCanceled?> cancelFleetJob(String id, JobCancel jobCancel,) async {
    final response = await cancelFleetJobWithHttpInfo(id, jobCancel,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JobCanceled',) as JobCanceled;
    
    }
    return null;
  }

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
    final path = r'/v1/visor/k8s/clusters';

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
    final path = r'/v1/visor/clusters/{clusterId}/pools'
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

  /// Tears down both halves of a bot: it unbinds the agent (best-effort — a bot with no binding still deletes), then terminates the machine.
  ///
  /// Tears down both halves of a bot: it unbinds the agent (best-effort — a bot with no binding still deletes), then terminates the machine. Answers 204.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the bot machine's id — the same id the machines surface addresses it by. Scoped to the caller's org upstream, so another tenant's id is 404.
  Future<Response> deleteBotWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/visor/compute/bots/{id}'
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

  /// Tears down both halves of a bot: it unbinds the agent (best-effort — a bot with no binding still deletes), then terminates the machine.
  ///
  /// Tears down both halves of a bot: it unbinds the agent (best-effort — a bot with no binding still deletes), then terminates the machine. Answers 204.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the bot machine's id — the same id the machines surface addresses it by. Scoped to the caller's org upstream, so another tenant's id is 404.
  Future<void> deleteBot(String id,) async {
    final response = await deleteBotWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
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
    final path = r'/v1/visor/k8s/clusters/{id}'
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

  /// Terminates one of the caller org's machines.
  ///
  /// Terminates one of the caller org's machines. Visor takes the machine identity as owner+name, and the owner is the validated principal, so a caller can only ever terminate its own tenant's machine. Answers 204.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the machine's org-scoped NAME — the stable key Visor addresses a machine by (owner/name), not the ephemeral provider id.
  Future<Response> deleteMachineWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/visor/machines/{id}'
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

  /// Terminates one of the caller org's machines.
  ///
  /// Terminates one of the caller org's machines. Visor takes the machine identity as owner+name, and the owner is the validated principal, so a caller can only ever terminate its own tenant's machine. Answers 204.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the machine's org-scoped NAME — the stable key Visor addresses a machine by (owner/name), not the ephemeral provider id.
  Future<void> deleteMachine(String id,) async {
    final response = await deleteMachineWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
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
    final path = r'/v1/visor/clusters/{clusterId}/pools/{poolId}'
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
    final path = r'/v1/visor/clusters/{id}'
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

  /// Returns one of the caller org's bot machines with its agent binding.
  ///
  /// Returns one of the caller org's bot machines with its agent binding.  A machine counts as a Bot if it carries the hanzo-kind:bot tag OR has an agent binding — either signal is authoritative, so a bot resolves even before its cloud-init has stamped every tag. A machine that is neither is 404: this route answers for bots, not for machines.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the bot machine's id — the same id the machines surface addresses it by. Scoped to the caller's org upstream, so another tenant's id is 404.
  Future<Response> getBotWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/visor/compute/bots/{id}'
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

  /// Returns one of the caller org's bot machines with its agent binding.
  ///
  /// Returns one of the caller org's bot machines with its agent binding.  A machine counts as a Bot if it carries the hanzo-kind:bot tag OR has an agent binding — either signal is authoritative, so a bot resolves even before its cloud-init has stamped every tag. A machine that is neither is 404: this route answers for bots, not for machines.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the bot machine's id — the same id the machines surface addresses it by. Scoped to the caller's org upstream, so another tenant's id is 404.
  Future<BotView?> getBot(String id,) async {
    final response = await getBotWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BotView',) as BotView;
    
    }
    return null;
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
    final path = r'/v1/visor/k8s/clusters/{id}'
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

  /// Returns one of the caller org's machines by its org-scoped name.
  ///
  /// Returns one of the caller org's machines by its org-scoped name. Visor keys the lookup by owner/name, so an id belonging to another tenant resolves to not-found rather than another org's machine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the machine's org-scoped NAME — the stable key Visor addresses a machine by (owner/name), not the ephemeral provider id.
  Future<Response> getMachineWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/visor/machines/{id}'
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

  /// Returns one of the caller org's machines by its org-scoped name.
  ///
  /// Returns one of the caller org's machines by its org-scoped name. Visor keys the lookup by owner/name, so an id belonging to another tenant resolves to not-found rather than another org's machine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the machine's org-scoped NAME — the stable key Visor addresses a machine by (owner/name), not the ephemeral provider id.
  Future<MachineView?> getMachine(String id,) async {
    final response = await getMachineWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MachineView',) as MachineView;
    
    }
    return null;
  }

  /// Returns the agent binding of one of the caller org's machines, or 404 when the machine runs no bot runtime.
  ///
  /// Returns the agent binding of one of the caller org's machines, or 404 when the machine runs no bot runtime.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the machine's org-scoped NAME — the stable key Visor addresses a machine by (owner/name), not the ephemeral provider id.
  Future<Response> getMachineAgentWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/visor/machines/{id}/agent'
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

  /// Returns the agent binding of one of the caller org's machines, or 404 when the machine runs no bot runtime.
  ///
  /// Returns the agent binding of one of the caller org's machines, or 404 when the machine runs no bot runtime.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the machine's org-scoped NAME — the stable key Visor addresses a machine by (owner/name), not the ephemeral provider id.
  Future<AgentBinding?> getMachineAgent(String id,) async {
    final response = await getMachineAgentWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentBinding',) as AgentBinding;
    
    }
    return null;
  }

  /// The regions a machine or GPU can be launched into
  ///
  /// Lists the launch regions the compute catalog offers, passed through verbatim from the provider so the shape stays the provider's single source of truth. The catalog is GLOBAL, not per-tenant: no owner is forwarded and every org sees the same list. It is still gated — a validated principal is required, 403 without one — because the catalog is what backs the launch drawer, not public marketing copy.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getVisorComputeRegionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/visor/compute/regions';

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

  /// The regions a machine or GPU can be launched into
  ///
  /// Lists the launch regions the compute catalog offers, passed through verbatim from the provider so the shape stays the provider's single source of truth. The catalog is GLOBAL, not per-tenant: no owner is forwarded and every org sees the same list. It is still gated — a validated principal is required, 403 without one — because the catalog is what backs the launch drawer, not public marketing copy.
  Future<void> getVisorComputeRegions() async {
    final response = await getVisorComputeRegionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The machine and GPU sizes that can be launched
  ///
  /// Lists the instance sizes the compute catalog offers, passed through verbatim from the provider so the shape stays the provider's single source of truth. These are the values `size` accepts on a launch. The catalog is GLOBAL, not per-tenant: no owner is forwarded and every org sees the same list. It is still gated — a validated principal is required, 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getVisorComputeSizesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/visor/compute/sizes';

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

  /// The machine and GPU sizes that can be launched
  ///
  /// Lists the instance sizes the compute catalog offers, passed through verbatim from the provider so the shape stays the provider's single source of truth. These are the values `size` accepts on a launch. The catalog is GLOBAL, not per-tenant: no owner is forwarded and every org sees the same list. It is still gated — a validated principal is required, 403 without one.
  Future<void> getVisorComputeSizes() async {
    final response = await getVisorComputeSizesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the caller org's bot machines — the kind=bot machines — each joined with the agent binding that says which cloud Agent it runs.
  ///
  /// Returns the caller org's bot machines — the kind=bot machines — each joined with the agent binding that says which cloud Agent it runs.  The bindings are read ONCE and joined by machine id, so the list is O(1) upstream calls, not N+1. A bindings read that fails only costs the reconciled status: a bot still lists without it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listBotsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/visor/compute/bots';

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

  /// Returns the caller org's bot machines — the kind=bot machines — each joined with the agent binding that says which cloud Agent it runs.
  ///
  /// Returns the caller org's bot machines — the kind=bot machines — each joined with the agent binding that says which cloud Agent it runs.  The bindings are read ONCE and joined by machine id, so the list is O(1) upstream calls, not N+1. A bindings read that fails only costs the reconciled status: a bot still lists without it.
  Future<BotList?> listBots() async {
    final response = await listBotsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BotList',) as BotList;
    
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
    final path = r'/v1/visor/clusters';

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

  /// Returns every compute unit the caller's org has, from every source, each carrying its latest utilization: agent run-targets, the BYO machines that dialed in, attached BYO clusters and Visor-provisioned machines.
  ///
  /// Returns every compute unit the caller's org has, from every source, each carrying its latest utilization: agent run-targets, the BYO machines that dialed in, attached BYO clusters and Visor-provisioned machines.  A unit with a live snapshot of its own keeps it; the rest are overlaid from the utilization series, and only when the sample agrees about the SOURCE — two planes could mint the same unit id, and a board must never show one machine's load on another's row. BYO GPU units also carry their gpu-jobs queue depth. Every source is folded in independently: a broken one costs its own rows and nothing else.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listFleetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/visor/fleet';

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

  /// Returns every compute unit the caller's org has, from every source, each carrying its latest utilization: agent run-targets, the BYO machines that dialed in, attached BYO clusters and Visor-provisioned machines.
  ///
  /// Returns every compute unit the caller's org has, from every source, each carrying its latest utilization: agent run-targets, the BYO machines that dialed in, attached BYO clusters and Visor-provisioned machines.  A unit with a live snapshot of its own keeps it; the rest are overlaid from the utilization series, and only when the sample agrees about the SOURCE — two planes could mint the same unit id, and a board must never show one machine's load on another's row. BYO GPU units also carry their gpu-jobs queue depth. Every source is folded in independently: a broken one costs its own rows and nothing else.
  Future<FleetBoard?> listFleet() async {
    final response = await listFleetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FleetBoard',) as FleetBoard;
    
    }
    return null;
  }

  /// Returns the caller org's gpu-jobs render queue, each row tagged with the GPU it targets (empty = the shared any-GPU lane) and the node claiming it, optionally narrowed to one GPU's queue and/or one status.
  ///
  /// Returns the caller org's gpu-jobs render queue, each row tagged with the GPU it targets (empty = the shared any-GPU lane) and the node claiming it, optionally narrowed to one GPU's queue and/or one status.  A job whose worker died — STARTED with an elapsed lease and not yet reclaimed — reads \"stalled\", not \"running\". Fail-soft: an unavailable tasks engine yields an empty queue rather than an error.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] gpu:
  ///   GPU selects one node's lane: jobs TARGETED at it (gpu:<node>) or CLAIMED by it. The literal \"shared\" selects the any-GPU lane — no target, no claimant. Matched case-insensitively.
  ///
  /// * [String] status:
  ///   Status selects one lifecycle state: queued, running, stalled, completed, failed or canceled.
  Future<Response> listFleetJobsWithHttpInfo({ String? gpu, String? status, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/visor/fleet/jobs';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (gpu != null) {
      queryParams.addAll(_queryParams('', 'gpu', gpu));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
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

  /// Returns the caller org's gpu-jobs render queue, each row tagged with the GPU it targets (empty = the shared any-GPU lane) and the node claiming it, optionally narrowed to one GPU's queue and/or one status.
  ///
  /// Returns the caller org's gpu-jobs render queue, each row tagged with the GPU it targets (empty = the shared any-GPU lane) and the node claiming it, optionally narrowed to one GPU's queue and/or one status.  A job whose worker died — STARTED with an elapsed lease and not yet reclaimed — reads \"stalled\", not \"running\". Fail-soft: an unavailable tasks engine yields an empty queue rather than an error.
  ///
  /// Parameters:
  ///
  /// * [String] gpu:
  ///   GPU selects one node's lane: jobs TARGETED at it (gpu:<node>) or CLAIMED by it. The literal \"shared\" selects the any-GPU lane — no target, no claimant. Matched case-insensitively.
  ///
  /// * [String] status:
  ///   Status selects one lifecycle state: queued, running, stalled, completed, failed or canceled.
  Future<JobList?> listFleetJobs({ String? gpu, String? status, }) async {
    final response = await listFleetJobsWithHttpInfo( gpu: gpu, status: status, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JobList',) as JobList;
    
    }
    return null;
  }

  /// Returns the caller org's utilization series, oldest first.
  ///
  /// Returns the caller org's utilization series, oldest first.  A rejected narrower is a 400 carrying its own reason (the vocabulary is ours and safe to echo); a warehouse failure is logged and answered 503 \"unavailable\", because a chart that silently reads \"no load\" when the truth is \"we cannot tell\" is worse than one that says so. An ABSENT warehouse is different again: it returns an empty series, which renders honestly as \"no samples yet\".
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] unit:
  ///   Unit selects one compute unit's series by its source-local id.
  ///
  /// * [String] source_:
  ///   Source selects one plane: \"agent\", \"byo\" or \"visor\".
  ///
  /// * [String] range:
  ///   Range is the lookback window (e.g. \"1h\", \"24h\", \"7d\"); empty takes the warehouse default.
  Future<Response> listFleetSamplesWithHttpInfo({ String? unit, String? source_, String? range, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/visor/fleet/samples';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (unit != null) {
      queryParams.addAll(_queryParams('', 'unit', unit));
    }
    if (source_ != null) {
      queryParams.addAll(_queryParams('', 'source', source_));
    }
    if (range != null) {
      queryParams.addAll(_queryParams('', 'range', range));
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

  /// Returns the caller org's utilization series, oldest first.
  ///
  /// Returns the caller org's utilization series, oldest first.  A rejected narrower is a 400 carrying its own reason (the vocabulary is ours and safe to echo); a warehouse failure is logged and answered 503 \"unavailable\", because a chart that silently reads \"no load\" when the truth is \"we cannot tell\" is worse than one that says so. An ABSENT warehouse is different again: it returns an empty series, which renders honestly as \"no samples yet\".
  ///
  /// Parameters:
  ///
  /// * [String] unit:
  ///   Unit selects one compute unit's series by its source-local id.
  ///
  /// * [String] source_:
  ///   Source selects one plane: \"agent\", \"byo\" or \"visor\".
  ///
  /// * [String] range:
  ///   Range is the lookback window (e.g. \"1h\", \"24h\", \"7d\"); empty takes the warehouse default.
  Future<SampleList?> listFleetSamples({ String? unit, String? source_, String? range, }) async {
    final response = await listFleetSamplesWithHttpInfo( unit: unit, source_: source_, range: range, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SampleList',) as SampleList;
    
    }
    return null;
  }

  /// Returns the caller org's BYO machines — the ones that dialed in via `hanzo link` — with everything each host reported about itself.
  ///
  /// Returns the caller org's BYO machines — the ones that dialed in via `hanzo link` — with everything each host reported about itself. The Machines and GPUs pages fold the same data into their normalized shapes; this is the canonical raw list a fleet view (or the CLI's `status`) reads.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listFleetWorkersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/visor/fleet/workers';

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

  /// Returns the caller org's BYO machines — the ones that dialed in via `hanzo link` — with everything each host reported about itself.
  ///
  /// Returns the caller org's BYO machines — the ones that dialed in via `hanzo link` — with everything each host reported about itself. The Machines and GPUs pages fold the same data into their normalized shapes; this is the canonical raw list a fleet view (or the CLI's `status`) reads.
  Future<WorkerList?> listFleetWorkers() async {
    final response = await listFleetWorkersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WorkerList',) as WorkerList;
    
    }
    return null;
  }

  /// Is an HONEST empty surface: Visor exposes no GPU alert inventory, so this returns [] rather than fabricating alerts.
  ///
  /// Is an HONEST empty surface: Visor exposes no GPU alert inventory, so this returns [] rather than fabricating alerts. It stays a real, tenant-gated route so the console's alerts fetch resolves (200 [], not a 404) — an honest \"no alerts\", the same discipline the rest of the surface follows.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listGpuAlertsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/visor/gpus/alerts';

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

  /// Is an HONEST empty surface: Visor exposes no GPU alert inventory, so this returns [] rather than fabricating alerts.
  ///
  /// Is an HONEST empty surface: Visor exposes no GPU alert inventory, so this returns [] rather than fabricating alerts. It stays a real, tenant-gated route so the console's alerts fetch resolves (200 [], not a 404) — an honest \"no alerts\", the same discipline the rest of the surface follows.
  Future<GpuAlertList?> listGpuAlerts() async {
    final response = await listGpuAlertsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GpuAlertList',) as GpuAlertList;
    
    }
    return null;
  }

  /// Returns one row per physical accelerator the caller's org has, derived from its real GPU machines (the size slug says how many cards a node holds) and from the accelerators BYO workers report through nvidia-smi.
  ///
  /// Returns one row per physical accelerator the caller's org has, derived from its real GPU machines (the size slug says how many cards a node holds) and from the accelerators BYO workers report through nvidia-smi.  Live telemetry is absent on Visor rows because Visor's machine object carries none — an honest omission the console renders as \"—\", never a fabricated 0.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listGpusWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/visor/gpus';

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

  /// Returns one row per physical accelerator the caller's org has, derived from its real GPU machines (the size slug says how many cards a node holds) and from the accelerators BYO workers report through nvidia-smi.
  ///
  /// Returns one row per physical accelerator the caller's org has, derived from its real GPU machines (the size slug says how many cards a node holds) and from the accelerators BYO workers report through nvidia-smi.  Live telemetry is absent on Visor rows because Visor's machine object carries none — an honest omission the console renders as \"—\", never a fabricated 0.
  Future<GpuList?> listGpus() async {
    final response = await listGpusWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GpuList',) as GpuList;
    
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
    final path = r'/v1/visor/k8s/clusters';

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
    final path = r'/v1/visor/k8s/nodes';

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

  /// Returns every agent↔machine binding in the caller's org — which machines are running which cloud Agent, with vm's own reconciled status.
  ///
  /// Returns every agent↔machine binding in the caller's org — which machines are running which cloud Agent, with vm's own reconciled status.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listMachineAgentsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/visor/machines/agents';

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

  /// Returns every agent↔machine binding in the caller's org — which machines are running which cloud Agent, with vm's own reconciled status.
  ///
  /// Returns every agent↔machine binding in the caller's org — which machines are running which cloud Agent, with vm's own reconciled status.
  Future<BindingList?> listMachineAgents() async {
    final response = await listMachineAgentsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BindingList',) as BindingList;
    
    }
    return null;
  }

  /// Returns every machine the caller's org has — Visor's registry, the live DigitalOcean droplets and the DOKS worker nodes (deduped into one union), plus the BYO machines that dialed in via `hanzo link` (provider \"byo\").
  ///
  /// Returns every machine the caller's org has — Visor's registry, the live DigitalOcean droplets and the DOKS worker nodes (deduped into one union), plus the BYO machines that dialed in via `hanzo link` (provider \"byo\").  A source Visor cannot answer for is logged and skipped, never an error: one wedged upstream must not hide the machines the other sources can see.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listMachinesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/visor/machines';

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

  /// Returns every machine the caller's org has — Visor's registry, the live DigitalOcean droplets and the DOKS worker nodes (deduped into one union), plus the BYO machines that dialed in via `hanzo link` (provider \"byo\").
  ///
  /// Returns every machine the caller's org has — Visor's registry, the live DigitalOcean droplets and the DOKS worker nodes (deduped into one union), plus the BYO machines that dialed in via `hanzo link` (provider \"byo\").  A source Visor cannot answer for is logged and skipped, never an error: one wedged upstream must not hide the machines the other sources can see.
  Future<MachineList?> listMachines() async {
    final response = await listMachinesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MachineList',) as MachineList;
    
    }
    return null;
  }

  /// Message a bot, or stop it, by naming the action in the path
  ///
  /// Dispatches one verb against a bot the caller's org owns. `message` runs the bot's bound agent with the request body as the message and streams the agent's answer back VERBATIM — the upstream body, its content type and its status — so a message is a real agent run, recorded, billed and traced exactly like any other, under the caller's own identity rather than a fabricated one. `stop` and `pause` are the same single honest capability: they halt the runtime by unbinding the agent while LEAVING THE MACHINE UP, so the bot stops answering but keeps costing — rebind to resume, or delete the bot to tear it down. Stopping is idempotent; a bot with no binding still reports stopped.  Org-scoped and fails closed: a validated principal is required (403 without one) and the bot is addressed under the caller's OWN org, so another tenant's id is not reachable. An unknown action is a clean 400 naming the three it accepts, never a silent no-op, and messaging a bot with no bound agent is a 400.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] action (required):
  Future<Response> postVisorComputeBotsByIdByActionWithHttpInfo(String id, String action,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/visor/compute/bots/{id}/{action}'
      .replaceAll('{id}', id)
      .replaceAll('{action}', action);

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

  /// Message a bot, or stop it, by naming the action in the path
  ///
  /// Dispatches one verb against a bot the caller's org owns. `message` runs the bot's bound agent with the request body as the message and streams the agent's answer back VERBATIM — the upstream body, its content type and its status — so a message is a real agent run, recorded, billed and traced exactly like any other, under the caller's own identity rather than a fabricated one. `stop` and `pause` are the same single honest capability: they halt the runtime by unbinding the agent while LEAVING THE MACHINE UP, so the bot stops answering but keeps costing — rebind to resume, or delete the bot to tear it down. Stopping is idempotent; a bot with no binding still reports stopped.  Org-scoped and fails closed: a validated principal is required (403 without one) and the bot is addressed under the caller's OWN org, so another tenant's id is not reachable. An unknown action is a clean 400 naming the three it accepts, never a silent no-op, and messaging a bot with no bound agent is a 400.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] action (required):
  Future<void> postVisorComputeBotsByIdByAction(String id, String action,) async {
    final response = await postVisorComputeBotsByIdByActionWithHttpInfo(id, action,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Launch a bot machine — an agent plus the machine that runs it — or price one
  ///
  /// Creates BOTH halves of a bot in one call and answers 201 with the bot: the cloud agent it runs, then a bot-kind machine bootstrapped with the bot runtime, then the binding between them, so a launched bot is immediately messageable. Send `dryRun: true` for a price quote instead — 200 with the upstream quote verbatim, no agent created, no machine launched, nothing spent.  The agent is created FIRST and on purpose: it is create-if-absent (an agent that already exists is reused, so a relaunch is fine and several bots may share one explicit `agent`), and doing it before the machine means a bad request — a model that is not in the catalog, say — fails with the real reason BEFORE any metered machine is provisioned. `agent` defaults to the bot's name and an empty `model` takes the deployment default.  Org-scoped and fails closed: a validated principal is required (403 without one), the owning org is that principal's and never a body field, `size` is required (400), and `name` is required for a real launch though not for a quote.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postVisorComputeBotsLaunchWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/visor/compute/bots/launch';

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

  /// Launch a bot machine — an agent plus the machine that runs it — or price one
  ///
  /// Creates BOTH halves of a bot in one call and answers 201 with the bot: the cloud agent it runs, then a bot-kind machine bootstrapped with the bot runtime, then the binding between them, so a launched bot is immediately messageable. Send `dryRun: true` for a price quote instead — 200 with the upstream quote verbatim, no agent created, no machine launched, nothing spent.  The agent is created FIRST and on purpose: it is create-if-absent (an agent that already exists is reused, so a relaunch is fine and several bots may share one explicit `agent`), and doing it before the machine means a bad request — a model that is not in the catalog, say — fails with the real reason BEFORE any metered machine is provisioned. `agent` defaults to the bot's name and an empty `model` takes the deployment default.  Org-scoped and fails closed: a validated principal is required (403 without one), the owning org is that principal's and never a body field, `size` is required (400), and `name` is required for a real launch though not for a quote.
  Future<void> postVisorComputeBotsLaunch() async {
    final response = await postVisorComputeBotsLaunchWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Launch a metered machine for your org, or price one first with dryRun
  ///
  /// Provisions a machine owned by the caller's org and answers 201 with the machine. Send `dryRun: true` to get a PRICE QUOTE instead: 200 with the upstream quote passed through verbatim, nothing launched and nothing spent. Two response shapes on one address is the rule to know, and it is why this is not a typed op.  Metering is not this plane's: the launch fronts the compute provider's resell endpoint, which owns the balance gate and the per-hour meter, and cloud only forwards the tenant. Ownership is the validated principal's org and is never read from the body, so a launch always lands in the caller's OWN tenant and the machine it creates is only ever visible to that tenant. Fails closed: a validated principal is required (403 without one) and `size` (or its `instanceType` alias) is required (400).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postVisorMachinesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/visor/machines';

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

  /// Launch a metered machine for your org, or price one first with dryRun
  ///
  /// Provisions a machine owned by the caller's org and answers 201 with the machine. Send `dryRun: true` to get a PRICE QUOTE instead: 200 with the upstream quote passed through verbatim, nothing launched and nothing spent. Two response shapes on one address is the rule to know, and it is why this is not a typed op.  Metering is not this plane's: the launch fronts the compute provider's resell endpoint, which owns the balance gate and the per-hour meter, and cloud only forwards the tenant. Ownership is the validated principal's org and is never read from the body, so a launch always lands in the caller's OWN tenant and the machine it creates is only ever visible to that tenant. Fails closed: a validated principal is required (403 without one) and `size` (or its `instanceType` alias) is required (400).
  Future<void> postVisorMachines() async {
    final response = await postVisorMachinesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Records a BYO worker's live GPU utilization into the SAME series the fleet board overlays.
  ///
  /// Records a BYO worker's live GPU utilization into the SAME series the fleet board overlays. The org is the validated principal and source/kind are fixed server-side, so a worker names only its own metrics — never another tenant or another source. Answers 202: the warehouse write is DETACHED (its own bounded context, never in the response path), so a slow or absent warehouse cannot stall a heartbeat.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SampleIngest] sampleIngest (required):
  Future<Response> recordFleetSampleWithHttpInfo(SampleIngest sampleIngest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/visor/fleet/samples';

    // ignore: prefer_final_locals
    Object? postBody = sampleIngest;

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

  /// Records a BYO worker's live GPU utilization into the SAME series the fleet board overlays.
  ///
  /// Records a BYO worker's live GPU utilization into the SAME series the fleet board overlays. The org is the validated principal and source/kind are fixed server-side, so a worker names only its own metrics — never another tenant or another source. Answers 202: the warehouse write is DETACHED (its own bounded context, never in the response path), so a slow or absent warehouse cannot stall a heartbeat.
  ///
  /// Parameters:
  ///
  /// * [SampleIngest] sampleIngest (required):
  Future<SampleAccepted?> recordFleetSample(SampleIngest sampleIngest,) async {
    final response = await recordFleetSampleWithHttpInfo(sampleIngest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SampleAccepted',) as SampleAccepted;
    
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
  ///   ClusterID is the cluster holding the pool, from the URL path.
  ///
  /// * [String] poolId (required):
  ///   PoolID is the pool to resize, from the URL path — the `poolId` a cluster read reports for it. Required.
  ///
  /// * [PoolScale] poolScale (required):
  Future<Response> scaleNodePoolWithHttpInfo(String clusterId, String poolId, PoolScale poolScale,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/visor/clusters/{clusterId}/pools/{poolId}/scale'
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
  ///   ClusterID is the cluster holding the pool, from the URL path.
  ///
  /// * [String] poolId (required):
  ///   PoolID is the pool to resize, from the URL path — the `poolId` a cluster read reports for it. Required.
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

  /// Detaches the agent runtime from one of the caller org's machines.
  ///
  /// Detaches the agent runtime from one of the caller org's machines. The machine stays — this halts the bot, it does not terminate the compute. Answers 204.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the machine's org-scoped NAME — the stable key Visor addresses a machine by (owner/name), not the ephemeral provider id.
  Future<Response> unbindMachineAgentWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/visor/machines/{id}/agent'
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

  /// Detaches the agent runtime from one of the caller org's machines.
  ///
  /// Detaches the agent runtime from one of the caller org's machines. The machine stays — this halts the bot, it does not terminate the compute. Answers 204.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the machine's org-scoped NAME — the stable key Visor addresses a machine by (owner/name), not the ephemeral provider id.
  Future<void> unbindMachineAgent(String id,) async {
    final response = await unbindMachineAgentWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
