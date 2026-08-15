//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class CloudflareApi {
  CloudflareApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Deletes a D1 database and everything stored in it.
  ///
  /// Deletes a D1 database and everything stored in it. Requires org admin.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] database (required):
  ///   Database is the Cloudflare D1 database id or name.
  Future<Response> deleteCloudflareD1DatabasesByDatabaseWithHttpInfo(String database,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/d1/databases/{database}'
      .replaceAll('{database}', database);

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

  /// Deletes a D1 database and everything stored in it.
  ///
  /// Deletes a D1 database and everything stored in it. Requires org admin.
  ///
  /// Parameters:
  ///
  /// * [String] database (required):
  ///   Database is the Cloudflare D1 database id or name.
  Future<Object?> deleteCloudflareD1DatabasesByDatabase(String database,) async {
    final response = await deleteCloudflareD1DatabasesByDatabaseWithHttpInfo(database,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// KVNamespaceDelete deletes a Workers KV namespace and every key in it.
  ///
  /// KVNamespaceDelete deletes a Workers KV namespace and every key in it. Requires org admin.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   Namespace is the Cloudflare KV namespace id.
  Future<Response> deleteCloudflareKvNamespacesByNamespaceWithHttpInfo(String namespace,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/kv/namespaces/{namespace}'
      .replaceAll('{namespace}', namespace);

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

  /// KVNamespaceDelete deletes a Workers KV namespace and every key in it.
  ///
  /// KVNamespaceDelete deletes a Workers KV namespace and every key in it. Requires org admin.
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   Namespace is the Cloudflare KV namespace id.
  Future<Object?> deleteCloudflareKvNamespacesByNamespace(String namespace,) async {
    final response = await deleteCloudflareKvNamespacesByNamespaceWithHttpInfo(namespace,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// KVValueDelete removes one key from a Workers KV namespace.
  ///
  /// KVValueDelete removes one key from a Workers KV namespace. Requires org admin.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   Namespace is the Cloudflare KV namespace id.
  ///
  /// * [String] key (required):
  ///   Key is the key within that namespace. KV keys are broad (up to 512 bytes), so this one is escaped rather than charset-restricted.
  Future<Response> deleteCloudflareKvNamespacesByNamespaceValuesByKeyWithHttpInfo(String namespace, String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/kv/namespaces/{namespace}/values/{key}'
      .replaceAll('{namespace}', namespace)
      .replaceAll('{key}', key);

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

  /// KVValueDelete removes one key from a Workers KV namespace.
  ///
  /// KVValueDelete removes one key from a Workers KV namespace. Requires org admin.
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   Namespace is the Cloudflare KV namespace id.
  ///
  /// * [String] key (required):
  ///   Key is the key within that namespace. KV keys are broad (up to 512 bytes), so this one is escaped rather than charset-restricted.
  Future<Object?> deleteCloudflareKvNamespacesByNamespaceValuesByKey(String namespace, String key,) async {
    final response = await deleteCloudflareKvNamespacesByNamespaceValuesByKeyWithHttpInfo(namespace, key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Deletes a Cloudflare Pages project, and with it every deployment it has ever made.
  ///
  /// Deletes a Cloudflare Pages project, and with it every deployment it has ever made. Requires org admin.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the Pages project name.
  Future<Response> deleteCloudflarePagesProjectsByProjectWithHttpInfo(String project,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/pages/projects/{project}'
      .replaceAll('{project}', project);

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

  /// Deletes a Cloudflare Pages project, and with it every deployment it has ever made.
  ///
  /// Deletes a Cloudflare Pages project, and with it every deployment it has ever made. Requires org admin.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the Pages project name.
  Future<Object?> deleteCloudflarePagesProjectsByProject(String project,) async {
    final response = await deleteCloudflarePagesProjectsByProjectWithHttpInfo(project,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Detaches a custom domain from a Cloudflare Pages project.
  ///
  /// Detaches a custom domain from a Cloudflare Pages project. Requires org admin.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the Pages project name.
  ///
  /// * [String] domain (required):
  ///   Domain is the attached custom domain to detach.
  Future<Response> deleteCloudflarePagesProjectsByProjectDomainsByDomainWithHttpInfo(String project, String domain,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/pages/projects/{project}/domains/{domain}'
      .replaceAll('{project}', project)
      .replaceAll('{domain}', domain);

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

  /// Detaches a custom domain from a Cloudflare Pages project.
  ///
  /// Detaches a custom domain from a Cloudflare Pages project. Requires org admin.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the Pages project name.
  ///
  /// * [String] domain (required):
  ///   Domain is the attached custom domain to detach.
  Future<Object?> deleteCloudflarePagesProjectsByProjectDomainsByDomain(String project, String domain,) async {
    final response = await deleteCloudflarePagesProjectsByProjectDomainsByDomainWithHttpInfo(project, domain,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Deletes an R2 bucket.
  ///
  /// Deletes an R2 bucket. Requires org admin. Cloudflare refuses a bucket that still holds objects, and that refusal is relayed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  ///   Bucket is the R2 bucket name.
  Future<Response> deleteCloudflareR2BucketsByBucketWithHttpInfo(String bucket,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/r2/buckets/{bucket}'
      .replaceAll('{bucket}', bucket);

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

  /// Deletes an R2 bucket.
  ///
  /// Deletes an R2 bucket. Requires org admin. Cloudflare refuses a bucket that still holds objects, and that refusal is relayed.
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  ///   Bucket is the R2 bucket name.
  Future<Object?> deleteCloudflareR2BucketsByBucket(String bucket,) async {
    final response = await deleteCloudflareR2BucketsByBucketWithHttpInfo(bucket,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Removes a Worker script from the org's Cloudflare account.
  ///
  /// Removes a Worker script from the org's Cloudflare account. Requires org admin. Routes bound to the script stop serving it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] script (required):
  ///   Script is the Worker script name.
  Future<Response> deleteCloudflareWorkersScriptsByScriptWithHttpInfo(String script,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/workers/scripts/{script}'
      .replaceAll('{script}', script);

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

  /// Removes a Worker script from the org's Cloudflare account.
  ///
  /// Removes a Worker script from the org's Cloudflare account. Requires org admin. Routes bound to the script stop serving it.
  ///
  /// Parameters:
  ///
  /// * [String] script (required):
  ///   Script is the Worker script name.
  Future<Object?> deleteCloudflareWorkersScriptsByScript(String script,) async {
    final response = await deleteCloudflareWorkersScriptsByScriptWithHttpInfo(script,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Unbinds a Worker route, so its pattern stops dispatching to a script.
  ///
  /// Unbinds a Worker route, so its pattern stops dispatching to a script. Requires org admin.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zone (required):
  ///   Zone is the 32-hex Cloudflare zone id.
  ///
  /// * [String] route (required):
  ///   Route is the 32-hex Cloudflare route id.
  Future<Response> deleteCloudflareWorkersZonesByZoneRoutesByRouteWithHttpInfo(String zone, String route,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/workers/zones/{zone}/routes/{route}'
      .replaceAll('{zone}', zone)
      .replaceAll('{route}', route);

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

  /// Unbinds a Worker route, so its pattern stops dispatching to a script.
  ///
  /// Unbinds a Worker route, so its pattern stops dispatching to a script. Requires org admin.
  ///
  /// Parameters:
  ///
  /// * [String] zone (required):
  ///   Zone is the 32-hex Cloudflare zone id.
  ///
  /// * [String] route (required):
  ///   Route is the 32-hex Cloudflare route id.
  Future<Object?> deleteCloudflareWorkersZonesByZoneRoutesByRoute(String zone, String route,) async {
    final response = await deleteCloudflareWorkersZonesByZoneRoutesByRouteWithHttpInfo(zone, route,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Lists the D1 databases on the org's Cloudflare account.
  ///
  /// Lists the D1 databases on the org's Cloudflare account. Any org member may read.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] page:
  ///   Page is the 1-based page of databases to return.
  ///
  /// * [String] perPage:
  ///   PerPage is how many databases one page holds.
  ///
  /// * [String] name:
  ///   Name filters to the database with this name.
  Future<Response> getCloudflareD1DatabasesWithHttpInfo({ String? page, String? perPage, String? name, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/d1/databases';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
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

  /// Lists the D1 databases on the org's Cloudflare account.
  ///
  /// Lists the D1 databases on the org's Cloudflare account. Any org member may read.
  ///
  /// Parameters:
  ///
  /// * [String] page:
  ///   Page is the 1-based page of databases to return.
  ///
  /// * [String] perPage:
  ///   PerPage is how many databases one page holds.
  ///
  /// * [String] name:
  ///   Name filters to the database with this name.
  Future<Object?> getCloudflareD1Databases({ String? page, String? perPage, String? name, }) async {
    final response = await getCloudflareD1DatabasesWithHttpInfo( page: page, perPage: perPage, name: name, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// KVNamespaceList lists the Workers KV namespaces on the org's Cloudflare account.
  ///
  /// KVNamespaceList lists the Workers KV namespaces on the org's Cloudflare account. Any org member may read.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] page:
  ///   Page is the 1-based page of namespaces to return.
  ///
  /// * [String] perPage:
  ///   PerPage is how many namespaces one page holds.
  ///
  /// * [String] order:
  ///   Order names the field to sort by, and Direction sorts asc or desc.
  ///
  /// * [String] direction:
  Future<Response> getCloudflareKvNamespacesWithHttpInfo({ String? page, String? perPage, String? order, String? direction, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/kv/namespaces';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (order != null) {
      queryParams.addAll(_queryParams('', 'order', order));
    }
    if (direction != null) {
      queryParams.addAll(_queryParams('', 'direction', direction));
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

  /// KVNamespaceList lists the Workers KV namespaces on the org's Cloudflare account.
  ///
  /// KVNamespaceList lists the Workers KV namespaces on the org's Cloudflare account. Any org member may read.
  ///
  /// Parameters:
  ///
  /// * [String] page:
  ///   Page is the 1-based page of namespaces to return.
  ///
  /// * [String] perPage:
  ///   PerPage is how many namespaces one page holds.
  ///
  /// * [String] order:
  ///   Order names the field to sort by, and Direction sorts asc or desc.
  ///
  /// * [String] direction:
  Future<Object?> getCloudflareKvNamespaces({ String? page, String? perPage, String? order, String? direction, }) async {
    final response = await getCloudflareKvNamespacesWithHttpInfo( page: page, perPage: perPage, order: order, direction: direction, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Read a Workers KV value as its stored bytes
  ///
  /// Answers one KV key's value from the org's OWN Cloudflare account as RAW BYTES under the content type it was written with — not wrapped in a JSON envelope, which is why this is not a typed op. Any org member may read. A key that does not exist is Cloudflare's own 404; an invalid namespace, or a key that is empty, over 512 bytes, not valid UTF-8, or carries a control character, is 400; 503 if the org has never connected a Cloudflare token.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///
  /// * [String] key (required):
  Future<Response> getCloudflareKvNamespacesByNamespaceValuesByKeyWithHttpInfo(String namespace, String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/kv/namespaces/{namespace}/values/{key}'
      .replaceAll('{namespace}', namespace)
      .replaceAll('{key}', key);

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

  /// Read a Workers KV value as its stored bytes
  ///
  /// Answers one KV key's value from the org's OWN Cloudflare account as RAW BYTES under the content type it was written with — not wrapped in a JSON envelope, which is why this is not a typed op. Any org member may read. A key that does not exist is Cloudflare's own 404; an invalid namespace, or a key that is empty, over 512 bytes, not valid UTF-8, or carries a control character, is 400; 503 if the org has never connected a Cloudflare token.
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///
  /// * [String] key (required):
  Future<void> getCloudflareKvNamespacesByNamespaceValuesByKey(String namespace, String key,) async {
    final response = await getCloudflareKvNamespacesByNamespaceValuesByKeyWithHttpInfo(namespace, key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists the org's Cloudflare Pages projects.
  ///
  /// Lists the org's Cloudflare Pages projects. Any org member may read.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCloudflarePagesProjectsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/pages/projects';

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

  /// Lists the org's Cloudflare Pages projects.
  ///
  /// Lists the org's Cloudflare Pages projects. Any org member may read.
  Future<Object?> getCloudflarePagesProjects() async {
    final response = await getCloudflarePagesProjectsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Reads one Cloudflare Pages project — its build config, deployment configs and latest deployment.
  ///
  /// Reads one Cloudflare Pages project — its build config, deployment configs and latest deployment. Any org member may read.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the Pages project name.
  Future<Response> getCloudflarePagesProjectsByProjectWithHttpInfo(String project,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/pages/projects/{project}'
      .replaceAll('{project}', project);

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

  /// Reads one Cloudflare Pages project — its build config, deployment configs and latest deployment.
  ///
  /// Reads one Cloudflare Pages project — its build config, deployment configs and latest deployment. Any org member may read.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the Pages project name.
  Future<Object?> getCloudflarePagesProjectsByProject(String project,) async {
    final response = await getCloudflarePagesProjectsByProjectWithHttpInfo(project,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Lists the R2 buckets on the org's Cloudflare account.
  ///
  /// Lists the R2 buckets on the org's Cloudflare account. Any org member may read.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] perPage:
  ///   PerPage is how many buckets one page holds.
  ///
  /// * [String] cursor:
  ///   Cursor continues from the position a previous page returned.
  ///
  /// * [String] nameContains:
  ///   NameContains filters to buckets whose name contains this substring.
  ///
  /// * [String] order:
  ///   Order names the field to sort by, and Direction sorts asc or desc.
  ///
  /// * [String] direction:
  Future<Response> getCloudflareR2BucketsWithHttpInfo({ String? perPage, String? cursor, String? nameContains, String? order, String? direction, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/r2/buckets';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (cursor != null) {
      queryParams.addAll(_queryParams('', 'cursor', cursor));
    }
    if (nameContains != null) {
      queryParams.addAll(_queryParams('', 'name_contains', nameContains));
    }
    if (order != null) {
      queryParams.addAll(_queryParams('', 'order', order));
    }
    if (direction != null) {
      queryParams.addAll(_queryParams('', 'direction', direction));
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

  /// Lists the R2 buckets on the org's Cloudflare account.
  ///
  /// Lists the R2 buckets on the org's Cloudflare account. Any org member may read.
  ///
  /// Parameters:
  ///
  /// * [String] perPage:
  ///   PerPage is how many buckets one page holds.
  ///
  /// * [String] cursor:
  ///   Cursor continues from the position a previous page returned.
  ///
  /// * [String] nameContains:
  ///   NameContains filters to buckets whose name contains this substring.
  ///
  /// * [String] order:
  ///   Order names the field to sort by, and Direction sorts asc or desc.
  ///
  /// * [String] direction:
  Future<Object?> getCloudflareR2Buckets({ String? perPage, String? cursor, String? nameContains, String? order, String? direction, }) async {
    final response = await getCloudflareR2BucketsWithHttpInfo( perPage: perPage, cursor: cursor, nameContains: nameContains, order: order, direction: direction, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Lists the Worker scripts on the org's Cloudflare account.
  ///
  /// Lists the Worker scripts on the org's Cloudflare account. Any org member may read.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCloudflareWorkersScriptsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/workers/scripts';

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

  /// Lists the Worker scripts on the org's Cloudflare account.
  ///
  /// Lists the Worker scripts on the org's Cloudflare account. Any org member may read.
  Future<Object?> getCloudflareWorkersScripts() async {
    final response = await getCloudflareWorkersScriptsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Reads the org account's workers.dev subdomain — the name under which every subdomain-enabled script is served.
  ///
  /// Reads the org account's workers.dev subdomain — the name under which every subdomain-enabled script is served. Any org member may read.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCloudflareWorkersSubdomainWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/workers/subdomain';

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

  /// Reads the org account's workers.dev subdomain — the name under which every subdomain-enabled script is served.
  ///
  /// Reads the org account's workers.dev subdomain — the name under which every subdomain-enabled script is served. Any org member may read.
  Future<Object?> getCloudflareWorkersSubdomain() async {
    final response = await getCloudflareWorkersSubdomainWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Lists the Worker routes bound within one zone — the URL patterns that dispatch to a script.
  ///
  /// Lists the Worker routes bound within one zone — the URL patterns that dispatch to a script. Any org member may read. Routes are zone-scoped, so no account is resolved.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zone (required):
  ///   Zone is the 32-hex Cloudflare zone id.
  Future<Response> getCloudflareWorkersZonesByZoneRoutesWithHttpInfo(String zone,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/workers/zones/{zone}/routes'
      .replaceAll('{zone}', zone);

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

  /// Lists the Worker routes bound within one zone — the URL patterns that dispatch to a script.
  ///
  /// Lists the Worker routes bound within one zone — the URL patterns that dispatch to a script. Any org member may read. Routes are zone-scoped, so no account is resolved.
  ///
  /// Parameters:
  ///
  /// * [String] zone (required):
  ///   Zone is the 32-hex Cloudflare zone id.
  Future<Object?> getCloudflareWorkersZonesByZoneRoutes(String zone,) async {
    final response = await getCloudflareWorkersZonesByZoneRoutesWithHttpInfo(zone,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Lists the Cloudflare zones the org's connected API token can see, paged and filtered by the query parameters Cloudflare itself accepts.
  ///
  /// Lists the Cloudflare zones the org's connected API token can see, paged and filtered by the query parameters Cloudflare itself accepts. Zones are token-scoped by Cloudflare, so no account is resolved. Any org member may read.  Zone and DNS-record MANAGEMENT is not here: it stays on the Hanzo DNS plane (/v1/dns). This only surfaces the Cloudflare zone objects the asset plane needs — a zone id is what addresses a Worker route or an analytics read.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] page:
  ///   Page is the 1-based page of zones to return.
  ///
  /// * [String] perPage:
  ///   PerPage is how many zones one page holds.
  ///
  /// * [String] name:
  ///   Name filters to the zone with this domain name.
  ///
  /// * [String] status:
  ///   Status filters by zone status (active, pending, initializing, …).
  ///
  /// * [String] order:
  ///   Order names the field to sort by, and Direction sorts asc or desc.
  ///
  /// * [String] direction:
  Future<Response> getCloudflareZonesWithHttpInfo({ String? page, String? perPage, String? name, String? status, String? order, String? direction, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/zones';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (order != null) {
      queryParams.addAll(_queryParams('', 'order', order));
    }
    if (direction != null) {
      queryParams.addAll(_queryParams('', 'direction', direction));
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

  /// Lists the Cloudflare zones the org's connected API token can see, paged and filtered by the query parameters Cloudflare itself accepts.
  ///
  /// Lists the Cloudflare zones the org's connected API token can see, paged and filtered by the query parameters Cloudflare itself accepts. Zones are token-scoped by Cloudflare, so no account is resolved. Any org member may read.  Zone and DNS-record MANAGEMENT is not here: it stays on the Hanzo DNS plane (/v1/dns). This only surfaces the Cloudflare zone objects the asset plane needs — a zone id is what addresses a Worker route or an analytics read.
  ///
  /// Parameters:
  ///
  /// * [String] page:
  ///   Page is the 1-based page of zones to return.
  ///
  /// * [String] perPage:
  ///   PerPage is how many zones one page holds.
  ///
  /// * [String] name:
  ///   Name filters to the zone with this domain name.
  ///
  /// * [String] status:
  ///   Status filters by zone status (active, pending, initializing, …).
  ///
  /// * [String] order:
  ///   Order names the field to sort by, and Direction sorts asc or desc.
  ///
  /// * [String] direction:
  Future<Object?> getCloudflareZones({ String? page, String? perPage, String? name, String? status, String? order, String? direction, }) async {
    final response = await getCloudflareZonesWithHttpInfo( page: page, perPage: perPage, name: name, status: status, order: order, direction: direction, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Reads one Cloudflare zone the org's token can see.
  ///
  /// Reads one Cloudflare zone the org's token can see. Any org member may read. A zone id the token cannot see is Cloudflare's own not-found, relayed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zone (required):
  ///   Zone is the 32-hex Cloudflare zone id.
  Future<Response> getCloudflareZonesByZoneWithHttpInfo(String zone,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/zones/{zone}'
      .replaceAll('{zone}', zone);

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

  /// Reads one Cloudflare zone the org's token can see.
  ///
  /// Reads one Cloudflare zone the org's token can see. Any org member may read. A zone id the token cannot see is Cloudflare's own not-found, relayed.
  ///
  /// Parameters:
  ///
  /// * [String] zone (required):
  ///   Zone is the 32-hex Cloudflare zone id.
  Future<Object?> getCloudflareZonesByZone(String zone,) async {
    final response = await getCloudflareZonesByZoneWithHttpInfo(zone,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Reads a zone's Cloudflare traffic dashboard — requests, bandwidth, threats and pageviews over the since/until window.
  ///
  /// Reads a zone's Cloudflare traffic dashboard — requests, bandwidth, threats and pageviews over the since/until window. Any org member may read.  A zone whose Cloudflare plan does not serve this endpoint yields Cloudflare's OWN error, never a fabricated success.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zone (required):
  ///   Zone is the 32-hex Cloudflare zone id.
  ///
  /// * [String] since:
  ///   Since and Until bound the window, in the form Cloudflare accepts — an RFC 3339 time or a negative number of minutes from now (\"-1440\" is the last day).
  ///
  /// * [String] until:
  ///
  /// * [String] continuous:
  ///   Continuous asks Cloudflare for only fully-aggregated buckets.
  Future<Response> getCloudflareZonesByZoneAnalyticsWithHttpInfo(String zone, { String? since, String? until, String? continuous, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/zones/{zone}/analytics'
      .replaceAll('{zone}', zone);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (until != null) {
      queryParams.addAll(_queryParams('', 'until', until));
    }
    if (continuous != null) {
      queryParams.addAll(_queryParams('', 'continuous', continuous));
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

  /// Reads a zone's Cloudflare traffic dashboard — requests, bandwidth, threats and pageviews over the since/until window.
  ///
  /// Reads a zone's Cloudflare traffic dashboard — requests, bandwidth, threats and pageviews over the since/until window. Any org member may read.  A zone whose Cloudflare plan does not serve this endpoint yields Cloudflare's OWN error, never a fabricated success.
  ///
  /// Parameters:
  ///
  /// * [String] zone (required):
  ///   Zone is the 32-hex Cloudflare zone id.
  ///
  /// * [String] since:
  ///   Since and Until bound the window, in the form Cloudflare accepts — an RFC 3339 time or a negative number of minutes from now (\"-1440\" is the last day).
  ///
  /// * [String] until:
  ///
  /// * [String] continuous:
  ///   Continuous asks Cloudflare for only fully-aggregated buckets.
  Future<Object?> getCloudflareZonesByZoneAnalytics(String zone, { String? since, String? until, String? continuous, }) async {
    final response = await getCloudflareZonesByZoneAnalyticsWithHttpInfo(zone,  since: since, until: until, continuous: continuous, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Run a Cloudflare Workers AI model and get its output back
  ///
  /// Runs a Workers AI model — the model id is the rest of the path, e.g. `@cf/meta/llama-3.1-8b-instruct` — on the org's OWN Cloudflare account and relays the model's output. The request body is whatever the chosen model takes (a prompt, chat messages, a base64 audio clip) and is forwarded unchanged; the response is the model's own, which for an image or audio model is BYTES under Cloudflare's content type rather than JSON. Both halves are why this is not a typed op.  It is the ONE PRICED route on this plane, because a run is inference rather than passthrough. The org's own token already paid Cloudflare for the compute, so Hanzo debits only the thin BYO routing fee — never the full inference cost — and meters it on the SAME `ai` product axis and per-project caps as every other model call, so Workers AI spend sums with LLM spend. The fee has a floor, so every run leaves a usage row even for a modality that reports no tokens, and it emits one gen_ai span with `gen_ai.system = cloudflare`.  Gated by BALANCE, not by the admin bit that guards the destructive verbs here: a validated org is enough, and a frozen, broke or over-cap org is refused with the fleet-wide 402/503 billing contract BEFORE any byte reaches Cloudflare — no run, and no account discovery either. An empty or oversized body is 400, as is a model id that is not a plain Cloudflare model path; 503 if the org has never connected a Cloudflare token.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> postCloudflareAiRunByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/ai/run/{wildcard1}'
      .replaceAll('{wildcard1}', wildcard1);

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

  /// Run a Cloudflare Workers AI model and get its output back
  ///
  /// Runs a Workers AI model — the model id is the rest of the path, e.g. `@cf/meta/llama-3.1-8b-instruct` — on the org's OWN Cloudflare account and relays the model's output. The request body is whatever the chosen model takes (a prompt, chat messages, a base64 audio clip) and is forwarded unchanged; the response is the model's own, which for an image or audio model is BYTES under Cloudflare's content type rather than JSON. Both halves are why this is not a typed op.  It is the ONE PRICED route on this plane, because a run is inference rather than passthrough. The org's own token already paid Cloudflare for the compute, so Hanzo debits only the thin BYO routing fee — never the full inference cost — and meters it on the SAME `ai` product axis and per-project caps as every other model call, so Workers AI spend sums with LLM spend. The fee has a floor, so every run leaves a usage row even for a modality that reports no tokens, and it emits one gen_ai span with `gen_ai.system = cloudflare`.  Gated by BALANCE, not by the admin bit that guards the destructive verbs here: a validated org is enough, and a frozen, broke or over-cap org is refused with the fleet-wide 402/503 billing contract BEFORE any byte reaches Cloudflare — no run, and no account discovery either. An empty or oversized body is 400, as is a model id that is not a plain Cloudflare model path; 503 if the org has never connected a Cloudflare token.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> postCloudflareAiRunByWildcard1(String wildcard1,) async {
    final response = await postCloudflareAiRunByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Creates a D1 database on the org's Cloudflare account.
  ///
  /// Creates a D1 database on the org's Cloudflare account. Requires org admin.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DatabaseCreateIn] databaseCreateIn (required):
  Future<Response> postCloudflareD1DatabasesWithHttpInfo(DatabaseCreateIn databaseCreateIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/d1/databases';

    // ignore: prefer_final_locals
    Object? postBody = databaseCreateIn;

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

  /// Creates a D1 database on the org's Cloudflare account.
  ///
  /// Creates a D1 database on the org's Cloudflare account. Requires org admin.
  ///
  /// Parameters:
  ///
  /// * [DatabaseCreateIn] databaseCreateIn (required):
  Future<Object?> postCloudflareD1Databases(DatabaseCreateIn databaseCreateIn,) async {
    final response = await postCloudflareD1DatabasesWithHttpInfo(databaseCreateIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Run a SQL statement against a D1 database
  ///
  /// Executes a statement on one D1 database on the org's OWN Cloudflare account and relays D1's result set. `sql` is required and `params` carries the bound values in placeholder order — use them rather than interpolating values into the statement.  The body is checked for a non-empty `sql` and then forwarded VERBATIM, so every field D1 accepts reaches D1 even though only two are named here; the declared schema is open for that reason. That verbatim forward is why this is not a typed op — decoding and re-encoding the body would drop `params`, where the query's bound values live. Requires ORG ADMIN (403 otherwise); a malformed body or missing `sql` is 400; 503 if the org has never connected a Cloudflare token.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] database (required):
  ///
  /// * [D1Query] d1Query:
  Future<Response> postCloudflareD1DatabasesByDatabaseQueryWithHttpInfo(String database, { D1Query? d1Query, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/d1/databases/{database}/query'
      .replaceAll('{database}', database);

    // ignore: prefer_final_locals
    Object? postBody = d1Query;

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

  /// Run a SQL statement against a D1 database
  ///
  /// Executes a statement on one D1 database on the org's OWN Cloudflare account and relays D1's result set. `sql` is required and `params` carries the bound values in placeholder order — use them rather than interpolating values into the statement.  The body is checked for a non-empty `sql` and then forwarded VERBATIM, so every field D1 accepts reaches D1 even though only two are named here; the declared schema is open for that reason. That verbatim forward is why this is not a typed op — decoding and re-encoding the body would drop `params`, where the query's bound values live. Requires ORG ADMIN (403 otherwise); a malformed body or missing `sql` is 400; 503 if the org has never connected a Cloudflare token.
  ///
  /// Parameters:
  ///
  /// * [String] database (required):
  ///
  /// * [D1Query] d1Query:
  Future<Object?> postCloudflareD1DatabasesByDatabaseQuery(String database, { D1Query? d1Query, }) async {
    final response = await postCloudflareD1DatabasesByDatabaseQueryWithHttpInfo(database,  d1Query: d1Query, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// KVNamespaceCreate creates a Workers KV namespace on the org's Cloudflare account.
  ///
  /// KVNamespaceCreate creates a Workers KV namespace on the org's Cloudflare account. Requires org admin. Cloudflare mints the namespace id the value routes address.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [NamespaceCreateIn] namespaceCreateIn (required):
  Future<Response> postCloudflareKvNamespacesWithHttpInfo(NamespaceCreateIn namespaceCreateIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/kv/namespaces';

    // ignore: prefer_final_locals
    Object? postBody = namespaceCreateIn;

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

  /// KVNamespaceCreate creates a Workers KV namespace on the org's Cloudflare account.
  ///
  /// KVNamespaceCreate creates a Workers KV namespace on the org's Cloudflare account. Requires org admin. Cloudflare mints the namespace id the value routes address.
  ///
  /// Parameters:
  ///
  /// * [NamespaceCreateIn] namespaceCreateIn (required):
  Future<Object?> postCloudflareKvNamespaces(NamespaceCreateIn namespaceCreateIn,) async {
    final response = await postCloudflareKvNamespacesWithHttpInfo(namespaceCreateIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Creates a Cloudflare Pages project on the org's account.
  ///
  /// Creates a Cloudflare Pages project on the org's account. Requires org admin. Only the modeled fields reach Cloudflare, so an unmodeled key in the request is dropped rather than forwarded.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PagesProjectCreate] pagesProjectCreate (required):
  Future<Response> postCloudflarePagesProjectsWithHttpInfo(PagesProjectCreate pagesProjectCreate,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/pages/projects';

    // ignore: prefer_final_locals
    Object? postBody = pagesProjectCreate;

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

  /// Creates a Cloudflare Pages project on the org's account.
  ///
  /// Creates a Cloudflare Pages project on the org's account. Requires org admin. Only the modeled fields reach Cloudflare, so an unmodeled key in the request is dropped rather than forwarded.
  ///
  /// Parameters:
  ///
  /// * [PagesProjectCreate] pagesProjectCreate (required):
  Future<Object?> postCloudflarePagesProjects(PagesProjectCreate pagesProjectCreate,) async {
    final response = await postCloudflarePagesProjectsWithHttpInfo(pagesProjectCreate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Trigger a new Pages deployment for a project
  ///
  /// Starts a build and deployment of one Cloudflare Pages project on the org's OWN Cloudflare account, and relays Cloudflare's deployment record back. `branch` picks what to build; OMITTING it builds the project's production branch.  A body it cannot parse is IGNORED rather than refused — the deployment falls back to the production branch — which is the one rule to get right here and the reason this is not a typed op: a typed request would answer 400 where this deploys. Requires ORG ADMIN (403 otherwise), and 503 if the org has never connected a Cloudflare token.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///
  /// * [PagesDeploy] pagesDeploy:
  Future<Response> postCloudflarePagesProjectsByProjectDeploymentsWithHttpInfo(String project, { PagesDeploy? pagesDeploy, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/pages/projects/{project}/deployments'
      .replaceAll('{project}', project);

    // ignore: prefer_final_locals
    Object? postBody = pagesDeploy;

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

  /// Trigger a new Pages deployment for a project
  ///
  /// Starts a build and deployment of one Cloudflare Pages project on the org's OWN Cloudflare account, and relays Cloudflare's deployment record back. `branch` picks what to build; OMITTING it builds the project's production branch.  A body it cannot parse is IGNORED rather than refused — the deployment falls back to the production branch — which is the one rule to get right here and the reason this is not a typed op: a typed request would answer 400 where this deploys. Requires ORG ADMIN (403 otherwise), and 503 if the org has never connected a Cloudflare token.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///
  /// * [PagesDeploy] pagesDeploy:
  Future<Object?> postCloudflarePagesProjectsByProjectDeployments(String project, { PagesDeploy? pagesDeploy, }) async {
    final response = await postCloudflarePagesProjectsByProjectDeploymentsWithHttpInfo(project,  pagesDeploy: pagesDeploy, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Attaches a custom domain to a Cloudflare Pages project.
  ///
  /// Attaches a custom domain to a Cloudflare Pages project. Requires org admin. Cloudflare owns validation and certificate issuance from here on.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the Pages project name, from the path.
  ///
  /// * [DomainAddIn] domainAddIn (required):
  Future<Response> postCloudflarePagesProjectsByProjectDomainsWithHttpInfo(String project, DomainAddIn domainAddIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/pages/projects/{project}/domains'
      .replaceAll('{project}', project);

    // ignore: prefer_final_locals
    Object? postBody = domainAddIn;

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

  /// Attaches a custom domain to a Cloudflare Pages project.
  ///
  /// Attaches a custom domain to a Cloudflare Pages project. Requires org admin. Cloudflare owns validation and certificate issuance from here on.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the Pages project name, from the path.
  ///
  /// * [DomainAddIn] domainAddIn (required):
  Future<Object?> postCloudflarePagesProjectsByProjectDomains(String project, DomainAddIn domainAddIn,) async {
    final response = await postCloudflarePagesProjectsByProjectDomainsWithHttpInfo(project, domainAddIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Creates an R2 bucket on the org's Cloudflare account.
  ///
  /// Creates an R2 bucket on the org's Cloudflare account. Requires org admin.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BucketCreateIn] bucketCreateIn (required):
  Future<Response> postCloudflareR2BucketsWithHttpInfo(BucketCreateIn bucketCreateIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/r2/buckets';

    // ignore: prefer_final_locals
    Object? postBody = bucketCreateIn;

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

  /// Creates an R2 bucket on the org's Cloudflare account.
  ///
  /// Creates an R2 bucket on the org's Cloudflare account. Requires org admin.
  ///
  /// Parameters:
  ///
  /// * [BucketCreateIn] bucketCreateIn (required):
  Future<Object?> postCloudflareR2Buckets(BucketCreateIn bucketCreateIn,) async {
    final response = await postCloudflareR2BucketsWithHttpInfo(bucketCreateIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Publishes or withdraws one Worker script on the account's workers.dev subdomain.
  ///
  /// Publishes or withdraws one Worker script on the account's workers.dev subdomain. Requires org admin.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] script (required):
  ///   Script is the Worker script name, from the path.
  ///
  /// * [SubdomainSetIn] subdomainSetIn (required):
  Future<Response> postCloudflareWorkersScriptsByScriptSubdomainWithHttpInfo(String script, SubdomainSetIn subdomainSetIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/workers/scripts/{script}/subdomain'
      .replaceAll('{script}', script);

    // ignore: prefer_final_locals
    Object? postBody = subdomainSetIn;

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

  /// Publishes or withdraws one Worker script on the account's workers.dev subdomain.
  ///
  /// Publishes or withdraws one Worker script on the account's workers.dev subdomain. Requires org admin.
  ///
  /// Parameters:
  ///
  /// * [String] script (required):
  ///   Script is the Worker script name, from the path.
  ///
  /// * [SubdomainSetIn] subdomainSetIn (required):
  Future<Object?> postCloudflareWorkersScriptsByScriptSubdomain(String script, SubdomainSetIn subdomainSetIn,) async {
    final response = await postCloudflareWorkersScriptsByScriptSubdomainWithHttpInfo(script, subdomainSetIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Binds a URL pattern in a zone to a Worker script.
  ///
  /// Binds a URL pattern in a zone to a Worker script. Requires org admin — a route is what puts a script in front of live traffic.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zone (required):
  ///   Zone is the 32-hex Cloudflare zone id, from the path.
  ///
  /// * [RouteCreateIn] routeCreateIn (required):
  Future<Response> postCloudflareWorkersZonesByZoneRoutesWithHttpInfo(String zone, RouteCreateIn routeCreateIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/workers/zones/{zone}/routes'
      .replaceAll('{zone}', zone);

    // ignore: prefer_final_locals
    Object? postBody = routeCreateIn;

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

  /// Binds a URL pattern in a zone to a Worker script.
  ///
  /// Binds a URL pattern in a zone to a Worker script. Requires org admin — a route is what puts a script in front of live traffic.
  ///
  /// Parameters:
  ///
  /// * [String] zone (required):
  ///   Zone is the 32-hex Cloudflare zone id, from the path.
  ///
  /// * [RouteCreateIn] routeCreateIn (required):
  Future<Object?> postCloudflareWorkersZonesByZoneRoutes(String zone, RouteCreateIn routeCreateIn,) async {
    final response = await postCloudflareWorkersZonesByZoneRoutesWithHttpInfo(zone, routeCreateIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Drops a zone's Cloudflare edge cache — either the whole zone (purge_everything) or exactly the listed file URLs.
  ///
  /// Drops a zone's Cloudflare edge cache — either the whole zone (purge_everything) or exactly the listed file URLs. Requires org admin.  Purging is the one zone-scoped WRITE this plane owns. It is not DNS — no record changes — so it does not belong on /v1/dns, and it is not a connection, so it does not belong on the integrations plane. It is a cache operation on a zone, which is what this asset plane is for. It takes the admin gate because dropping a zone's cache sends every subsequent request to the origin: on a site fronting a small origin that is a self-inflicted load spike, so it is a change, not a look.  Exactly one selector is required. Cloudflare treats a body with neither as a no-op and answers 200, which reads as \"purged\" to a caller that never purged anything — the failure we refuse to pass through.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zone (required):
  ///   Zone is the 32-hex Cloudflare zone id, from the path.
  ///
  /// * [PurgeIn] purgeIn (required):
  Future<Response> postCloudflareZonesByZonePurgeWithHttpInfo(String zone, PurgeIn purgeIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/zones/{zone}/purge'
      .replaceAll('{zone}', zone);

    // ignore: prefer_final_locals
    Object? postBody = purgeIn;

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

  /// Drops a zone's Cloudflare edge cache — either the whole zone (purge_everything) or exactly the listed file URLs.
  ///
  /// Drops a zone's Cloudflare edge cache — either the whole zone (purge_everything) or exactly the listed file URLs. Requires org admin.  Purging is the one zone-scoped WRITE this plane owns. It is not DNS — no record changes — so it does not belong on /v1/dns, and it is not a connection, so it does not belong on the integrations plane. It is a cache operation on a zone, which is what this asset plane is for. It takes the admin gate because dropping a zone's cache sends every subsequent request to the origin: on a site fronting a small origin that is a self-inflicted load spike, so it is a change, not a look.  Exactly one selector is required. Cloudflare treats a body with neither as a no-op and answers 200, which reads as \"purged\" to a caller that never purged anything — the failure we refuse to pass through.
  ///
  /// Parameters:
  ///
  /// * [String] zone (required):
  ///   Zone is the 32-hex Cloudflare zone id, from the path.
  ///
  /// * [PurgeIn] purgeIn (required):
  Future<Object?> postCloudflareZonesByZonePurge(String zone, PurgeIn purgeIn,) async {
    final response = await postCloudflareZonesByZonePurgeWithHttpInfo(zone, purgeIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Write a Workers KV value from the request body
  ///
  /// Stores one KV key on the org's OWN Cloudflare account. The REQUEST BODY IS THE VALUE, forwarded verbatim under the caller's own Content-Type (`text/plain` when none is sent), so a value is never re-encoded on the way in — which is why this is not a typed op. `expiration` and `expiration_ttl` may ride the query string and are passed through to Cloudflare. Requires ORG ADMIN (403 otherwise); the same namespace and key validation as the read answers 400; 503 if the org has never connected a Cloudflare token.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///
  /// * [String] key (required):
  Future<Response> putCloudflareKvNamespacesByNamespaceValuesByKeyWithHttpInfo(String namespace, String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/kv/namespaces/{namespace}/values/{key}'
      .replaceAll('{namespace}', namespace)
      .replaceAll('{key}', key);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Write a Workers KV value from the request body
  ///
  /// Stores one KV key on the org's OWN Cloudflare account. The REQUEST BODY IS THE VALUE, forwarded verbatim under the caller's own Content-Type (`text/plain` when none is sent), so a value is never re-encoded on the way in — which is why this is not a typed op. `expiration` and `expiration_ttl` may ride the query string and are passed through to Cloudflare. Requires ORG ADMIN (403 otherwise); the same namespace and key validation as the read answers 400; 503 if the org has never connected a Cloudflare token.
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///
  /// * [String] key (required):
  Future<void> putCloudflareKvNamespacesByNamespaceValuesByKey(String namespace, String key,) async {
    final response = await putCloudflareKvNamespacesByNamespaceValuesByKeyWithHttpInfo(namespace, key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Upload or replace a module Worker script
  ///
  /// Publishes a module Worker to the org's OWN Cloudflare account under the name in the path, replacing whatever was there, and relays Cloudflare's result. `script` carries the module SOURCE; the optional compatibility date, compatibility flags and bindings are packed into the multipart upload Cloudflare expects.  The path names the script and the body field named `script` is its source — two different things that share a name, which is exactly why this cannot be a typed op: a binder that gives the URL the last word would overwrite the source with the script's name. Requires ORG ADMIN (403 otherwise); an unparseable body or empty source is 400; 503 if the org has never connected a Cloudflare token.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] script (required):
  ///
  /// * [WorkerScriptPut] workerScriptPut:
  Future<Response> putCloudflareWorkersScriptsByScriptWithHttpInfo(String script, { WorkerScriptPut? workerScriptPut, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/cloudflare/workers/scripts/{script}'
      .replaceAll('{script}', script);

    // ignore: prefer_final_locals
    Object? postBody = workerScriptPut;

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

  /// Upload or replace a module Worker script
  ///
  /// Publishes a module Worker to the org's OWN Cloudflare account under the name in the path, replacing whatever was there, and relays Cloudflare's result. `script` carries the module SOURCE; the optional compatibility date, compatibility flags and bindings are packed into the multipart upload Cloudflare expects.  The path names the script and the body field named `script` is its source — two different things that share a name, which is exactly why this cannot be a typed op: a binder that gives the URL the last word would overwrite the source with the script's name. Requires ORG ADMIN (403 otherwise); an unparseable body or empty source is 400; 503 if the org has never connected a Cloudflare token.
  ///
  /// Parameters:
  ///
  /// * [String] script (required):
  ///
  /// * [WorkerScriptPut] workerScriptPut:
  Future<Object?> putCloudflareWorkersScriptsByScript(String script, { WorkerScriptPut? workerScriptPut, }) async {
    final response = await putCloudflareWorkersScriptsByScriptWithHttpInfo(script,  workerScriptPut: workerScriptPut, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }
}
