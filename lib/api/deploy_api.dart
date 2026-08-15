//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class DeployApi {
  DeployApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Compatibility answer the console UI asks before enabling its buttons
  ///
  /// Always answers `yes`, whatever resource, action or subresource the path names. It exists for the ArgoCD-compatible console, which asks this before enabling a control, and it is NOT the authorization decision: nothing downstream consults it, and every route that returns fleet data or mutates a CR carries its own gate. Reaching it at all already requires SuperAdmin, so a caller who can read the `yes` is one for whom it is true.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> getDeployAccountCanIByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deploy/account/can-i/{wildcard1}'
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

  /// Compatibility answer the console UI asks before enabling its buttons
  ///
  /// Always answers `yes`, whatever resource, action or subresource the path names. It exists for the ArgoCD-compatible console, which asks this before enabling a control, and it is NOT the authorization decision: nothing downstream consults it, and every route that returns fleet data or mutates a CR carries its own gate. Reaching it at all already requires SuperAdmin, so a caller who can read the `yes` is one for whom it is true.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> getDeployAccountCanIByWildcard1(String wildcard1,) async {
    final response = await getDeployAccountCanIByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the fleet as an argocd ApplicationList: one projected Application per operator App CR, carrying the image tag the CR DECLARES, the tag actually RUNNING in the cluster's Deployment, the reconciled health, and the sync verdict those two produce (declared == running ⇒ Synced, both known and different ⇒ OutOfSync, either unknown ⇒ Unknown).
  ///
  /// Returns the fleet as an argocd ApplicationList: one projected Application per operator App CR, carrying the image tag the CR DECLARES, the tag actually RUNNING in the cluster's Deployment, the reconciled health, and the sync verdict those two produce (declared == running ⇒ Synced, both known and different ⇒ OutOfSync, either unknown ⇒ Unknown).  It is TENANT-SCOPED: a platform SuperAdmin reads every platform namespace, a validated org member reads only its own org's tenant namespace and only the App CRs labelled with its org, and anyone else is refused. A cross-tenant CR is never projected into an answer.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDeployApplicationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deploy/applications';

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

  /// Returns the fleet as an argocd ApplicationList: one projected Application per operator App CR, carrying the image tag the CR DECLARES, the tag actually RUNNING in the cluster's Deployment, the reconciled health, and the sync verdict those two produce (declared == running ⇒ Synced, both known and different ⇒ OutOfSync, either unknown ⇒ Unknown).
  ///
  /// Returns the fleet as an argocd ApplicationList: one projected Application per operator App CR, carrying the image tag the CR DECLARES, the tag actually RUNNING in the cluster's Deployment, the reconciled health, and the sync verdict those two produce (declared == running ⇒ Synced, both known and different ⇒ OutOfSync, either unknown ⇒ Unknown).  It is TENANT-SCOPED: a platform SuperAdmin reads every platform namespace, a validated org member reads only its own org's tenant namespace and only the App CRs labelled with its org, and anyone else is refused. A cross-tenant CR is never projected into an answer.
  Future<ArgoAppList?> getDeployApplications() async {
    final response = await getDeployApplicationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ArgoAppList',) as ArgoAppList;
    
    }
    return null;
  }

  /// Returns ONE projected argocd Application by name, with status.resources filled in from its reconciled resource tree — which is what makes it the detail view rather than a row of the list.
  ///
  /// Returns ONE projected argocd Application by name, with status.resources filled in from its reconciled resource tree — which is what makes it the detail view rather than a row of the list.  It is TENANT-SCOPED, and a name that belongs to another org is reported NOT FOUND rather than refused: a 403 would confirm the application exists, so the route would become a cross-tenant existence oracle. A name that is not a DNS-1123 label is a 400 before any cluster read.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the application to read, from the path. It must be a DNS-1123 label (lowercase alphanumerics and hyphens, starting and ending alphanumeric) — every operator App CR's metadata.name satisfies that, and anything else is a 400 rather than a lookup.
  Future<Response> getDeployApplicationsByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deploy/applications/{name}'
      .replaceAll('{name}', name);

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

  /// Returns ONE projected argocd Application by name, with status.resources filled in from its reconciled resource tree — which is what makes it the detail view rather than a row of the list.
  ///
  /// Returns ONE projected argocd Application by name, with status.resources filled in from its reconciled resource tree — which is what makes it the detail view rather than a row of the list.  It is TENANT-SCOPED, and a name that belongs to another org is reported NOT FOUND rather than refused: a 403 would confirm the application exists, so the route would become a cross-tenant existence oracle. A name that is not a DNS-1123 label is a 400 before any cluster read.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the application to read, from the path. It must be a DNS-1123 label (lowercase alphanumerics and hyphens, starting and ending alphanumeric) — every operator App CR's metadata.name satisfies that, and anything else is a 400 rather than a lookup.
  Future<ArgoApp?> getDeployApplicationsByName(String name,) async {
    final response = await getDeployApplicationsByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ArgoApp',) as ArgoApp;
    
    }
    return null;
  }

  /// Returns one application's argocd ApplicationTree: the objects the operator reconciled from its App CR, reached by ownerRef — the Deployment and, under it, the ReplicaSet and Pods, plus the Service, Ingress, HorizontalPodAutoscaler, PodDisruptionBudget and ConfigMaps it owns — each node carrying its parent edges and its health.
  ///
  /// Returns one application's argocd ApplicationTree: the objects the operator reconciled from its App CR, reached by ownerRef — the Deployment and, under it, the ReplicaSet and Pods, plus the Service, Ingress, HorizontalPodAutoscaler, PodDisruptionBudget and ConfigMaps it owns — each node carrying its parent edges and its health.  Secrets are DELIBERATELY not walked, so no materialized environment can ever appear in the tree. Tenant-scoped exactly like the application read: another org's name is not found, a malformed name is a 400.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the application to read, from the path. It must be a DNS-1123 label (lowercase alphanumerics and hyphens, starting and ending alphanumeric) — every operator App CR's metadata.name satisfies that, and anything else is a 400 rather than a lookup.
  Future<Response> getDeployApplicationsByNameResourceTreeWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deploy/applications/{name}/resource-tree'
      .replaceAll('{name}', name);

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

  /// Returns one application's argocd ApplicationTree: the objects the operator reconciled from its App CR, reached by ownerRef — the Deployment and, under it, the ReplicaSet and Pods, plus the Service, Ingress, HorizontalPodAutoscaler, PodDisruptionBudget and ConfigMaps it owns — each node carrying its parent edges and its health.
  ///
  /// Returns one application's argocd ApplicationTree: the objects the operator reconciled from its App CR, reached by ownerRef — the Deployment and, under it, the ReplicaSet and Pods, plus the Service, Ingress, HorizontalPodAutoscaler, PodDisruptionBudget and ConfigMaps it owns — each node carrying its parent edges and its health.  Secrets are DELIBERATELY not walked, so no materialized environment can ever appear in the tree. Tenant-scoped exactly like the application read: another org's name is not found, a malformed name is a 400.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the application to read, from the path. It must be a DNS-1123 label (lowercase alphanumerics and hyphens, starting and ending alphanumeric) — every operator App CR's metadata.name satisfies that, and anything else is a 400 rather than a lookup.
  Future<ArgoTree?> getDeployApplicationsByNameResourceTree(String name,) async {
    final response = await getDeployApplicationsByNameResourceTreeWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ArgoTree',) as ArgoTree;
    
    }
    return null;
  }

  /// Returns the argocd RevisionMetadata for one revision of one application — what the detail view shows beside a revision.
  ///
  /// Returns the argocd RevisionMetadata for one revision of one application — what the detail view shows beside a revision.  An App CR is IMAGE-pinned rather than commit-pinned: the deploy names an image tag, and the git source this projection reports is the display-only manifest repo, not the application's own source. Nothing in this process can read a commit's author or message for an arbitrary revision. So rather than 404 (which the SPA turns into an error toast) or invent a git author, it answers the HONEST minimum: date is when the App CR was created, message is the revision asked for — with the empty revision and \"HEAD\" resolving to the image tag the CR declares — and author is empty. An over-long revision is truncated before it is echoed back.  Tenant-scoped exactly like the application read.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the application to read, from the path. It must be a DNS-1123 label.
  ///
  /// * [String] revision (required):
  ///   Revision is the revision to describe, from the path. The empty revision and \"HEAD\" both mean \"whatever this application currently declares\".
  Future<Response> getDeployApplicationsByNameRevisionsByRevisionMetadataWithHttpInfo(String name, String revision,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deploy/applications/{name}/revisions/{revision}/metadata'
      .replaceAll('{name}', name)
      .replaceAll('{revision}', revision);

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

  /// Returns the argocd RevisionMetadata for one revision of one application — what the detail view shows beside a revision.
  ///
  /// Returns the argocd RevisionMetadata for one revision of one application — what the detail view shows beside a revision.  An App CR is IMAGE-pinned rather than commit-pinned: the deploy names an image tag, and the git source this projection reports is the display-only manifest repo, not the application's own source. Nothing in this process can read a commit's author or message for an arbitrary revision. So rather than 404 (which the SPA turns into an error toast) or invent a git author, it answers the HONEST minimum: date is when the App CR was created, message is the revision asked for — with the empty revision and \"HEAD\" resolving to the image tag the CR declares — and author is empty. An over-long revision is truncated before it is echoed back.  Tenant-scoped exactly like the application read.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the application to read, from the path. It must be a DNS-1123 label.
  ///
  /// * [String] revision (required):
  ///   Revision is the revision to describe, from the path. The empty revision and \"HEAD\" both mean \"whatever this application currently declares\".
  Future<ArgoRevisionMetadata?> getDeployApplicationsByNameRevisionsByRevisionMetadata(String name, String revision,) async {
    final response = await getDeployApplicationsByNameRevisionsByRevisionMetadataWithHttpInfo(name, revision,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ArgoRevisionMetadata',) as ArgoRevisionMetadata;
    
    }
    return null;
  }

  /// Returns one application's argocd ApplicationSyncWindowState — the answer to \"is anything blocking a sync of this application right now?\".
  ///
  /// Returns one application's argocd ApplicationSyncWindowState — the answer to \"is anything blocking a sync of this application right now?\".  This platform runs NO sync windows, so the answer is always the permissive empty one: canSync true, with no active and no assigned windows. The application is still resolved first, so a name that is not the caller's is not found rather than handed the static body — the endpoint discloses nothing about another tenant's fleet.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the application to read, from the path. It must be a DNS-1123 label (lowercase alphanumerics and hyphens, starting and ending alphanumeric) — every operator App CR's metadata.name satisfies that, and anything else is a 400 rather than a lookup.
  Future<Response> getDeployApplicationsByNameSyncwindowsWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deploy/applications/{name}/syncwindows'
      .replaceAll('{name}', name);

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

  /// Returns one application's argocd ApplicationSyncWindowState — the answer to \"is anything blocking a sync of this application right now?\".
  ///
  /// Returns one application's argocd ApplicationSyncWindowState — the answer to \"is anything blocking a sync of this application right now?\".  This platform runs NO sync windows, so the answer is always the permissive empty one: canSync true, with no active and no assigned windows. The application is still resolved first, so a name that is not the caller's is not found rather than handed the static body — the endpoint discloses nothing about another tenant's fleet.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the application to read, from the path. It must be a DNS-1123 label (lowercase alphanumerics and hyphens, starting and ending alphanumeric) — every operator App CR's metadata.name satisfies that, and anything else is a 400 rather than a lookup.
  Future<ArgoSyncWindows?> getDeployApplicationsByNameSyncwindows(String name,) async {
    final response = await getDeployApplicationsByNameSyncwindowsWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ArgoSyncWindows',) as ArgoSyncWindows;
    
    }
    return null;
  }

  /// Finish the sign-in round trip and mint the console session
  ///
  /// Completes the redirect from IAM: it validates `state` against the single-use flow cookie in constant time, redeems the authorization code with the PKCE verifier, and then VERIFIES the resulting token exactly as this deployment's identity boundary will on every later request — so a token that would be refused next request fails here with the real reason instead of producing a sign-in loop. On success it sets the session cookie, bounded by the token's own expiry, and redirects to the validated return path.  It fails closed, and closes on the ADMIN ORG: a principal whose verified owner claim is not the reserved admin org is told plainly that it lacks the role (403) and no cookie is minted for it. That check is not the authorization decision — every gated route re-derives SuperAdmin from the verified JWT — it exists so nobody is handed a session that silently 403s everything. No flow in progress, or a mismatched `state`, is a 400; a refused or unexchangeable code is a 401.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDeployCallbackWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deploy/callback';

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

  /// Finish the sign-in round trip and mint the console session
  ///
  /// Completes the redirect from IAM: it validates `state` against the single-use flow cookie in constant time, redeems the authorization code with the PKCE verifier, and then VERIFIES the resulting token exactly as this deployment's identity boundary will on every later request — so a token that would be refused next request fails here with the real reason instead of producing a sign-in loop. On success it sets the session cookie, bounded by the token's own expiry, and redirects to the validated return path.  It fails closed, and closes on the ADMIN ORG: a principal whose verified owner claim is not the reserved admin org is told plainly that it lacks the role (403) and no cookie is minted for it. That check is not the authorization decision — every gated route re-derives SuperAdmin from the verified JWT — it exists so nobody is handed a session that silently 403s everything. No flow in progress, or a mismatched `state`, is a 400; a refused or unexchangeable code is a 401.
  Future<void> getDeployCallback() async {
    final response = await getDeployCallbackWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the argocd ClusterList of the destinations the caller's applications reconcile into: one entry per distinct destination server, carrying the count of applications reconciling into it.
  ///
  /// Returns the argocd ClusterList of the destinations the caller's applications reconcile into: one entry per distinct destination server, carrying the count of applications reconciling into it. The in-cluster destination is always present, so an empty fleet still answers one cluster, and no cluster credential can appear — the projected type physically has no config field.  It is TENANT-SCOPED and reads the SAME App CRs the applications list reads: a platform SuperAdmin counts the whole fleet, a validated org member counts only its own org's applications, anyone else is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDeployClustersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deploy/clusters';

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

  /// Returns the argocd ClusterList of the destinations the caller's applications reconcile into: one entry per distinct destination server, carrying the count of applications reconciling into it.
  ///
  /// Returns the argocd ClusterList of the destinations the caller's applications reconcile into: one entry per distinct destination server, carrying the count of applications reconciling into it. The in-cluster destination is always present, so an empty fleet still answers one cluster, and no cluster credential can appear — the projected type physically has no config field.  It is TENANT-SCOPED and reads the SAME App CRs the applications list reads: a platform SuperAdmin counts the whole fleet, a validated org member counts only its own org's applications, anyone else is refused.
  Future<ArgoClusterList?> getDeployClusters() async {
    final response = await getDeployClustersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ArgoClusterList',) as ArgoClusterList;
    
    }
    return null;
  }

  /// Lists every Hanzo CD Application in the cluster: the git source each one polls, the commit it last APPLIED, how its last sync operation ended, and its recent deploy history — newest deploy first, ordered by namespace then name.
  ///
  /// Lists every Hanzo CD Application in the cluster: the git source each one polls, the commit it last APPLIED, how its last sync operation ended, and its recent deploy history — newest deploy first, ordered by namespace then name.  This is the layer ABOVE the application board, and the two disagree in exactly the case an operator most needs to see: main carries a new image pin, CD has not applied that commit yet, so every App CR still declares the old tag and the application board is legitimately \"Synced\" while the deploy has not landed. Only the applied revision here can show that.  installed is false — with a reason and an empty list — when the CD CRD is not served in this cluster. That is a FACT about the cluster rather than a failure of the request, so the caller can say \"no CD plane here\" instead of rendering an error it cannot act on; a genuine transport or RBAC failure still errors.  Read-only, and platform SuperAdmin only: the CD plane is fleet infrastructure with no tenant dimension. This view observes CD and never drives it — the sync policy is automated with self-heal, and the actionable verb an operator has is the per-application reconcile at POST /v1/deploy/applications/{name}/sync.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDeployGitopsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deploy/gitops';

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

  /// Lists every Hanzo CD Application in the cluster: the git source each one polls, the commit it last APPLIED, how its last sync operation ended, and its recent deploy history — newest deploy first, ordered by namespace then name.
  ///
  /// Lists every Hanzo CD Application in the cluster: the git source each one polls, the commit it last APPLIED, how its last sync operation ended, and its recent deploy history — newest deploy first, ordered by namespace then name.  This is the layer ABOVE the application board, and the two disagree in exactly the case an operator most needs to see: main carries a new image pin, CD has not applied that commit yet, so every App CR still declares the old tag and the application board is legitimately \"Synced\" while the deploy has not landed. Only the applied revision here can show that.  installed is false — with a reason and an empty list — when the CD CRD is not served in this cluster. That is a FACT about the cluster rather than a failure of the request, so the caller can say \"no CD plane here\" instead of rendering an error it cannot act on; a genuine transport or RBAC failure still errors.  Read-only, and platform SuperAdmin only: the CD plane is fleet infrastructure with no tenant dimension. This view observes CD and never drives it — the sync policy is automated with self-heal, and the actionable verb an operator has is the per-application reconcile at POST /v1/deploy/applications/{name}/sync.
  Future<GitOpsPlane?> getDeployGitops() async {
    final response = await getDeployGitopsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GitOpsPlane',) as GitOpsPlane;
    
    }
    return null;
  }

  /// Whether this control plane can actually reach the cluster it deploys to
  ///
  /// Reports the plane's real reachability: 200 only when the Kubernetes API server answers AND the App CRD is served, 503 with the same body shape otherwise, so a caller reads the same `k8s` and `crd` booleans either way rather than parsing an error envelope. It is a genuine dependency probe, not a process liveness ping — a running plane with no cluster behind it reports degraded.  This is the ONE unauthenticated route that reports state, because liveness must be probe-able without a JWT. It therefore discloses booleans only: the underlying failure — the API server address, an RBAC refusal — is logged server-side and never put on the wire.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDeployHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deploy/health';

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

  /// Whether this control plane can actually reach the cluster it deploys to
  ///
  /// Reports the plane's real reachability: 200 only when the Kubernetes API server answers AND the App CRD is served, 503 with the same body shape otherwise, so a caller reads the same `k8s` and `crd` booleans either way rather than parsing an error envelope. It is a genuine dependency probe, not a process liveness ping — a running plane with no cluster behind it reports degraded.  This is the ONE unauthenticated route that reports state, because liveness must be probe-able without a JWT. It therefore discloses booleans only: the underlying failure — the API server address, an RBAC refusal — is logged server-side and never put on the wire.
  Future<void> getDeployHealth() async {
    final response = await getDeployHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Start the sign-in round trip for this console
  ///
  /// Redirects the browser to IAM's authorize endpoint, having minted a nonce and a PKCE verifier into a short-lived, single-use flow cookie. The nonce comes back as `state` and is what proves the code belongs to the round trip THIS browser started; the verifier never appears in the address bar.  Necessarily public — this is how a browser gets a principal for this host in the first place — and it grants nothing by itself. An optional `returnTo` names where to land afterwards and is run through the open-redirect guard, so only a same-host path survives. A deployment with no sign-in configured answers 503 rather than redirecting nowhere.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDeployLoginWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deploy/login';

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

  /// Start the sign-in round trip for this console
  ///
  /// Redirects the browser to IAM's authorize endpoint, having minted a nonce and a PKCE verifier into a short-lived, single-use flow cookie. The nonce comes back as `state` and is what proves the code belongs to the round trip THIS browser started; the verifier never appears in the address bar.  Necessarily public — this is how a browser gets a principal for this host in the first place — and it grants nothing by itself. An optional `returnTo` names where to land afterwards and is run through the open-redirect guard, so only a same-host path survives. A deployment with no sign-in configured answers 503 rather than redirecting nowhere.
  Future<void> getDeployLogin() async {
    final response = await getDeployLoginWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the argocd AppProjectList this console groups and filters applications by.
  ///
  /// Returns the argocd AppProjectList this console groups and filters applications by. Projects are owned by Hanzo IAM rather than by argocd, so they are REFLECTED read-only from the IAM project store and nothing is persisted here: a validated org member gets its own organization's projects and a platform SuperAdmin gets every organization's.  A SuperAdmin whose IAM store is not reachable falls back to the real argoproj.io AppProject CRs when that CRD is served, and otherwise to one permissive synthesized project per distinct project name the App CRs declare. A project named \"default\" is always present, because that is what an App CR carrying no project label projects to.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDeployProjectsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deploy/projects';

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

  /// Returns the argocd AppProjectList this console groups and filters applications by.
  ///
  /// Returns the argocd AppProjectList this console groups and filters applications by. Projects are owned by Hanzo IAM rather than by argocd, so they are REFLECTED read-only from the IAM project store and nothing is persisted here: a validated org member gets its own organization's projects and a platform SuperAdmin gets every organization's.  A SuperAdmin whose IAM store is not reachable falls back to the real argoproj.io AppProject CRs when that CRD is served, and otherwise to one permissive synthesized project per distinct project name the App CRs declare. A project named \"default\" is always present, because that is what an App CR carrying no project label projects to.
  Future<ArgoProjectList?> getDeployProjects() async {
    final response = await getDeployProjectsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ArgoProjectList',) as ArgoProjectList;
    
    }
    return null;
  }

  /// Answers \"is this browser signed in, and if not where does it sign in?\" — the dashboard SPA's bootstrap question, and the only route on this plane that answers for an anonymous caller.
  ///
  /// Answers \"is this browser signed in, and if not where does it sign in?\" — the dashboard SPA's bootstrap question, and the only route on this plane that answers for an anonymous caller.  The anonymous answer carries loggedIn:false and a URL and NOTHING else: no username, no org, no groups, no issuer, no hint about who the caller might be or what exists in the cluster. Answering it costs nothing (the caller already knows whether it holds a cookie) and withholding it costs the whole sign-in journey.  The predicate is the platform SuperAdmin fact — the SAME one every other route here gates on, minted from a validated principal whose org is the reserved admin org — so a validated-but-not-SuperAdmin caller is reported as NOT signed in, which is the truth as this console defines it: they cannot use it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDeploySessionUserinfoWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deploy/session/userinfo';

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

  /// Answers \"is this browser signed in, and if not where does it sign in?\" — the dashboard SPA's bootstrap question, and the only route on this plane that answers for an anonymous caller.
  ///
  /// Answers \"is this browser signed in, and if not where does it sign in?\" — the dashboard SPA's bootstrap question, and the only route on this plane that answers for an anonymous caller.  The anonymous answer carries loggedIn:false and a URL and NOTHING else: no username, no org, no groups, no issuer, no hint about who the caller might be or what exists in the cluster. Answering it costs nothing (the caller already knows whether it holds a cookie) and withholding it costs the whole sign-in journey.  The predicate is the platform SuperAdmin fact — the SAME one every other route here gates on, minted from a validated principal whose org is the reserved admin org — so a validated-but-not-SuperAdmin caller is reported as NOT signed in, which is the truth as this console defines it: they cannot use it.
  Future<SessionUser?> getDeploySessionUserinfo() async {
    final response = await getDeploySessionUserinfoWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SessionUser',) as SessionUser;
    
    }
    return null;
  }

  /// Returns the argocd AuthSettings object the dashboard SPA awaits before its first render.
  ///
  /// Returns the argocd AuthSettings object the dashboard SPA awaits before its first render.  Every value is a CONSTANT of this projection rather than configuration read from anywhere: the SPA's own login form is reported disabled and its OIDC config null because Hanzo IAM owns identity at the edge and this console's sign-in is GET /v1/deploy/login, and every argocd feature the projection does not implement — status badges, Dex connectors, config-management plugins, kustomize versions, the exec terminal, apps-in-any-namespace, the hydrator, sync-with-replace — is reported off. Platform SuperAdmin only.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDeploySettingsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deploy/settings';

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

  /// Returns the argocd AuthSettings object the dashboard SPA awaits before its first render.
  ///
  /// Returns the argocd AuthSettings object the dashboard SPA awaits before its first render.  Every value is a CONSTANT of this projection rather than configuration read from anywhere: the SPA's own login form is reported disabled and its OIDC config null because Hanzo IAM owns identity at the edge and this console's sign-in is GET /v1/deploy/login, and every argocd feature the projection does not implement — status badges, Dex connectors, config-management plugins, kustomize versions, the exec terminal, apps-in-any-namespace, the hydrator, sync-with-replace — is reported off. Platform SuperAdmin only.
  Future<ConsoleSettings?> getDeploySettings() async {
    final response = await getDeploySettingsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConsoleSettings',) as ConsoleSettings;
    
    }
    return null;
  }

  /// Live application fleet updates as Server-Sent Events
  ///
  /// Holds the connection open as text/event-stream and pushes one watch event per application change. It opens with an `ADDED` frame for every application currently present — the same projection the applications list serves, so a client renders a complete fleet from the stream alone — and then forwards `ADDED`, `MODIFIED` and `DELETED` as they happen, with a keep-alive every 25 seconds that is also how a vanished client is noticed and its watch torn down.  Read-only and TENANT-SCOPED, fail-closed: a platform SuperAdmin streams the whole fleet, a validated org member streams only its own org's applications, anyone else gets 403 and no stream. No cluster client configured is 503. If the deployment is not granted the watch verb the stream degrades to keep-alives only — the initial state still renders, it simply stops updating — rather than failing the connection.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDeployStreamApplicationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deploy/stream/applications';

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

  /// Live application fleet updates as Server-Sent Events
  ///
  /// Holds the connection open as text/event-stream and pushes one watch event per application change. It opens with an `ADDED` frame for every application currently present — the same projection the applications list serves, so a client renders a complete fleet from the stream alone — and then forwards `ADDED`, `MODIFIED` and `DELETED` as they happen, with a keep-alive every 25 seconds that is also how a vanished client is noticed and its watch torn down.  Read-only and TENANT-SCOPED, fail-closed: a platform SuperAdmin streams the whole fleet, a validated org member streams only its own org's applications, anyone else gets 403 and no stream. No cluster client configured is 503. If the deployment is not granted the watch verb the stream degrades to keep-alives only — the initial state still renders, it simply stops updating — rather than failing the connection.
  Future<void> getDeployStreamApplications() async {
    final response = await getDeployStreamApplicationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Live resource tree for one application, as Server-Sent Events
  ///
  /// Holds the connection open as text/event-stream and pushes the application's whole resource tree — its live child objects and each one's derived health — once immediately and again on every keep-alive tick, so a client always has a current picture without polling. The refresh IS the keep-alive: it is a cheap rebuild rather than a watch, so there is no multi-resource watch to leak.  TENANT-SCOPED and fail-closed BEFORE the stream opens, which is the rule that matters: the caller's scope and the application's namespace are resolved first, so an unvalidated caller gets a plain 403 and an application belonging to another tenant gets a plain 404 — never an opened stream that emits nothing. A SuperAdmin reaches the whole fleet, an org member only its own org's applications. No cluster client configured is 503.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<Response> getDeployStreamApplicationsByNameResourceTreeWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deploy/stream/applications/{name}/resource-tree'
      .replaceAll('{name}', name);

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

  /// Live resource tree for one application, as Server-Sent Events
  ///
  /// Holds the connection open as text/event-stream and pushes the application's whole resource tree — its live child objects and each one's derived health — once immediately and again on every keep-alive tick, so a client always has a current picture without polling. The refresh IS the keep-alive: it is a cheap rebuild rather than a watch, so there is no multi-resource watch to leak.  TENANT-SCOPED and fail-closed BEFORE the stream opens, which is the rule that matters: the caller's scope and the application's namespace are resolved first, so an unvalidated caller gets a plain 403 and an application belonging to another tenant gets a plain 404 — never an opened stream that emits nothing. A SuperAdmin reaches the whole fleet, an org member only its own org's applications. No cluster client configured is 503.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<void> getDeployStreamApplicationsByNameResourceTree(String name,) async {
    final response = await getDeployStreamApplicationsByNameResourceTreeWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the argocd VersionMessage the dashboard SPA reads at bootstrap.
  ///
  /// Returns the argocd VersionMessage the dashboard SPA reads at bootstrap. There is no argocd binary behind this plane — it is a projection over operator App CRs — so the fields say so rather than describing a build: Version names the projection, BuildDate is the moment this response was generated, and Compiler/Platform/GoVersion are the constants the SPA tolerates rather than facts about this process. Platform SuperAdmin only.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDeployVersionWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deploy/version';

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

  /// Returns the argocd VersionMessage the dashboard SPA reads at bootstrap.
  ///
  /// Returns the argocd VersionMessage the dashboard SPA reads at bootstrap. There is no argocd binary behind this plane — it is a projection over operator App CRs — so the fields say so rather than describing a build: Version names the projection, BuildDate is the moment this response was generated, and Compiler/Platform/GoVersion are the constants the SPA tolerates rather than facts about this process. Platform SuperAdmin only.
  Future<VersionMessage?> getDeployVersion() async {
    final response = await getDeployVersionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VersionMessage',) as VersionMessage;
    
    }
    return null;
  }

  /// The console's rollback control — today it requests a reconcile, nothing more
  ///
  /// Performs exactly what the sync action performs: it stamps the sync-requested timestamp onto the application's App CR and answers the application re-projected. It does NOT select, pin or revert to a prior image tag, and that is the one thing to know before wiring anything to it — the name is the console's, the behaviour is the sync. Pinning a previous release rides the release seam, which this address does not call yet.  SuperAdmin-only and fail-closed, reading no request body, with an unknown application name a 404 and no cluster client a 503 — the same gate and the same failures as the sync it shares a handler with.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<Response> postDeployApplicationsByNameRollbackWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deploy/applications/{name}/rollback'
      .replaceAll('{name}', name);

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

  /// The console's rollback control — today it requests a reconcile, nothing more
  ///
  /// Performs exactly what the sync action performs: it stamps the sync-requested timestamp onto the application's App CR and answers the application re-projected. It does NOT select, pin or revert to a prior image tag, and that is the one thing to know before wiring anything to it — the name is the console's, the behaviour is the sync. Pinning a previous release rides the release seam, which this address does not call yet.  SuperAdmin-only and fail-closed, reading no request body, with an unknown application name a 404 and no cluster client a 503 — the same gate and the same failures as the sync it shares a handler with.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<void> postDeployApplicationsByNameRollback(String name,) async {
    final response = await postDeployApplicationsByNameRollbackWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Ask the operator to reconcile one application now
  ///
  /// Requests an immediate reconcile of one application by stamping a sync-requested timestamp onto its App CR, which the operator's watch observes, and answers the application re-projected. It ASKS, it does not apply: the operator performs the reconcile on its own clock, so a 200 means the request landed, not that the rollout finished — the returned row's running version still lags until it does. The CR is the desired source today, so this is a nudge; when git becomes the source the same address becomes apply-from-git.  SuperAdmin-only and fail-closed — a non-SuperAdmin is refused before any cluster object is read or patched, and the write surface stays admin-only while the tenant surface is read-only reflection. It reads no request body. An unknown application name is a 404; no cluster client configured is a 503.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<Response> postDeployApplicationsByNameSyncWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deploy/applications/{name}/sync'
      .replaceAll('{name}', name);

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

  /// Ask the operator to reconcile one application now
  ///
  /// Requests an immediate reconcile of one application by stamping a sync-requested timestamp onto its App CR, which the operator's watch observes, and answers the application re-projected. It ASKS, it does not apply: the operator performs the reconcile on its own clock, so a 200 means the request landed, not that the rollout finished — the returned row's running version still lags until it does. The CR is the desired source today, so this is a nudge; when git becomes the source the same address becomes apply-from-git.  SuperAdmin-only and fail-closed — a non-SuperAdmin is refused before any cluster object is read or patched, and the write surface stays admin-only while the tenant surface is read-only reflection. It reads no request body. An unknown application name is a 404; no cluster client configured is a 503.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<void> postDeployApplicationsByNameSync(String name,) async {
    final response = await postDeployApplicationsByNameSyncWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// End the console session on this host
  ///
  /// Clears this console's session cookie and answers the signed-out state with the sign-in URL to start again. IAM's own session is untouched — this ends the console session only, so signing back in may not prompt for credentials.  It is a POST because it changes state. As a GET it was reachable by a cross-site top-level navigation, which a SameSite=Lax cookie still rides, so any page could sign a SuperAdmin out; a POST is not carried cross-site by that cookie.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postDeployLogoutWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deploy/logout';

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

  /// End the console session on this host
  ///
  /// Clears this console's session cookie and answers the signed-out state with the sign-in URL to start again. IAM's own session is untouched — this ends the console session only, so signing back in may not prompt for credentials.  It is a POST because it changes state. As a GET it was reachable by a cross-site top-level navigation, which a SameSite=Lax cookie still rides, so any page could sign a SuperAdmin out; a POST is not carried cross-site by that cookie.
  Future<void> postDeployLogout() async {
    final response = await postDeployLogoutWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Render the configured git source and apply it to the cluster, once
  ///
  /// Runs one full GitOps sync through the embedded engine — render the configured repo, ref and path, then three-way server-side apply with scoped prune — and answers the revision it applied, the source it came from, the declared/synced/pruned/failed counts and a per-resource result. This is the WRITE half of the plane: it mutates live cluster objects and, with prune enabled, deletes objects the source no longer declares.  SuperAdmin-only and fail-closed — a non-SuperAdmin is refused before any cluster object is read or touched. The git source is read AS THE CALLER, so the source plane scopes the answer itself rather than trusting this one to have scoped it. It reads no request body; the source is configuration, not a parameter. A deployment with the engine switched off, or with no usable cluster config, answers 503; a failure to start, render or sync is a 502.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postDeployReconcileWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deploy/reconcile';

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

  /// Render the configured git source and apply it to the cluster, once
  ///
  /// Runs one full GitOps sync through the embedded engine — render the configured repo, ref and path, then three-way server-side apply with scoped prune — and answers the revision it applied, the source it came from, the declared/synced/pruned/failed counts and a per-resource result. This is the WRITE half of the plane: it mutates live cluster objects and, with prune enabled, deletes objects the source no longer declares.  SuperAdmin-only and fail-closed — a non-SuperAdmin is refused before any cluster object is read or touched. The git source is read AS THE CALLER, so the source plane scopes the answer itself rather than trusting this one to have scoped it. It reads no request body; the source is configuration, not a parameter. A deployment with the engine switched off, or with no usable cluster config, answers 503; a failure to start, render or sync is a 502.
  Future<void> postDeployReconcile() async {
    final response = await postDeployReconcileWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
