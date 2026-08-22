//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class AllowanceApi {
  AllowanceApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Answers what the CALLER has left of their plan's free-call allowance this period, and the instant the count starts again.
  ///
  /// Answers what the CALLER has left of their plan's free-call allowance this period, and the instant the count starts again.  This is the number a product shows beside the composer — \"17 of 20 left today\" — and the moment to offer a plan is when it reaches zero. It READS: asking does not spend, so a page that polls it costs the caller nothing.  The subject is the caller's own, resolved from the verified credential, and can never be named in the request — so this is a mirror, not a lookup of someone else. An unauthenticated caller is refused: there is no allowance without someone to hold it.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAllowanceWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/allowance';

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

  /// Answers what the CALLER has left of their plan's free-call allowance this period, and the instant the count starts again.
  ///
  /// Answers what the CALLER has left of their plan's free-call allowance this period, and the instant the count starts again.  This is the number a product shows beside the composer — \"17 of 20 left today\" — and the moment to offer a plan is when it reaches zero. It READS: asking does not spend, so a page that polls it costs the caller nothing.  The subject is the caller's own, resolved from the verified credential, and can never be named in the request — so this is a mirror, not a lookup of someone else. An unauthenticated caller is refused: there is no allowance without someone to hold it.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  Future<Allowance?> getAllowance() async {
    final response = await getAllowanceWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Allowance',) as Allowance;
    
    }
    return null;
  }
}
