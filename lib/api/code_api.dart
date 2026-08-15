//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class CodeApi {
  CodeApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Answers a question about the caller org's code with a CITED answer: retrieval packs grounding context, then the synthesizer writes the answer over exactly those spans, which come back alongside it.
  ///
  /// Answers a question about the caller org's code with a CITED answer: retrieval packs grounding context, then the synthesizer writes the answer over exactly those spans, which come back alongside it. It never answers without grounding — with no matched code the answer is empty and says so, and with no synthesizer available the citations still come back with \"degraded\": true so the caller can reason over the spans itself.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] q:
  ///   Q is the question to answer. Required, max 4000 bytes.
  ///
  /// * [String] repo:
  ///   Repo narrows retrieval to one repository. Empty searches every repo the org has indexed.
  Future<Response> getCodeAskWithHttpInfo({ String? q, String? repo, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/code/ask';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (repo != null) {
      queryParams.addAll(_queryParams('', 'repo', repo));
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

  /// Answers a question about the caller org's code with a CITED answer: retrieval packs grounding context, then the synthesizer writes the answer over exactly those spans, which come back alongside it.
  ///
  /// Answers a question about the caller org's code with a CITED answer: retrieval packs grounding context, then the synthesizer writes the answer over exactly those spans, which come back alongside it. It never answers without grounding — with no matched code the answer is empty and says so, and with no synthesizer available the citations still come back with \"degraded\": true so the caller can reason over the spans itself.
  ///
  /// Parameters:
  ///
  /// * [String] q:
  ///   Q is the question to answer. Required, max 4000 bytes.
  ///
  /// * [String] repo:
  ///   Repo narrows retrieval to one repository. Empty searches every repo the org has indexed.
  Future<AskAnswer?> getCodeAsk({ String? q, String? repo, }) async {
    final response = await getCodeAskWithHttpInfo( q: q, repo: repo, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AskAnswer',) as AskAnswer;
    
    }
    return null;
  }

  /// Returns the INDEXED content of one file — read_file over the chunks the search tiers hold, for pulling up code an agent just found.
  ///
  /// Returns the INDEXED content of one file — read_file over the chunks the search tiers hold, for pulling up code an agent just found. It is NOT byte-verbatim: the git object plane is the source of record for exact bytes, history and blame. A file absent from the index is a 404, so an agent can tell \"not indexed\" from \"empty file\".
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] pathParam:
  ///   Path is the file's repo-relative path. Required.
  ///
  /// * [String] repo:
  ///   Repo is the repository the file belongs to. REQUIRED.
  Future<Response> getCodeFileWithHttpInfo({ String? pathParam, String? repo, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/code/file';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pathParam != null) {
      queryParams.addAll(_queryParams('', 'path', pathParam));
    }
    if (repo != null) {
      queryParams.addAll(_queryParams('', 'repo', repo));
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

  /// Returns the INDEXED content of one file — read_file over the chunks the search tiers hold, for pulling up code an agent just found.
  ///
  /// Returns the INDEXED content of one file — read_file over the chunks the search tiers hold, for pulling up code an agent just found. It is NOT byte-verbatim: the git object plane is the source of record for exact bytes, history and blame. A file absent from the index is a 404, so an agent can tell \"not indexed\" from \"empty file\".
  ///
  /// Parameters:
  ///
  /// * [String] pathParam:
  ///   Path is the file's repo-relative path. Required.
  ///
  /// * [String] repo:
  ///   Repo is the repository the file belongs to. REQUIRED.
  Future<FileContent?> getCodeFile({ String? pathParam, String? repo, }) async {
    final response = await getCodeFileWithHttpInfo( pathParam: pathParam, repo: repo, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FileContent',) as FileContent;
    
    }
    return null;
  }

  /// Finds code in the caller org's index across three orthogonal retrieval tiers fused by reciprocal-rank fusion: lexical (FTS5 trigram over code-tokenized text), symbolic (real definition and reference edges), and semantic (embedding cosine over AST-boundary chunks).
  ///
  /// Finds code in the caller org's index across three orthogonal retrieval tiers fused by reciprocal-rank fusion: lexical (FTS5 trigram over code-tokenized text), symbolic (real definition and reference edges), and semantic (embedding cosine over AST-boundary chunks). Pick one tier with `type`, or leave it to run all three as hybrid, which is what a coding agent usually wants. It is FAIL-HONEST: a retrieval outage answers 200 with an empty result set and \"degraded\": true rather than a 5xx, so an agent degrades instead of stalling. A malformed regex is a 400.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] q:
  ///   Q is the search query. Required, max 4000 bytes. For type=regex it is a regular expression; for type=symbol it is a symbol name.
  ///
  /// * [String] type:
  ///   Type selects the retrieval tier: \"text\" (FTS5 trigram), \"regex\", \"symbol\" (definitions), \"semantic\" (embeddings) or \"hybrid\". Anything else — including empty — reads as hybrid.
  ///
  /// * [String] repo:
  ///   Repo narrows to one repository. Empty searches every repo the org has indexed.
  ///
  /// * [int] limit:
  ///   Limit caps how many spans come back: default 20, maximum 100. A value that is not a positive integer reads as the default.
  Future<Response> getCodeSearchWithHttpInfo({ String? q, String? type, String? repo, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/code/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (repo != null) {
      queryParams.addAll(_queryParams('', 'repo', repo));
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

  /// Finds code in the caller org's index across three orthogonal retrieval tiers fused by reciprocal-rank fusion: lexical (FTS5 trigram over code-tokenized text), symbolic (real definition and reference edges), and semantic (embedding cosine over AST-boundary chunks).
  ///
  /// Finds code in the caller org's index across three orthogonal retrieval tiers fused by reciprocal-rank fusion: lexical (FTS5 trigram over code-tokenized text), symbolic (real definition and reference edges), and semantic (embedding cosine over AST-boundary chunks). Pick one tier with `type`, or leave it to run all three as hybrid, which is what a coding agent usually wants. It is FAIL-HONEST: a retrieval outage answers 200 with an empty result set and \"degraded\": true rather than a 5xx, so an agent degrades instead of stalling. A malformed regex is a 400.
  ///
  /// Parameters:
  ///
  /// * [String] q:
  ///   Q is the search query. Required, max 4000 bytes. For type=regex it is a regular expression; for type=symbol it is a symbol name.
  ///
  /// * [String] type:
  ///   Type selects the retrieval tier: \"text\" (FTS5 trigram), \"regex\", \"symbol\" (definitions), \"semantic\" (embeddings) or \"hybrid\". Anything else — including empty — reads as hybrid.
  ///
  /// * [String] repo:
  ///   Repo narrows to one repository. Empty searches every repo the org has indexed.
  ///
  /// * [int] limit:
  ///   Limit caps how many spans come back: default 20, maximum 100. A value that is not a positive integer reads as the default.
  Future<SearchResults?> getCodeSearch({ String? q, String? type, String? repo, int? limit, }) async {
    final response = await getCodeSearchWithHttpInfo( q: q, type: type, repo: repo, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchResults',) as SearchResults;
    
    }
    return null;
  }

  /// Returns one repository's file structure with a per-file symbol count — get_repo_structure over the org's own index, with no git checkout involved.
  ///
  /// Returns one repository's file structure with a per-file symbol count — get_repo_structure over the org's own index, with no git checkout involved. A repository that has not been indexed answers an empty tree rather than an error, so an agent can tell \"nothing here\" without handling a failure.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] repo:
  ///   Repo is the repository to walk. REQUIRED — a tree is repo-scoped.
  Future<Response> getCodeTreeWithHttpInfo({ String? repo, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/code/tree';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (repo != null) {
      queryParams.addAll(_queryParams('', 'repo', repo));
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

  /// Returns one repository's file structure with a per-file symbol count — get_repo_structure over the org's own index, with no git checkout involved.
  ///
  /// Returns one repository's file structure with a per-file symbol count — get_repo_structure over the org's own index, with no git checkout involved. A repository that has not been indexed answers an empty tree rather than an error, so an agent can tell \"nothing here\" without handling a failure.
  ///
  /// Parameters:
  ///
  /// * [String] repo:
  ///   Repo is the repository to walk. REQUIRED — a tree is repo-scoped.
  Future<RepoTree?> getCodeTree({ String? repo, }) async {
    final response = await getCodeTreeWithHttpInfo( repo: repo, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RepoTree',) as RepoTree;
    
    }
    return null;
  }

  /// Is askGet with the question in the request BODY, for a question too long or too awkward to put in a URL.
  ///
  /// Is askGet with the question in the request BODY, for a question too long or too awkward to put in a URL. `query` and `repo` in the body take precedence over `?q=` and `?repo=`; either source works alone.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AskPostIn] askPostIn (required):
  Future<Response> postCodeAskWithHttpInfo(AskPostIn askPostIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/code/ask';

    // ignore: prefer_final_locals
    Object? postBody = askPostIn;

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

  /// Is askGet with the question in the request BODY, for a question too long or too awkward to put in a URL.
  ///
  /// Is askGet with the question in the request BODY, for a question too long or too awkward to put in a URL. `query` and `repo` in the body take precedence over `?q=` and `?repo=`; either source works alone.
  ///
  /// Parameters:
  ///
  /// * [AskPostIn] askPostIn (required):
  Future<AskAnswer?> postCodeAsk(AskPostIn askPostIn,) async {
    final response = await postCodeAskWithHttpInfo(askPostIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AskAnswer',) as AskAnswer;
    
    }
    return null;
  }

  /// Packs the most relevant code for a query into a token budget — THE primitive for a coding agent that has to decide what to put in a prompt.
  ///
  /// Packs the most relevant code for a query into a token budget — THE primitive for a coding agent that has to decide what to put in a prompt. It retrieves seed spans, expands each with the definitions it calls and its key callers, then greedily fills the budget, so the answer is a coherent slice of the codebase rather than a list of disconnected matches. The top match is always included, truncated if it alone overflows, so a matched query never comes back empty. A retrieval outage answers 200 with an empty bundle rather than a 5xx.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ContextIn] contextIn (required):
  Future<Response> postCodeContextWithHttpInfo(ContextIn contextIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/code/context';

    // ignore: prefer_final_locals
    Object? postBody = contextIn;

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

  /// Packs the most relevant code for a query into a token budget — THE primitive for a coding agent that has to decide what to put in a prompt.
  ///
  /// Packs the most relevant code for a query into a token budget — THE primitive for a coding agent that has to decide what to put in a prompt. It retrieves seed spans, expands each with the definitions it calls and its key callers, then greedily fills the budget, so the answer is a coherent slice of the codebase rather than a list of disconnected matches. The top match is always included, truncated if it alone overflows, so a matched query never comes back empty. A retrieval outage answers 200 with an empty bundle rather than a 5xx.
  ///
  /// Parameters:
  ///
  /// * [ContextIn] contextIn (required):
  Future<ContextBundle?> postCodeContext(ContextIn contextIn,) async {
    final response = await postCodeContextWithHttpInfo(contextIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ContextBundle',) as ContextBundle;
    
    }
    return null;
  }

  /// (re)indexes a repository for the caller's org, incrementally: files whose content hash is unchanged are skipped, so re-sending a whole tree is cheap.
  ///
  /// (re)indexes a repository for the caller's org, incrementally: files whose content hash is unchanged are skipped, so re-sending a whole tree is cheap. Each file is parsed for symbols, split at AST boundaries and — when the semantic tier is available — embedded, which is what makes it searchable across all three retrieval tiers. Pass `prune` to also DELETE indexed files absent from the request, which turns the call into a full sync; without it the call is an upsert. The index is written to the caller org's own physically separate database.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IndexIn] indexIn (required):
  Future<Response> postCodeIndexWithHttpInfo(IndexIn indexIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/code/index';

    // ignore: prefer_final_locals
    Object? postBody = indexIn;

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

  /// (re)indexes a repository for the caller's org, incrementally: files whose content hash is unchanged are skipped, so re-sending a whole tree is cheap.
  ///
  /// (re)indexes a repository for the caller's org, incrementally: files whose content hash is unchanged are skipped, so re-sending a whole tree is cheap. Each file is parsed for symbols, split at AST boundaries and — when the semantic tier is available — embedded, which is what makes it searchable across all three retrieval tiers. Pass `prune` to also DELETE indexed files absent from the request, which turns the call into a full sync; without it the call is an upsert. The index is written to the caller org's own physically separate database.
  ///
  /// Parameters:
  ///
  /// * [IndexIn] indexIn (required):
  Future<IndexResult?> postCodeIndex(IndexIn indexIn,) async {
    final response = await postCodeIndexWithHttpInfo(indexIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IndexResult',) as IndexResult;
    
    }
    return null;
  }

  /// Offers the candidates a language server has at a position, typed and resolved through the repository's dependencies rather than guessed from text.
  ///
  /// Offers the candidates a language server has at a position, typed and resolved through the repository's dependencies rather than guessed from text.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Query] query (required):
  Future<Response> postCodeLspCompleteWithHttpInfo(Query query,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/code/lsp/complete';

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
  Future<Answer?> postCodeLspComplete(Query query,) async {
    final response = await postCodeLspCompleteWithHttpInfo(query,);
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
  Future<Response> postCodeLspDiagnosticsWithHttpInfo(Query query,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/code/lsp/diagnostics';

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
  Future<Answer?> postCodeLspDiagnostics(Query query,) async {
    final response = await postCodeLspDiagnosticsWithHttpInfo(query,);
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
  Future<Response> postCodeLspHoverWithHttpInfo(Query query,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/code/lsp/hover';

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
  Future<Answer?> postCodeLspHover(Query query,) async {
    final response = await postCodeLspHoverWithHttpInfo(query,);
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
  Future<Response> postCodeLspLocateWithHttpInfo(Query query,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/code/lsp/locate';

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
  Future<Answer?> postCodeLspLocate(Query query,) async {
    final response = await postCodeLspLocateWithHttpInfo(query,);
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
  Future<Response> postCodeLspSymbolsWithHttpInfo(Query query,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/code/lsp/symbols';

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
  Future<Answer?> postCodeLspSymbols(Query query,) async {
    final response = await postCodeLspSymbolsWithHttpInfo(query,);
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
