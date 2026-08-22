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

  /// Removes an EMPTY bucket and answers 204.
  ///
  /// Removes an EMPTY bucket and answers 204.  A non-empty bucket is 409 rather than a cascade: deleting a tenant's objects behind a single bucket call is not a thing this surface will do silently. A bucket the caller's org does not own is the same 404 an unknown name gives.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  ///   Bucket is the bucket's friendly name, from the path.
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

  /// Removes an EMPTY bucket and answers 204.
  ///
  /// Removes an EMPTY bucket and answers 204.  A non-empty bucket is 409 rather than a cascade: deleting a tenant's objects behind a single bucket call is not a thing this surface will do silently. A bucket the caller's org does not own is the same 404 an unknown name gives.
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  ///   Bucket is the bucket's friendly name, from the path.
  Future<void> deleteS3BucketsByBucket(String bucket,) async {
    final response = await deleteS3BucketsByBucketWithHttpInfo(bucket,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists the caller org's own buckets.
  ///
  /// Lists the caller org's own buckets.  Only the caller's: every bucket is physically named under a per-org prefix and the listing strips that prefix, so a tenant sees friendly names and another tenant's buckets are not in the answer at all.
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

  /// Lists the caller org's own buckets.
  ///
  /// Lists the caller org's own buckets.  Only the caller's: every bucket is physically named under a per-org prefix and the listing strips that prefix, so a tenant sees friendly names and another tenant's buckets are not in the answer at all.
  Future<BucketList?> getS3Buckets() async {
    final response = await getS3BucketsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BucketList',) as BucketList;
    
    }
    return null;
  }

  /// Lists one folder level of a bucket.
  ///
  /// Lists one folder level of a bucket.  Folder-style by default: sub-prefixes come back as directory entries, which is the file-manager view. `?recursive=true` lists every key flat under the prefix instead. Keys are RELATIVE to `?prefix=`, and the listing is bounded so a huge bucket cannot exhaust memory — Total is what came back, not what the bucket holds.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  ///   Bucket is the bucket to list, from the path.
  ///
  /// * [String] prefix:
  ///
  /// * [String] recursive:
  Future<Response> getS3BucketsByBucketObjectsWithHttpInfo(String bucket, { String? prefix, String? recursive, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/s3/buckets/{bucket}/objects'
      .replaceAll('{bucket}', bucket);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (prefix != null) {
      queryParams.addAll(_queryParams('', 'prefix', prefix));
    }
    if (recursive != null) {
      queryParams.addAll(_queryParams('', 'recursive', recursive));
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

  /// Lists one folder level of a bucket.
  ///
  /// Lists one folder level of a bucket.  Folder-style by default: sub-prefixes come back as directory entries, which is the file-manager view. `?recursive=true` lists every key flat under the prefix instead. Keys are RELATIVE to `?prefix=`, and the listing is bounded so a huge bucket cannot exhaust memory — Total is what came back, not what the bucket holds.
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  ///   Bucket is the bucket to list, from the path.
  ///
  /// * [String] prefix:
  ///
  /// * [String] recursive:
  Future<ObjectList?> getS3BucketsByBucketObjects(String bucket, { String? prefix, String? recursive, }) async {
    final response = await getS3BucketsByBucketObjectsWithHttpInfo(bucket,  prefix: prefix, recursive: recursive, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ObjectList',) as ObjectList;
    
    }
    return null;
  }

  /// Health reports whether this deployment can serve object storage.
  ///
  /// Health reports whether this deployment can serve object storage.  It is a REAL probe rather than a constant: 200 when admin credentials are present, so the store is reachable in principle, and 503 with the reason when they are not. It is deliberately NOT gated — liveness has to be probe-able without a token — so it is the one operation here that names no bucket and bills nothing.
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

  /// Health reports whether this deployment can serve object storage.
  ///
  /// Health reports whether this deployment can serve object storage.  It is a REAL probe rather than a constant: 200 when admin credentials are present, so the store is reachable in principle, and 503 with the reason when they are not. It is deliberately NOT gated — liveness has to be probe-able without a token — so it is the one operation here that names no bucket and bills nothing.
  Future<S3Health?> getS3Health() async {
    final response = await getS3HealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'S3Health',) as S3Health;
    
    }
    return null;
  }

  /// Makes a new bucket for the caller's org and answers 201 with it.
  ///
  /// Makes a new bucket for the caller's org and answers 201 with it.  The physical name is derived from the caller's validated org, so a tenant can only ever create inside its own namespace and no request field can redirect that. A name already taken in the org is 409.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BucketIn] bucketIn (required):
  Future<Response> postS3BucketsWithHttpInfo(BucketIn bucketIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/s3/buckets';

    // ignore: prefer_final_locals
    Object? postBody = bucketIn;

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

  /// Makes a new bucket for the caller's org and answers 201 with it.
  ///
  /// Makes a new bucket for the caller's org and answers 201 with it.  The physical name is derived from the caller's validated org, so a tenant can only ever create inside its own namespace and no request field can redirect that. A name already taken in the org is 409.
  ///
  /// Parameters:
  ///
  /// * [BucketIn] bucketIn (required):
  Future<BucketItem?> postS3Buckets(BucketIn bucketIn,) async {
    final response = await postS3BucketsWithHttpInfo(bucketIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BucketItem',) as BucketItem;
    
    }
    return null;
  }

  /// Mints a presigned PUT URL the caller uploads to DIRECTLY.
  ///
  /// Mints a presigned PUT URL the caller uploads to DIRECTLY.  The bytes never pass through this binary and the admin credential never leaves the server: the URL is signed against the PUBLIC host, scoped to exactly this bucket and key, and expires. A deployment with no public endpoint configured cannot mint one and answers 503 rather than a URL that will not work.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  ///   Bucket is the bucket to upload into, from the path.
  ///
  /// * [UploadIn] uploadIn (required):
  Future<Response> postS3BucketsByBucketObjectsWithHttpInfo(String bucket, UploadIn uploadIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/s3/buckets/{bucket}/objects'
      .replaceAll('{bucket}', bucket);

    // ignore: prefer_final_locals
    Object? postBody = uploadIn;

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

  /// Mints a presigned PUT URL the caller uploads to DIRECTLY.
  ///
  /// Mints a presigned PUT URL the caller uploads to DIRECTLY.  The bytes never pass through this binary and the admin credential never leaves the server: the URL is signed against the PUBLIC host, scoped to exactly this bucket and key, and expires. A deployment with no public endpoint configured cannot mint one and answers 503 rather than a URL that will not work.
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  ///   Bucket is the bucket to upload into, from the path.
  ///
  /// * [UploadIn] uploadIn (required):
  Future<PresignResponse?> postS3BucketsByBucketObjects(String bucket, UploadIn uploadIn,) async {
    final response = await postS3BucketsByBucketObjectsWithHttpInfo(bucket, uploadIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PresignResponse',) as PresignResponse;
    
    }
    return null;
  }
}
