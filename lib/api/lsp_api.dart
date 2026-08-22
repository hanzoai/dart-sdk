//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class LspApi {
  LspApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Offers the candidates a language server has at a position, typed and resolved through the repository's dependencies rather than guessed from text.
  ///
  /// Offers the candidates a language server has at a position, typed and resolved through the repository's dependencies rather than guessed from text.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Query] query (required):
  Future<Response> postLspCompleteWithHttpInfo(Query query,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/lsp/complete';

    // ignore: prefer_final_locals
    Object? postBody = query;

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

  /// Offers the candidates a language server has at a position, typed and resolved through the repository's dependencies rather than guessed from text.
  ///
  /// Offers the candidates a language server has at a position, typed and resolved through the repository's dependencies rather than guessed from text.
  ///
  /// Parameters:
  ///
  /// * [Query] query (required):
  Future<Answer?> postLspComplete(Query query,) async {
    final response = await postLspCompleteWithHttpInfo(query,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Answer',) as Answer;
    
    }
    return null;
  }

  /// Reports every problem the language server finds in one file — compile errors, type errors and lints, each with its span and its severity (1 error, 2 warning, 3 information, 4 hint).
  ///
  /// Reports every problem the language server finds in one file — compile errors, type errors and lints, each with its span and its severity (1 error, 2 warning, 3 information, 4 hint). The position is ignored.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Query] query (required):
  Future<Response> postLspDiagnosticsWithHttpInfo(Query query,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/lsp/diagnostics';

    // ignore: prefer_final_locals
    Object? postBody = query;

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

  /// Reports every problem the language server finds in one file — compile errors, type errors and lints, each with its span and its severity (1 error, 2 warning, 3 information, 4 hint).
  ///
  /// Reports every problem the language server finds in one file — compile errors, type errors and lints, each with its span and its severity (1 error, 2 warning, 3 information, 4 hint). The position is ignored.
  ///
  /// Parameters:
  ///
  /// * [Query] query (required):
  Future<Answer?> postLspDiagnostics(Query query,) async {
    final response = await postLspDiagnosticsWithHttpInfo(query,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Answer',) as Answer;
    
    }
    return null;
  }

  /// Renders the type and documentation of the symbol at a position, as the language server itself renders it.
  ///
  /// Renders the type and documentation of the symbol at a position, as the language server itself renders it.  Positions are the LSP's: line and character are 0-BASED and character counts UTF-16 code units, so an editor's 1-based line must have 1 subtracted before it is sent. The repository is named by slug and is always one in the caller's own org; rev pins a branch, tag or commit sha, and empty means the default branch.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Query] query (required):
  Future<Response> postLspHoverWithHttpInfo(Query query,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/lsp/hover';

    // ignore: prefer_final_locals
    Object? postBody = query;

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

  /// Renders the type and documentation of the symbol at a position, as the language server itself renders it.
  ///
  /// Renders the type and documentation of the symbol at a position, as the language server itself renders it.  Positions are the LSP's: line and character are 0-BASED and character counts UTF-16 code units, so an editor's 1-based line must have 1 subtracted before it is sent. The repository is named by slug and is always one in the caller's own org; rev pins a branch, tag or commit sha, and empty means the default branch.
  ///
  /// Parameters:
  ///
  /// * [Query] query (required):
  Future<Answer?> postLspHover(Query query,) async {
    final response = await postLspHoverWithHttpInfo(query,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Answer',) as Answer;
    
    }
    return null;
  }

  /// Finds where a symbol lives: its definition, its references, its type or its implementations, chosen by relation (definition, reference, type, implementation — empty means definition).
  ///
  /// Finds where a symbol lives: its definition, its references, its type or its implementations, chosen by relation (definition, reference, type, implementation — empty means definition).  It resolves THROUGH dependencies. An answer whose external flag is set left the repository, and its path is then the module coordinate it landed in — which is the question a static index cannot answer and this service exists for.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Query] query (required):
  Future<Response> postLspLocateWithHttpInfo(Query query,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/lsp/locate';

    // ignore: prefer_final_locals
    Object? postBody = query;

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

  /// Finds where a symbol lives: its definition, its references, its type or its implementations, chosen by relation (definition, reference, type, implementation — empty means definition).
  ///
  /// Finds where a symbol lives: its definition, its references, its type or its implementations, chosen by relation (definition, reference, type, implementation — empty means definition).  It resolves THROUGH dependencies. An answer whose external flag is set left the repository, and its path is then the module coordinate it landed in — which is the question a static index cannot answer and this service exists for.
  ///
  /// Parameters:
  ///
  /// * [Query] query (required):
  Future<Answer?> postLspLocate(Query query,) async {
    final response = await postLspLocateWithHttpInfo(query,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Answer',) as Answer;
    
    }
    return null;
  }

  /// Outlines one file: every declaration in it, with its kind and its span.
  ///
  /// Outlines one file: every declaration in it, with its kind and its span. The position is ignored — the answer is the whole file.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Query] query (required):
  Future<Response> postLspSymbolsWithHttpInfo(Query query,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/lsp/symbols';

    // ignore: prefer_final_locals
    Object? postBody = query;

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

  /// Outlines one file: every declaration in it, with its kind and its span.
  ///
  /// Outlines one file: every declaration in it, with its kind and its span. The position is ignored — the answer is the whole file.
  ///
  /// Parameters:
  ///
  /// * [Query] query (required):
  Future<Answer?> postLspSymbols(Query query,) async {
    final response = await postLspSymbolsWithHttpInfo(query,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Answer',) as Answer;
    
    }
    return null;
  }
}
