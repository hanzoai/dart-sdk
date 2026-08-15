//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class RunnerApi {
  RunnerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Lists the self-publish releases this process has run.
  ///
  /// Lists the self-publish releases this process has run.  It lists the platform's own release runs with their current state, so a release that answered 202 with an id can be followed to its end. SuperAdmin only — this is the platform's own publishing record, not a tenant surface.  The record lives in THIS process's memory, so it covers the releases this instance started and does not survive a restart.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getRunnerReleasesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/runner/releases';

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

  /// Lists the self-publish releases this process has run.
  ///
  /// Lists the self-publish releases this process has run.  It lists the platform's own release runs with their current state, so a release that answered 202 with an id can be followed to its end. SuperAdmin only — this is the platform's own publishing record, not a tenant surface.  The record lives in THIS process's memory, so it covers the releases this instance started and does not survive a restart.
  Future<SelfReleaseList?> getRunnerReleases() async {
    final response = await getRunnerReleasesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SelfReleaseList',) as SelfReleaseList;
    
    }
    return null;
  }

  /// Returns one self-publish release by the id its 202 returned.
  ///
  /// Returns one self-publish release by the id its 202 returned.  It returns the state of one release run — which is the whole reason the trigger answers with an id, because without this a release that died in the detached pipeline would look exactly like one still in flight. SuperAdmin only.  A 404 means the id is unknown OR has aged out of this process's in-memory record. That is the honest answer either way: the process genuinely cannot tell the two apart.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the build id the release trigger answered with, from the path.
  Future<Response> getRunnerReleasesByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/runner/releases/{id}'
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

  /// Returns one self-publish release by the id its 202 returned.
  ///
  /// Returns one self-publish release by the id its 202 returned.  It returns the state of one release run — which is the whole reason the trigger answers with an id, because without this a release that died in the detached pipeline would look exactly like one still in flight. SuperAdmin only.  A 404 means the id is unknown OR has aged out of this process's in-memory record. That is the honest answer either way: the process genuinely cannot tell the two apart.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the build id the release trigger answered with, from the path.
  Future<ReleaseState?> getRunnerReleasesById(String id,) async {
    final response = await getRunnerReleasesByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReleaseState',) as ReleaseState;
    
    }
    return null;
  }

  /// Triggers a native build — an image, or the binaries a repo declares.
  ///
  /// Triggers a native build — an image, or the binaries a repo declares.  The fabric's own build trigger, and what `hanzo build`, git-push-to-deploy and cloud's own self-release all call. It answers 202 with the build job id: a queued build, not a pushed artifact.  Two lanes, and a build is exactly one of them. The IMAGE lane takes `repo` and the output `image` and launches a BuildKit Job that pushes it. The ARTIFACT lane takes `binaries` — the same recipe the repo's hanzo.yml declares — and publishes to object storage instead; it must carry no `image`, because a build produces binaries or an image, never both. `release: true` is the third mode: cloud self-publishing its own image, version computed, built, smoke-tested, tagged and announced.  PRIVILEGED, with exactly two credentials and never a third: the shared build-callback token compared in constant time — the machine path, which a user never holds — or a validated IAM principal who is an ADMIN of their org, which is the `hanzo build` user path and means one IAM login authorizes a build with no separate build token. A plain member is refused.  Both paths are bounded the same way: the output must push to a registry the fabric owns, and on the IAM path the image's registry namespace must MATCH the caller's own validated org — so an org admin can only publish into their own brand and can never overwrite another's through the shared push credential. The same confinement applies to the artifact lane's repo owner.  `release: true` is the exception, and takes SUPERADMIN. It publishes the platform's own image — the binary the whole fleet runs — so what it lands reaches every org at the next reconcile, and no role inside the caller's own org can authorize that. An org admin is refused however the registry namespace lines up, and the build token, which carries no identity at all, may enqueue an ordinary build but never a release.  The output image is parsed and validated as a single well-formed OCI ref before any authorization decision reads it, so a crafted ref cannot smuggle a build-exporter attribute past the check.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RunnerBuildReq] runnerBuildReq (required):
  Future<Response> postRunnerWithHttpInfo(RunnerBuildReq runnerBuildReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/runner';

    // ignore: prefer_final_locals
    Object? postBody = runnerBuildReq;

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

  /// Triggers a native build — an image, or the binaries a repo declares.
  ///
  /// Triggers a native build — an image, or the binaries a repo declares.  The fabric's own build trigger, and what `hanzo build`, git-push-to-deploy and cloud's own self-release all call. It answers 202 with the build job id: a queued build, not a pushed artifact.  Two lanes, and a build is exactly one of them. The IMAGE lane takes `repo` and the output `image` and launches a BuildKit Job that pushes it. The ARTIFACT lane takes `binaries` — the same recipe the repo's hanzo.yml declares — and publishes to object storage instead; it must carry no `image`, because a build produces binaries or an image, never both. `release: true` is the third mode: cloud self-publishing its own image, version computed, built, smoke-tested, tagged and announced.  PRIVILEGED, with exactly two credentials and never a third: the shared build-callback token compared in constant time — the machine path, which a user never holds — or a validated IAM principal who is an ADMIN of their org, which is the `hanzo build` user path and means one IAM login authorizes a build with no separate build token. A plain member is refused.  Both paths are bounded the same way: the output must push to a registry the fabric owns, and on the IAM path the image's registry namespace must MATCH the caller's own validated org — so an org admin can only publish into their own brand and can never overwrite another's through the shared push credential. The same confinement applies to the artifact lane's repo owner.  `release: true` is the exception, and takes SUPERADMIN. It publishes the platform's own image — the binary the whole fleet runs — so what it lands reaches every org at the next reconcile, and no role inside the caller's own org can authorize that. An org admin is refused however the registry namespace lines up, and the build token, which carries no identity at all, may enqueue an ordinary build but never a release.  The output image is parsed and validated as a single well-formed OCI ref before any authorization decision reads it, so a crafted ref cannot smuggle a build-exporter attribute past the check.
  ///
  /// Parameters:
  ///
  /// * [RunnerBuildReq] runnerBuildReq (required):
  Future<RunnerBuildResp?> postRunner(RunnerBuildReq runnerBuildReq,) async {
    final response = await postRunnerWithHttpInfo(runnerBuildReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RunnerBuildResp',) as RunnerBuildResp;
    
    }
    return null;
  }
}
