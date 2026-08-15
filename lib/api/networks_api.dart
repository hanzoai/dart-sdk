//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class NetworksApi {
  NetworksApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns the caller's org overlay network on the Zero Trust fabric.
  ///
  /// Returns the caller's org overlay network on the Zero Trust fabric.  The org has at most ONE overlay, projected from the edge-routers tagged with its \"org-<org>\" role attribute: nodes is the real router count and status is \"connected\" once at least one router has dialed home, \"provisioning\" while none has. An org with no routers gets an empty list, never a fabricated network.  The read degrades rather than erroring: a deployment with no ZT credential, and a controller that cannot be reached, both answer 200 with an empty list so the console's Networks page renders a clean empty state instead of an error.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getNetworksWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/networks';

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
  Future<NetworkList?> getNetworks() async {
    final response = await getNetworksWithHttpInfo();
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
  Future<Response> getNetworksByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/networks/{id}'
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
  Future<NetworkView?> getNetworksById(String id,) async {
    final response = await getNetworksByIdWithHttpInfo(id,);
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

  /// Returns the Zero Trust routers the caller's org owns.
  ///
  /// Returns the Zero Trust routers the caller's org owns.  One row per real ZT edge-router tagged with the org's \"org-<org>\" role attribute, carrying the controller's own health signal: \"online\" when connected, \"disabled\" when administratively disabled, \"offline\" otherwise. region is filled only from a \"region-<slug>\" role attribute and omitted when the router carries none, so the column renders \"—\" rather than a guess.  The read degrades rather than erroring: a deployment with no ZT credential, and a controller that cannot be reached, both answer 200 with an empty list.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getNetworksRoutersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/networks/routers';

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
  Future<RouterList?> getNetworksRouters() async {
    final response = await getNetworksRoutersWithHttpInfo();
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
}
