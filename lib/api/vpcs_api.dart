//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class VpcsApi {
  VpcsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Removes one of the caller org's VPCs and answers 204.
  ///
  /// Removes one of the caller org's VPCs and answers 204. Ownership is confirmed by re-fetching the resource and checking its physical name carries the caller's org prefix BEFORE anything is deleted, so a cross-tenant id is a 404 rather than a delete of another org's VPC.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the DigitalOcean resource id (a UUID), from the path.
  Future<Response> deleteVpcsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/vpcs/{id}'
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

  /// Removes one of the caller org's VPCs and answers 204.
  ///
  /// Removes one of the caller org's VPCs and answers 204. Ownership is confirmed by re-fetching the resource and checking its physical name carries the caller's org prefix BEFORE anything is deleted, so a cross-tenant id is a 404 rather than a delete of another org's VPC.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the DigitalOcean resource id (a UUID), from the path.
  Future<void> deleteVpcsById(String id,) async {
    final response = await deleteVpcsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns every VPC the caller's org owns, under the friendly names the org created them with.
  ///
  /// Returns every VPC the caller's org owns, under the friendly names the org created them with. DigitalOcean is one account for the whole deployment, so the account-wide inventory is filtered to the caller's own \"o\"<orgHash>- name prefix and the prefix is stripped — another org's VPC is not merely hidden, it is never in the answer.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getVpcsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/vpcs';

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

  /// Returns every VPC the caller's org owns, under the friendly names the org created them with.
  ///
  /// Returns every VPC the caller's org owns, under the friendly names the org created them with. DigitalOcean is one account for the whole deployment, so the account-wide inventory is filtered to the caller's own \"o\"<orgHash>- name prefix and the prefix is stripped — another org's VPC is not merely hidden, it is never in the answer.
  Future<VpcList?> getVpcs() async {
    final response = await getVpcsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VpcList',) as VpcList;
    
    }
    return null;
  }

  /// Returns one of the caller org's VPCs by id.
  ///
  /// Returns one of the caller org's VPCs by id. A VPC that exists but sits in another org's namespace is reported 404, never 403 — the answer must not tell one tenant that another tenant's resource exists.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the DigitalOcean resource id (a UUID), from the path.
  Future<Response> getVpcsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/vpcs/{id}'
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

  /// Returns one of the caller org's VPCs by id.
  ///
  /// Returns one of the caller org's VPCs by id. A VPC that exists but sits in another org's namespace is reported 404, never 403 — the answer must not tell one tenant that another tenant's resource exists.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the DigitalOcean resource id (a UUID), from the path.
  Future<VpcView?> getVpcsById(String id,) async {
    final response = await getVpcsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VpcView',) as VpcView;
    
    }
    return null;
  }

  /// Creates a VPC in the caller's org namespace and answers 201 with it.
  ///
  /// Creates a VPC in the caller's org namespace and answers 201 with it. The physical DigitalOcean name is derived server-side from the validated org, so a tenant can only ever create inside its own namespace; a name that already exists there is a 409.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateVPCReq] createVPCReq (required):
  Future<Response> postVpcsWithHttpInfo(CreateVPCReq createVPCReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/vpcs';

    // ignore: prefer_final_locals
    Object? postBody = createVPCReq;

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

  /// Creates a VPC in the caller's org namespace and answers 201 with it.
  ///
  /// Creates a VPC in the caller's org namespace and answers 201 with it. The physical DigitalOcean name is derived server-side from the validated org, so a tenant can only ever create inside its own namespace; a name that already exists there is a 409.
  ///
  /// Parameters:
  ///
  /// * [CreateVPCReq] createVPCReq (required):
  Future<VpcView?> postVpcs(CreateVPCReq createVPCReq,) async {
    final response = await postVpcsWithHttpInfo(createVPCReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VpcView',) as VpcView;
    
    }
    return null;
  }
}
