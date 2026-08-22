//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class WebhookApi {
  WebhookApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Removes one of the caller org's webhook endpoints and answers 204 with no body.
  ///
  /// Removes one of the caller org's webhook endpoints and answers 204 with no body. Delivery stops immediately and the endpoint's signing secret is gone with it; its recorded delivery history goes too. An id another org owns reads as not found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteWebhookByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webhook/{id}'
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

  /// Removes one of the caller org's webhook endpoints and answers 204 with no body.
  ///
  /// Removes one of the caller org's webhook endpoints and answers 204 with no body. Delivery stops immediately and the endpoint's signing secret is gone with it; its recorded delivery history goes too. An id another org owns reads as not found.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteWebhookById(String id,) async {
    final response = await deleteWebhookByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns every webhook endpoint the caller's org has registered, newest first, each with its 7-day delivery and failure counts.
  ///
  /// Returns every webhook endpoint the caller's org has registered, newest first, each with its 7-day delivery and failure counts. Signing secrets are redacted here — a secret leaves the server only on create and on rotate. The listing is physically org-scoped, so another tenant's endpoints are not reachable from this route at all.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getWebhookWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webhook';

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

  /// Returns every webhook endpoint the caller's org has registered, newest first, each with its 7-day delivery and failure counts.
  ///
  /// Returns every webhook endpoint the caller's org has registered, newest first, each with its 7-day delivery and failure counts. Signing secrets are redacted here — a secret leaves the server only on create and on rotate. The listing is physically org-scoped, so another tenant's endpoints are not reachable from this route at all.
  Future<EndpointList?> getWebhook() async {
    final response = await getWebhookWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EndpointList',) as EndpointList;
    
    }
    return null;
  }

  /// Returns one of the caller org's webhook endpoints with its 7-day delivery and failure counts, signing secret redacted.
  ///
  /// Returns one of the caller org's webhook endpoints with its 7-day delivery and failure counts, signing secret redacted. An id another org owns reads as not found, so the response cannot confirm that it exists.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getWebhookByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webhook/{id}'
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

  /// Returns one of the caller org's webhook endpoints with its 7-day delivery and failure counts, signing secret redacted.
  ///
  /// Returns one of the caller org's webhook endpoints with its 7-day delivery and failure counts, signing secret redacted. An id another org owns reads as not found, so the response cannot confirm that it exists.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Endpoint?> getWebhookById(String id,) async {
    final response = await getWebhookByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Endpoint',) as Endpoint;
    
    }
    return null;
  }

  /// Returns one endpoint's per-attempt delivery log, newest first — the record of what was sent, what the subscriber answered, and how long it took.
  ///
  /// Returns one endpoint's per-attempt delivery log, newest first — the record of what was sent, what the subscriber answered, and how long it took. One event that retried three times appears as three rows sharing a delivery id. It is org-scoped exactly like every other route here: the endpoint lookup only ever finds THIS org's endpoint, so another org's id is a 404 and never a window onto its logs.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [int] limit:
  ///   Limit caps how many attempts come back: default 50, maximum 200. A value that is not a positive integer reads as the default.
  ///
  /// * [String] status:
  ///   Status narrows the log to one outcome: \"ok\", \"retrying\" or \"failed\". Empty returns every attempt.
  Future<Response> getWebhookByIdDeliveriesWithHttpInfo(String id, { int? limit, String? status, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webhook/{id}/deliveries'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
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

  /// Returns one endpoint's per-attempt delivery log, newest first — the record of what was sent, what the subscriber answered, and how long it took.
  ///
  /// Returns one endpoint's per-attempt delivery log, newest first — the record of what was sent, what the subscriber answered, and how long it took. One event that retried three times appears as three rows sharing a delivery id. It is org-scoped exactly like every other route here: the endpoint lookup only ever finds THIS org's endpoint, so another org's id is a 404 and never a window onto its logs.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [int] limit:
  ///   Limit caps how many attempts come back: default 50, maximum 200. A value that is not a positive integer reads as the default.
  ///
  /// * [String] status:
  ///   Status narrows the log to one outcome: \"ok\", \"retrying\" or \"failed\". Empty returns every attempt.
  Future<DeliveryList?> getWebhookByIdDeliveries(String id, { int? limit, String? status, }) async {
    final response = await getWebhookByIdDeliveriesWithHttpInfo(id,  limit: limit, status: status, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeliveryList',) as DeliveryList;
    
    }
    return null;
  }

  /// Registers a new webhook subscription for the caller's org and answers 201 with the endpoint INCLUDING its freshly minted signing secret.
  ///
  /// Registers a new webhook subscription for the caller's org and answers 201 with the endpoint INCLUDING its freshly minted signing secret. This is one of only two responses that ever carry that secret (the other is rotate) — store it now, because no later read returns it. The org is stamped by the server from the validated principal, so a body can never register an endpoint in another tenant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateEndpointIn] createEndpointIn (required):
  Future<Response> postWebhookWithHttpInfo(CreateEndpointIn createEndpointIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webhook';

    // ignore: prefer_final_locals
    Object? postBody = createEndpointIn;

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

  /// Registers a new webhook subscription for the caller's org and answers 201 with the endpoint INCLUDING its freshly minted signing secret.
  ///
  /// Registers a new webhook subscription for the caller's org and answers 201 with the endpoint INCLUDING its freshly minted signing secret. This is one of only two responses that ever carry that secret (the other is rotate) — store it now, because no later read returns it. The org is stamped by the server from the validated principal, so a body can never register an endpoint in another tenant.
  ///
  /// Parameters:
  ///
  /// * [CreateEndpointIn] createEndpointIn (required):
  Future<Endpoint?> postWebhook(CreateEndpointIn createEndpointIn,) async {
    final response = await postWebhookWithHttpInfo(createEndpointIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Endpoint',) as Endpoint;
    
    }
    return null;
  }

  /// Mints a NEW HMAC signing secret for the endpoint and answers the endpoint WITH it — the only other response besides create that ever carries a secret.
  ///
  /// Mints a NEW HMAC signing secret for the endpoint and answers the endpoint WITH it — the only other response besides create that ever carries a secret. The old secret stops working the instant this returns: every subsequent delivery signs with the new one, with no overlap window. Call it when the subscriber is ready to swap the value on its side, not before.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> postWebhookByIdSecretWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webhook/{id}/secret'
      .replaceAll('{id}', id);

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

  /// Mints a NEW HMAC signing secret for the endpoint and answers the endpoint WITH it — the only other response besides create that ever carries a secret.
  ///
  /// Mints a NEW HMAC signing secret for the endpoint and answers the endpoint WITH it — the only other response besides create that ever carries a secret. The old secret stops working the instant this returns: every subsequent delivery signs with the new one, with no overlap window. Call it when the subscriber is ready to swap the value on its side, not before.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Endpoint?> postWebhookByIdSecret(String id,) async {
    final response = await postWebhookByIdSecretWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Endpoint',) as Endpoint;
    
    }
    return null;
  }

  /// Sends ONE signed test event to the endpoint right now and answers the outcome inline, so the console can show whether the subscriber is reachable without waiting for real traffic.
  ///
  /// Sends ONE signed test event to the endpoint right now and answers the outcome inline, so the console can show whether the subscriber is reachable without waiting for real traffic. It takes the same attempt path the bus dispatcher takes — one attempt, 10s timeout, no retry ladder — and records the result in the endpoint's delivery log. It works on a DISABLED endpoint too: validating one you have paused is the whole point.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> postWebhookByIdTestWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webhook/{id}/test'
      .replaceAll('{id}', id);

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

  /// Sends ONE signed test event to the endpoint right now and answers the outcome inline, so the console can show whether the subscriber is reachable without waiting for real traffic.
  ///
  /// Sends ONE signed test event to the endpoint right now and answers the outcome inline, so the console can show whether the subscriber is reachable without waiting for real traffic. It takes the same attempt path the bus dispatcher takes — one attempt, 10s timeout, no retry ladder — and records the result in the endpoint's delivery log. It works on a DISABLED endpoint too: validating one you have paused is the whole point.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<TestResult?> postWebhookByIdTest(String id,) async {
    final response = await postWebhookByIdTestWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TestResult',) as TestResult;
    
    }
    return null;
  }

  /// Replaces the editable fields of one of the caller org's endpoints — url, events, status and description — and answers the stored row with its secret redacted.
  ///
  /// Replaces the editable fields of one of the caller org's endpoints — url, events, status and description — and answers the stored row with its secret redacted. It is a full replace, not a patch: an omitted field is written as its empty value, and an omitted or empty events list resubscribes the endpoint to EVERY event. The signing secret and the creation time are immutable here; rotate the secret with POST /v1/webhook/{id}/secret.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateEndpointIn] updateEndpointIn (required):
  Future<Response> putWebhookByIdWithHttpInfo(String id, UpdateEndpointIn updateEndpointIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webhook/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updateEndpointIn;

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

  /// Replaces the editable fields of one of the caller org's endpoints — url, events, status and description — and answers the stored row with its secret redacted.
  ///
  /// Replaces the editable fields of one of the caller org's endpoints — url, events, status and description — and answers the stored row with its secret redacted. It is a full replace, not a patch: an omitted field is written as its empty value, and an omitted or empty events list resubscribes the endpoint to EVERY event. The signing secret and the creation time are immutable here; rotate the secret with POST /v1/webhook/{id}/secret.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateEndpointIn] updateEndpointIn (required):
  Future<Endpoint?> putWebhookById(String id, UpdateEndpointIn updateEndpointIn,) async {
    final response = await putWebhookByIdWithHttpInfo(id, updateEndpointIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Endpoint',) as Endpoint;
    
    }
    return null;
  }
}
