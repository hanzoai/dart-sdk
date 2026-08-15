//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class AuditApi {
  AuditApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List reads the caller's OWN org audit trail, newest first, with the total the filter matched so a console can page it.
  ///
  /// List reads the caller's OWN org audit trail, newest first, with the total the filter matched so a console can page it.  Every filter is optional and applies WITHIN the caller's org — the org itself is the validated principal's and can never be widened by a request. Fails closed: an absent principal is a true \"not signed in\" (401), and a deployment with no local tamper-evident store answers an honest 501 rather than silently serving somebody else's trail.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sub:
  ///   Sub narrows the trail to one actor — the validated subject that made the request. Blank means every actor in the org.
  ///
  /// * [String] action:
  ///   Action narrows it to one action name, e.g. \"machine.create\".
  ///
  /// * [String] resource:
  ///   Resource narrows it to one resource TYPE, e.g. \"apikey\".
  ///
  /// * [String] resourceId:
  ///   ResourceID narrows it to one resource instance.
  ///
  /// * [String] result:
  ///   Result narrows it to one outcome: \"success\", \"deny\" or \"error\".
  ///
  /// * [String] since:
  ///   Since is the inclusive lower time bound, RFC3339. An unparseable value is ignored rather than refused — one malformed filter must not hide the trail.
  ///
  /// * [String] until:
  ///   Until is the upper time bound, RFC3339, with the same tolerance.
  ///
  /// * [String] pageSize:
  ///   PageSize is rows per page, default 100. A value that is not a positive integer falls back to the default.
  ///
  /// * [String] p:
  ///   Page is the 1-based page number, driving the offset. Anything below 2 reads the first page.
  Future<Response> getAuditWithHttpInfo({ String? sub, String? action, String? resource, String? resourceId, String? result, String? since, String? until, String? pageSize, String? p, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/audit';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sub != null) {
      queryParams.addAll(_queryParams('', 'sub', sub));
    }
    if (action != null) {
      queryParams.addAll(_queryParams('', 'action', action));
    }
    if (resource != null) {
      queryParams.addAll(_queryParams('', 'resource', resource));
    }
    if (resourceId != null) {
      queryParams.addAll(_queryParams('', 'resourceId', resourceId));
    }
    if (result != null) {
      queryParams.addAll(_queryParams('', 'result', result));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (until != null) {
      queryParams.addAll(_queryParams('', 'until', until));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
    }
    if (p != null) {
      queryParams.addAll(_queryParams('', 'p', p));
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

  /// List reads the caller's OWN org audit trail, newest first, with the total the filter matched so a console can page it.
  ///
  /// List reads the caller's OWN org audit trail, newest first, with the total the filter matched so a console can page it.  Every filter is optional and applies WITHIN the caller's org — the org itself is the validated principal's and can never be widened by a request. Fails closed: an absent principal is a true \"not signed in\" (401), and a deployment with no local tamper-evident store answers an honest 501 rather than silently serving somebody else's trail.
  ///
  /// Parameters:
  ///
  /// * [String] sub:
  ///   Sub narrows the trail to one actor — the validated subject that made the request. Blank means every actor in the org.
  ///
  /// * [String] action:
  ///   Action narrows it to one action name, e.g. \"machine.create\".
  ///
  /// * [String] resource:
  ///   Resource narrows it to one resource TYPE, e.g. \"apikey\".
  ///
  /// * [String] resourceId:
  ///   ResourceID narrows it to one resource instance.
  ///
  /// * [String] result:
  ///   Result narrows it to one outcome: \"success\", \"deny\" or \"error\".
  ///
  /// * [String] since:
  ///   Since is the inclusive lower time bound, RFC3339. An unparseable value is ignored rather than refused — one malformed filter must not hide the trail.
  ///
  /// * [String] until:
  ///   Until is the upper time bound, RFC3339, with the same tolerance.
  ///
  /// * [String] pageSize:
  ///   PageSize is rows per page, default 100. A value that is not a positive integer falls back to the default.
  ///
  /// * [String] p:
  ///   Page is the 1-based page number, driving the offset. Anything below 2 reads the first page.
  Future<TrailPage?> getAudit({ String? sub, String? action, String? resource, String? resourceId, String? result, String? since, String? until, String? pageSize, String? p, }) async {
    final response = await getAuditWithHttpInfo( sub: sub, action: action, resource: resource, resourceId: resourceId, result: result, since: since, until: until, pageSize: pageSize, p: p, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TrailPage',) as TrailPage;
    
    }
    return null;
  }
}
