//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class SbomApi {
  SbomApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Resolve everything inside a container image
  ///
  /// Answers with the component set of one container image — each component's name, version, type, package URL and license — addressed by either the image digest or the image ref. The captured segment is greedy and percent-decoded, so a ref carrying slashes and a tag is passed whole.  This read is GLOBAL, not tenant-scoped, and deliberately so: a bill of materials belongs to a content-addressed digest rather than to an org, so every caller deploying the same image resolves the same components, and nothing tenant-owned is exposed by it. Ingest is the gated half of the pair.  A miss is not the end of the lookup. The registry is the source of truth, so an unmaterialized ref is pulled from the SBOM attached to that image, persisted, and answered from the store — the first read of a freshly built image pays for the pull, later ones do not. A bare digest with no repository is not pullable and answers an honest 404, as does a ref with no attached document. Repeated ingests collapse to the latest, components come back ordered by type then name, and a result over 5000 components is capped with `truncated` set. When the datastore is not connected the answer is 503 rather than a fabricated empty image.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> getSbomByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sbom/{wildcard1}'
      .replaceAll('{wildcard1}', wildcard1);

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

  /// Resolve everything inside a container image
  ///
  /// Answers with the component set of one container image — each component's name, version, type, package URL and license — addressed by either the image digest or the image ref. The captured segment is greedy and percent-decoded, so a ref carrying slashes and a tag is passed whole.  This read is GLOBAL, not tenant-scoped, and deliberately so: a bill of materials belongs to a content-addressed digest rather than to an org, so every caller deploying the same image resolves the same components, and nothing tenant-owned is exposed by it. Ingest is the gated half of the pair.  A miss is not the end of the lookup. The registry is the source of truth, so an unmaterialized ref is pulled from the SBOM attached to that image, persisted, and answered from the store — the first read of a freshly built image pays for the pull, later ones do not. A bare digest with no repository is not pullable and answers an honest 404, as does a ref with no attached document. Repeated ingests collapse to the latest, components come back ordered by type then name, and a result over 5000 components is capped with `truncated` set. When the datastore is not connected the answer is 503 rather than a fabricated empty image.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> getSbomByWildcard1(String wildcard1,) async {
    final response = await getSbomByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Health is a pure liveness probe: the service is up; datastore reflects whether the datastore store is connected.
  ///
  /// Health is a pure liveness probe: the service is up; datastore reflects whether the datastore store is connected. Not JWT-gated, always 200 (a disconnected datastore is degraded-but-alive; the data endpoints report that as 503).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSbomHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sbom/health';

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

  /// Health is a pure liveness probe: the service is up; datastore reflects whether the datastore store is connected.
  ///
  /// Health is a pure liveness probe: the service is up; datastore reflects whether the datastore store is connected. Not JWT-gated, always 200 (a disconnected datastore is degraded-but-alive; the data endpoints report that as 503).
  Future<SbomHealth?> getSbomHealth() async {
    final response = await getSbomHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SbomHealth',) as SbomHealth;
    
    }
    return null;
  }

  /// Ingest persists a CycloneDX SBOM's components keyed by image digest.
  ///
  /// Ingest persists a CycloneDX SBOM's components keyed by image digest. Gated to a validated SuperAdmin (owner == AdminOrg) — the canonical cloud super-admin check, which the build fleet / CI carries. Re-ingest is idempotent: rows share the (digest, name, version, purl) ORDER BY, so ReplacingMergeTree keeps the latest by ingested_at (and resolve reads FINAL).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SbomIngest] sbomIngest (required):
  Future<Response> postSbomWithHttpInfo(SbomIngest sbomIngest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sbom';

    // ignore: prefer_final_locals
    Object? postBody = sbomIngest;

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

  /// Ingest persists a CycloneDX SBOM's components keyed by image digest.
  ///
  /// Ingest persists a CycloneDX SBOM's components keyed by image digest. Gated to a validated SuperAdmin (owner == AdminOrg) — the canonical cloud super-admin check, which the build fleet / CI carries. Re-ingest is idempotent: rows share the (digest, name, version, purl) ORDER BY, so ReplacingMergeTree keeps the latest by ingested_at (and resolve reads FINAL).
  ///
  /// Parameters:
  ///
  /// * [SbomIngest] sbomIngest (required):
  Future<SbomIngested?> postSbom(SbomIngest sbomIngest,) async {
    final response = await postSbomWithHttpInfo(sbomIngest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SbomIngested',) as SbomIngested;
    
    }
    return null;
  }
}
