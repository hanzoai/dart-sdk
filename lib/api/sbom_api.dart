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
