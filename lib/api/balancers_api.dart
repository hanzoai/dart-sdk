//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class BalancersApi {
  BalancersApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Removes one of the caller org's load balancers and answers 204.
  ///
  /// Removes one of the caller org's load balancers and answers 204. Ownership is confirmed by re-fetching the resource before anything is deleted, so a cross-tenant id is a 404 rather than a delete of another org's load balancer.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the DigitalOcean resource id (a UUID), from the path.
  Future<Response> deleteBalancersByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/balancers/{id}'
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

  /// Removes one of the caller org's load balancers and answers 204.
  ///
  /// Removes one of the caller org's load balancers and answers 204. Ownership is confirmed by re-fetching the resource before anything is deleted, so a cross-tenant id is a 404 rather than a delete of another org's load balancer.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the DigitalOcean resource id (a UUID), from the path.
  Future<void> deleteBalancersById(String id,) async {
    final response = await deleteBalancersByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns every load balancer the caller's org owns, under the friendly names the org created them with.
  ///
  /// Returns every load balancer the caller's org owns, under the friendly names the org created them with. Same account-wide filter as the VPC listing: a load balancer outside the caller's \"o\"<orgHash>- namespace is never in the answer.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBalancersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/balancers';

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

  /// Returns every load balancer the caller's org owns, under the friendly names the org created them with.
  ///
  /// Returns every load balancer the caller's org owns, under the friendly names the org created them with. Same account-wide filter as the VPC listing: a load balancer outside the caller's \"o\"<orgHash>- namespace is never in the answer.
  Future<LbList?> getBalancers() async {
    final response = await getBalancersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LbList',) as LbList;
    
    }
    return null;
  }

  /// Returns one of the caller org's load balancers by id.
  ///
  /// Returns one of the caller org's load balancers by id. One that exists in another org's namespace is reported 404, never 403 — the same existence-oracle guard the VPC read applies.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the DigitalOcean resource id (a UUID), from the path.
  Future<Response> getBalancersByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/balancers/{id}'
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

  /// Returns one of the caller org's load balancers by id.
  ///
  /// Returns one of the caller org's load balancers by id. One that exists in another org's namespace is reported 404, never 403 — the same existence-oracle guard the VPC read applies.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the DigitalOcean resource id (a UUID), from the path.
  Future<LbView?> getBalancersById(String id,) async {
    final response = await getBalancersByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LbView',) as LbView;
    
    }
    return null;
  }

  /// Creates a load balancer in the caller's org namespace and answers 201 with it.
  ///
  /// Creates a load balancer in the caller's org namespace and answers 201 with it. The physical DigitalOcean name is derived server-side from the validated org; a name that already exists there is a 409. Omitting forwarding rules yields a usable HTTP 80→80 load balancer rather than a 422.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateLBReq] createLBReq (required):
  Future<Response> postBalancersWithHttpInfo(CreateLBReq createLBReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/balancers';

    // ignore: prefer_final_locals
    Object? postBody = createLBReq;

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

  /// Creates a load balancer in the caller's org namespace and answers 201 with it.
  ///
  /// Creates a load balancer in the caller's org namespace and answers 201 with it. The physical DigitalOcean name is derived server-side from the validated org; a name that already exists there is a 409. Omitting forwarding rules yields a usable HTTP 80→80 load balancer rather than a 422.
  ///
  /// Parameters:
  ///
  /// * [CreateLBReq] createLBReq (required):
  Future<LbView?> postBalancers(CreateLBReq createLBReq,) async {
    final response = await postBalancersWithHttpInfo(createLBReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LbView',) as LbView;
    
    }
    return null;
  }
}
