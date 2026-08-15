//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class TrafficApi {
  TrafficApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns the PUBLIC live request-geo aggregate for the world.hanzo.ai \"Hanzo mode\" globe: WHERE requests to api.hanzo.ai are coming from, as country/region points with per-service-class counts, plus headline throughput rates.
  ///
  /// Returns the PUBLIC live request-geo aggregate for the world.hanzo.ai \"Hanzo mode\" globe: WHERE requests to api.hanzo.ai are coming from, as country/region points with per-service-class counts, plus headline throughput rates.  It is AUTH-exempt and BALANCE-exempt exactly like /v1/router/stats?scope=platform:   - auth: the controller name \"traffic/globe\" is neither a get-/update- CRUD name     nor a super-admin/present-credential endpoint, so the authz filter passes it     through, and this handler requires no principal.   - balance: isBalanceExempt(\"/v1/traffic/...\") returns true.  It exposes ONLY aggregates — counts, rates, and country/region centroids — and NEVER any IP, per-request row, org, or user dimension (see object/traffic.go). Marketing telemetry; nothing sensitive.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTrafficGlobeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/traffic/globe';

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

  /// Returns the PUBLIC live request-geo aggregate for the world.hanzo.ai \"Hanzo mode\" globe: WHERE requests to api.hanzo.ai are coming from, as country/region points with per-service-class counts, plus headline throughput rates.
  ///
  /// Returns the PUBLIC live request-geo aggregate for the world.hanzo.ai \"Hanzo mode\" globe: WHERE requests to api.hanzo.ai are coming from, as country/region points with per-service-class counts, plus headline throughput rates.  It is AUTH-exempt and BALANCE-exempt exactly like /v1/router/stats?scope=platform:   - auth: the controller name \"traffic/globe\" is neither a get-/update- CRUD name     nor a super-admin/present-credential endpoint, so the authz filter passes it     through, and this handler requires no principal.   - balance: isBalanceExempt(\"/v1/traffic/...\") returns true.  It exposes ONLY aggregates — counts, rates, and country/region centroids — and NEVER any IP, per-request row, org, or user dimension (see object/traffic.go). Marketing telemetry; nothing sensitive.
  Future<void> getTrafficGlobe() async {
    final response = await getTrafficGlobeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
