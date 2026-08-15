//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class AskApi {
  AskApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Ask a grounded question about your own org
  ///
  /// Answers a natural-language question about the CALLER'S OWN org, from real figures rather than from the model's memory.  The question is classified to a grounded domain, that domain's read runs IN-PROCESS under the caller's own credentials, and only then is the result narrated. So the figures and their sources are the domain's, resolved before any model call and never altered by one — a wrong answer is a wrong query, never an invention.  Domains: books (the org's ledger), projects (what is built and what of it is deployed), git (the org's repositories and what changed in them), and web (search, news, research, deep). A validated principal is required; the answer is scoped to that principal's org and nothing else.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AskRequest] askRequest:
  Future<Response> postAskWithHttpInfo({ AskRequest? askRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ask';

    // ignore: prefer_final_locals
    Object? postBody = askRequest;

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

  /// Ask a grounded question about your own org
  ///
  /// Answers a natural-language question about the CALLER'S OWN org, from real figures rather than from the model's memory.  The question is classified to a grounded domain, that domain's read runs IN-PROCESS under the caller's own credentials, and only then is the result narrated. So the figures and their sources are the domain's, resolved before any model call and never altered by one — a wrong answer is a wrong query, never an invention.  Domains: books (the org's ledger), projects (what is built and what of it is deployed), git (the org's repositories and what changed in them), and web (search, news, research, deep). A validated principal is required; the answer is scoped to that principal's org and nothing else.
  ///
  /// Parameters:
  ///
  /// * [AskRequest] askRequest:
  Future<void> postAsk({ AskRequest? askRequest, }) async {
    final response = await postAskWithHttpInfo( askRequest: askRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Research a question on the live web and answer it with sources cited
  ///
  /// Researches a question on the live web and answers it with its sources cited.  This is the DEEP one. It plans the question into topics, runs several web searches, FETCHES AND READS the pages it finds, ranks them, and writes a grounded answer with inline markdown citations. Use it for anything that needs evidence, comparison or current fact — \"what changed in X\", \"compare A and B\", \"is this claim true\". For a plain list of links, use search_web instead; for one page you already have the URL of, use read_page.  `mode` buys depth: `search` is a single fast pass, `news` biases to recency, `research` plans and iterates, `deep` surveys widest. `sources` narrows the evidence to `web`, `news`, `academic`, `github`, `reddit` or `x` — each becomes a site-scoped search, which is how this reaches X/Twitter posts.  EVERY CITATION IS A PAGE THIS CALL FETCHED. That is a property of the text and not an instruction to the model: each source is fenced with a per-request nonce so a crawled page cannot print itself a source number, and every markdown link in the answer is checked against the gathered set before it is returned. So a link in `answer` always appears in `sources`, and a page that was not read cannot be cited.  It is BOUNDED and it degrades rather than failing: a mode's rounds, wall clock and token ceiling all cap it, and a search that finds little or a page that will not load yields a thinner answer, never an error. A validated principal is required, and the answer is billed once to that principal's org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [WebQuestion] webQuestion (required):
  Future<Response> researchWebWithHttpInfo(WebQuestion webQuestion,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ask/web';

    // ignore: prefer_final_locals
    Object? postBody = webQuestion;

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

  /// Research a question on the live web and answer it with sources cited
  ///
  /// Researches a question on the live web and answers it with its sources cited.  This is the DEEP one. It plans the question into topics, runs several web searches, FETCHES AND READS the pages it finds, ranks them, and writes a grounded answer with inline markdown citations. Use it for anything that needs evidence, comparison or current fact — \"what changed in X\", \"compare A and B\", \"is this claim true\". For a plain list of links, use search_web instead; for one page you already have the URL of, use read_page.  `mode` buys depth: `search` is a single fast pass, `news` biases to recency, `research` plans and iterates, `deep` surveys widest. `sources` narrows the evidence to `web`, `news`, `academic`, `github`, `reddit` or `x` — each becomes a site-scoped search, which is how this reaches X/Twitter posts.  EVERY CITATION IS A PAGE THIS CALL FETCHED. That is a property of the text and not an instruction to the model: each source is fenced with a per-request nonce so a crawled page cannot print itself a source number, and every markdown link in the answer is checked against the gathered set before it is returned. So a link in `answer` always appears in `sources`, and a page that was not read cannot be cited.  It is BOUNDED and it degrades rather than failing: a mode's rounds, wall clock and token ceiling all cap it, and a search that finds little or a page that will not load yields a thinner answer, never an error. A validated principal is required, and the answer is billed once to that principal's org.
  ///
  /// Parameters:
  ///
  /// * [WebQuestion] webQuestion (required):
  Future<Report?> researchWeb(WebQuestion webQuestion,) async {
    final response = await researchWebWithHttpInfo(webQuestion,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Report',) as Report;
    
    }
    return null;
  }
}
