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
}
