//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class PromptApi {
  PromptApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete removes one of the caller org's prompts and every version of it, answering 204.
  ///
  /// Delete removes one of the caller org's prompts and every version of it, answering 204. It is scoped to the caller's org, so a name another tenant owns is the same 404 an unknown name gives. There is no undo: the version history goes with it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the prompt to act on, from the path.
  Future<Response> deletePromptByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/prompt/{name}'
      .replaceAll('{name}', name);

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

  /// Delete removes one of the caller org's prompts and every version of it, answering 204.
  ///
  /// Delete removes one of the caller org's prompts and every version of it, answering 204. It is scoped to the caller's org, so a name another tenant owns is the same 404 an unknown name gives. There is no undo: the version history goes with it.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the prompt to act on, from the path.
  Future<void> deletePromptByName(String name,) async {
    final response = await deletePromptByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List returns the caller org's prompt library as one row per prompt: its name, type, every version number it has, its taxonomy and when it last changed.
  ///
  /// List returns the caller org's prompt library as one row per prompt: its name, type, every version number it has, its taxonomy and when it last changed. The template bodies are deliberately absent — fetch one prompt to read its text.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPromptWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/prompt';

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

  /// List returns the caller org's prompt library as one row per prompt: its name, type, every version number it has, its taxonomy and when it last changed.
  ///
  /// List returns the caller org's prompt library as one row per prompt: its name, type, every version number it has, its taxonomy and when it last changed. The template bodies are deliberately absent — fetch one prompt to read its text.
  Future<PromptList?> getPrompt() async {
    final response = await getPromptWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PromptList',) as PromptList;
    
    }
    return null;
  }

  /// Get returns one of the caller org's prompts: its CURRENT template text plus the metadata of every version it has had.
  ///
  /// Get returns one of the caller org's prompts: its CURRENT template text plus the metadata of every version it has had. The history carries version numbers, types and timestamps only — not each version's body — so a long history cannot inflate this response. A name the caller's org does not own is 404, whoever owns it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the prompt to act on, from the path.
  Future<Response> getPromptByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/prompt/{name}'
      .replaceAll('{name}', name);

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

  /// Get returns one of the caller org's prompts: its CURRENT template text plus the metadata of every version it has had.
  ///
  /// Get returns one of the caller org's prompts: its CURRENT template text plus the metadata of every version it has had. The history carries version numbers, types and timestamps only — not each version's body — so a long history cannot inflate this response. A name the caller's org does not own is 404, whoever owns it.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the prompt to act on, from the path.
  Future<PromptDetail?> getPromptByName(String name,) async {
    final response = await getPromptByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PromptDetail',) as PromptDetail;
    
    }
    return null;
  }

  /// Catalog returns the read-only starter prompt library shipped with the binary — reference content every tenant sees the same, NOT the caller's own prompts and never mixed into them.
  ///
  /// Catalog returns the read-only starter prompt library shipped with the binary — reference content every tenant sees the same, NOT the caller's own prompts and never mixed into them. An org's library stays honestly empty until someone explicitly imports a starter, which is an ordinary POST /v1/prompt. Entries that would fail the create guards are dropped, so everything offered here can actually be imported.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPromptCatalogWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/prompt/catalog';

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

  /// Catalog returns the read-only starter prompt library shipped with the binary — reference content every tenant sees the same, NOT the caller's own prompts and never mixed into them.
  ///
  /// Catalog returns the read-only starter prompt library shipped with the binary — reference content every tenant sees the same, NOT the caller's own prompts and never mixed into them. An org's library stays honestly empty until someone explicitly imports a starter, which is an ordinary POST /v1/prompt. Entries that would fail the create guards are dropped, so everything offered here can actually be imported.
  Future<CatalogList?> getPromptCatalog() async {
    final response = await getPromptCatalogWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CatalogList',) as CatalogList;
    
    }
    return null;
  }

  /// Metrics returns real per-prompt statistics for the caller's org: how many versions each prompt has, which one is current, and when it was created and last changed.
  ///
  /// Metrics returns real per-prompt statistics for the caller's org: how many versions each prompt has, which one is current, and when it was created and last changed. Every number is counted from the store — nothing here is estimated or fabricated.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPromptMetricsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/prompt/metrics';

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

  /// Metrics returns real per-prompt statistics for the caller's org: how many versions each prompt has, which one is current, and when it was created and last changed.
  ///
  /// Metrics returns real per-prompt statistics for the caller's org: how many versions each prompt has, which one is current, and when it was created and last changed. Every number is counted from the store — nothing here is estimated or fabricated.
  Future<MetricList?> getPromptMetrics() async {
    final response = await getPromptMetricsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MetricList',) as MetricList;
    
    }
    return null;
  }

  /// Create records a prompt for the caller's org and answers 201 with it.
  ///
  /// Create records a prompt for the caller's org and answers 201 with it. A name the org already uses is NOT an error and NOT an overwrite: it appends a new version, so the library keeps real, inspectable history and the response carries the whole version list. The name is also the URL segment the prompt is fetched by, which is why its shape is constrained and a handful of names are reserved.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PromptReq] promptReq (required):
  Future<Response> postPromptWithHttpInfo(PromptReq promptReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/prompt';

    // ignore: prefer_final_locals
    Object? postBody = promptReq;

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

  /// Create records a prompt for the caller's org and answers 201 with it.
  ///
  /// Create records a prompt for the caller's org and answers 201 with it. A name the org already uses is NOT an error and NOT an overwrite: it appends a new version, so the library keeps real, inspectable history and the response carries the whole version list. The name is also the URL segment the prompt is fetched by, which is why its shape is constrained and a handful of names are reserved.
  ///
  /// Parameters:
  ///
  /// * [PromptReq] promptReq (required):
  Future<PromptDetail?> postPrompt(PromptReq promptReq,) async {
    final response = await postPromptWithHttpInfo(promptReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PromptDetail',) as PromptDetail;
    
    }
    return null;
  }
}
