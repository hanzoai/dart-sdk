//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class NotifyApi {
  NotifyApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Reports that the notify send surface is mounted.
  ///
  /// Reports that the notify send surface is mounted.  It is a pure liveness probe: it answers 200 whenever this subsystem is mounted and checks nothing downstream, so an \"ok\" here says the routes are reachable, not that any provider credential is configured. The body is notifyd's verbatim, so probes and clients that keyed on the standalone service keep working unchanged.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getNotifyHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/notify/health';

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

  /// Reports that the notify send surface is mounted.
  ///
  /// Reports that the notify send surface is mounted.  It is a pure liveness probe: it answers 200 whenever this subsystem is mounted and checks nothing downstream, so an \"ok\" here says the routes are reachable, not that any provider credential is configured. The body is notifyd's verbatim, so probes and clients that keyed on the standalone service keep working unchanged.
  Future<NotifyHealth?> getNotifyHealth() async {
    final response = await getNotifyHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NotifyHealth',) as NotifyHealth;
    
    }
    return null;
  }

  /// Delivers one transactional message by email or SMS through the caller org's own provider credential.
  ///
  /// Delivers one transactional message by email or SMS through the caller org's own provider credential.  The channel comes from the body — sms or email — and the provider credential is read from KMS at orgs/<org>/notify/<service>/<key>, never from the environment. The org is the validated principal's, never a client-supplied value, so a caller can only ever send as their own tenant; an unauthenticated caller gets 401. Naming no provider picks the one whose credentials are actually configured (Twilio, then Plivo for SMS; Twilio Email, then SMTP for email) and fails closed when none is. Delivery is synchronous and per recipient: one recipient answers the bare {message_id,status} outcome, several answer the {items:[…]} envelope. A terminal provider failure is a 200 whose status is failed with the reason in error, never a transport error. sync=true is REQUIRED — an async dispatch answers 503, because the queue plane that would run it is owned elsewhere. The message body wins verbatim when present; otherwise template_id (or the event name) selects a built-in template rendered against template_vars.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [NotifySend] notifySend (required):
  Future<Response> postNotifySendWithHttpInfo(NotifySend notifySend,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/notify/send';

    // ignore: prefer_final_locals
    Object? postBody = notifySend;

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

  /// Delivers one transactional message by email or SMS through the caller org's own provider credential.
  ///
  /// Delivers one transactional message by email or SMS through the caller org's own provider credential.  The channel comes from the body — sms or email — and the provider credential is read from KMS at orgs/<org>/notify/<service>/<key>, never from the environment. The org is the validated principal's, never a client-supplied value, so a caller can only ever send as their own tenant; an unauthenticated caller gets 401. Naming no provider picks the one whose credentials are actually configured (Twilio, then Plivo for SMS; Twilio Email, then SMTP for email) and fails closed when none is. Delivery is synchronous and per recipient: one recipient answers the bare {message_id,status} outcome, several answer the {items:[…]} envelope. A terminal provider failure is a 200 whose status is failed with the reason in error, never a transport error. sync=true is REQUIRED — an async dispatch answers 503, because the queue plane that would run it is owned elsewhere. The message body wins verbatim when present; otherwise template_id (or the event name) selects a built-in template rendered against template_vars.
  ///
  /// Parameters:
  ///
  /// * [NotifySend] notifySend (required):
  Future<Object?> postNotifySend(NotifySend notifySend,) async {
    final response = await postNotifySendWithHttpInfo(notifySend,);
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

  /// Delivers one transactional email through the caller org's own provider credential.
  ///
  /// Delivers one transactional email through the caller org's own provider credential.  It is the channel-pinned form of the generic send: identical in every respect except that the channel is fixed to email, OVERRIDING whatever the body names — so a body that says sms still goes out as mail. The provider is the org's own email credential from KMS (Twilio Email, then SMTP), resolved for the validated principal's org; an unauthenticated caller gets 401. Subject is carried on the email channel only.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [NotifySend] notifySend (required):
  Future<Response> postNotifySendEmailWithHttpInfo(NotifySend notifySend,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/notify/send/email';

    // ignore: prefer_final_locals
    Object? postBody = notifySend;

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

  /// Delivers one transactional email through the caller org's own provider credential.
  ///
  /// Delivers one transactional email through the caller org's own provider credential.  It is the channel-pinned form of the generic send: identical in every respect except that the channel is fixed to email, OVERRIDING whatever the body names — so a body that says sms still goes out as mail. The provider is the org's own email credential from KMS (Twilio Email, then SMTP), resolved for the validated principal's org; an unauthenticated caller gets 401. Subject is carried on the email channel only.
  ///
  /// Parameters:
  ///
  /// * [NotifySend] notifySend (required):
  Future<Object?> postNotifySendEmail(NotifySend notifySend,) async {
    final response = await postNotifySendEmailWithHttpInfo(notifySend,);
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

  /// Delivers one transactional SMS through the caller org's own provider credential.
  ///
  /// Delivers one transactional SMS through the caller org's own provider credential.  It is the channel-pinned form of the generic send: identical in every respect except that the channel is fixed to sms, OVERRIDING whatever the body names — so a body that says email still goes out as a text message. The provider is the org's own SMS credential from KMS (Twilio, then Plivo), resolved for the validated principal's org; an unauthenticated caller gets 401.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [NotifySend] notifySend (required):
  Future<Response> postNotifySendSmsWithHttpInfo(NotifySend notifySend,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/notify/send/sms';

    // ignore: prefer_final_locals
    Object? postBody = notifySend;

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

  /// Delivers one transactional SMS through the caller org's own provider credential.
  ///
  /// Delivers one transactional SMS through the caller org's own provider credential.  It is the channel-pinned form of the generic send: identical in every respect except that the channel is fixed to sms, OVERRIDING whatever the body names — so a body that says email still goes out as a text message. The provider is the org's own SMS credential from KMS (Twilio, then Plivo), resolved for the validated principal's org; an unauthenticated caller gets 401.
  ///
  /// Parameters:
  ///
  /// * [NotifySend] notifySend (required):
  Future<Object?> postNotifySendSms(NotifySend notifySend,) async {
    final response = await postNotifySendSmsWithHttpInfo(notifySend,);
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
