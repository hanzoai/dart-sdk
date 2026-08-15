//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class MlApi {
  MlApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Deletes a deployed inference model.
  ///
  /// Deletes a deployed inference model. kserve owns the teardown: the InferenceService goes away and the serving deployment behind it follows, so the model stops answering predict calls. Answers 204, or 404 for a name the caller's org does not own.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource to act on, taken from the path. Lower-cased and trimmed to the DNS-1123 label a CustomResource's metadata.name must be.
  Future<Response> deleteMlModelsByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ml/models/{name}'
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

  /// Deletes a deployed inference model.
  ///
  /// Deletes a deployed inference model. kserve owns the teardown: the InferenceService goes away and the serving deployment behind it follows, so the model stops answering predict calls. Answers 204, or 404 for a name the caller's org does not own.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource to act on, taken from the path. Lower-cased and trimmed to the DNS-1123 label a CustomResource's metadata.name must be.
  Future<void> deleteMlModelsByName(String name,) async {
    final response = await deleteMlModelsByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Whether model serving can actually work right now
  ///
  /// Reports whether the model-serving plane is genuinely usable: that the Kubernetes API answers, that the InferenceService CRD is actually served by this cluster, and that the cluster holds at least one serving runtime to run a model ON. It is a REAL probe, not status theatre — it makes a live call rather than reporting a flag set at boot.  200 only when everything checks out. Otherwise 503 CARRYING THE REPORT — which component failed, and the real error — and that body is the reason this is not a typed op: a typed op reaches a non-2xx by returning an error, and the envelope that produces would drop exactly the detail the probe exists to deliver.  The runtime count is reported as its own field and is a SEPARATE fact from the CRD being served: a cluster with the CRD but no runtime accepts a deploy and then never schedules it, so reporting only the CRD would answer 200 while every model hangs. A runtime list this service cannot read reports the read error instead of a count, because a missing grant is a broken probe and not an empty cluster.  It answers about the cluster, not about a tenant, so it takes no org and reveals no tenant data. A cluster with no kserve CRD reports degraded honestly rather than failing later at the first deploy.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMlHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ml/health';

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

  /// Whether model serving can actually work right now
  ///
  /// Reports whether the model-serving plane is genuinely usable: that the Kubernetes API answers, that the InferenceService CRD is actually served by this cluster, and that the cluster holds at least one serving runtime to run a model ON. It is a REAL probe, not status theatre — it makes a live call rather than reporting a flag set at boot.  200 only when everything checks out. Otherwise 503 CARRYING THE REPORT — which component failed, and the real error — and that body is the reason this is not a typed op: a typed op reaches a non-2xx by returning an error, and the envelope that produces would drop exactly the detail the probe exists to deliver.  The runtime count is reported as its own field and is a SEPARATE fact from the CRD being served: a cluster with the CRD but no runtime accepts a deploy and then never schedules it, so reporting only the CRD would answer 200 while every model hangs. A runtime list this service cannot read reports the read error instead of a count, because a missing grant is a broken probe and not an empty cluster.  It answers about the cluster, not about a tenant, so it takes no org and reveals no tenant data. A cluster with no kserve CRD reports degraded honestly rather than failing later at the first deploy.
  Future<void> getMlHealth() async {
    final response = await getMlHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists the inference models deployed in the caller's org.
  ///
  /// Lists the inference models deployed in the caller's org. Each entry carries the model's name, when Kubernetes admitted it, and kserve's live status — the spec is on the single-model read. An org that has deployed nothing gets an empty list.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMlModelsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ml/models';

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

  /// Lists the inference models deployed in the caller's org.
  ///
  /// Lists the inference models deployed in the caller's org. Each entry carries the model's name, when Kubernetes admitted it, and kserve's live status — the spec is on the single-model read. An org that has deployed nothing gets an empty list.
  Future<MlResourceList?> getMlModels() async {
    final response = await getMlModelsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MlResourceList',) as MlResourceList;
    
    }
    return null;
  }

  /// Returns one deployed inference model.
  ///
  /// Returns one deployed inference model. Its spec comes with it, and kserve's live status, which is where readiness and the serving address appear. A name the caller's org does not own answers 404, exactly as an unknown name does, so a probe learns nothing about another tenant's models.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource to act on, taken from the path. Lower-cased and trimmed to the DNS-1123 label a CustomResource's metadata.name must be.
  Future<Response> getMlModelsByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ml/models/{name}'
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

  /// Returns one deployed inference model.
  ///
  /// Returns one deployed inference model. Its spec comes with it, and kserve's live status, which is where readiness and the serving address appear. A name the caller's org does not own answers 404, exactly as an unknown name does, so a probe learns nothing about another tenant's models.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource to act on, taken from the path. Lower-cased and trimmed to the DNS-1123 label a CustomResource's metadata.name must be.
  Future<MlResource?> getMlModelsByName(String name,) async {
    final response = await getMlModelsByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MlResource',) as MlResource;
    
    }
    return null;
  }

  /// Change a deployed model in place
  ///
  /// Applies a JSON merge patch to one of the caller org's deployed models and answers the updated resource — the way to change a model's image, replica count or resource requests without tearing the deployment down.  The body is relayed to Kubernetes VERBATIM. That is deliberate and it is why this route is not a typed op: re-encoding a merge patch changes what it means, because an integer that round-trips through a generic decoder comes back a float. Merge-patch semantics apply as written — a null removes a field, and a list is replaced whole rather than merged.  Scoped to the caller's own tenant namespace, resolved from the validated org and project; a name the caller's tenant does not hold is a 404, never another tenant's resource. An empty body is refused, and a patch Kubernetes rejects comes back 422 with its reason rather than being silently dropped.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<Response> patchMlModelsByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ml/models/{name}'
      .replaceAll('{name}', name);

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

  /// Change a deployed model in place
  ///
  /// Applies a JSON merge patch to one of the caller org's deployed models and answers the updated resource — the way to change a model's image, replica count or resource requests without tearing the deployment down.  The body is relayed to Kubernetes VERBATIM. That is deliberate and it is why this route is not a typed op: re-encoding a merge patch changes what it means, because an integer that round-trips through a generic decoder comes back a float. Merge-patch semantics apply as written — a null removes a field, and a list is replaced whole rather than merged.  Scoped to the caller's own tenant namespace, resolved from the validated org and project; a name the caller's tenant does not hold is a 404, never another tenant's resource. An empty body is refused, and a patch Kubernetes rejects comes back 422 with its reason rather than being silently dropped.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<void> patchMlModelsByName(String name,) async {
    final response = await patchMlModelsByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deploy an inference model
  ///
  /// Deploys a model into the caller's own tenant namespace and answers the created resource, 201. The spec is the kserve InferenceService spec, relayed as given, so anything kserve serves is deployable here without this layer knowing what it is.  THE BALANCE GATE RUNS FIRST, before a namespace or a resource exists, so an unfunded org cannot start GPU compute and then be billed for it. It fails CLOSED: a commerce that cannot be reached refuses rather than admits. The refusal carries the fleet's nested error body — the 402 shape a funded-balance client already parses — which is precisely why this route is not a typed op. On success the submission fee is debited from the caller org's own ledger, asynchronously and best-effort; ongoing GPU-hour cost is metered elsewhere.  The tenant namespace is derived from the VALIDATED org and project — never from a field — and the mapping is injective in both, so two tenants can never land in one namespace. An unvalidated caller is refused before any of that. The name must be a DNS-1123 label; a name already taken in the tenant's namespace is a 409.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postMlModelsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ml/models';

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

  /// Deploy an inference model
  ///
  /// Deploys a model into the caller's own tenant namespace and answers the created resource, 201. The spec is the kserve InferenceService spec, relayed as given, so anything kserve serves is deployable here without this layer knowing what it is.  THE BALANCE GATE RUNS FIRST, before a namespace or a resource exists, so an unfunded org cannot start GPU compute and then be billed for it. It fails CLOSED: a commerce that cannot be reached refuses rather than admits. The refusal carries the fleet's nested error body — the 402 shape a funded-balance client already parses — which is precisely why this route is not a typed op. On success the submission fee is debited from the caller org's own ledger, asynchronously and best-effort; ongoing GPU-hour cost is metered elsewhere.  The tenant namespace is derived from the VALIDATED org and project — never from a field — and the mapping is injective in both, so two tenants can never land in one namespace. An unvalidated caller is refused before any of that. The name must be a DNS-1123 label; a name already taken in the tenant's namespace is a 409.
  Future<void> postMlModels() async {
    final response = await postMlModelsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Run inference against one of your deployed models
  ///
  /// Sends the request body to the named model's predictor and answers the predictor's reply — its status code, its body bytes and its Content-Type, all unchanged. This is the inference call itself, not a description of one.  VERBATIM IS THE CONTRACT, and it is why this route is not a typed op: a model-side error has to surface as the model's own error, not as this layer's paraphrase of it. The body shape is the kserve v2 inference protocol's, which means the runtime decides it, not this API. The v2 model name defaults to the resource name — kserve's single-model convention — and a multi-model runtime selects one with the `model` query parameter.  A model that exists but has no serving address yet answers 503 'not ready' rather than a confusing connection error: deployed is not the same as serving. Scoped to the caller's own tenant namespace from the validated org and project, so a name another tenant owns is simply a 404. The predictor's response body is read up to a fixed ceiling.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<Response> postMlModelsByNamePredictWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ml/models/{name}/predict'
      .replaceAll('{name}', name);

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

  /// Run inference against one of your deployed models
  ///
  /// Sends the request body to the named model's predictor and answers the predictor's reply — its status code, its body bytes and its Content-Type, all unchanged. This is the inference call itself, not a description of one.  VERBATIM IS THE CONTRACT, and it is why this route is not a typed op: a model-side error has to surface as the model's own error, not as this layer's paraphrase of it. The body shape is the kserve v2 inference protocol's, which means the runtime decides it, not this API. The v2 model name defaults to the resource name — kserve's single-model convention — and a multi-model runtime selects one with the `model` query parameter.  A model that exists but has no serving address yet answers 503 'not ready' rather than a confusing connection error: deployed is not the same as serving. Scoped to the caller's own tenant namespace from the validated org and project, so a name another tenant owns is simply a 404. The predictor's response body is read up to a fixed ceiling.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<void> postMlModelsByNamePredict(String name,) async {
    final response = await postMlModelsByNamePredictWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
