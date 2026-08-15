//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class SentryApi {
  SentryApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete a Sentry project
  ///
  /// The one delete on the Sentry surface: removing a PROJECT, answering 204. Error issues, events and traces are not individually deletable — they are append-only telemetry, and their lifetime is retention's business, not an API call's.  Requires a validated, org-scoped principal with edit rights; a viewer is refused. The delete is confined to the org minted from that principal's claim, so a project id belonging to another tenant is not found rather than removed. Deleting a project retires the DSN that fed it, so any SDK still pointed at that key stops being accepted. Before the runtime is initialized, 503.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> deleteSentryByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sentry/{wildcard1}'
      .replaceAll('{wildcard1}', wildcard1);

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

  /// Delete a Sentry project
  ///
  /// The one delete on the Sentry surface: removing a PROJECT, answering 204. Error issues, events and traces are not individually deletable — they are append-only telemetry, and their lifetime is retention's business, not an API call's.  Requires a validated, org-scoped principal with edit rights; a viewer is refused. The delete is confined to the org minted from that principal's claim, so a project id belonging to another tenant is not found rather than removed. Deleting a project retires the DSN that fed it, so any SDK still pointed at that key stops being accepted. Before the runtime is initialized, 503.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> deleteSentryByWildcard1(String wildcard1,) async {
    final response = await deleteSentryByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deletes one Sentry project of the caller's org.
  ///
  /// Deletes one Sentry project of the caller's org. Its DSN stops resolving immediately, so ingest for that id fails closed exactly as an unknown project does; retained events are not touched. Answers 204.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the project id.
  Future<Response> deleteSentryProjectsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sentry/projects/{id}'
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

  /// Deletes one Sentry project of the caller's org.
  ///
  /// Deletes one Sentry project of the caller's org. Its DSN stops resolving immediately, so ingest for that id fails closed exactly as an unknown project does; retained events are not touched. Answers 204.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the project id.
  Future<void> deleteSentryProjectsById(String id,) async {
    final response = await deleteSentryProjectsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Read the caller org's errors on the Sentry surface
  ///
  /// Serves the Sentry-compatible read surface — projects, error issues and one issue's occurrences, a single event, error logs, error-correlated traces and one trace's waterfall, and the event-rate stats — so a Sentry client or the error console reads its errors at the paths it already speaks.  It is the SAME runtime the observability surface serves, reached under a second path family, and there is NO rewrite: the runtime carries these routes literally. That is what makes this a product face rather than a translation layer. One runtime, two path families.  A validated principal is required and the read is scoped to that principal's own org. Errors are a tenant's OWN data, so org membership is the whole admission test and there is deliberately no admin term on it — gating the product on platform sudo would make the only way to see your own errors a scope that shows you everyone's. Before the runtime is initialized, 503.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> getSentryByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sentry/{wildcard1}'
      .replaceAll('{wildcard1}', wildcard1);

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

  /// Read the caller org's errors on the Sentry surface
  ///
  /// Serves the Sentry-compatible read surface — projects, error issues and one issue's occurrences, a single event, error logs, error-correlated traces and one trace's waterfall, and the event-rate stats — so a Sentry client or the error console reads its errors at the paths it already speaks.  It is the SAME runtime the observability surface serves, reached under a second path family, and there is NO rewrite: the runtime carries these routes literally. That is what makes this a product face rather than a translation layer. One runtime, two path families.  A validated principal is required and the read is scoped to that principal's own org. Errors are a tenant's OWN data, so org membership is the whole admission test and there is deliberately no admin term on it — gating the product on platform sudo would make the only way to see your own errors a scope that shows you everyone's. Before the runtime is initialized, 503.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> getSentryByWildcard1(String wildcard1,) async {
    final response = await getSentryByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns one captured error event of a project, by its id.
  ///
  /// Returns one captured error event of a project, by its id.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the event id.
  ///
  /// * [String] project (required):
  ///   Project is the project the event belongs to, by its id. Required.
  Future<Response> getSentryEventsByIdWithHttpInfo(String id, String project,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sentry/events/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'project', project));

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

  /// Returns one captured error event of a project, by its id.
  ///
  /// Returns one captured error event of a project, by its id.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the event id.
  ///
  /// * [String] project (required):
  ///   Project is the project the event belongs to, by its id. Required.
  Future<O11yO11ySentryEventOut?> getSentryEventsById(String id, String project,) async {
    final response = await getSentryEventsByIdWithHttpInfo(id, project,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11ySentryEventOut',) as O11yO11ySentryEventOut;
    
    }
    return null;
  }

  /// Lists the caller's org's grouped error issues, optionally narrowed to one project and one time window, and filtered by status, level, environment, service, a free-text query and a sort.
  ///
  /// Lists the caller's org's grouped error issues, optionally narrowed to one project and one time window, and filtered by status, level, environment, service, a free-text query and a sort.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   Status narrows to one lifecycle state: unresolved, resolved or ignored.
  ///
  /// * [String] level:
  ///   Level narrows to one severity, e.g. error, warning, info.
  ///
  /// * [String] environment:
  ///   Environment narrows to one deployment environment.
  ///
  /// * [String] serviceName:
  ///   ServiceName narrows to one reporting service.
  ///
  /// * [String] query:
  ///   Query narrows to issues whose text contains it.
  ///
  /// * [String] sort:
  ///   Sort orders the page, e.g. lastSeen, firstSeen, count.
  ///
  /// * [int] offset:
  ///   Offset is how many issues to skip. Zero starts at the first.
  ///
  /// * [int] limit:
  ///   Limit caps how many issues come back. Zero means the default.
  ///
  /// * [String] project:
  ///   Project narrows the org's issues to one project, by its id.
  ///
  /// * [String] period:
  ///   Period is the window to read, relative to now — 1h, 24h, 7d, 14d, 30d.
  Future<Response> getSentryIssuesWithHttpInfo({ String? status, String? level, String? environment, String? serviceName, String? query, String? sort, int? offset, int? limit, String? project, String? period, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sentry/issues';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (level != null) {
      queryParams.addAll(_queryParams('', 'level', level));
    }
    if (environment != null) {
      queryParams.addAll(_queryParams('', 'environment', environment));
    }
    if (serviceName != null) {
      queryParams.addAll(_queryParams('', 'serviceName', serviceName));
    }
    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (project != null) {
      queryParams.addAll(_queryParams('', 'project', project));
    }
    if (period != null) {
      queryParams.addAll(_queryParams('', 'period', period));
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

  /// Lists the caller's org's grouped error issues, optionally narrowed to one project and one time window, and filtered by status, level, environment, service, a free-text query and a sort.
  ///
  /// Lists the caller's org's grouped error issues, optionally narrowed to one project and one time window, and filtered by status, level, environment, service, a free-text query and a sort.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   Status narrows to one lifecycle state: unresolved, resolved or ignored.
  ///
  /// * [String] level:
  ///   Level narrows to one severity, e.g. error, warning, info.
  ///
  /// * [String] environment:
  ///   Environment narrows to one deployment environment.
  ///
  /// * [String] serviceName:
  ///   ServiceName narrows to one reporting service.
  ///
  /// * [String] query:
  ///   Query narrows to issues whose text contains it.
  ///
  /// * [String] sort:
  ///   Sort orders the page, e.g. lastSeen, firstSeen, count.
  ///
  /// * [int] offset:
  ///   Offset is how many issues to skip. Zero starts at the first.
  ///
  /// * [int] limit:
  ///   Limit caps how many issues come back. Zero means the default.
  ///
  /// * [String] project:
  ///   Project narrows the org's issues to one project, by its id.
  ///
  /// * [String] period:
  ///   Period is the window to read, relative to now — 1h, 24h, 7d, 14d, 30d.
  Future<O11yO11yErrorIssuesOut?> getSentryIssues({ String? status, String? level, String? environment, String? serviceName, String? query, String? sort, int? offset, int? limit, String? project, String? period, }) async {
    final response = await getSentryIssuesWithHttpInfo( status: status, level: level, environment: environment, serviceName: serviceName, query: query, sort: sort, offset: offset, limit: limit, project: project, period: period, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yErrorIssuesOut',) as O11yO11yErrorIssuesOut;
    
    }
    return null;
  }

  /// Returns one grouped issue of the caller's org with its latest occurrence sample.
  ///
  /// Returns one grouped issue of the caller's org with its latest occurrence sample.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the issue id.
  Future<Response> getSentryIssuesByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sentry/issues/{id}'
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

  /// Returns one grouped issue of the caller's org with its latest occurrence sample.
  ///
  /// Returns one grouped issue of the caller's org with its latest occurrence sample.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the issue id.
  Future<O11yO11yErrorGettableIssueOut?> getSentryIssuesById(String id,) async {
    final response = await getSentryIssuesByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yErrorGettableIssueOut',) as O11yO11yErrorGettableIssueOut;
    
    }
    return null;
  }

  /// Lists one issue's captured occurrences, scoped to a project — a project is an isolation unit, so the caller declares which project's occurrences to read.
  ///
  /// Lists one issue's captured occurrences, scoped to a project — a project is an isolation unit, so the caller declares which project's occurrences to read.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the issue id.
  ///
  /// * [String] project (required):
  ///   Project is the project whose occurrences to read, by its id. Required.
  ///
  /// * [int] limit:
  ///   Limit caps how many occurrences come back. Zero means the default.
  Future<Response> getSentryIssuesByIdEventsWithHttpInfo(String id, String project, { int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sentry/issues/{id}/events'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'project', project));
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

  /// Lists one issue's captured occurrences, scoped to a project — a project is an isolation unit, so the caller declares which project's occurrences to read.
  ///
  /// Lists one issue's captured occurrences, scoped to a project — a project is an isolation unit, so the caller declares which project's occurrences to read.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the issue id.
  ///
  /// * [String] project (required):
  ///   Project is the project whose occurrences to read, by its id. Required.
  ///
  /// * [int] limit:
  ///   Limit caps how many occurrences come back. Zero means the default.
  Future<O11yO11ySentryIssueEventsOut?> getSentryIssuesByIdEvents(String id, String project, { int? limit, }) async {
    final response = await getSentryIssuesByIdEventsWithHttpInfo(id, project,  limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11ySentryIssueEventsOut',) as O11yO11ySentryIssueEventsOut;
    
    }
    return null;
  }

  /// Lists a project's captured error events, newest first, optionally narrowed to those whose message or exception text contains a search string.
  ///
  /// Lists a project's captured error events, newest first, optionally narrowed to those whose message or exception text contains a search string.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project to read, as its id. Required.
  ///
  /// * [String] query:
  ///   Query narrows the page to events whose text contains it.
  ///
  /// * [String] period:
  ///   Period is the window to read, relative to now — 1h, 24h, 7d, 14d, 30d.
  ///
  /// * [int] limit:
  ///   Limit caps how many events come back.
  Future<Response> getSentryLogsWithHttpInfo(String project, { String? query, String? period, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sentry/logs';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'project', project));
    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
    }
    if (period != null) {
      queryParams.addAll(_queryParams('', 'period', period));
    }
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

  /// Lists a project's captured error events, newest first, optionally narrowed to those whose message or exception text contains a search string.
  ///
  /// Lists a project's captured error events, newest first, optionally narrowed to those whose message or exception text contains a search string.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project to read, as its id. Required.
  ///
  /// * [String] query:
  ///   Query narrows the page to events whose text contains it.
  ///
  /// * [String] period:
  ///   Period is the window to read, relative to now — 1h, 24h, 7d, 14d, 30d.
  ///
  /// * [int] limit:
  ///   Limit caps how many events come back.
  Future<O11yO11yLogsOut?> getSentryLogs(String project, { String? query, String? period, int? limit, }) async {
    final response = await getSentryLogsWithHttpInfo(project,  query: query, period: period, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yLogsOut',) as O11yO11yLogsOut;
    
    }
    return null;
  }

  /// Lists the caller's org's Sentry projects, each with its freshly-derived DSN.
  ///
  /// Lists the caller's org's Sentry projects, each with its freshly-derived DSN.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSentryProjectsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sentry/projects';

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

  /// Lists the caller's org's Sentry projects, each with its freshly-derived DSN.
  ///
  /// Lists the caller's org's Sentry projects, each with its freshly-derived DSN.  Callers need the viewer role; the runtime's own gate enforces it.
  Future<O11yO11ySentryProjectsOut?> getSentryProjects() async {
    final response = await getSentryProjectsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11ySentryProjectsOut',) as O11yO11ySentryProjectsOut;
    
    }
    return null;
  }

  /// Returns one Sentry project of the caller's org, DSN included.
  ///
  /// Returns one Sentry project of the caller's org, DSN included.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the project id.
  Future<Response> getSentryProjectsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sentry/projects/{id}'
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

  /// Returns one Sentry project of the caller's org, DSN included.
  ///
  /// Returns one Sentry project of the caller's org, DSN included.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the project id.
  Future<O11yO11ySentryProjectOut?> getSentryProjectsById(String id,) async {
    final response = await getSentryProjectsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11ySentryProjectOut',) as O11yO11ySentryProjectOut;
    
    }
    return null;
  }

  /// Returns a project's event-rate timeseries: one bucket per interval over the requested period, counting the events in it.
  ///
  /// Returns a project's event-rate timeseries: one bucket per interval over the requested period, counting the events in it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project to read, as its id. Required.
  ///
  /// * [String] field:
  ///   Field is the dimension to count over. Empty counts all events.
  ///
  /// * [String] period:
  ///   Period is the window to read, relative to now — 1h, 24h, 7d, 14d, 30d.
  Future<Response> getSentryStatsWithHttpInfo(String project, { String? field, String? period, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sentry/stats';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'project', project));
    if (field != null) {
      queryParams.addAll(_queryParams('', 'field', field));
    }
    if (period != null) {
      queryParams.addAll(_queryParams('', 'period', period));
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

  /// Returns a project's event-rate timeseries: one bucket per interval over the requested period, counting the events in it.
  ///
  /// Returns a project's event-rate timeseries: one bucket per interval over the requested period, counting the events in it.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project to read, as its id. Required.
  ///
  /// * [String] field:
  ///   Field is the dimension to count over. Empty counts all events.
  ///
  /// * [String] period:
  ///   Period is the window to read, relative to now — 1h, 24h, 7d, 14d, 30d.
  Future<O11yO11yStatsOut?> getSentryStats(String project, { String? field, String? period, }) async {
    final response = await getSentryStatsWithHttpInfo(project,  field: field, period: period, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yStatsOut',) as O11yO11yStatsOut;
    
    }
    return null;
  }

  /// Lists the traces a project's captured errors reference, each with how many errors landed on it, when they started and stopped, and the latest message seen — the entry point for \"which requests are failing\".
  ///
  /// Lists the traces a project's captured errors reference, each with how many errors landed on it, when they started and stopped, and the latest message seen — the entry point for \"which requests are failing\".
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project to read, as its id. Required.
  ///
  /// * [String] period:
  ///   Period is the window to read, relative to now — 1h, 24h, 7d, 14d, 30d.
  ///
  /// * [int] limit:
  ///   Limit caps how many traces come back.
  Future<Response> getSentryTracesWithHttpInfo(String project, { String? period, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sentry/traces';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'project', project));
    if (period != null) {
      queryParams.addAll(_queryParams('', 'period', period));
    }
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

  /// Lists the traces a project's captured errors reference, each with how many errors landed on it, when they started and stopped, and the latest message seen — the entry point for \"which requests are failing\".
  ///
  /// Lists the traces a project's captured errors reference, each with how many errors landed on it, when they started and stopped, and the latest message seen — the entry point for \"which requests are failing\".
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project to read, as its id. Required.
  ///
  /// * [String] period:
  ///   Period is the window to read, relative to now — 1h, 24h, 7d, 14d, 30d.
  ///
  /// * [int] limit:
  ///   Limit caps how many traces come back.
  Future<O11yO11yTracesOut?> getSentryTraces(String project, { String? period, int? limit, }) async {
    final response = await getSentryTracesWithHttpInfo(project,  period: period, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yTracesOut',) as O11yO11yTracesOut;
    
    }
    return null;
  }

  /// Returns one trace's captured errors for a project — every error event that carried the trace id, in the order the events plane holds them.
  ///
  /// Returns one trace's captured errors for a project — every error event that carried the trace id, in the order the events plane holds them.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the trace id.
  ///
  /// * [String] project (required):
  ///   Project is the project the trace's errors belong to. Required.
  Future<Response> getSentryTracesByIdWithHttpInfo(String id, String project,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sentry/traces/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'project', project));

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

  /// Returns one trace's captured errors for a project — every error event that carried the trace id, in the order the events plane holds them.
  ///
  /// Returns one trace's captured errors for a project — every error event that carried the trace id, in the order the events plane holds them.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the trace id.
  ///
  /// * [String] project (required):
  ///   Project is the project the trace's errors belong to. Required.
  Future<O11yO11yTraceOut?> getSentryTracesById(String id, String project,) async {
    final response = await getSentryTracesByIdWithHttpInfo(id, project,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yTraceOut',) as O11yO11yTraceOut;
    
    }
    return null;
  }

  /// Not served — the Sentry surface has no partial update
  ///
  /// The Sentry face carries NO route for a partial update. The wildcard admits every method, so this operation exists as an address, but nothing behind it answers and a request lands on the runtime as an unrouted path.  It is documented rather than silently omitted because the useful thing to say is where to go instead: an issue's lifecycle — resolve, ignore, assign — is a REPLACE on that issue, not a patch, and it is the only mutable state on this surface. A client that reaches for a partial update here is looking for that call.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> patchSentryByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sentry/{wildcard1}'
      .replaceAll('{wildcard1}', wildcard1);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Not served — the Sentry surface has no partial update
  ///
  /// The Sentry face carries NO route for a partial update. The wildcard admits every method, so this operation exists as an address, but nothing behind it answers and a request lands on the runtime as an unrouted path.  It is documented rather than silently omitted because the useful thing to say is where to go instead: an issue's lifecycle — resolve, ignore, assign — is a REPLACE on that issue, not a patch, and it is the only mutable state on this surface. A client that reaches for a partial update here is looking for that call.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> patchSentryByWildcard1(String wildcard1,) async {
    final response = await patchSentryByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Receive a Sentry envelope on the clean root
  ///
  /// The same envelope ingest as the DSN path, spelled the way this platform names things: one /v1/, the product, the project. Point an SDK's DSN here and the wire is identical.  AUTHENTICATED BY THE DSN PUBLIC KEY and exempt from the principal gate for the same reason — a Sentry SDK has no Hanzo session to present. The project segment is a UUID enforced by the route, and the exemption matches method plus prefix plus suffix, so every Sentry READ (issues, discover, events, logs, traces, stats) stays gated.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  Future<Response> postSentryByProjectEnvelopeWithHttpInfo(String project,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sentry/{project}/envelope/'
      .replaceAll('{project}', project);

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

  /// Receive a Sentry envelope on the clean root
  ///
  /// The same envelope ingest as the DSN path, spelled the way this platform names things: one /v1/, the product, the project. Point an SDK's DSN here and the wire is identical.  AUTHENTICATED BY THE DSN PUBLIC KEY and exempt from the principal gate for the same reason — a Sentry SDK has no Hanzo session to present. The project segment is a UUID enforced by the route, and the exemption matches method plus prefix plus suffix, so every Sentry READ (issues, discover, events, logs, traces, stats) stays gated.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  Future<void> postSentryByProjectEnvelope(String project,) async {
    final response = await postSentryByProjectEnvelopeWithHttpInfo(project,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Receive a single Sentry event on the clean root
  ///
  /// The legacy single-event ingest on the clean /v1/sentry root — one JSON event rather than a framed batch. Same DSN-key authentication, same gate exemption, same UUID-enforced project segment as the envelope route beside it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  Future<Response> postSentryByProjectStoreWithHttpInfo(String project,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sentry/{project}/store/'
      .replaceAll('{project}', project);

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

  /// Receive a single Sentry event on the clean root
  ///
  /// The legacy single-event ingest on the clean /v1/sentry root — one JSON event rather than a framed batch. Same DSN-key authentication, same gate exemption, same UUID-enforced project segment as the envelope route beside it.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  Future<void> postSentryByProjectStore(String project,) async {
    final response = await postSentryByProjectStoreWithHttpInfo(project,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Send events to the Sentry surface, or write on it
  ///
  /// Carries every write on the Sentry-compatible surface: the SDK's error ingest, and the authenticated writes the console makes — creating a project, rotating a project's DSN key, and running a discover query over the events plane.  THE TWO ARE AUTHENTICATED DIFFERENTLY, and that is the rule to get right. An envelope or store submission presents a DSN public key, never a Hanzo session, so it is exempt from the principal gate and verified by the ingest key check instead — which derives the org from the DSN and fails closed. A keyless submission is a 401 from that verifier, not a 403 from the gate, and telling those two apart is how you tell the hops apart. Every other write here needs a validated, org-scoped principal, and creating or rotating requires an editor rather than a viewer.  The ingest exemption is matched by method plus prefix plus suffix, never a bare prefix, and the project segment must be a UUID — so no read is reachable through it. Before the runtime is initialized, 503.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> postSentryByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sentry/{wildcard1}'
      .replaceAll('{wildcard1}', wildcard1);

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

  /// Send events to the Sentry surface, or write on it
  ///
  /// Carries every write on the Sentry-compatible surface: the SDK's error ingest, and the authenticated writes the console makes — creating a project, rotating a project's DSN key, and running a discover query over the events plane.  THE TWO ARE AUTHENTICATED DIFFERENTLY, and that is the rule to get right. An envelope or store submission presents a DSN public key, never a Hanzo session, so it is exempt from the principal gate and verified by the ingest key check instead — which derives the org from the DSN and fails closed. A keyless submission is a 401 from that verifier, not a 403 from the gate, and telling those two apart is how you tell the hops apart. Every other write here needs a validated, org-scoped principal, and creating or rotating requires an editor rather than a viewer.  The ingest exemption is matched by method plus prefix plus suffix, never a bare prefix, and the project segment must be a UUID — so no read is reachable through it. Before the runtime is initialized, 503.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> postSentryByWildcard1(String wildcard1,) async {
    final response = await postSentryByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Aggregates a project's captured errors into a table — the caller names the filters, the groupings and the aggregations, and gets back the columns and rows they asked for.
  ///
  /// Aggregates a project's captured errors into a table — the caller names the filters, the groupings and the aggregations, and gets back the columns and rows they asked for.  The project is mandatory and is checked against the caller's own org before it scopes anything, so a project id belonging to someone else reads as absent rather than as data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yDiscoverIn] o11yO11yDiscoverIn (required):
  Future<Response> postSentryDiscoverWithHttpInfo(O11yO11yDiscoverIn o11yO11yDiscoverIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sentry/discover';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yDiscoverIn;

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

  /// Aggregates a project's captured errors into a table — the caller names the filters, the groupings and the aggregations, and gets back the columns and rows they asked for.
  ///
  /// Aggregates a project's captured errors into a table — the caller names the filters, the groupings and the aggregations, and gets back the columns and rows they asked for.  The project is mandatory and is checked against the caller's own org before it scopes anything, so a project id belonging to someone else reads as absent rather than as data.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yDiscoverIn] o11yO11yDiscoverIn (required):
  Future<O11yO11yDiscoverOut?> postSentryDiscover(O11yO11yDiscoverIn o11yO11yDiscoverIn,) async {
    final response = await postSentryDiscoverWithHttpInfo(o11yO11yDiscoverIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yDiscoverOut',) as O11yO11yDiscoverOut;
    
    }
    return null;
  }

  /// Creates a Sentry project under the caller's org and returns it, DSN included.
  ///
  /// Creates a Sentry project under the caller's org and returns it, DSN included. Only the name, and optionally a slug and platform, are the caller's to set; the org, id and key are server-assigned.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11ySentryPostableProject] o11yO11ySentryPostableProject (required):
  Future<Response> postSentryProjectsWithHttpInfo(O11yO11ySentryPostableProject o11yO11ySentryPostableProject,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sentry/projects';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11ySentryPostableProject;

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

  /// Creates a Sentry project under the caller's org and returns it, DSN included.
  ///
  /// Creates a Sentry project under the caller's org and returns it, DSN included. Only the name, and optionally a slug and platform, are the caller's to set; the org, id and key are server-assigned.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [O11yO11ySentryPostableProject] o11yO11ySentryPostableProject (required):
  Future<O11yO11ySentryProjectOut?> postSentryProjects(O11yO11ySentryPostableProject o11yO11ySentryPostableProject,) async {
    final response = await postSentryProjectsWithHttpInfo(o11yO11ySentryPostableProject,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11ySentryProjectOut',) as O11yO11ySentryProjectOut;
    
    }
    return null;
  }

  /// Rotates a project's DSN key — bumping its rotation watermark so keys below it stop verifying — and returns the project with its new DSN.
  ///
  /// Rotates a project's DSN key — bumping its rotation watermark so keys below it stop verifying — and returns the project with its new DSN.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the project id.
  Future<Response> postSentryProjectsByIdKeysRotateWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sentry/projects/{id}/keys/rotate'
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

  /// Rotates a project's DSN key — bumping its rotation watermark so keys below it stop verifying — and returns the project with its new DSN.
  ///
  /// Rotates a project's DSN key — bumping its rotation watermark so keys below it stop verifying — and returns the project with its new DSN.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the project id.
  Future<O11yO11ySentryProjectOut?> postSentryProjectsByIdKeysRotate(String id,) async {
    final response = await postSentryProjectsByIdKeysRotateWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11ySentryProjectOut',) as O11yO11ySentryProjectOut;
    
    }
    return null;
  }

  /// Move an error issue through its lifecycle
  ///
  /// The one replace on the Sentry surface: updating an error ISSUE — resolving it, ignoring it, or assigning it — and answering the updated issue.  Nothing else here takes a replace. A project is created and deleted but never replaced, and the event and trace planes are append-only telemetry, so an issue's lifecycle is the only mutable state this face exposes.  Requires a validated, org-scoped principal with edit rights; a viewer is refused. The write is confined to the org minted from that principal's claim, so an issue id belonging to another tenant is simply not found. Before the runtime is initialized, 503.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> putSentryByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sentry/{wildcard1}'
      .replaceAll('{wildcard1}', wildcard1);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Move an error issue through its lifecycle
  ///
  /// The one replace on the Sentry surface: updating an error ISSUE — resolving it, ignoring it, or assigning it — and answering the updated issue.  Nothing else here takes a replace. A project is created and deleted but never replaced, and the event and trace planes are append-only telemetry, so an issue's lifecycle is the only mutable state this face exposes.  Requires a validated, org-scoped principal with edit rights; a viewer is refused. The write is confined to the org minted from that principal's claim, so an issue id belonging to another tenant is simply not found. Before the runtime is initialized, 503.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> putSentryByWildcard1(String wildcard1,) async {
    final response = await putSentryByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Changes an issue's lifecycle — resolve, ignore, reopen or assign — and returns the updated issue.
  ///
  /// Changes an issue's lifecycle — resolve, ignore, reopen or assign — and returns the updated issue. Fields left unset are left unchanged.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the issue id.
  ///
  /// * [O11yO11ySentryUpdateIssueIn] o11yO11ySentryUpdateIssueIn (required):
  Future<Response> putSentryIssuesByIdWithHttpInfo(String id, O11yO11ySentryUpdateIssueIn o11yO11ySentryUpdateIssueIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sentry/issues/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11ySentryUpdateIssueIn;

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

  /// Changes an issue's lifecycle — resolve, ignore, reopen or assign — and returns the updated issue.
  ///
  /// Changes an issue's lifecycle — resolve, ignore, reopen or assign — and returns the updated issue. Fields left unset are left unchanged.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the issue id.
  ///
  /// * [O11yO11ySentryUpdateIssueIn] o11yO11ySentryUpdateIssueIn (required):
  Future<O11yO11yErrorIssueOut?> putSentryIssuesById(String id, O11yO11ySentryUpdateIssueIn o11yO11ySentryUpdateIssueIn,) async {
    final response = await putSentryIssuesByIdWithHttpInfo(id, o11yO11ySentryUpdateIssueIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yErrorIssueOut',) as O11yO11yErrorIssueOut;
    
    }
    return null;
  }
}
