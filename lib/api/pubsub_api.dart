//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class PubsubApi {
  PubsubApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Removes one stream of the caller's org — its retained messages and its consumers with it — and answers 204 with no body.
  ///
  /// Removes one stream of the caller's org — its retained messages and its consumers with it — and answers 204 with no body. 404 when the org has no stream of that name.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] stream (required):
  ///   Stream is the stream's name, from the path.
  Future<Response> deletePubsubJetstreamStreamsByStreamWithHttpInfo(String stream,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pubsub/jetstream/streams/{stream}'
      .replaceAll('{stream}', stream);

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

  /// Removes one stream of the caller's org — its retained messages and its consumers with it — and answers 204 with no body.
  ///
  /// Removes one stream of the caller's org — its retained messages and its consumers with it — and answers 204 with no body. 404 when the org has no stream of that name.
  ///
  /// Parameters:
  ///
  /// * [String] stream (required):
  ///   Stream is the stream's name, from the path.
  Future<void> deletePubsubJetstreamStreamsByStream(String stream,) async {
    final response = await deletePubsubJetstreamStreamsByStreamWithHttpInfo(stream,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes one consumer — its cursor, not the stream's messages — and answers 204 with no body.
  ///
  /// Removes one consumer — its cursor, not the stream's messages — and answers 204 with no body. 404 when the stream or the consumer does not exist.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] stream (required):
  ///   Stream is the stream, from the path.
  ///
  /// * [String] name (required):
  ///   Name is the consumer, from the path.
  Future<Response> deletePubsubJetstreamStreamsByStreamConsumersByNameWithHttpInfo(String stream, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pubsub/jetstream/streams/{stream}/consumers/{name}'
      .replaceAll('{stream}', stream)
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

  /// Removes one consumer — its cursor, not the stream's messages — and answers 204 with no body.
  ///
  /// Removes one consumer — its cursor, not the stream's messages — and answers 204 with no body. 404 when the stream or the consumer does not exist.
  ///
  /// Parameters:
  ///
  /// * [String] stream (required):
  ///   Stream is the stream, from the path.
  ///
  /// * [String] name (required):
  ///   Name is the consumer, from the path.
  Future<void> deletePubsubJetstreamStreamsByStreamConsumersByName(String stream, String name,) async {
    final response = await deletePubsubJetstreamStreamsByStreamConsumersByNameWithHttpInfo(stream, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

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
  Future<Response> deletePubsubKvByBucketWithHttpInfo(String bucket,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pubsub/kv/{bucket}'
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
  Future<void> deletePubsubKvByBucket(String bucket,) async {
    final response = await deletePubsubKvByBucketWithHttpInfo(bucket,);
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
  Future<Response> deletePubsubKvByBucketByKeyWithHttpInfo(String bucket, String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pubsub/kv/{bucket}/{key}'
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
  Future<void> deletePubsubKvByBucketByKey(String bucket, String key,) async {
    final response = await deletePubsubKvByBucketByKeyWithHttpInfo(bucket, key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the org's streams, sorted by name.
  ///
  /// Returns the org's streams, sorted by name.  A stream is the durable log: it captures every message published to its subjects and retains them by its own limits, independent of any consumer. The listing is org-scoped server-side — one org can never see another's streams, and the platform's own planes never appear.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPubsubJetstreamStreamsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pubsub/jetstream/streams';

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

  /// Returns the org's streams, sorted by name.
  ///
  /// Returns the org's streams, sorted by name.  A stream is the durable log: it captures every message published to its subjects and retains them by its own limits, independent of any consumer. The listing is org-scoped server-side — one org can never see another's streams, and the platform's own planes never appear.
  Future<StreamPage?> getPubsubJetstreamStreams() async {
    final response = await getPubsubJetstreamStreamsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StreamPage',) as StreamPage;
    
    }
    return null;
  }

  /// Returns one stream of the caller's org — its configuration and its live state (messages, bytes, sequence range, consumer count).
  ///
  /// Returns one stream of the caller's org — its configuration and its live state (messages, bytes, sequence range, consumer count). 404 when the org has no stream of that name.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] stream (required):
  ///   Stream is the stream's name, from the path.
  Future<Response> getPubsubJetstreamStreamsByStreamWithHttpInfo(String stream,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pubsub/jetstream/streams/{stream}'
      .replaceAll('{stream}', stream);

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

  /// Returns one stream of the caller's org — its configuration and its live state (messages, bytes, sequence range, consumer count).
  ///
  /// Returns one stream of the caller's org — its configuration and its live state (messages, bytes, sequence range, consumer count). 404 when the org has no stream of that name.
  ///
  /// Parameters:
  ///
  /// * [String] stream (required):
  ///   Stream is the stream's name, from the path.
  Future<StreamRecord?> getPubsubJetstreamStreamsByStream(String stream,) async {
    final response = await getPubsubJetstreamStreamsByStreamWithHttpInfo(stream,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StreamRecord',) as StreamRecord;
    
    }
    return null;
  }

  /// Returns one stream's consumers, sorted by name.
  ///
  /// Returns one stream's consumers, sorted by name. 404 when the org has no stream of that name.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] stream (required):
  ///   Stream is the stream's name, from the path.
  Future<Response> getPubsubJetstreamStreamsByStreamConsumersWithHttpInfo(String stream,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pubsub/jetstream/streams/{stream}/consumers'
      .replaceAll('{stream}', stream);

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

  /// Returns one stream's consumers, sorted by name.
  ///
  /// Returns one stream's consumers, sorted by name. 404 when the org has no stream of that name.
  ///
  /// Parameters:
  ///
  /// * [String] stream (required):
  ///   Stream is the stream's name, from the path.
  Future<ConsumerPage?> getPubsubJetstreamStreamsByStreamConsumers(String stream,) async {
    final response = await getPubsubJetstreamStreamsByStreamConsumersWithHttpInfo(stream,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConsumerPage',) as ConsumerPage;
    
    }
    return null;
  }

  /// Returns one consumer of one org stream — its configuration and its cursor: delivered and acknowledged sequences, pending and redelivered counts.
  ///
  /// Returns one consumer of one org stream — its configuration and its cursor: delivered and acknowledged sequences, pending and redelivered counts. 404 when the stream or the consumer does not exist.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] stream (required):
  ///   Stream is the stream, from the path.
  ///
  /// * [String] name (required):
  ///   Name is the consumer, from the path.
  Future<Response> getPubsubJetstreamStreamsByStreamConsumersByNameWithHttpInfo(String stream, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pubsub/jetstream/streams/{stream}/consumers/{name}'
      .replaceAll('{stream}', stream)
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

  /// Returns one consumer of one org stream — its configuration and its cursor: delivered and acknowledged sequences, pending and redelivered counts.
  ///
  /// Returns one consumer of one org stream — its configuration and its cursor: delivered and acknowledged sequences, pending and redelivered counts. 404 when the stream or the consumer does not exist.
  ///
  /// Parameters:
  ///
  /// * [String] stream (required):
  ///   Stream is the stream, from the path.
  ///
  /// * [String] name (required):
  ///   Name is the consumer, from the path.
  Future<ConsumerRecord?> getPubsubJetstreamStreamsByStreamConsumersByName(String stream, String name,) async {
    final response = await getPubsubJetstreamStreamsByStreamConsumersByNameWithHttpInfo(stream, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConsumerRecord',) as ConsumerRecord;
    
    }
    return null;
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
  Future<Response> getPubsubKvByBucketByKeyWithHttpInfo(String bucket, String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pubsub/kv/{bucket}/{key}'
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
  Future<KvEntry?> getPubsubKvByBucketByKey(String bucket, String key,) async {
    final response = await getPubsubKvByBucketByKeyWithHttpInfo(bucket, key,);
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
  Future<Response> getPubsubKvByBucketByKeyHistoryWithHttpInfo(String bucket, String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pubsub/kv/{bucket}/{key}/history'
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
  Future<KvPage?> getPubsubKvByBucketByKeyHistory(String bucket, String key,) async {
    final response = await getPubsubKvByBucketByKeyHistoryWithHttpInfo(bucket, key,);
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

  /// Creates a durable stream capturing the given subjects and returns it.
  ///
  /// Creates a durable stream capturing the given subjects and returns it. 409 when the org already has a stream of that name; the subjects are the org's own and cannot collide with another org's.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [StreamWrite] streamWrite (required):
  Future<Response> postPubsubJetstreamStreamsWithHttpInfo(StreamWrite streamWrite,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pubsub/jetstream/streams';

    // ignore: prefer_final_locals
    Object? postBody = streamWrite;

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

  /// Creates a durable stream capturing the given subjects and returns it.
  ///
  /// Creates a durable stream capturing the given subjects and returns it. 409 when the org already has a stream of that name; the subjects are the org's own and cannot collide with another org's.
  ///
  /// Parameters:
  ///
  /// * [StreamWrite] streamWrite (required):
  Future<StreamRecord?> postPubsubJetstreamStreams(StreamWrite streamWrite,) async {
    final response = await postPubsubJetstreamStreamsWithHttpInfo(streamWrite,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StreamRecord',) as StreamRecord;
    
    }
    return null;
  }

  /// Creates a durable consumer on one stream and returns it.
  ///
  /// Creates a durable consumer on one stream and returns it. A consumer is a named cursor: it tracks what has been delivered and what is acknowledged, so many workers can share it and none sees a message twice outside redelivery. 409 when the stream already has a consumer of that name with a different configuration.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] stream (required):
  ///   Stream is the stream to consume, from the path.
  ///
  /// * [ConsumerWrite] consumerWrite (required):
  Future<Response> postPubsubJetstreamStreamsByStreamConsumersWithHttpInfo(String stream, ConsumerWrite consumerWrite,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pubsub/jetstream/streams/{stream}/consumers'
      .replaceAll('{stream}', stream);

    // ignore: prefer_final_locals
    Object? postBody = consumerWrite;

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

  /// Creates a durable consumer on one stream and returns it.
  ///
  /// Creates a durable consumer on one stream and returns it. A consumer is a named cursor: it tracks what has been delivered and what is acknowledged, so many workers can share it and none sees a message twice outside redelivery. 409 when the stream already has a consumer of that name with a different configuration.
  ///
  /// Parameters:
  ///
  /// * [String] stream (required):
  ///   Stream is the stream to consume, from the path.
  ///
  /// * [ConsumerWrite] consumerWrite (required):
  Future<ConsumerRecord?> postPubsubJetstreamStreamsByStreamConsumers(String stream, ConsumerWrite consumerWrite,) async {
    final response = await postPubsubJetstreamStreamsByStreamConsumersWithHttpInfo(stream, consumerWrite,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConsumerRecord',) as ConsumerRecord;
    
    }
    return null;
  }

  /// Fetch pulls the next batch from a consumer and acknowledges it — the request/response way to consume a stream.
  ///
  /// Fetch pulls the next batch from a consumer and acknowledges it — the request/response way to consume a stream. The hand-off is at-most-once: a message returned here is acked here, so a caller that loses the response does not see it again. Workers needing at-least-once delivery consume the same consumer over the NATS port, where acks are theirs to send. An empty batch after the wait is an empty page, not an error.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] stream (required):
  ///   Stream is the stream, from the path.
  ///
  /// * [String] name (required):
  ///   Name is the consumer, from the path.
  ///
  /// * [FetchQuery] fetchQuery (required):
  Future<Response> postPubsubJetstreamStreamsByStreamConsumersByNameNextWithHttpInfo(String stream, String name, FetchQuery fetchQuery,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pubsub/jetstream/streams/{stream}/consumers/{name}/next'
      .replaceAll('{stream}', stream)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = fetchQuery;

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

  /// Fetch pulls the next batch from a consumer and acknowledges it — the request/response way to consume a stream.
  ///
  /// Fetch pulls the next batch from a consumer and acknowledges it — the request/response way to consume a stream. The hand-off is at-most-once: a message returned here is acked here, so a caller that loses the response does not see it again. Workers needing at-least-once delivery consume the same consumer over the NATS port, where acks are theirs to send. An empty batch after the wait is an empty page, not an error.
  ///
  /// Parameters:
  ///
  /// * [String] stream (required):
  ///   Stream is the stream, from the path.
  ///
  /// * [String] name (required):
  ///   Name is the consumer, from the path.
  ///
  /// * [FetchQuery] fetchQuery (required):
  Future<MessagePage?> postPubsubJetstreamStreamsByStreamConsumersByNameNext(String stream, String name, FetchQuery fetchQuery,) async {
    final response = await postPubsubJetstreamStreamsByStreamConsumersByNameNextWithHttpInfo(stream, name, fetchQuery,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MessagePage',) as MessagePage;
    
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
  Future<Response> postPubsubKvByBucketWithHttpInfo(String bucket, BucketWrite bucketWrite,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pubsub/kv/{bucket}'
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
  Future<BucketRecord?> postPubsubKvByBucket(String bucket, BucketWrite bucketWrite,) async {
    final response = await postPubsubKvByBucketWithHttpInfo(bucket, bucketWrite,);
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

  /// Publish puts one message on the org's bus.
  ///
  /// Publish puts one message on the org's bus. When a stream captures the subject the write is DURABLE — the receipt names the stream and sequence only after JetStream has it on storage, and a repeated Nats-Msg-Id header within the dedup window answers duplicate instead of storing twice. When nothing captures it, the message goes out core NATS: delivered to current subscribers, receipt {ok}, nothing retained.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BusPublish] busPublish (required):
  Future<Response> postPubsubPublishWithHttpInfo(BusPublish busPublish,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pubsub/publish';

    // ignore: prefer_final_locals
    Object? postBody = busPublish;

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

  /// Publish puts one message on the org's bus.
  ///
  /// Publish puts one message on the org's bus. When a stream captures the subject the write is DURABLE — the receipt names the stream and sequence only after JetStream has it on storage, and a repeated Nats-Msg-Id header within the dedup window answers duplicate instead of storing twice. When nothing captures it, the message goes out core NATS: delivered to current subscribers, receipt {ok}, nothing retained.
  ///
  /// Parameters:
  ///
  /// * [BusPublish] busPublish (required):
  Future<BusAck?> postPubsubPublish(BusPublish busPublish,) async {
    final response = await postPubsubPublishWithHttpInfo(busPublish,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BusAck',) as BusAck;
    
    }
    return null;
  }

  /// Request sends one request on the org's bus and waits for one reply — the synchronous half of pub/sub, for callers speaking to a responder subscribed on the NATS port.
  ///
  /// Request sends one request on the org's bus and waits for one reply — the synchronous half of pub/sub, for callers speaking to a responder subscribed on the NATS port. 404 when nobody is listening on the subject; 408 when a responder exists but no reply arrived within the timeout.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BusRequest] busRequest (required):
  Future<Response> postPubsubRequestWithHttpInfo(BusRequest busRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pubsub/request';

    // ignore: prefer_final_locals
    Object? postBody = busRequest;

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

  /// Request sends one request on the org's bus and waits for one reply — the synchronous half of pub/sub, for callers speaking to a responder subscribed on the NATS port.
  ///
  /// Request sends one request on the org's bus and waits for one reply — the synchronous half of pub/sub, for callers speaking to a responder subscribed on the NATS port. 404 when nobody is listening on the subject; 408 when a responder exists but no reply arrived within the timeout.
  ///
  /// Parameters:
  ///
  /// * [BusRequest] busRequest (required):
  Future<BusMessage?> postPubsubRequest(BusRequest busRequest,) async {
    final response = await postPubsubRequestWithHttpInfo(busRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BusMessage',) as BusMessage;
    
    }
    return null;
  }

  /// Rewrites a stream's configuration — subjects, limits, discard — and returns the updated stream.
  ///
  /// Rewrites a stream's configuration — subjects, limits, discard — and returns the updated stream. It is a PUT: the spec sent replaces the spec held, with one reading for the enums a caller omits — an empty storage, retention or discard keeps the stream's current one, because JetStream holds storage and retention immutable and refuses a change with a 400 rather than this door pretending it took.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] stream (required):
  ///   Stream is the stream to update, from the path.
  ///
  /// * [StreamUpdate] streamUpdate (required):
  Future<Response> putPubsubJetstreamStreamsByStreamWithHttpInfo(String stream, StreamUpdate streamUpdate,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pubsub/jetstream/streams/{stream}'
      .replaceAll('{stream}', stream);

    // ignore: prefer_final_locals
    Object? postBody = streamUpdate;

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

  /// Rewrites a stream's configuration — subjects, limits, discard — and returns the updated stream.
  ///
  /// Rewrites a stream's configuration — subjects, limits, discard — and returns the updated stream. It is a PUT: the spec sent replaces the spec held, with one reading for the enums a caller omits — an empty storage, retention or discard keeps the stream's current one, because JetStream holds storage and retention immutable and refuses a change with a 400 rather than this door pretending it took.
  ///
  /// Parameters:
  ///
  /// * [String] stream (required):
  ///   Stream is the stream to update, from the path.
  ///
  /// * [StreamUpdate] streamUpdate (required):
  Future<StreamRecord?> putPubsubJetstreamStreamsByStream(String stream, StreamUpdate streamUpdate,) async {
    final response = await putPubsubJetstreamStreamsByStreamWithHttpInfo(stream, streamUpdate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StreamRecord',) as StreamRecord;
    
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
  Future<Response> putPubsubKvByBucketByKeyWithHttpInfo(String bucket, String key, KvWrite kvWrite,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pubsub/kv/{bucket}/{key}'
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
  Future<KvAck?> putPubsubKvByBucketByKey(String bucket, String key, KvWrite kvWrite,) async {
    final response = await putPubsubKvByBucketByKeyWithHttpInfo(bucket, key, kvWrite,);
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
