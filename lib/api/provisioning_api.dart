//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class ProvisioningApi {
  ProvisioningApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Deprovisions one Hanzo Datastore warehouse.
  ///
  /// Deprovisions one Hanzo Datastore warehouse. It reverts any app instance bound to it back to Base BEFORE tearing down the org's dedicated instance, then deletes the sealed credential and removes the metadata row. Answers 204 with no body; a second call is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<Response> deleteProvisioningDatastoreByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/provisioning/datastore/{name}'
      .replaceAll('{name}', name);

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

  /// Deprovisions one Hanzo Datastore warehouse.
  ///
  /// Deprovisions one Hanzo Datastore warehouse. It reverts any app instance bound to it back to Base BEFORE tearing down the org's dedicated instance, then deletes the sealed credential and removes the metadata row. Answers 204 with no body; a second call is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<void> deleteProvisioningDatastoreByName(String name,) async {
    final response = await deleteProvisioningDatastoreByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// DropDocDB deprovisions one Hanzo DocDB database.
  ///
  /// DropDocDB deprovisions one Hanzo DocDB database. It reverts any app instance bound to it back to Base BEFORE tearing down the org's dedicated FerretDB instance, then deletes the sealed credential and removes the metadata row. Answers 204 with no body; a second call is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<Response> deleteProvisioningDocdbByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/provisioning/docdb/{name}'
      .replaceAll('{name}', name);

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

  /// DropDocDB deprovisions one Hanzo DocDB database.
  ///
  /// DropDocDB deprovisions one Hanzo DocDB database. It reverts any app instance bound to it back to Base BEFORE tearing down the org's dedicated FerretDB instance, then deletes the sealed credential and removes the metadata row. Answers 204 with no body; a second call is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<void> deleteProvisioningDocdbByName(String name,) async {
    final response = await deleteProvisioningDocdbByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// DropKV deprovisions one Hanzo KV store.
  ///
  /// DropKV deprovisions one Hanzo KV store. It reverts any app instance bound to it back to Base BEFORE tearing down the org's dedicated Valkey instance, then deletes the sealed credential and removes the metadata row. Answers 204 with no body; a second call is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<Response> deleteProvisioningKvByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/provisioning/kv/{name}'
      .replaceAll('{name}', name);

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

  /// DropKV deprovisions one Hanzo KV store.
  ///
  /// DropKV deprovisions one Hanzo KV store. It reverts any app instance bound to it back to Base BEFORE tearing down the org's dedicated Valkey instance, then deletes the sealed credential and removes the metadata row. Answers 204 with no body; a second call is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<void> deleteProvisioningKvByName(String name,) async {
    final response = await deleteProvisioningKvByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deletes one bucket from the shared object store and removes its metadata row.
  ///
  /// Deletes one bucket from the shared object store and removes its metadata row. Answers 204 with no body; a second call is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<Response> deleteProvisioningS3ByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/provisioning/s3/{name}'
      .replaceAll('{name}', name);

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

  /// Deletes one bucket from the shared object store and removes its metadata row.
  ///
  /// Deletes one bucket from the shared object store and removes its metadata row. Answers 204 with no body; a second call is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<void> deleteProvisioningS3ByName(String name,) async {
    final response = await deleteProvisioningS3ByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deletes one search index from the shared backend and removes its metadata row.
  ///
  /// Deletes one search index from the shared backend and removes its metadata row. Answers 204 with no body; a second call is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<Response> deleteProvisioningSearchByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/provisioning/search/{name}'
      .replaceAll('{name}', name);

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

  /// Deletes one search index from the shared backend and removes its metadata row.
  ///
  /// Deletes one search index from the shared backend and removes its metadata row. Answers 204 with no body; a second call is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<void> deleteProvisioningSearchByName(String name,) async {
    final response = await deleteProvisioningSearchByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// DropSQL deprovisions one Hanzo SQL database.
  ///
  /// DropSQL deprovisions one Hanzo SQL database. It reverts any app instance bound to it back to Base BEFORE tearing down the org's dedicated Postgres instance — never a live app pointed at a deleted backend — then deletes the sealed credential and removes the metadata row. Answers 204 with no body; a second call is a 404, not a second delete.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<Response> deleteProvisioningSqlByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/provisioning/sql/{name}'
      .replaceAll('{name}', name);

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

  /// DropSQL deprovisions one Hanzo SQL database.
  ///
  /// DropSQL deprovisions one Hanzo SQL database. It reverts any app instance bound to it back to Base BEFORE tearing down the org's dedicated Postgres instance — never a live app pointed at a deleted backend — then deletes the sealed credential and removes the metadata row. Answers 204 with no body; a second call is a 404, not a second delete.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<void> deleteProvisioningSqlByName(String name,) async {
    final response = await deleteProvisioningSqlByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deletes one vector collection from the shared backend and removes its metadata row.
  ///
  /// Deletes one vector collection from the shared backend and removes its metadata row. Answers 204 with no body; a second call is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<Response> deleteProvisioningVectorByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/provisioning/vector/{name}'
      .replaceAll('{name}', name);

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

  /// Deletes one vector collection from the shared backend and removes its metadata row.
  ///
  /// Deletes one vector collection from the shared backend and removes its metadata row. Answers 204 with no body; a second call is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<void> deleteProvisioningVectorByName(String name,) async {
    final response = await deleteProvisioningVectorByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists the caller org's Hanzo Datastore warehouses.
  ///
  /// Lists the caller org's Hanzo Datastore warehouses. Each one is a DEDICATED analytical instance the org alone runs, so the host is that instance's own in-cluster Service and the port is its HTTP port, 8123.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getProvisioningDatastoreWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/provisioning/datastore';

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

  /// Lists the caller org's Hanzo Datastore warehouses.
  ///
  /// Lists the caller org's Hanzo Datastore warehouses. Each one is a DEDICATED analytical instance the org alone runs, so the host is that instance's own in-cluster Service and the port is its HTTP port, 8123.
  Future<List<ProvisionedSummary>?> getProvisioningDatastore() async {
    final response = await getProvisioningDatastoreWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ProvisionedSummary>') as List)
        .cast<ProvisionedSummary>()
        .toList(growable: false);

    }
    return null;
  }

  /// Returns one Hanzo Datastore warehouse's metadata.
  ///
  /// Returns one Hanzo Datastore warehouse's metadata. It carries the warehouse's status, its instance address and the admin user the instance booted with — never the password. A still-booting instance reads \"provisioning\", reconciled from the operator's live view rather than the row.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<Response> getProvisioningDatastoreByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/provisioning/datastore/{name}'
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

  /// Returns one Hanzo Datastore warehouse's metadata.
  ///
  /// Returns one Hanzo Datastore warehouse's metadata. It carries the warehouse's status, its instance address and the admin user the instance booted with — never the password. A still-booting instance reads \"provisioning\", reconciled from the operator's live view rather than the row.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<ProvisionedResource?> getProvisioningDatastoreByName(String name,) async {
    final response = await getProvisioningDatastoreByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProvisionedResource',) as ProvisionedResource;
    
    }
    return null;
  }

  /// ListDocDB lists the caller org's Hanzo DocDB document databases.
  ///
  /// ListDocDB lists the caller org's Hanzo DocDB document databases. Each one is a DEDICATED FerretDB instance the org alone runs, speaking the MongoDB wire protocol, so the host is that instance's own in-cluster Service and the port is 27017.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getProvisioningDocdbWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/provisioning/docdb';

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

  /// ListDocDB lists the caller org's Hanzo DocDB document databases.
  ///
  /// ListDocDB lists the caller org's Hanzo DocDB document databases. Each one is a DEDICATED FerretDB instance the org alone runs, speaking the MongoDB wire protocol, so the host is that instance's own in-cluster Service and the port is 27017.
  Future<List<ProvisionedSummary>?> getProvisioningDocdb() async {
    final response = await getProvisioningDocdbWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ProvisionedSummary>') as List)
        .cast<ProvisionedSummary>()
        .toList(growable: false);

    }
    return null;
  }

  /// GetDocDB returns one Hanzo DocDB database's metadata.
  ///
  /// GetDocDB returns one Hanzo DocDB database's metadata. It carries the database's status, its instance address and the SCRAM user the instance was set up with — never the password. A still-booting instance reads \"provisioning\", reconciled from the operator's live view.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<Response> getProvisioningDocdbByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/provisioning/docdb/{name}'
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

  /// GetDocDB returns one Hanzo DocDB database's metadata.
  ///
  /// GetDocDB returns one Hanzo DocDB database's metadata. It carries the database's status, its instance address and the SCRAM user the instance was set up with — never the password. A still-booting instance reads \"provisioning\", reconciled from the operator's live view.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<ProvisionedResource?> getProvisioningDocdbByName(String name,) async {
    final response = await getProvisioningDocdbByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProvisionedResource',) as ProvisionedResource;
    
    }
    return null;
  }

  /// ListKV lists the caller org's Hanzo KV stores.
  ///
  /// ListKV lists the caller org's Hanzo KV stores. Each one is a DEDICATED Valkey instance the org alone runs, so the host is that instance's own in-cluster Service and the port is 6379.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getProvisioningKvWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/provisioning/kv';

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

  /// ListKV lists the caller org's Hanzo KV stores.
  ///
  /// ListKV lists the caller org's Hanzo KV stores. Each one is a DEDICATED Valkey instance the org alone runs, so the host is that instance's own in-cluster Service and the port is 6379.
  Future<List<ProvisionedSummary>?> getProvisioningKv() async {
    final response = await getProvisioningKvWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ProvisionedSummary>') as List)
        .cast<ProvisionedSummary>()
        .toList(growable: false);

    }
    return null;
  }

  /// GetKV returns one Hanzo KV store's metadata.
  ///
  /// GetKV returns one Hanzo KV store's metadata. It carries the store's status, its instance address and the Valkey user it authenticates as (\"default\", the only user a requirepass instance has) — never the password. A still-booting instance reads \"provisioning\", reconciled from the operator's live view.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<Response> getProvisioningKvByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/provisioning/kv/{name}'
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

  /// GetKV returns one Hanzo KV store's metadata.
  ///
  /// GetKV returns one Hanzo KV store's metadata. It carries the store's status, its instance address and the Valkey user it authenticates as (\"default\", the only user a requirepass instance has) — never the password. A still-booting instance reads \"provisioning\", reconciled from the operator's live view.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<ProvisionedResource?> getProvisioningKvByName(String name,) async {
    final response = await getProvisioningKvByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProvisionedResource',) as ProvisionedResource;
    
    }
    return null;
  }

  /// Lists the caller org's object-storage buckets.
  ///
  /// Lists the caller org's object-storage buckets. A bucket lives in an already-live shared object store and is reached through the public gateway. The names here are the friendly ones the org provisioned; the physical bucket is org-namespaced underneath, which is what keeps two tenants' buckets distinct.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getProvisioningS3WithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/provisioning/s3';

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

  /// Lists the caller org's object-storage buckets.
  ///
  /// Lists the caller org's object-storage buckets. A bucket lives in an already-live shared object store and is reached through the public gateway. The names here are the friendly ones the org provisioned; the physical bucket is org-namespaced underneath, which is what keeps two tenants' buckets distinct.
  Future<List<ProvisionedSummary>?> getProvisioningS3() async {
    final response = await getProvisioningS3WithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ProvisionedSummary>') as List)
        .cast<ProvisionedSummary>()
        .toList(growable: false);

    }
    return null;
  }

  /// Returns one bucket's metadata.
  ///
  /// Returns one bucket's metadata. It carries the bucket's status and the gateway address it is reached at, and no username: the object store authenticates with a shared, out-of-band key rather than a per-bucket credential.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<Response> getProvisioningS3ByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/provisioning/s3/{name}'
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

  /// Returns one bucket's metadata.
  ///
  /// Returns one bucket's metadata. It carries the bucket's status and the gateway address it is reached at, and no username: the object store authenticates with a shared, out-of-band key rather than a per-bucket credential.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<ProvisionedResource?> getProvisioningS3ByName(String name,) async {
    final response = await getProvisioningS3ByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProvisionedResource',) as ProvisionedResource;
    
    }
    return null;
  }

  /// Lists the caller org's search indexes.
  ///
  /// Lists the caller org's search indexes. An index is a logical resource inside an already-live shared backend, so every one of them is reached through the public gateway rather than at an instance of its own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getProvisioningSearchWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/provisioning/search';

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

  /// Lists the caller org's search indexes.
  ///
  /// Lists the caller org's search indexes. An index is a logical resource inside an already-live shared backend, so every one of them is reached through the public gateway rather than at an instance of its own.
  Future<List<ProvisionedSummary>?> getProvisioningSearch() async {
    final response = await getProvisioningSearchWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ProvisionedSummary>') as List)
        .cast<ProvisionedSummary>()
        .toList(growable: false);

    }
    return null;
  }

  /// Returns one search index's metadata.
  ///
  /// Returns one search index's metadata. It carries the index's status and the gateway address it is reached at, and no username: the backend authenticates with a shared, out-of-band key rather than a per-index credential.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<Response> getProvisioningSearchByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/provisioning/search/{name}'
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

  /// Returns one search index's metadata.
  ///
  /// Returns one search index's metadata. It carries the index's status and the gateway address it is reached at, and no username: the backend authenticates with a shared, out-of-band key rather than a per-index credential.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<ProvisionedResource?> getProvisioningSearchByName(String name,) async {
    final response = await getProvisioningSearchByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProvisionedResource',) as ProvisionedResource;
    
    }
    return null;
  }

  /// ListSQL lists the caller org's Hanzo SQL databases.
  ///
  /// ListSQL lists the caller org's Hanzo SQL databases. Each one is a DEDICATED PostgreSQL instance the org alone runs, so the host is that instance's own in-cluster Service and the port is 5432.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getProvisioningSqlWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/provisioning/sql';

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

  /// ListSQL lists the caller org's Hanzo SQL databases.
  ///
  /// ListSQL lists the caller org's Hanzo SQL databases. Each one is a DEDICATED PostgreSQL instance the org alone runs, so the host is that instance's own in-cluster Service and the port is 5432.
  Future<List<ProvisionedSummary>?> getProvisioningSql() async {
    final response = await getProvisioningSqlWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ProvisionedSummary>') as List)
        .cast<ProvisionedSummary>()
        .toList(growable: false);

    }
    return null;
  }

  /// GetSQL returns one Hanzo SQL database's metadata.
  ///
  /// GetSQL returns one Hanzo SQL database's metadata. It carries the database's status, its instance address and the admin user Postgres booted with — never the password, which is returned once at create and otherwise lives only in Hanzo KMS. A still-booting instance reads \"provisioning\", reconciled from the operator's live view rather than from the row.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<Response> getProvisioningSqlByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/provisioning/sql/{name}'
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

  /// GetSQL returns one Hanzo SQL database's metadata.
  ///
  /// GetSQL returns one Hanzo SQL database's metadata. It carries the database's status, its instance address and the admin user Postgres booted with — never the password, which is returned once at create and otherwise lives only in Hanzo KMS. A still-booting instance reads \"provisioning\", reconciled from the operator's live view rather than from the row.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<ProvisionedResource?> getProvisioningSqlByName(String name,) async {
    final response = await getProvisioningSqlByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProvisionedResource',) as ProvisionedResource;
    
    }
    return null;
  }

  /// Lists the caller org's vector collections.
  ///
  /// Lists the caller org's vector collections. A collection is a logical resource inside an already-live shared backend, so every one of them is reached through the public gateway rather than at an instance of its own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getProvisioningVectorWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/provisioning/vector';

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

  /// Lists the caller org's vector collections.
  ///
  /// Lists the caller org's vector collections. A collection is a logical resource inside an already-live shared backend, so every one of them is reached through the public gateway rather than at an instance of its own.
  Future<List<ProvisionedSummary>?> getProvisioningVector() async {
    final response = await getProvisioningVectorWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ProvisionedSummary>') as List)
        .cast<ProvisionedSummary>()
        .toList(growable: false);

    }
    return null;
  }

  /// Returns one vector collection's metadata.
  ///
  /// Returns one vector collection's metadata. It carries the collection's status and the gateway address it is reached at, and no username: the backend authenticates with a shared, out-of-band key rather than a per-collection credential, so there is no per-resource user to report.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<Response> getProvisioningVectorByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/provisioning/vector/{name}'
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

  /// Returns one vector collection's metadata.
  ///
  /// Returns one vector collection's metadata. It carries the collection's status and the gateway address it is reached at, and no username: the backend authenticates with a shared, out-of-band key rather than a per-collection credential, so there is no per-resource user to report.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<ProvisionedResource?> getProvisioningVectorByName(String name,) async {
    final response = await getProvisioningVectorByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProvisionedResource',) as ProvisionedResource;
    
    }
    return null;
  }

  /// Launches your org's OWN Hanzo Datastore instance and answers with its `datastore://` connection string.
  ///
  /// Launches your org's OWN Hanzo Datastore instance and answers with its `datastore://` connection string.  The instance is yours alone — a deployment in your own tenant namespace, so its admin credential is naturally scoped to you and no other tenant shares the process. Off-cluster this fails closed with 503 rather than handing back a shared one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProvisionRequest] provisionRequest (required):
  Future<Response> postProvisioningDatastoreWithHttpInfo(ProvisionRequest provisionRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/provisioning/datastore';

    // ignore: prefer_final_locals
    Object? postBody = provisionRequest;

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

  /// Launches your org's OWN Hanzo Datastore instance and answers with its `datastore://` connection string.
  ///
  /// Launches your org's OWN Hanzo Datastore instance and answers with its `datastore://` connection string.  The instance is yours alone — a deployment in your own tenant namespace, so its admin credential is naturally scoped to you and no other tenant shares the process. Off-cluster this fails closed with 503 rather than handing back a shared one.
  ///
  /// Parameters:
  ///
  /// * [ProvisionRequest] provisionRequest (required):
  Future<ProvisionResult?> postProvisioningDatastore(ProvisionRequest provisionRequest,) async {
    final response = await postProvisioningDatastoreWithHttpInfo(provisionRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProvisionResult',) as ProvisionResult;
    
    }
    return null;
  }

  /// CreateDocDB launches your org's OWN document-database instance and answers with its `mongodb://` connection string.
  ///
  /// CreateDocDB launches your org's OWN document-database instance and answers with its `mongodb://` connection string. It speaks the MongoDB wire protocol, so existing MongoDB drivers connect unchanged.  The instance is yours alone — a deployment in your own tenant namespace, so its admin credential is naturally scoped to you and no other tenant shares the process. Off-cluster this fails closed with 503 rather than handing back a shared one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProvisionRequest] provisionRequest (required):
  Future<Response> postProvisioningDocdbWithHttpInfo(ProvisionRequest provisionRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/provisioning/docdb';

    // ignore: prefer_final_locals
    Object? postBody = provisionRequest;

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

  /// CreateDocDB launches your org's OWN document-database instance and answers with its `mongodb://` connection string.
  ///
  /// CreateDocDB launches your org's OWN document-database instance and answers with its `mongodb://` connection string. It speaks the MongoDB wire protocol, so existing MongoDB drivers connect unchanged.  The instance is yours alone — a deployment in your own tenant namespace, so its admin credential is naturally scoped to you and no other tenant shares the process. Off-cluster this fails closed with 503 rather than handing back a shared one.
  ///
  /// Parameters:
  ///
  /// * [ProvisionRequest] provisionRequest (required):
  Future<ProvisionResult?> postProvisioningDocdb(ProvisionRequest provisionRequest,) async {
    final response = await postProvisioningDocdbWithHttpInfo(provisionRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProvisionResult',) as ProvisionResult;
    
    }
    return null;
  }

  /// CreateKV launches your org's OWN key-value instance and answers with its `kv://` connection string.
  ///
  /// CreateKV launches your org's OWN key-value instance and answers with its `kv://` connection string.  The instance is yours alone — a deployment in your own tenant namespace, so its admin credential is naturally scoped to you and no other tenant shares the process. Off-cluster this fails closed with 503 rather than handing back a shared one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProvisionRequest] provisionRequest (required):
  Future<Response> postProvisioningKvWithHttpInfo(ProvisionRequest provisionRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/provisioning/kv';

    // ignore: prefer_final_locals
    Object? postBody = provisionRequest;

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

  /// CreateKV launches your org's OWN key-value instance and answers with its `kv://` connection string.
  ///
  /// CreateKV launches your org's OWN key-value instance and answers with its `kv://` connection string.  The instance is yours alone — a deployment in your own tenant namespace, so its admin credential is naturally scoped to you and no other tenant shares the process. Off-cluster this fails closed with 503 rather than handing back a shared one.
  ///
  /// Parameters:
  ///
  /// * [ProvisionRequest] provisionRequest (required):
  Future<ProvisionResult?> postProvisioningKv(ProvisionRequest provisionRequest,) async {
    final response = await postProvisioningKvWithHttpInfo(provisionRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProvisionResult',) as ProvisionResult;
    
    }
    return null;
  }

  /// Creates an S3-compatible bucket inside the already-running shared object store and answers with the endpoint that reaches it.
  ///
  /// Creates an S3-compatible bucket inside the already-running shared object store and answers with the endpoint that reaches it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProvisionRequest] provisionRequest (required):
  Future<Response> postProvisioningS3WithHttpInfo(ProvisionRequest provisionRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/provisioning/s3';

    // ignore: prefer_final_locals
    Object? postBody = provisionRequest;

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

  /// Creates an S3-compatible bucket inside the already-running shared object store and answers with the endpoint that reaches it.
  ///
  /// Creates an S3-compatible bucket inside the already-running shared object store and answers with the endpoint that reaches it.
  ///
  /// Parameters:
  ///
  /// * [ProvisionRequest] provisionRequest (required):
  Future<ProvisionResult?> postProvisioningS3(ProvisionRequest provisionRequest,) async {
    final response = await postProvisioningS3WithHttpInfo(provisionRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProvisionResult',) as ProvisionResult;
    
    }
    return null;
  }

  /// Creates a search index inside the already-running shared search backend and answers with the endpoint that reaches it.
  ///
  /// Creates a search index inside the already-running shared search backend and answers with the endpoint that reaches it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProvisionRequest] provisionRequest (required):
  Future<Response> postProvisioningSearchWithHttpInfo(ProvisionRequest provisionRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/provisioning/search';

    // ignore: prefer_final_locals
    Object? postBody = provisionRequest;

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

  /// Creates a search index inside the already-running shared search backend and answers with the endpoint that reaches it.
  ///
  /// Creates a search index inside the already-running shared search backend and answers with the endpoint that reaches it.
  ///
  /// Parameters:
  ///
  /// * [ProvisionRequest] provisionRequest (required):
  Future<ProvisionResult?> postProvisioningSearch(ProvisionRequest provisionRequest,) async {
    final response = await postProvisioningSearchWithHttpInfo(provisionRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProvisionResult',) as ProvisionResult;
    
    }
    return null;
  }

  /// CreateSQL launches your org's OWN PostgreSQL instance and answers with its `postgres://` connection string.
  ///
  /// CreateSQL launches your org's OWN PostgreSQL instance and answers with its `postgres://` connection string.  The instance is yours alone — a deployment in your own tenant namespace, so its admin credential is naturally scoped to you and no other tenant shares the process. Off-cluster, where there is no orchestrator to launch one, this fails closed with 503 rather than handing back a shared one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProvisionRequest] provisionRequest (required):
  Future<Response> postProvisioningSqlWithHttpInfo(ProvisionRequest provisionRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/provisioning/sql';

    // ignore: prefer_final_locals
    Object? postBody = provisionRequest;

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

  /// CreateSQL launches your org's OWN PostgreSQL instance and answers with its `postgres://` connection string.
  ///
  /// CreateSQL launches your org's OWN PostgreSQL instance and answers with its `postgres://` connection string.  The instance is yours alone — a deployment in your own tenant namespace, so its admin credential is naturally scoped to you and no other tenant shares the process. Off-cluster, where there is no orchestrator to launch one, this fails closed with 503 rather than handing back a shared one.
  ///
  /// Parameters:
  ///
  /// * [ProvisionRequest] provisionRequest (required):
  Future<ProvisionResult?> postProvisioningSql(ProvisionRequest provisionRequest,) async {
    final response = await postProvisioningSqlWithHttpInfo(provisionRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProvisionResult',) as ProvisionResult;
    
    }
    return null;
  }

  /// Creates a vector collection inside the already-running shared vector backend and answers with the endpoint that reaches it.
  ///
  /// Creates a vector collection inside the already-running shared vector backend and answers with the endpoint that reaches it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProvisionRequest] provisionRequest (required):
  Future<Response> postProvisioningVectorWithHttpInfo(ProvisionRequest provisionRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/provisioning/vector';

    // ignore: prefer_final_locals
    Object? postBody = provisionRequest;

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

  /// Creates a vector collection inside the already-running shared vector backend and answers with the endpoint that reaches it.
  ///
  /// Creates a vector collection inside the already-running shared vector backend and answers with the endpoint that reaches it.
  ///
  /// Parameters:
  ///
  /// * [ProvisionRequest] provisionRequest (required):
  Future<ProvisionResult?> postProvisioningVector(ProvisionRequest provisionRequest,) async {
    final response = await postProvisioningVectorWithHttpInfo(provisionRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProvisionResult',) as ProvisionResult;
    
    }
    return null;
  }
}
