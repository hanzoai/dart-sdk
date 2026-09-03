//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class NetworkApi {
  NetworkApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Removes one of the org's fabric identities.
  ///
  /// Removes one of the org's fabric identities. The device's credential stops authenticating and its enrollment, if unspent, stops enrolling.  An id belonging to another org — or to nothing — is 404 before any write reaches the controller: whether an identity exists is itself a cross-tenant fact, and a delete may only ever act on what the caller could list.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the identity id from the path. The URL is the addressing authority, so it binds from there whatever else the request carries.
  Future<Response> deleteNetworkIdentitiesByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/network/identities/{id}'
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

  /// Removes one of the org's fabric identities.
  ///
  /// Removes one of the org's fabric identities. The device's credential stops authenticating and its enrollment, if unspent, stops enrolling.  An id belonging to another org — or to nothing — is 404 before any write reaches the controller: whether an identity exists is itself a cross-tenant fact, and a delete may only ever act on what the caller could list.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the identity id from the path. The URL is the addressing authority, so it binds from there whatever else the request carries.
  Future<void> deleteNetworkIdentitiesById(String id,) async {
    final response = await deleteNetworkIdentitiesByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the caller's org overlay network on the Zero Trust fabric.
  ///
  /// Returns the caller's org overlay network on the Zero Trust fabric.  The org has at most ONE overlay, projected from the edge-routers tagged with its \"org-<org>\" role attribute: nodes is the real router count and status is \"connected\" once at least one router has dialed home, \"provisioning\" while none has. An org with no routers gets an empty list, never a fabricated network.  The read degrades rather than erroring: a deployment with no ZT credential, and a controller that cannot be reached, both answer 200 with an empty list so the console's Networks page renders a clean empty state instead of an error.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getNetworkWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/network';

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

  /// Returns the caller's org overlay network on the Zero Trust fabric.
  ///
  /// Returns the caller's org overlay network on the Zero Trust fabric.  The org has at most ONE overlay, projected from the edge-routers tagged with its \"org-<org>\" role attribute: nodes is the real router count and status is \"connected\" once at least one router has dialed home, \"provisioning\" while none has. An org with no routers gets an empty list, never a fabricated network.  The read degrades rather than erroring: a deployment with no ZT credential, and a controller that cannot be reached, both answer 200 with an empty list so the console's Networks page renders a clean empty state instead of an error.
  Future<NetworkList?> getNetwork() async {
    final response = await getNetworkWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NetworkList',) as NetworkList;
    
    }
    return null;
  }

  /// Returns one overlay network by id, scoped to the caller's org.
  ///
  /// Returns one overlay network by id, scoped to the caller's org.  The org has exactly one overlay network and its id is derived from the org, so any other id — another tenant's, or one that does not exist — is 404 rather than a peek across the tenant boundary. An org whose network exists but has no edge-routers is 404 too, for the same reason the list is empty: there is no overlay until something is on it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the network id from the path. The URL is the addressing authority, so it binds from there whatever else the request carries.
  Future<Response> getNetworkByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/network/{id}'
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

  /// Returns one overlay network by id, scoped to the caller's org.
  ///
  /// Returns one overlay network by id, scoped to the caller's org.  The org has exactly one overlay network and its id is derived from the org, so any other id — another tenant's, or one that does not exist — is 404 rather than a peek across the tenant boundary. An org whose network exists but has no edge-routers is 404 too, for the same reason the list is empty: there is no overlay until something is on it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the network id from the path. The URL is the addressing authority, so it binds from there whatever else the request carries.
  Future<NetworkView?> getNetworkById(String id,) async {
    final response = await getNetworkByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NetworkView',) as NetworkView;
    
    }
    return null;
  }

  /// Returns the fabric identities the caller's org owns.
  ///
  /// Returns the fabric identities the caller's org owns.  One row per identity tagged with the org's \"org-<org>\" role attribute — a device minted here, enrolled or not. An identity that has not yet enrolled still carries its one-time enrollment, so a mislaid JWT is read again here rather than re-minted.  A tenancy read over the full inventory, so like the mesh list it does NOT degrade: an unconfigured deployment answers 503.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getNetworkIdentitiesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/network/identities';

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

  /// Returns the fabric identities the caller's org owns.
  ///
  /// Returns the fabric identities the caller's org owns.  One row per identity tagged with the org's \"org-<org>\" role attribute — a device minted here, enrolled or not. An identity that has not yet enrolled still carries its one-time enrollment, so a mislaid JWT is read again here rather than re-minted.  A tenancy read over the full inventory, so like the mesh list it does NOT degrade: an unconfigured deployment answers 503.
  Future<IdentityList?> getNetworkIdentities() async {
    final response = await getNetworkIdentitiesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IdentityList',) as IdentityList;
    
    }
    return null;
  }

  /// Returns the Zero Trust routers the caller's org owns.
  ///
  /// Returns the Zero Trust routers the caller's org owns.  One row per real ZT edge-router tagged with the org's \"org-<org>\" role attribute, carrying the controller's own health signal: \"online\" when connected, \"disabled\" when administratively disabled, \"offline\" otherwise. region is filled only from a \"region-<slug>\" role attribute and omitted when the router carries none, so the column renders \"—\" rather than a guess.  The read degrades rather than erroring: a deployment with no ZT credential, and a controller that cannot be reached, both answer 200 with an empty list.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getNetworkRoutersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/network/routers';

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

  /// Returns the Zero Trust routers the caller's org owns.
  ///
  /// Returns the Zero Trust routers the caller's org owns.  One row per real ZT edge-router tagged with the org's \"org-<org>\" role attribute, carrying the controller's own health signal: \"online\" when connected, \"disabled\" when administratively disabled, \"offline\" otherwise. region is filled only from a \"region-<slug>\" role attribute and omitted when the router carries none, so the column renders \"—\" rather than a guess.  The read degrades rather than erroring: a deployment with no ZT credential, and a controller that cannot be reached, both answer 200 with an empty list.
  Future<RouterList?> getNetworkRouters() async {
    final response = await getNetworkRoutersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RouterList',) as RouterList;
    
    }
    return null;
  }

  /// Returns the Zero Trust edge services the caller's org owns.
  ///
  /// Returns the Zero Trust edge services the caller's org owns.  One row per real ZT edge service tagged with the org's \"org-<org>\" role attribute: mtls is \"required\" when the service mandates end-to-end encryption and \"enabled\" otherwise (the fabric always mutually authenticates every link), and status is \"active\" because a listed service is a configured, dialable entry. A service tagged for another org, or tagged for none, is invisible here.  Unlike the network and router reads this does NOT degrade: an unconfigured deployment answers 503 and an unreachable controller surfaces the upstream's status, so a mesh page never renders \"no services\" for a fabric it simply could not read.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getNetworkServicesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/network/services';

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

  /// Returns the Zero Trust edge services the caller's org owns.
  ///
  /// Returns the Zero Trust edge services the caller's org owns.  One row per real ZT edge service tagged with the org's \"org-<org>\" role attribute: mtls is \"required\" when the service mandates end-to-end encryption and \"enabled\" otherwise (the fabric always mutually authenticates every link), and status is \"active\" because a listed service is a configured, dialable entry. A service tagged for another org, or tagged for none, is invisible here.  Unlike the network and router reads this does NOT degrade: an unconfigured deployment answers 503 and an unreachable controller surfaces the upstream's status, so a mesh page never renders \"no services\" for a fabric it simply could not read.
  Future<MeshServiceList?> getNetworkServices() async {
    final response = await getNetworkServicesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MeshServiceList',) as MeshServiceList;
    
    }
    return null;
  }

  /// Mints a fabric identity for a device the caller's org brings.
  ///
  /// Mints a fabric identity for a device the caller's org brings.  The identity is created of type Device, tagged with the org's \"org-<org>\" role attribute plus any supplied roles — each scoped to the org, and a \"<service>-host\" role refused unless the org has published that service. The answer carries the controller's one-time enrollment JWT: the device presents it once to join the fabric, and until it does the same token can be read back off GET /v1/network/identities.  A write, so it does not degrade: an unconfigured deployment answers 503.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IdentityIn] identityIn (required):
  Future<Response> postNetworkIdentitiesWithHttpInfo(IdentityIn identityIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/network/identities';

    // ignore: prefer_final_locals
    Object? postBody = identityIn;

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

  /// Mints a fabric identity for a device the caller's org brings.
  ///
  /// Mints a fabric identity for a device the caller's org brings.  The identity is created of type Device, tagged with the org's \"org-<org>\" role attribute plus any supplied roles — each scoped to the org, and a \"<service>-host\" role refused unless the org has published that service. The answer carries the controller's one-time enrollment JWT: the device presents it once to join the fabric, and until it does the same token can be read back off GET /v1/network/identities.  A write, so it does not degrade: an unconfigured deployment answers 503.
  ///
  /// Parameters:
  ///
  /// * [IdentityIn] identityIn (required):
  Future<IdentityView?> postNetworkIdentities(IdentityIn identityIn,) async {
    final response = await postNetworkIdentitiesWithHttpInfo(identityIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IdentityView',) as IdentityView;
    
    }
    return null;
  }

  /// Puts a name on the org's overlay: a fabric service forwarding to host:port on whichever of the org's devices carries the \"<name>-host\" role, dialable at \"<name>.<org>.zt\" by any of the org's identities — and by the cloud's own, which is what lets a BYO cluster's apiserver be attached to the fleet with a \".zt\" kubeconfig.
  ///
  /// Puts a name on the org's overlay: a fabric service forwarding to host:port on whichever of the org's devices carries the \"<name>-host\" role, dialable at \"<name>.<org>.zt\" by any of the org's identities — and by the cloud's own, which is what lets a BYO cluster's apiserver be attached to the fleet with a \".zt\" kubeconfig.  Answers 201 with the service and its DNS name. The objects behind it are created in dependency order and unwound on failure, so a half-published service never lingers on the fabric.  A write, so it does not degrade: an unconfigured deployment answers 503.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ServiceIn] serviceIn (required):
  Future<Response> postNetworkServicesWithHttpInfo(ServiceIn serviceIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/network/services';

    // ignore: prefer_final_locals
    Object? postBody = serviceIn;

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

  /// Puts a name on the org's overlay: a fabric service forwarding to host:port on whichever of the org's devices carries the \"<name>-host\" role, dialable at \"<name>.<org>.zt\" by any of the org's identities — and by the cloud's own, which is what lets a BYO cluster's apiserver be attached to the fleet with a \".zt\" kubeconfig.
  ///
  /// Puts a name on the org's overlay: a fabric service forwarding to host:port on whichever of the org's devices carries the \"<name>-host\" role, dialable at \"<name>.<org>.zt\" by any of the org's identities — and by the cloud's own, which is what lets a BYO cluster's apiserver be attached to the fleet with a \".zt\" kubeconfig.  Answers 201 with the service and its DNS name. The objects behind it are created in dependency order and unwound on failure, so a half-published service never lingers on the fabric.  A write, so it does not degrade: an unconfigured deployment answers 503.
  ///
  /// Parameters:
  ///
  /// * [ServiceIn] serviceIn (required):
  Future<PublishedView?> postNetworkServices(ServiceIn serviceIn,) async {
    final response = await postNetworkServicesWithHttpInfo(serviceIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PublishedView',) as PublishedView;
    
    }
    return null;
  }
}
