//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class KvApi {
  KvApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Removes one bucket of the caller's org — every key and every revision with it — and answers 204 with no body.
  ///
  /// Removes one bucket of the caller's org — every key and every revision with it — and answers 204 with no body. 404 when the org has no bucket of that name.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  ///   Bucket is the bucket's name, from the path.
  Future<Response> deleteKvByBucketWithHttpInfo(String bucket,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/kv/{bucket}'
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

  /// Removes one bucket of the caller's org — every key and every revision with it — and answers 204 with no body.
  ///
  /// Removes one bucket of the caller's org — every key and every revision with it — and answers 204 with no body. 404 when the org has no bucket of that name.
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  ///   Bucket is the bucket's name, from the path.
  Future<void> deleteKvByBucket(String bucket,) async {
    final response = await deleteKvByBucketWithHttpInfo(bucket,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete removes one key — a delete marker in the key's history, so watchers see it and Get answers 404 — and answers 204 with no body.
  ///
  /// Delete removes one key — a delete marker in the key's history, so watchers see it and Get answers 404 — and answers 204 with no body. 404 when the bucket does not exist.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  ///   Bucket is the bucket, from the path.
  ///
  /// * [String] key (required):
  ///   Key is the key, from the path.
  Future<Response> deleteKvByBucketByKeyWithHttpInfo(String bucket, String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/kv/{bucket}/{key}'
      .replaceAll('{bucket}', bucket)
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

  /// Delete removes one key — a delete marker in the key's history, so watchers see it and Get answers 404 — and answers 204 with no body.
  ///
  /// Delete removes one key — a delete marker in the key's history, so watchers see it and Get answers 404 — and answers 204 with no body. 404 when the bucket does not exist.
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  ///   Bucket is the bucket, from the path.
  ///
  /// * [String] key (required):
  ///   Key is the key, from the path.
  Future<void> deleteKvByBucketByKey(String bucket, String key,) async {
    final response = await deleteKvByBucketByKeyWithHttpInfo(bucket, key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get returns one key's current value and revision.
  ///
  /// Get returns one key's current value and revision. 404 when the bucket does not exist, the key was never written, or its latest revision is a delete.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  ///   Bucket is the bucket, from the path.
  ///
  /// * [String] key (required):
  ///   Key is the key, from the path.
  Future<Response> getKvByBucketByKeyWithHttpInfo(String bucket, String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/kv/{bucket}/{key}'
      .replaceAll('{bucket}', bucket)
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

  /// Get returns one key's current value and revision.
  ///
  /// Get returns one key's current value and revision. 404 when the bucket does not exist, the key was never written, or its latest revision is a delete.
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  ///   Bucket is the bucket, from the path.
  ///
  /// * [String] key (required):
  ///   Key is the key, from the path.
  Future<KvEntry?> getKvByBucketByKey(String bucket, String key,) async {
    final response = await getKvByBucketByKeyWithHttpInfo(bucket, key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KvEntry',) as KvEntry;
    
    }
    return null;
  }

  /// History returns one key's retained revisions, oldest first — every put and every delete marker up to the bucket's History depth.
  ///
  /// History returns one key's retained revisions, oldest first — every put and every delete marker up to the bucket's History depth. 404 when the bucket does not exist or the key was never written.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  ///   Bucket is the bucket, from the path.
  ///
  /// * [String] key (required):
  ///   Key is the key, from the path.
  Future<Response> getKvByBucketByKeyHistoryWithHttpInfo(String bucket, String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/kv/{bucket}/{key}/history'
      .replaceAll('{bucket}', bucket)
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

  /// History returns one key's retained revisions, oldest first — every put and every delete marker up to the bucket's History depth.
  ///
  /// History returns one key's retained revisions, oldest first — every put and every delete marker up to the bucket's History depth. 404 when the bucket does not exist or the key was never written.
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  ///   Bucket is the bucket, from the path.
  ///
  /// * [String] key (required):
  ///   Key is the key, from the path.
  Future<KvPage?> getKvByBucketByKeyHistory(String bucket, String key,) async {
    final response = await getKvByBucketByKeyHistoryWithHttpInfo(bucket, key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KvPage',) as KvPage;
    
    }
    return null;
  }

  /// Creates a KV bucket and returns it.
  ///
  /// Creates a KV bucket and returns it. A bucket is keyed state on the same durable plane as the streams: each key holds up to History revisions, entries can expire by TTL, and watchers on the NATS port see every write. 409 when the org already has a bucket of that name.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  ///   Bucket is the bucket's name within the org, from the path: 1–64 of [A-Za-z0-9_], no dash.
  ///
  /// * [BucketWrite] bucketWrite (required):
  Future<Response> postKvByBucketWithHttpInfo(String bucket, BucketWrite bucketWrite,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/kv/{bucket}'
      .replaceAll('{bucket}', bucket);

    // ignore: prefer_final_locals
    Object? postBody = bucketWrite;

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

  /// Creates a KV bucket and returns it.
  ///
  /// Creates a KV bucket and returns it. A bucket is keyed state on the same durable plane as the streams: each key holds up to History revisions, entries can expire by TTL, and watchers on the NATS port see every write. 409 when the org already has a bucket of that name.
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  ///   Bucket is the bucket's name within the org, from the path: 1–64 of [A-Za-z0-9_], no dash.
  ///
  /// * [BucketWrite] bucketWrite (required):
  Future<BucketRecord?> postKvByBucket(String bucket, BucketWrite bucketWrite,) async {
    final response = await postKvByBucketWithHttpInfo(bucket, bucketWrite,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BucketRecord',) as BucketRecord;
    
    }
    return null;
  }

  /// Put sets one key to one value and returns the revision the write created.
  ///
  /// Put sets one key to one value and returns the revision the write created. Writes are versioned: each put is a new revision and the bucket retains up to its History of them per key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  ///   Bucket is the bucket, from the path.
  ///
  /// * [String] key (required):
  ///   Key is the key, from the path.
  ///
  /// * [KvWrite] kvWrite (required):
  Future<Response> putKvByBucketByKeyWithHttpInfo(String bucket, String key, KvWrite kvWrite,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/kv/{bucket}/{key}'
      .replaceAll('{bucket}', bucket)
      .replaceAll('{key}', key);

    // ignore: prefer_final_locals
    Object? postBody = kvWrite;

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

  /// Put sets one key to one value and returns the revision the write created.
  ///
  /// Put sets one key to one value and returns the revision the write created. Writes are versioned: each put is a new revision and the bucket retains up to its History of them per key.
  ///
  /// Parameters:
  ///
  /// * [String] bucket (required):
  ///   Bucket is the bucket, from the path.
  ///
  /// * [String] key (required):
  ///   Key is the key, from the path.
  ///
  /// * [KvWrite] kvWrite (required):
  Future<KvAck?> putKvByBucketByKey(String bucket, String key, KvWrite kvWrite,) async {
    final response = await putKvByBucketByKeyWithHttpInfo(bucket, key, kvWrite,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KvAck',) as KvAck;
    
    }
    return null;
  }
}
