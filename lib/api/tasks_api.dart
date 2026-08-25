//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class TasksApi {
  TasksApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Redirect to the tasks API root
  ///
  /// Answers 307 with Location /v1/tasks/ — this address serves nothing itself. The status and the Location are the same on every method; a GET additionally carries the short HTML body a browser falls back to when it does not follow the redirect itself.  A 307 preserves both the method and the body, so a client that follows redirects re-sends the request unchanged to /v1/tasks/ and nothing is lost. A client that does NOT follow redirects sees only the 307 and performs no work — address /v1/tasks/ directly and the hop disappears.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteTasksWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tasks';

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

  /// Redirect to the tasks API root
  ///
  /// Answers 307 with Location /v1/tasks/ — this address serves nothing itself. The status and the Location are the same on every method; a GET additionally carries the short HTML body a browser falls back to when it does not follow the redirect itself.  A 307 preserves both the method and the body, so a client that follows redirects re-sends the request unchanged to /v1/tasks/ and nothing is lost. A client that does NOT follow redirects sees only the 307 and performs no work — address /v1/tasks/ directly and the hop disappears.
  Future<void> deleteTasks() async {
    final response = await deleteTasksWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Redirect to the tasks API root
  ///
  /// Answers 307 with Location /v1/tasks/ — this address serves nothing itself. The status and the Location are the same on every method; a GET additionally carries the short HTML body a browser falls back to when it does not follow the redirect itself.  A 307 preserves both the method and the body, so a client that follows redirects re-sends the request unchanged to /v1/tasks/ and nothing is lost. A client that does NOT follow redirects sees only the 307 and performs no work — address /v1/tasks/ directly and the hop disappears.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTasksWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tasks';

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

  /// Redirect to the tasks API root
  ///
  /// Answers 307 with Location /v1/tasks/ — this address serves nothing itself. The status and the Location are the same on every method; a GET additionally carries the short HTML body a browser falls back to when it does not follow the redirect itself.  A 307 preserves both the method and the body, so a client that follows redirects re-sends the request unchanged to /v1/tasks/ and nothing is lost. A client that does NOT follow redirects sees only the 307 and performs no work — address /v1/tasks/ directly and the hop disappears.
  Future<void> getTasks() async {
    final response = await getTasksWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Redirect to the tasks API root
  ///
  /// Answers 307 with Location /v1/tasks/ — this address serves nothing itself. The status and the Location are the same on every method; a GET additionally carries the short HTML body a browser falls back to when it does not follow the redirect itself.  A 307 preserves both the method and the body, so a client that follows redirects re-sends the request unchanged to /v1/tasks/ and nothing is lost. A client that does NOT follow redirects sees only the 307 and performs no work — address /v1/tasks/ directly and the hop disappears.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> patchTasksWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tasks';

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

  /// Redirect to the tasks API root
  ///
  /// Answers 307 with Location /v1/tasks/ — this address serves nothing itself. The status and the Location are the same on every method; a GET additionally carries the short HTML body a browser falls back to when it does not follow the redirect itself.  A 307 preserves both the method and the body, so a client that follows redirects re-sends the request unchanged to /v1/tasks/ and nothing is lost. A client that does NOT follow redirects sees only the 307 and performs no work — address /v1/tasks/ directly and the hop disappears.
  Future<void> patchTasks() async {
    final response = await patchTasksWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Redirect to the tasks API root
  ///
  /// Answers 307 with Location /v1/tasks/ — this address serves nothing itself. The status and the Location are the same on every method; a GET additionally carries the short HTML body a browser falls back to when it does not follow the redirect itself.  A 307 preserves both the method and the body, so a client that follows redirects re-sends the request unchanged to /v1/tasks/ and nothing is lost. A client that does NOT follow redirects sees only the 307 and performs no work — address /v1/tasks/ directly and the hop disappears.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postTasksWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tasks';

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

  /// Redirect to the tasks API root
  ///
  /// Answers 307 with Location /v1/tasks/ — this address serves nothing itself. The status and the Location are the same on every method; a GET additionally carries the short HTML body a browser falls back to when it does not follow the redirect itself.  A 307 preserves both the method and the body, so a client that follows redirects re-sends the request unchanged to /v1/tasks/ and nothing is lost. A client that does NOT follow redirects sees only the 307 and performs no work — address /v1/tasks/ directly and the hop disappears.
  Future<void> postTasks() async {
    final response = await postTasksWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Redirect to the tasks API root
  ///
  /// Answers 307 with Location /v1/tasks/ — this address serves nothing itself. The status and the Location are the same on every method; a GET additionally carries the short HTML body a browser falls back to when it does not follow the redirect itself.  A 307 preserves both the method and the body, so a client that follows redirects re-sends the request unchanged to /v1/tasks/ and nothing is lost. A client that does NOT follow redirects sees only the 307 and performs no work — address /v1/tasks/ directly and the hop disappears.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> putTasksWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tasks';

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

  /// Redirect to the tasks API root
  ///
  /// Answers 307 with Location /v1/tasks/ — this address serves nothing itself. The status and the Location are the same on every method; a GET additionally carries the short HTML body a browser falls back to when it does not follow the redirect itself.  A 307 preserves both the method and the body, so a client that follows redirects re-sends the request unchanged to /v1/tasks/ and nothing is lost. A client that does NOT follow redirects sees only the 307 and performs no work — address /v1/tasks/ directly and the hop disappears.
  Future<void> putTasks() async {
    final response = await putTasksWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
