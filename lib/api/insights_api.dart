//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class InsightsApi {
  InsightsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns the caller org's most recent product events, newest first.
  ///
  /// Returns the caller org's most recent product events, newest first. The console's raw-event view over event.event — the same table the capture doors fill — one row per stored event, with the row's attributes returned as the properties object.  The org is the validated principal's — never a parameter — and a read requires a real bearer, never the write-only publishable key. 403 without a validated bearer, 503 when the warehouse is unreachable.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit is how many rows to return, newest first. Default 50, maximum 200; a value at or below zero, or one that is not a number, takes the default.
  Future<Response> getInsightsEventsWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/insights/events';

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

  /// Returns the caller org's most recent product events, newest first.
  ///
  /// Returns the caller org's most recent product events, newest first. The console's raw-event view over event.event — the same table the capture doors fill — one row per stored event, with the row's attributes returned as the properties object.  The org is the validated principal's — never a parameter — and a read requires a real bearer, never the write-only publishable key. 403 without a validated bearer, 503 when the warehouse is unreachable.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit is how many rows to return, newest first. Default 50, maximum 200; a value at or below zero, or one that is not a number, takes the default.
  Future<EventList?> getInsightsEvents({ int? limit, }) async {
    final response = await getInsightsEventsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EventList',) as EventList;
    
    }
    return null;
  }

  /// Reports that the unified insights surface is serving.
  ///
  /// Reports that the unified insights surface is serving. It reads no tenant data and consults no dependency, so it answers 200 unconditionally and needs no principal — liveness must be probe-able. The warehouse-connectivity probe is a different question and lives at GET /v1/analytics/health.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getInsightsHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/insights/health';

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

  /// Reports that the unified insights surface is serving.
  ///
  /// Reports that the unified insights surface is serving. It reads no tenant data and consults no dependency, so it answers 200 unconditionally and needs no principal — liveness must be probe-able. The warehouse-connectivity probe is a different question and lives at GET /v1/analytics/health.
  Future<InsightsStatus?> getInsightsHealth() async {
    final response = await getInsightsHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InsightsStatus',) as InsightsStatus;
    
    }
    return null;
  }
}
