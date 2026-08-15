//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class MemoryApi {
  MemoryApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List the authenticated user's stored facts
  ///
  /// List the authenticated user's stored facts
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMemoryFactsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/memory/facts';

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

  /// List the authenticated user's stored facts
  ///
  /// List the authenticated user's stored facts
  Future<void> getMemoryFacts() async {
    final response = await getMemoryFactsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List the authenticated user's memories, newest first
  ///
  /// List the authenticated user's memories, newest first
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMemoryListWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/memory/list';

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

  /// List the authenticated user's memories, newest first
  ///
  /// List the authenticated user's memories, newest first
  Future<void> getMemoryList() async {
    final response = await getMemoryListWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Recall recent/relevant memories for context injection; with q it
  ///
  /// Recall recent/relevant memories for context injection; with q it ranks semantically, without q it returns the most recent
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMemoryRecallWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/memory/recall';

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

  /// Recall recent/relevant memories for context injection; with q it
  ///
  /// Recall recent/relevant memories for context injection; with q it ranks semantically, without q it returns the most recent
  Future<void> getMemoryRecall() async {
    final response = await getMemoryRecallWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Search the authenticated user's memories (semantic, text fallback)
  ///
  /// Search the authenticated user's memories (semantic, text fallback)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMemorySearchWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/memory/search';

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

  /// Search the authenticated user's memories (semantic, text fallback)
  ///
  /// Search the authenticated user's memories (semantic, text fallback)
  Future<void> getMemorySearch() async {
    final response = await getMemorySearchWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete one of the authenticated user's memories
  ///
  /// Delete one of the authenticated user's memories
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postMemoryDeleteWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/memory/delete';

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

  /// Delete one of the authenticated user's memories
  ///
  /// Delete one of the authenticated user's memories
  Future<void> postMemoryDelete() async {
    final response = await postMemoryDeleteWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Store a memory for the authenticated user
  ///
  /// Store a memory for the authenticated user
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postMemoryRememberWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/memory/remember';

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

  /// Store a memory for the authenticated user
  ///
  /// Store a memory for the authenticated user
  Future<void> postMemoryRemember() async {
    final response = await postMemoryRememberWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update one of the authenticated user's memories
  ///
  /// Update one of the authenticated user's memories
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postMemoryUpdateWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/memory/update';

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

  /// Update one of the authenticated user's memories
  ///
  /// Update one of the authenticated user's memories
  Future<void> postMemoryUpdate() async {
    final response = await postMemoryUpdateWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
