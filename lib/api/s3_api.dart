//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class S3Api {
  S3Api([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete an empty bucket
  ///
  /// Removes one of the caller's buckets, and only when it is already EMPTY — a bucket with objects in it answers 409 instead.  That refusal is deliberate rather than a limitation: this API does not cascade a delete of a tenant's objects behind a single bucket call, so emptying the bucket stays an explicit act. A bucket that does not exist is 404, and a successful delete answers 204 with no body.  A validated principal is required, and every bucket and key is resolved inside the caller's own org: physical bucket names are derived from the org, so a tenant cannot name another's storage. The operation is billed per call — the balance is checked BEFORE anything is touched, so an unfunded org is refused with nothing done, and the debit happens only after the work succeeds. Object storage that is not configured answers 503 under this subsystem's own name rather than falling through to another.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  Future<Response> deleteS3BucketsByBucketWithHttpInfo(String bucket,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/s3/buckets/{bucket}'
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

  /// Delete an empty bucket
  ///
  /// Removes one of the caller's buckets, and only when it is already EMPTY — a bucket with objects in it answers 409 instead.  That refusal is deliberate rather than a limitation: this API does not cascade a delete of a tenant's objects behind a single bucket call, so emptying the bucket stays an explicit act. A bucket that does not exist is 404, and a successful delete answers 204 with no body.  A validated principal is required, and every bucket and key is resolved inside the caller's own org: physical bucket names are derived from the org, so a tenant cannot name another's storage. The operation is billed per call — the balance is checked BEFORE anything is touched, so an unfunded org is refused with nothing done, and the debit happens only after the work succeeds. Object storage that is not configured answers 503 under this subsystem's own name rather than falling through to another.
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  Future<void> deleteS3BucketsByBucket(String bucket,) async {
    final response = await deleteS3BucketsByBucketWithHttpInfo(bucket,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete one object
  ///
  /// Removes the single object at the trailing path from one of the caller's buckets and answers 204 with no body. The key is path-cleaned first, so the delete cannot reach outside the bucket it names.  It removes one object and never a prefix: a trailing path that looks like a folder deletes the placeholder at that key, not the objects beneath it.  A validated principal is required, and every bucket and key is resolved inside the caller's own org: physical bucket names are derived from the org, so a tenant cannot name another's storage. The operation is billed per call — the balance is checked BEFORE anything is touched, so an unfunded org is refused with nothing done, and the debit happens only after the work succeeds. Object storage that is not configured answers 503 under this subsystem's own name rather than falling through to another.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  ///
  /// * [String] wildcard1 (required):
  Future<Response> deleteS3BucketsByBucketObjectsByWildcard1WithHttpInfo(String bucket, String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/s3/buckets/{bucket}/objects/{wildcard1}'
      .replaceAll('{bucket}', bucket)
      .replaceAll('{wildcard1}', wildcard1);

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

  /// Delete one object
  ///
  /// Removes the single object at the trailing path from one of the caller's buckets and answers 204 with no body. The key is path-cleaned first, so the delete cannot reach outside the bucket it names.  It removes one object and never a prefix: a trailing path that looks like a folder deletes the placeholder at that key, not the objects beneath it.  A validated principal is required, and every bucket and key is resolved inside the caller's own org: physical bucket names are derived from the org, so a tenant cannot name another's storage. The operation is billed per call — the balance is checked BEFORE anything is touched, so an unfunded org is refused with nothing done, and the debit happens only after the work succeeds. Object storage that is not configured answers 503 under this subsystem's own name rather than falling through to another.
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  ///
  /// * [String] wildcard1 (required):
  Future<void> deleteS3BucketsByBucketObjectsByWildcard1(String bucket, String wildcard1,) async {
    final response = await deleteS3BucketsByBucketObjectsByWildcard1WithHttpInfo(bucket, wildcard1,);
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
  Future<Response> deleteS3ByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/s3/{name}'
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
  Future<void> deleteS3ByName(String name,) async {
    final response = await deleteS3ByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists the caller org's object-storage buckets.
  ///
  /// Lists the caller org's object-storage buckets. A bucket lives in an already-live shared object store and is reached through the public gateway. The names here are the friendly ones the org provisioned; the physical bucket is org-namespaced underneath, which is what keeps two tenants' buckets distinct.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getS3WithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/s3';

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
  Future<List<ProvisionedSummary>?> getS3() async {
    final response = await getS3WithHttpInfo();
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

  /// List your org's buckets
  ///
  /// Returns the caller's own buckets under the friendly names they were created with, each with its creation time.  Another tenant's bucket is not refused, it is INVISIBLE — a bucket outside the caller's namespace is skipped during the listing rather than reported, so the operation cannot be used to discover that a name is taken elsewhere.  A validated principal is required, and every bucket and key is resolved inside the caller's own org: physical bucket names are derived from the org, so a tenant cannot name another's storage. The operation is billed per call — the balance is checked BEFORE anything is touched, so an unfunded org is refused with nothing done, and the debit happens only after the work succeeds. Object storage that is not configured answers 503 under this subsystem's own name rather than falling through to another.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getS3BucketsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/s3/buckets';

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

  /// List your org's buckets
  ///
  /// Returns the caller's own buckets under the friendly names they were created with, each with its creation time.  Another tenant's bucket is not refused, it is INVISIBLE — a bucket outside the caller's namespace is skipped during the listing rather than reported, so the operation cannot be used to discover that a name is taken elsewhere.  A validated principal is required, and every bucket and key is resolved inside the caller's own org: physical bucket names are derived from the org, so a tenant cannot name another's storage. The operation is billed per call — the balance is checked BEFORE anything is touched, so an unfunded org is refused with nothing done, and the debit happens only after the work succeeds. Object storage that is not configured answers 503 under this subsystem's own name rather than falling through to another.
  Future<void> getS3Buckets() async {
    final response = await getS3BucketsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Browse one level of a bucket
  ///
  /// Lists one folder level of a bucket: each entry's key, whether it is a folder, its size, last-modified time and ETag. `prefix` scopes the read to a sub-folder.  Keys come back RELATIVE to the requested prefix, not absolute, which is what lets a client render a breadcrumb without re-deriving it. The default is the folder view — sub-prefixes are returned as directory entries — and `recursive=true` flattens it to every key beneath the prefix instead.  The listing is bounded at 1000 entries so a large bucket cannot exhaust memory; treat a full page as \"there may be more\" rather than as the whole bucket.  A validated principal is required, and every bucket and key is resolved inside the caller's own org: physical bucket names are derived from the org, so a tenant cannot name another's storage. The operation is billed per call — the balance is checked BEFORE anything is touched, so an unfunded org is refused with nothing done, and the debit happens only after the work succeeds. Object storage that is not configured answers 503 under this subsystem's own name rather than falling through to another.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  Future<Response> getS3BucketsByBucketObjectsWithHttpInfo(String bucket,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/s3/buckets/{bucket}/objects'
      .replaceAll('{bucket}', bucket);

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

  /// Browse one level of a bucket
  ///
  /// Lists one folder level of a bucket: each entry's key, whether it is a folder, its size, last-modified time and ETag. `prefix` scopes the read to a sub-folder.  Keys come back RELATIVE to the requested prefix, not absolute, which is what lets a client render a breadcrumb without re-deriving it. The default is the folder view — sub-prefixes are returned as directory entries — and `recursive=true` flattens it to every key beneath the prefix instead.  The listing is bounded at 1000 entries so a large bucket cannot exhaust memory; treat a full page as \"there may be more\" rather than as the whole bucket.  A validated principal is required, and every bucket and key is resolved inside the caller's own org: physical bucket names are derived from the org, so a tenant cannot name another's storage. The operation is billed per call — the balance is checked BEFORE anything is touched, so an unfunded org is refused with nothing done, and the debit happens only after the work succeeds. Object storage that is not configured answers 503 under this subsystem's own name rather than falling through to another.
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  Future<void> getS3BucketsByBucketObjects(String bucket,) async {
    final response = await getS3BucketsByBucketObjectsWithHttpInfo(bucket,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get a URL to download one object directly
  ///
  /// Returns a short-lived presigned GET URL for the object at the trailing path, with the method, the key and its remaining lifetime. As with upload, the client fetches from that URL directly and the storage credential stays on the server.  The URL carries a content disposition of attachment with the object's file name, so a browser following it downloads the object rather than rendering it in place. Signed against the public host, scoped to the one bucket and key, and good for five minutes; a deployment with no public storage endpoint answers 503.  A validated principal is required, and every bucket and key is resolved inside the caller's own org: physical bucket names are derived from the org, so a tenant cannot name another's storage. The operation is billed per call — the balance is checked BEFORE anything is touched, so an unfunded org is refused with nothing done, and the debit happens only after the work succeeds. Object storage that is not configured answers 503 under this subsystem's own name rather than falling through to another.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  ///
  /// * [String] wildcard1 (required):
  Future<Response> getS3BucketsByBucketObjectsByWildcard1WithHttpInfo(String bucket, String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/s3/buckets/{bucket}/objects/{wildcard1}'
      .replaceAll('{bucket}', bucket)
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

  /// Get a URL to download one object directly
  ///
  /// Returns a short-lived presigned GET URL for the object at the trailing path, with the method, the key and its remaining lifetime. As with upload, the client fetches from that URL directly and the storage credential stays on the server.  The URL carries a content disposition of attachment with the object's file name, so a browser following it downloads the object rather than rendering it in place. Signed against the public host, scoped to the one bucket and key, and good for five minutes; a deployment with no public storage endpoint answers 503.  A validated principal is required, and every bucket and key is resolved inside the caller's own org: physical bucket names are derived from the org, so a tenant cannot name another's storage. The operation is billed per call — the balance is checked BEFORE anything is touched, so an unfunded org is refused with nothing done, and the debit happens only after the work succeeds. Object storage that is not configured answers 503 under this subsystem's own name rather than falling through to another.
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  ///
  /// * [String] wildcard1 (required):
  Future<void> getS3BucketsByBucketObjectsByWildcard1(String bucket, String wildcard1,) async {
    final response = await getS3BucketsByBucketObjectsByWildcard1WithHttpInfo(bucket, wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
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
  Future<Response> getS3ByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/s3/{name}'
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
  Future<ProvisionedResource?> getS3ByName(String name,) async {
    final response = await getS3ByNameWithHttpInfo(name,);
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

  /// Whether object storage is usable here
  ///
  /// A real readiness probe rather than a liveness stub: 200 only when the storage credentials are present, and it additionally reports whether presigning is available — the capability the two URL-issuing operations need and refuse without.  An unconfigured deployment answers 503 with `ready:false` and the reason, which is the same state in which every data-plane operation here refuses. Not token-gated, so the platform can probe it without a credential, and it carries no credential, bucket or tenant detail.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getS3HealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/s3/health';

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

  /// Whether object storage is usable here
  ///
  /// A real readiness probe rather than a liveness stub: 200 only when the storage credentials are present, and it additionally reports whether presigning is available — the capability the two URL-issuing operations need and refuse without.  An unconfigured deployment answers 503 with `ready:false` and the reason, which is the same state in which every data-plane operation here refuses. Not token-gated, so the platform can probe it without a credential, and it carries no credential, bucket or tenant detail.
  Future<void> getS3Health() async {
    final response = await getS3HealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Provision an object storage bucket for your org
  ///
  /// Creates an S3-compatible bucket inside the already-running shared object store and answers with the endpoint that reaches it.  `name` is the org-unique slug every physical name derives from, and must match ^[a-z0-9]([a-z0-9-]{0,38}[a-z0-9])?$. `instance` optionally BINDS the add-on to one of your app instances: the DSN is injected into that instance's addons secret as <KIND>_URL, switching the app off its built-in store and onto this one. Omit it and the connection string is yours to wire.  THE CREDENTIAL COMES BACK ONCE. The connection string and password are in this response and nowhere else — every read beside it omits the password — so a caller that does not keep them has to provision again. Where KMS is configured the password is sealed there and only a reference is persisted; where it is not, it is returned this once and stored nowhere. It is never held in plaintext.  Scoped to the caller's validated org (403 without one), which also namespaces the physical resource under a fixed-width hash, so two tenants can never fold onto one backend resource — a residual collision fails closed with 409 rather than silently sharing. A name already taken in your org is 409; an invalid name or instance slug is 400; a backend that refuses the create is 502. Where a later step fails after the backend resource already exists, it is torn back down rather than left orphaned.  Billing is gated BEFORE anything is created: an unfunded org — or, in the fail-closed default, an unreachable meter — gets the fleet-wide 402/503 and nothing is provisioned. The fee is per-kind and set by the deployment.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProvisionRequest] provisionRequest:
  Future<Response> postS3WithHttpInfo({ ProvisionRequest? provisionRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/s3';

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

  /// Provision an object storage bucket for your org
  ///
  /// Creates an S3-compatible bucket inside the already-running shared object store and answers with the endpoint that reaches it.  `name` is the org-unique slug every physical name derives from, and must match ^[a-z0-9]([a-z0-9-]{0,38}[a-z0-9])?$. `instance` optionally BINDS the add-on to one of your app instances: the DSN is injected into that instance's addons secret as <KIND>_URL, switching the app off its built-in store and onto this one. Omit it and the connection string is yours to wire.  THE CREDENTIAL COMES BACK ONCE. The connection string and password are in this response and nowhere else — every read beside it omits the password — so a caller that does not keep them has to provision again. Where KMS is configured the password is sealed there and only a reference is persisted; where it is not, it is returned this once and stored nowhere. It is never held in plaintext.  Scoped to the caller's validated org (403 without one), which also namespaces the physical resource under a fixed-width hash, so two tenants can never fold onto one backend resource — a residual collision fails closed with 409 rather than silently sharing. A name already taken in your org is 409; an invalid name or instance slug is 400; a backend that refuses the create is 502. Where a later step fails after the backend resource already exists, it is torn back down rather than left orphaned.  Billing is gated BEFORE anything is created: an unfunded org — or, in the fail-closed default, an unreachable meter — gets the fleet-wide 402/503 and nothing is provisioned. The fee is per-kind and set by the deployment.
  ///
  /// Parameters:
  ///
  /// * [ProvisionRequest] provisionRequest:
  Future<ProvisionResult?> postS3({ ProvisionRequest? provisionRequest, }) async {
    final response = await postS3WithHttpInfo( provisionRequest: provisionRequest, );
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

  /// Create a bucket in your org
  ///
  /// Creates a new bucket in the caller's own namespace and answers 201 with its friendly name and creation time.  The name is validated exactly as sent and never quietly normalised: it must match `^[a-z0-9]([a-z0-9-]{0,38}[a-z0-9])?$`, so a mixed-case name is a clean 400 rather than a bucket created as `photos` that the caller keeps asking for as `Photos`. A name already in use in the caller's own namespace is 409.  A validated principal is required, and every bucket and key is resolved inside the caller's own org: physical bucket names are derived from the org, so a tenant cannot name another's storage. The operation is billed per call — the balance is checked BEFORE anything is touched, so an unfunded org is refused with nothing done, and the debit happens only after the work succeeds. Object storage that is not configured answers 503 under this subsystem's own name rather than falling through to another.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postS3BucketsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/s3/buckets';

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

  /// Create a bucket in your org
  ///
  /// Creates a new bucket in the caller's own namespace and answers 201 with its friendly name and creation time.  The name is validated exactly as sent and never quietly normalised: it must match `^[a-z0-9]([a-z0-9-]{0,38}[a-z0-9])?$`, so a mixed-case name is a clean 400 rather than a bucket created as `photos` that the caller keeps asking for as `Photos`. A name already in use in the caller's own namespace is 409.  A validated principal is required, and every bucket and key is resolved inside the caller's own org: physical bucket names are derived from the org, so a tenant cannot name another's storage. The operation is billed per call — the balance is checked BEFORE anything is touched, so an unfunded org is refused with nothing done, and the debit happens only after the work succeeds. Object storage that is not configured answers 503 under this subsystem's own name rather than falling through to another.
  Future<void> postS3Buckets() async {
    final response = await postS3BucketsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get a URL to upload one object directly
  ///
  /// Returns a short-lived presigned PUT URL, with the method, the cleaned key and the seconds until it expires. The client uploads to that URL DIRECTLY — the bytes never pass through this API, and the storage credential never leaves the server.  The URL is signed against the public storage host and scoped to exactly one bucket and key, and it expires five minutes after it is issued. The key is path-cleaned before signing, so a traversal cannot escape the bucket. A deployment with no public storage endpoint answers 503, because there is no host to sign a browser-followable URL against.  A validated principal is required, and every bucket and key is resolved inside the caller's own org: physical bucket names are derived from the org, so a tenant cannot name another's storage. The operation is billed per call — the balance is checked BEFORE anything is touched, so an unfunded org is refused with nothing done, and the debit happens only after the work succeeds. Object storage that is not configured answers 503 under this subsystem's own name rather than falling through to another.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  Future<Response> postS3BucketsByBucketObjectsWithHttpInfo(String bucket,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/s3/buckets/{bucket}/objects'
      .replaceAll('{bucket}', bucket);

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

  /// Get a URL to upload one object directly
  ///
  /// Returns a short-lived presigned PUT URL, with the method, the cleaned key and the seconds until it expires. The client uploads to that URL DIRECTLY — the bytes never pass through this API, and the storage credential never leaves the server.  The URL is signed against the public storage host and scoped to exactly one bucket and key, and it expires five minutes after it is issued. The key is path-cleaned before signing, so a traversal cannot escape the bucket. A deployment with no public storage endpoint answers 503, because there is no host to sign a browser-followable URL against.  A validated principal is required, and every bucket and key is resolved inside the caller's own org: physical bucket names are derived from the org, so a tenant cannot name another's storage. The operation is billed per call — the balance is checked BEFORE anything is touched, so an unfunded org is refused with nothing done, and the debit happens only after the work succeeds. Object storage that is not configured answers 503 under this subsystem's own name rather than falling through to another.
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  Future<void> postS3BucketsByBucketObjects(String bucket,) async {
    final response = await postS3BucketsByBucketObjectsWithHttpInfo(bucket,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
