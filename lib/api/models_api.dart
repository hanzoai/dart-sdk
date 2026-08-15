//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class ModelsApi {
  ModelsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns the list of available models from the routing table.
  ///
  /// Returns the list of available models from the routing table.  PUBLIC BY DESIGN, AND IT DOES NOT AUTHENTICATE — that is the whole contract, so it is stated here rather than left to be inferred. The catalogue is the same for everyone (listAvailableModels takes no principal), docs.hanzo.ai fetches it from the browser, and every policy layer around it already says so out loud: the authz filter lists \"models\" as public, filter_balance refuses to gate it (a 402 here was a console-wide outage), the rate limiter excludes it, and cloud's spend.Reachable carries /v1/models/ as \"the model catalog the shell reads for discovery\".  SO THE Authorization HEADER IS NOT AN ADMISSION CHECK HERE. It is read for ONE thing — annotating gated SKUs with the caller's own access standing — and annotation degrades to nothing when there is no verified principal.  It used to hold a \"require authentication\" gate that authenticated nobody: it rejected an ABSENT credential and a MALFORMED one, then accepted any string that merely looked like a key. `Bearer sk-` followed by 36 zeroes returned 200 in production; so did a JWT three days expired. It was a shape check wearing an auth check's clothes, and its cost was diagnostic: /v1/models is the natural \"is my auth working?\" probe, and answering 200 to a dead credential sent people debugging the wrong system. A public endpoint must not appear to validate. Either check the credential or ignore it — this one ignores it, deliberately and visibly.  Removing that gate discloses nothing new: the catalogue was already reachable by anyone willing to type three characters, so there is no confidentiality delta, only an honesty one.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getModelsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/models';

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

  /// Returns the list of available models from the routing table.
  ///
  /// Returns the list of available models from the routing table.  PUBLIC BY DESIGN, AND IT DOES NOT AUTHENTICATE — that is the whole contract, so it is stated here rather than left to be inferred. The catalogue is the same for everyone (listAvailableModels takes no principal), docs.hanzo.ai fetches it from the browser, and every policy layer around it already says so out loud: the authz filter lists \"models\" as public, filter_balance refuses to gate it (a 402 here was a console-wide outage), the rate limiter excludes it, and cloud's spend.Reachable carries /v1/models/ as \"the model catalog the shell reads for discovery\".  SO THE Authorization HEADER IS NOT AN ADMISSION CHECK HERE. It is read for ONE thing — annotating gated SKUs with the caller's own access standing — and annotation degrades to nothing when there is no verified principal.  It used to hold a \"require authentication\" gate that authenticated nobody: it rejected an ABSENT credential and a MALFORMED one, then accepted any string that merely looked like a key. `Bearer sk-` followed by 36 zeroes returned 200 in production; so did a JWT three days expired. It was a shape check wearing an auth check's clothes, and its cost was diagnostic: /v1/models is the natural \"is my auth working?\" probe, and answering 200 to a dead credential sent people debugging the wrong system. A public endpoint must not appear to validate. Either check the credential or ignore it — this one ignores it, deliberately and visibly.  Removing that gate discloses nothing new: the catalogue was already reachable by anyone willing to type three characters, so there is no confidentiality delta, only an honesty one.
  Future<void> getModels() async {
    final response = await getModelsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the caller's own standing for a gated model: \"granted\", \"requested\", or empty when they have never asked.
  ///
  /// Returns the caller's own standing for a gated model: \"granted\", \"requested\", or empty when they have never asked.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] model (required):
  Future<Response> getModelsByModelAccessWithHttpInfo(String model,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/models/{model}/access'
      .replaceAll('{model}', model);

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

  /// Returns the caller's own standing for a gated model: \"granted\", \"requested\", or empty when they have never asked.
  ///
  /// Returns the caller's own standing for a gated model: \"granted\", \"requested\", or empty when they have never asked.
  ///
  /// Parameters:
  ///
  /// * [String] model (required):
  Future<void> getModelsByModelAccess(String model,) async {
    final response = await getModelsByModelAccessWithHttpInfo(model,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Public, secret-free list of the providers serving the models that GET /v1/models lists — the same source, projected.
  ///
  /// Public, secret-free list of the providers serving the models that GET /v1/models lists — the same source, projected. Safe unauthenticated: no keys, URLs, or config are returned, and it reports a SET of names, never which provider serves which model.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getModelsProvidersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/models/providers';

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

  /// Public, secret-free list of the providers serving the models that GET /v1/models lists — the same source, projected.
  ///
  /// Public, secret-free list of the providers serving the models that GET /v1/models lists — the same source, projected. Safe unauthenticated: no keys, URLs, or config are returned, and it reports a SET of names, never which provider serves which model.
  Future<void> getModelsProviders() async {
    final response = await getModelsProvidersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Records the caller's waitlist request for a gated model and answers their new standing.
  ///
  /// Records the caller's waitlist request for a gated model and answers their new standing. Authed, idempotent, and self-scoped: the row is keyed to the caller's own org and identity, never to a body-supplied owner.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] model (required):
  Future<Response> postModelsByModelAccessWithHttpInfo(String model,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/models/{model}/access'
      .replaceAll('{model}', model);

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

  /// Records the caller's waitlist request for a gated model and answers their new standing.
  ///
  /// Records the caller's waitlist request for a gated model and answers their new standing. Authed, idempotent, and self-scoped: the row is keyed to the caller's own org and identity, never to a body-supplied owner.
  ///
  /// Parameters:
  ///
  /// * [String] model (required):
  Future<void> postModelsByModelAccess(String model,) async {
    final response = await postModelsByModelAccessWithHttpInfo(model,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
