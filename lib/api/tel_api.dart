//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class TelApi {
  TelApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Ends a call this org placed.
  ///
  /// Ends a call this org placed. The holding is read for THIS org before the carrier is asked, for the reason releaseNumber gives one surface up: an id belonging to another tenant would otherwise be hung up by whoever guessed it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteTelCallsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tel/calls/{id}'
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

  /// Ends a call this org placed.
  ///
  /// Ends a call this org placed. The holding is read for THIS org before the carrier is asked, for the reason releaseNumber gives one surface up: an id belonging to another tenant would otherwise be hung up by whoever guessed it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Object?> deleteTelCallsById(String id,) async {
    final response = await deleteTelCallsByIdWithHttpInfo(id,);
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

  /// Checks the holding is THIS org's before it reaches the carrier.
  ///
  /// Checks the holding is THIS org's before it reaches the carrier. Without that read, an id belonging to another tenant would be released by whoever guessed it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteTelNumbersByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tel/numbers/{id}'
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

  /// Checks the holding is THIS org's before it reaches the carrier.
  ///
  /// Checks the holding is THIS org's before it reaches the carrier. Without that read, an id belonging to another tenant would be released by whoever guessed it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Object?> deleteTelNumbersById(String id,) async {
    final response = await deleteTelNumbersByIdWithHttpInfo(id,);
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

  /// Lists the calls this org has placed or received, newest first.
  ///
  /// Lists the calls this org has placed or received, newest first. Like the message list beside it, these are our own records rather than the carrier's.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTelCallsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tel/calls';

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

  /// Lists the calls this org has placed or received, newest first.
  ///
  /// Lists the calls this org has placed or received, newest first. Like the message list beside it, these are our own records rather than the carrier's.
  Future<CallList?> getTelCalls() async {
    final response = await getTelCallsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CallList',) as CallList;
    
    }
    return null;
  }

  /// Lists the messages this org has sent or received, newest first.
  ///
  /// Lists the messages this org has sent or received, newest first. Records from our own store, not the carrier's — so it is what this platform did on the org's behalf, which is the set an audit or a bill has to agree with.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTelMessagesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tel/messages';

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

  /// Lists the messages this org has sent or received, newest first.
  ///
  /// Lists the messages this org has sent or received, newest first. Records from our own store, not the carrier's — so it is what this platform did on the org's behalf, which is the set an audit or a bill has to agree with.
  Future<MessageList?> getTelMessages() async {
    final response = await getTelMessagesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MessageList',) as MessageList;
    
    }
    return null;
  }

  /// Lists the phone numbers this org HOLDS — the ones it has bought and not released.
  ///
  /// Lists the phone numbers this org HOLDS — the ones it has bought and not released. Distinct from the availability search one path down (`/numbers/available`), which asks the carrier what could be bought: this answers only from our own store, so it is what an org owns rather than what it could own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTelNumbersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tel/numbers';

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

  /// Lists the phone numbers this org HOLDS — the ones it has bought and not released.
  ///
  /// Lists the phone numbers this org HOLDS — the ones it has bought and not released. Distinct from the availability search one path down (`/numbers/available`), which asks the carrier what could be bought: this answers only from our own store, so it is what an org owns rather than what it could own.
  Future<NumberList?> getTelNumbers() async {
    final response = await getTelNumbersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NumberList',) as NumberList;
    
    }
    return null;
  }

  /// Asks the carrier what is available to buy.
  ///
  /// Asks the carrier what is available to buy. Nothing is recorded — a search is not a holding, and treating it as one is how inventory leaks.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] country:
  ///
  /// * [String] area:
  ///
  /// * [String] type:
  ///
  /// * [int] limit:
  Future<Response> getTelNumbersAvailableWithHttpInfo({ String? country, String? area, String? type, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tel/numbers/available';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (country != null) {
      queryParams.addAll(_queryParams('', 'Country', country));
    }
    if (area != null) {
      queryParams.addAll(_queryParams('', 'Area', area));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'Type', type));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'Limit', limit));
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

  /// Asks the carrier what is available to buy.
  ///
  /// Asks the carrier what is available to buy. Nothing is recorded — a search is not a holding, and treating it as one is how inventory leaks.
  ///
  /// Parameters:
  ///
  /// * [String] country:
  ///
  /// * [String] area:
  ///
  /// * [String] type:
  ///
  /// * [int] limit:
  Future<NumberList?> getTelNumbersAvailable({ String? country, String? area, String? type, int? limit, }) async {
    final response = await getTelNumbersAvailableWithHttpInfo( country: country, area: area, type: type, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NumberList',) as NumberList;
    
    }
    return null;
  }

  /// Counts what this org holds on the telephony plane: its numbers, its calls and its messages.
  ///
  /// Counts what this org holds on the telephony plane: its numbers, its calls and its messages. The one read a dashboard makes before it asks for any list, so it answers three totals and no rows.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTelSummaryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tel/summary';

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

  /// Counts what this org holds on the telephony plane: its numbers, its calls and its messages.
  ///
  /// Counts what this org holds on the telephony plane: its numbers, its calls and its messages. The one read a dashboard makes before it asks for any list, so it answers three totals and no rows.
  Future<Summary?> getTelSummary() async {
    final response = await getTelSummaryWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Summary',) as Summary;
    
    }
    return null;
  }

  /// Dials.
  ///
  /// Dials. An `agent` names a Hanzo assistant to answer it; the call is refused up front when no assistant plane is configured, because a call that connects to silence has already cost the person who answered it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CallInput] callInput (required):
  Future<Response> postTelCallsWithHttpInfo(CallInput callInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tel/calls';

    // ignore: prefer_final_locals
    Object? postBody = callInput;

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

  /// Dials.
  ///
  /// Dials. An `agent` names a Hanzo assistant to answer it; the call is refused up front when no assistant plane is configured, because a call that connects to silence has already cost the person who answered it.
  ///
  /// Parameters:
  ///
  /// * [CallInput] callInput (required):
  Future<Call?> postTelCalls(CallInput callInput,) async {
    final response = await postTelCallsWithHttpInfo(callInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Call',) as Call;
    
    }
    return null;
  }

  /// Sends a message from one of this org's own numbers.
  ///
  /// Sends a message from one of this org's own numbers.  `from` must be a number the org HOLDS, checked against the store rather than taken on trust — a caller that could send from any number could impersonate one, and the carrier would deliver it. `to` is required, and the body needs text or media, because a message with neither is delivered as nothing and billed as something.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MessageInput] messageInput (required):
  Future<Response> postTelMessagesWithHttpInfo(MessageInput messageInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tel/messages';

    // ignore: prefer_final_locals
    Object? postBody = messageInput;

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

  /// Sends a message from one of this org's own numbers.
  ///
  /// Sends a message from one of this org's own numbers.  `from` must be a number the org HOLDS, checked against the store rather than taken on trust — a caller that could send from any number could impersonate one, and the carrier would deliver it. `to` is required, and the body needs text or media, because a message with neither is delivered as nothing and billed as something.
  ///
  /// Parameters:
  ///
  /// * [MessageInput] messageInput (required):
  Future<SMS?> postTelMessages(MessageInput messageInput,) async {
    final response = await postTelMessagesWithHttpInfo(messageInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SMS',) as SMS;
    
    }
    return null;
  }

  /// Provisions with the carrier FIRST and records second.
  ///
  /// Provisions with the carrier FIRST and records second. The other order records a holding that may not exist, and a number the platform believes it owns but cannot use is worse than one it failed to buy.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BuyInput] buyInput (required):
  Future<Response> postTelNumbersWithHttpInfo(BuyInput buyInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tel/numbers';

    // ignore: prefer_final_locals
    Object? postBody = buyInput;

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

  /// Provisions with the carrier FIRST and records second.
  ///
  /// Provisions with the carrier FIRST and records second. The other order records a holding that may not exist, and a number the platform believes it owns but cannot use is worse than one it failed to buy.
  ///
  /// Parameters:
  ///
  /// * [BuyInput] buyInput (required):
  Future<Number?> postTelNumbers(BuyInput buyInput,) async {
    final response = await postTelNumbersWithHttpInfo(buyInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Number',) as Number;
    
    }
    return null;
  }
}
