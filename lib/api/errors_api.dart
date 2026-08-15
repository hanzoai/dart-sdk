//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class ErrorsApi {
  ErrorsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Errors returns the caller org's most recently captured errors, newest first.
  ///
  /// Errors returns the caller org's most recently captured errors, newest first. The error-tracking read view over event.error — the plane table the write core's error facts land in (errors are DELIBERATELY not on event.event) — each with its captured exception surfaced from the attributes map as a first-class field.  The org is the validated principal's — never a parameter — and this read requires a real bearer, NEVER the write-only publishable key: pk- can attribute a write and can read nothing. 403 without a validated bearer, 503 when the warehouse is unreachable.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit is how many rows to return, newest first. Default 50, maximum 200; a value at or below zero, or one that is not a number, takes the default.
  Future<Response> getErrorsWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/errors';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Errors returns the caller org's most recently captured errors, newest first.
  ///
  /// Errors returns the caller org's most recently captured errors, newest first. The error-tracking read view over event.error — the plane table the write core's error facts land in (errors are DELIBERATELY not on event.event) — each with its captured exception surfaced from the attributes map as a first-class field.  The org is the validated principal's — never a parameter — and this read requires a real bearer, NEVER the write-only publishable key: pk- can attribute a write and can read nothing. 403 without a validated bearer, 503 when the warehouse is unreachable.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit is how many rows to return, newest first. Default 50, maximum 200; a value at or below zero, or one that is not a number, takes the default.
  Future<ErrorList?> getErrors({ int? limit, }) async {
    final response = await getErrorsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ErrorList',) as ErrorList;
    
    }
    return null;
  }
}
