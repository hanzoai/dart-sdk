//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class RunApi {
  RunApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Runs a container image and gives back a URL.
  ///
  /// Runs a container image and gives back a URL.  The one-call shortcut over project → app → deploy: give it a `name` and an `image` and it creates or updates an image-source application in your org's DEFAULT project, deploys it through the same operator Service-CR writer everything else uses, and answers its id, name, live URL, status and shape. Re-running the same name UPDATES it in place, so the call is idempotent by name.  What it produces is a first-class application, not a special object: it is listable, stoppable and redeployable through the /v1/platform routes like any other app.  `minScale` is the replica floor. `maxScale` above it declares an autoscaling ceiling; `maxScale: 0` means no autoscaler at all — a fixed run at the floor. Both are clamped to the deployment's limits. `runtime` and `shape` are accepted for the client contract and echoed back: the image is the runtime unit and sizing is the operator's default.  It is BILLING-GATED before it touches the cluster: a flat per-run fee is authorized against the org's own prepaid balance first, so an org that cannot pay is refused without anything being created. An unreachable cluster is 503 — a run never reports a URL it did not create. Secret env is sealed into KMS and fails closed without it.  Requires a validated principal; 403 without one. The org is resolved from that validated identity and is what both pays and owns the namespace — it is never read from the body.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RunReq] runReq (required):
  Future<Response> postRunWithHttpInfo(RunReq runReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/run';

    // ignore: prefer_final_locals
    Object? postBody = runReq;

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

  /// Runs a container image and gives back a URL.
  ///
  /// Runs a container image and gives back a URL.  The one-call shortcut over project → app → deploy: give it a `name` and an `image` and it creates or updates an image-source application in your org's DEFAULT project, deploys it through the same operator Service-CR writer everything else uses, and answers its id, name, live URL, status and shape. Re-running the same name UPDATES it in place, so the call is idempotent by name.  What it produces is a first-class application, not a special object: it is listable, stoppable and redeployable through the /v1/platform routes like any other app.  `minScale` is the replica floor. `maxScale` above it declares an autoscaling ceiling; `maxScale: 0` means no autoscaler at all — a fixed run at the floor. Both are clamped to the deployment's limits. `runtime` and `shape` are accepted for the client contract and echoed back: the image is the runtime unit and sizing is the operator's default.  It is BILLING-GATED before it touches the cluster: a flat per-run fee is authorized against the org's own prepaid balance first, so an org that cannot pay is refused without anything being created. An unreachable cluster is 503 — a run never reports a URL it did not create. Secret env is sealed into KMS and fails closed without it.  Requires a validated principal; 403 without one. The org is resolved from that validated identity and is what both pays and owns the namespace — it is never read from the body.
  ///
  /// Parameters:
  ///
  /// * [RunReq] runReq (required):
  Future<RunView?> postRun(RunReq runReq,) async {
    final response = await postRunWithHttpInfo(runReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RunView',) as RunView;
    
    }
    return null;
  }
}
