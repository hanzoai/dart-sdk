//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class PaymentsApi {
  PaymentsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Read one settled payment by its id
  ///
  /// Reads one settled payment out of the caller's org ledger.  The org scopes the read by construction — the ledger is namespaced to it — so an id belonging to another tenant is simply not found rather than found and then filtered. A ledger row that is not a payment is likewise not found, so this cannot be used to walk the org's usage debits.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the ledger transaction id a payment returned.
  Future<Response> getPaymentWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payments/{id}'
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

  /// Read one settled payment by its id
  ///
  /// Reads one settled payment out of the caller's org ledger.  The org scopes the read by construction — the ledger is namespaced to it — so an id belonging to another tenant is simply not found rather than found and then filtered. A ledger row that is not a payment is likewise not found, so this cannot be used to walk the org's usage debits.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the ledger transaction id a payment returned.
  Future<PaymentRecord?> getPayment(String id,) async {
    final response = await getPaymentWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaymentRecord',) as PaymentRecord;
    
    }
    return null;
  }

  /// Take a card payment and credit the org's balance
  ///
  /// Takes a payment: charges a single-use card token and credits the caller's org balance, exactly once.  This is the operation behind \"collect money from a customer\". It runs the SAME core the console's card top-up runs (commerce billing.TakePayment), so the server-side amount bounds, the idempotency guard and the ledger credit are shared rather than reimplemented — a second charge path would eventually double-charge somebody.  The ORG is the caller's, taken from the validated principal and never from the input, so a payment can only ever credit the account of whoever made the call.  A payment is RISK-SCREENED before the card is charged, so this can be refused without any money moving: 403 means the screen did not authorise it, and 503 means the screen could not reach a decision — that one is worth retrying, and no charge was attempted either way.  Send an idempotencyKey. An agent retries by construction, and the key is what turns a retry into a replay of the first receipt instead of a second charge.  The answer states whether it settled in SANDBOX or live mode (`test`), and carries the processor's own reference (`processorRef`) so the charge can be reconciled against the processor rather than taken on trust.  A named builder, not a closure, so zipdoc can lift this prose into the registry.  It BUILDS the handler rather than being it, because the screen has to sit inside the value every projection of this op dispatches to — see exposePayments. `charge` is the money move, `take` is the screened door onto it, and the only registrable one is the second.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PaymentIn] paymentIn (required):
  Future<Response> takePaymentWithHttpInfo(PaymentIn paymentIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/payments';

    // ignore: prefer_final_locals
    Object? postBody = paymentIn;

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

  /// Take a card payment and credit the org's balance
  ///
  /// Takes a payment: charges a single-use card token and credits the caller's org balance, exactly once.  This is the operation behind \"collect money from a customer\". It runs the SAME core the console's card top-up runs (commerce billing.TakePayment), so the server-side amount bounds, the idempotency guard and the ledger credit are shared rather than reimplemented — a second charge path would eventually double-charge somebody.  The ORG is the caller's, taken from the validated principal and never from the input, so a payment can only ever credit the account of whoever made the call.  A payment is RISK-SCREENED before the card is charged, so this can be refused without any money moving: 403 means the screen did not authorise it, and 503 means the screen could not reach a decision — that one is worth retrying, and no charge was attempted either way.  Send an idempotencyKey. An agent retries by construction, and the key is what turns a retry into a replay of the first receipt instead of a second charge.  The answer states whether it settled in SANDBOX or live mode (`test`), and carries the processor's own reference (`processorRef`) so the charge can be reconciled against the processor rather than taken on trust.  A named builder, not a closure, so zipdoc can lift this prose into the registry.  It BUILDS the handler rather than being it, because the screen has to sit inside the value every projection of this op dispatches to — see exposePayments. `charge` is the money move, `take` is the screened door onto it, and the only registrable one is the second.
  ///
  /// Parameters:
  ///
  /// * [PaymentIn] paymentIn (required):
  Future<PaymentOut?> takePayment(PaymentIn paymentIn,) async {
    final response = await takePaymentWithHttpInfo(paymentIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaymentOut',) as PaymentOut;
    
    }
    return null;
  }
}
