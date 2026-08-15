//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class MqApi {
  MqApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Removes a stream with all its messages and consumers.
  ///
  /// Removes a stream with all its messages and consumers. Irreversible.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the stream name, from the path.
  Future<Response> deleteMqStreamsByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mq/streams/{name}'
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

  /// Removes a stream with all its messages and consumers.
  ///
  /// Removes a stream with all its messages and consumers. Irreversible.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the stream name, from the path.
  Future<void> deleteMqStreamsByName(String name,) async {
    final response = await deleteMqStreamsByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Erases one message by sequence; the sequence gap remains.
  ///
  /// Erases one message by sequence; the sequence gap remains.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the stream name, from the path.
  ///
  /// * [int] seq (required):
  ///   Seq is the message's stream sequence, from the path.
  Future<Response> deleteMqStreamsByNameMessagesBySeqWithHttpInfo(String name, int seq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mq/streams/{name}/messages/{seq}'
      .replaceAll('{name}', name)
      .replaceAll('{seq}', seq.toString());

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

  /// Erases one message by sequence; the sequence gap remains.
  ///
  /// Erases one message by sequence; the sequence gap remains.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the stream name, from the path.
  ///
  /// * [int] seq (required):
  ///   Seq is the message's stream sequence, from the path.
  Future<void> deleteMqStreamsByNameMessagesBySeq(String name, int seq,) async {
    final response = await deleteMqStreamsByNameMessagesBySeqWithHttpInfo(name, seq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes a consumer and its delivery state; unacknowledged messages stay in the stream.
  ///
  /// Removes a consumer and its delivery state; unacknowledged messages stay in the stream.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] stream (required):
  ///   Stream is the stream name, from the path.
  ///
  /// * [String] name (required):
  ///   Name is the consumer name, from the path.
  Future<Response> deleteMqStreamsByStreamConsumersByNameWithHttpInfo(String stream, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mq/streams/{stream}/consumers/{name}'
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

  /// Removes a consumer and its delivery state; unacknowledged messages stay in the stream.
  ///
  /// Removes a consumer and its delivery state; unacknowledged messages stay in the stream.
  ///
  /// Parameters:
  ///
  /// * [String] stream (required):
  ///   Stream is the stream name, from the path.
  ///
  /// * [String] name (required):
  ///   Name is the consumer name, from the path.
  Future<void> deleteMqStreamsByStreamConsumersByName(String stream, String name,) async {
    final response = await deleteMqStreamsByStreamConsumersByNameWithHttpInfo(stream, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Reports whether the message plane behind this surface answers.
  ///
  /// Reports whether the message plane behind this surface answers.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMqHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mq/health';

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

  /// Reports whether the message plane behind this surface answers.
  ///
  /// Reports whether the message plane behind this surface answers.
  Future<Health?> getMqHealth() async {
    final response = await getMqHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Health',) as Health;
    
    }
    return null;
  }

  /// Returns the broker's identity and the org's stream count.
  ///
  /// Returns the broker's identity and the org's stream count.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMqInfoWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mq/info';

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

  /// Returns the broker's identity and the org's stream count.
  ///
  /// Returns the broker's identity and the org's stream count.
  Future<InfoOut?> getMqInfo() async {
    final response = await getMqInfoWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InfoOut',) as InfoOut;
    
    }
    return null;
  }

  /// Returns the org's streams, name-ordered, with their live state.
  ///
  /// Returns the org's streams, name-ordered, with their live state.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the streams returned (1–1000, default 100).
  ///
  /// * [int] offset:
  ///   Offset skips that many streams, name-ordered.
  Future<Response> getMqStreamsWithHttpInfo({ int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mq/streams';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
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

  /// Returns the org's streams, name-ordered, with their live state.
  ///
  /// Returns the org's streams, name-ordered, with their live state.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps the streams returned (1–1000, default 100).
  ///
  /// * [int] offset:
  ///   Offset skips that many streams, name-ordered.
  Future<Streams?> getMqStreams({ int? limit, int? offset, }) async {
    final response = await getMqStreamsWithHttpInfo( limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Streams',) as Streams;
    
    }
    return null;
  }

  /// Returns one stream's configuration and live state.
  ///
  /// Returns one stream's configuration and live state.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the stream name, from the path.
  Future<Response> getMqStreamsByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mq/streams/{name}'
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

  /// Returns one stream's configuration and live state.
  ///
  /// Returns one stream's configuration and live state.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the stream name, from the path.
  Future<MqStream?> getMqStreamsByName(String name,) async {
    final response = await getMqStreamsByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MqStream',) as MqStream;
    
    }
    return null;
  }

  /// Reads stored messages without a consumer: by sequence, by newest on a subject, or walking a subject forward from a sequence.
  ///
  /// Reads stored messages without a consumer: by sequence, by newest on a subject, or walking a subject forward from a sequence.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the stream name, from the path.
  ///
  /// * [int] seq:
  ///   Seq reads the message at this sequence (with next_by_subject: the walk's start).
  ///
  /// * [String] lastBySubject:
  ///   LastBySubject reads the newest message on this org-relative subject.
  ///
  /// * [String] nextBySubject:
  ///   NextBySubject walks forward from seq collecting messages on this org-relative subject (wildcards supported).
  ///
  /// * [int] limit:
  ///   Limit caps a next_by_subject walk (1–1000, default 100).
  Future<Response> getMqStreamsByNameMessagesWithHttpInfo(String name, { int? seq, String? lastBySubject, String? nextBySubject, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mq/streams/{name}/messages'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (seq != null) {
      queryParams.addAll(_queryParams('', 'seq', seq));
    }
    if (lastBySubject != null) {
      queryParams.addAll(_queryParams('', 'last_by_subject', lastBySubject));
    }
    if (nextBySubject != null) {
      queryParams.addAll(_queryParams('', 'next_by_subject', nextBySubject));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// Reads stored messages without a consumer: by sequence, by newest on a subject, or walking a subject forward from a sequence.
  ///
  /// Reads stored messages without a consumer: by sequence, by newest on a subject, or walking a subject forward from a sequence.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the stream name, from the path.
  ///
  /// * [int] seq:
  ///   Seq reads the message at this sequence (with next_by_subject: the walk's start).
  ///
  /// * [String] lastBySubject:
  ///   LastBySubject reads the newest message on this org-relative subject.
  ///
  /// * [String] nextBySubject:
  ///   NextBySubject walks forward from seq collecting messages on this org-relative subject (wildcards supported).
  ///
  /// * [int] limit:
  ///   Limit caps a next_by_subject walk (1–1000, default 100).
  Future<ReadOut?> getMqStreamsByNameMessages(String name, { int? seq, String? lastBySubject, String? nextBySubject, int? limit, }) async {
    final response = await getMqStreamsByNameMessagesWithHttpInfo(name,  seq: seq, lastBySubject: lastBySubject, nextBySubject: nextBySubject, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReadOut',) as ReadOut;
    
    }
    return null;
  }

  /// Returns a stream's consumers, name-ordered, with delivery state.
  ///
  /// Returns a stream's consumers, name-ordered, with delivery state.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] stream (required):
  ///   Stream is the stream name, from the path.
  ///
  /// * [int] limit:
  ///   Limit caps the consumers returned (1–1000, default 100).
  ///
  /// * [int] offset:
  ///   Offset skips that many consumers, name-ordered.
  Future<Response> getMqStreamsByStreamConsumersWithHttpInfo(String stream, { int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mq/streams/{stream}/consumers'
      .replaceAll('{stream}', stream);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
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

  /// Returns a stream's consumers, name-ordered, with delivery state.
  ///
  /// Returns a stream's consumers, name-ordered, with delivery state.
  ///
  /// Parameters:
  ///
  /// * [String] stream (required):
  ///   Stream is the stream name, from the path.
  ///
  /// * [int] limit:
  ///   Limit caps the consumers returned (1–1000, default 100).
  ///
  /// * [int] offset:
  ///   Offset skips that many consumers, name-ordered.
  Future<PickOut?> getMqStreamsByStreamConsumers(String stream, { int? limit, int? offset, }) async {
    final response = await getMqStreamsByStreamConsumersWithHttpInfo(stream,  limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PickOut',) as PickOut;
    
    }
    return null;
  }

  /// Returns one consumer's configuration and delivery state.
  ///
  /// Returns one consumer's configuration and delivery state.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] stream (required):
  ///   Stream is the stream name, from the path.
  ///
  /// * [String] name (required):
  ///   Name is the consumer name, from the path.
  Future<Response> getMqStreamsByStreamConsumersByNameWithHttpInfo(String stream, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mq/streams/{stream}/consumers/{name}'
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

  /// Returns one consumer's configuration and delivery state.
  ///
  /// Returns one consumer's configuration and delivery state.
  ///
  /// Parameters:
  ///
  /// * [String] stream (required):
  ///   Stream is the stream name, from the path.
  ///
  /// * [String] name (required):
  ///   Name is the consumer name, from the path.
  Future<Consumer?> getMqStreamsByStreamConsumersByName(String stream, String name,) async {
    final response = await getMqStreamsByStreamConsumersByNameWithHttpInfo(stream, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Consumer',) as Consumer;
    
    }
    return null;
  }

  /// Creates a durable stream in the org's namespace and returns it.
  ///
  /// Creates a durable stream in the org's namespace and returns it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Config] config (required):
  Future<Response> postMqStreamsWithHttpInfo(Config config,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mq/streams';

    // ignore: prefer_final_locals
    Object? postBody = config;

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

  /// Creates a durable stream in the org's namespace and returns it.
  ///
  /// Creates a durable stream in the org's namespace and returns it.
  ///
  /// Parameters:
  ///
  /// * [Config] config (required):
  Future<MqStream?> postMqStreams(Config config,) async {
    final response = await postMqStreamsWithHttpInfo(config,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MqStream',) as MqStream;
    
    }
    return null;
  }

  /// Removes messages from a stream, leaving its consumers in place.
  ///
  /// Removes messages from a stream, leaving its consumers in place.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the stream name, from the path.
  ///
  /// * [Purge] purge (required):
  Future<Response> postMqStreamsByNamePurgeWithHttpInfo(String name, Purge purge,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mq/streams/{name}/purge'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = purge;

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

  /// Removes messages from a stream, leaving its consumers in place.
  ///
  /// Removes messages from a stream, leaving its consumers in place.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the stream name, from the path.
  ///
  /// * [Purge] purge (required):
  Future<PurgeOut?> postMqStreamsByNamePurge(String name, Purge purge,) async {
    final response = await postMqStreamsByNamePurgeWithHttpInfo(name, purge,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PurgeOut',) as PurgeOut;
    
    }
    return null;
  }

  /// Creates a durable pull consumer on a stream and returns it.
  ///
  /// Creates a durable pull consumer on a stream and returns it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] stream (required):
  ///   Stream is the stream name, from the path.
  ///
  /// * [MakeIn] makeIn (required):
  Future<Response> postMqStreamsByStreamConsumersWithHttpInfo(String stream, MakeIn makeIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mq/streams/{stream}/consumers'
      .replaceAll('{stream}', stream);

    // ignore: prefer_final_locals
    Object? postBody = makeIn;

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

  /// Creates a durable pull consumer on a stream and returns it.
  ///
  /// Creates a durable pull consumer on a stream and returns it.
  ///
  /// Parameters:
  ///
  /// * [String] stream (required):
  ///   Stream is the stream name, from the path.
  ///
  /// * [MakeIn] makeIn (required):
  Future<Consumer?> postMqStreamsByStreamConsumers(String stream, MakeIn makeIn,) async {
    final response = await postMqStreamsByStreamConsumersWithHttpInfo(stream, makeIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Consumer',) as Consumer;
    
    }
    return null;
  }

  /// Pulls the consumer's next batch.
  ///
  /// Pulls the consumer's next batch. Delivered messages are acknowledged on delivery — the broker will not redeliver what this call returns; an empty wait answers 408.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] stream (required):
  ///   Stream is the stream name, from the path.
  ///
  /// * [String] name (required):
  ///   Name is the consumer name, from the path.
  ///
  /// * [NextIn] nextIn (required):
  Future<Response> postMqStreamsByStreamConsumersByNameNextWithHttpInfo(String stream, String name, NextIn nextIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mq/streams/{stream}/consumers/{name}/next'
      .replaceAll('{stream}', stream)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = nextIn;

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

  /// Pulls the consumer's next batch.
  ///
  /// Pulls the consumer's next batch. Delivered messages are acknowledged on delivery — the broker will not redeliver what this call returns; an empty wait answers 408.
  ///
  /// Parameters:
  ///
  /// * [String] stream (required):
  ///   Stream is the stream name, from the path.
  ///
  /// * [String] name (required):
  ///   Name is the consumer name, from the path.
  ///
  /// * [NextIn] nextIn (required):
  Future<ReadOut?> postMqStreamsByStreamConsumersByNameNext(String stream, String name, NextIn nextIn,) async {
    final response = await postMqStreamsByStreamConsumersByNameNextWithHttpInfo(stream, name, nextIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReadOut',) as ReadOut;
    
    }
    return null;
  }

  /// Reconfigures an existing stream; the path names the stream, and the immutable fields (storage, retention) must restate what they are.
  ///
  /// Reconfigures an existing stream; the path names the stream, and the immutable fields (storage, retention) must restate what they are.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the stream name, unique within the org (alphanumeric, hyphens, underscores).
  ///
  /// * [Config] config (required):
  Future<Response> putMqStreamsByNameWithHttpInfo(String name, Config config,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mq/streams/{name}'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = config;

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

  /// Reconfigures an existing stream; the path names the stream, and the immutable fields (storage, retention) must restate what they are.
  ///
  /// Reconfigures an existing stream; the path names the stream, and the immutable fields (storage, retention) must restate what they are.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the stream name, unique within the org (alphanumeric, hyphens, underscores).
  ///
  /// * [Config] config (required):
  Future<MqStream?> putMqStreamsByName(String name, Config config,) async {
    final response = await putMqStreamsByNameWithHttpInfo(name, config,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MqStream',) as MqStream;
    
    }
    return null;
  }
}
