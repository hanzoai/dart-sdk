//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class CsrfApi {
  CsrfApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// IssueCSRFToken mints the anti-CSRF token a browser echoes as X-CSRF-Token on every money write (mint/revoke a key, top up, onboard, and the billing/commerce write verbs).
  ///
  /// IssueCSRFToken mints the anti-CSRF token a browser echoes as X-CSRF-Token on every money write (mint/revoke a key, top up, onboard, and the billing/commerce write verbs). The token is bound to the caller's validated identity and expires, so one minted for one identity cannot authorize a write as another.  It is answered no-store, so it is never cached by a shared proxy. This is the same-origin endpoint the embedded console reads — the Same-Origin Policy is what stops a cross-site page from reading the response and forging a write.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCsrfWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/csrf';

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

  /// IssueCSRFToken mints the anti-CSRF token a browser echoes as X-CSRF-Token on every money write (mint/revoke a key, top up, onboard, and the billing/commerce write verbs).
  ///
  /// IssueCSRFToken mints the anti-CSRF token a browser echoes as X-CSRF-Token on every money write (mint/revoke a key, top up, onboard, and the billing/commerce write verbs). The token is bound to the caller's validated identity and expires, so one minted for one identity cannot authorize a write as another.  It is answered no-store, so it is never cached by a shared proxy. This is the same-origin endpoint the embedded console reads — the Same-Origin Policy is what stops a cross-site page from reading the response and forging a write.
  Future<CsrfResp?> getCsrf() async {
    final response = await getCsrfWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CsrfResp',) as CsrfResp;
    
    }
    return null;
  }
}
