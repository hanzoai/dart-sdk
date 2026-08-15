//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class GatewayApi {
  GatewayApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Report who is calling this org's API right now
  ///
  /// Traffic reports who is calling this organization's API right now: the request count for the last minute split by AGENCY LANE — agent, human, bot, unknown — and the busiest callers behind it, each with its request count, its authentication-failure count, how many distinct paths it touched, and any verdict currently held against it.  The lane split is the answer to the question a generic bot filter cannot answer: which of this traffic is the customer's own automation and which is somebody working through a list. It is computed from credentials we issued, not from the client's self-description, so a scraper cannot move itself into the agent lane by editing a header.  A validated caller appears as a FINGERPRINT — a one-way, per-process digest. It is stable enough to recognise the same caller across a minute and cannot be turned back into a key, so this report is safe to read, screenshot and paste.  It also reports what the sensor's own ceilings are doing (strain, tracked, ceiling, refused) and how many screens the scorer did not answer (unscored), so a control that has stopped measuring or a judge that has stopped answering is a number here rather than a quiet day.  Scoped to the caller's own validated organization. A SuperAdmin may inspect a specific tenant with ?org=<slug>, or the lane that has no tenant — every caller the identity boundary could not validate — with an empty ?org=.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> gatewayTrafficWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/gateway/traffic';

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

  /// Report who is calling this org's API right now
  ///
  /// Traffic reports who is calling this organization's API right now: the request count for the last minute split by AGENCY LANE — agent, human, bot, unknown — and the busiest callers behind it, each with its request count, its authentication-failure count, how many distinct paths it touched, and any verdict currently held against it.  The lane split is the answer to the question a generic bot filter cannot answer: which of this traffic is the customer's own automation and which is somebody working through a list. It is computed from credentials we issued, not from the client's self-description, so a scraper cannot move itself into the agent lane by editing a header.  A validated caller appears as a FINGERPRINT — a one-way, per-process digest. It is stable enough to recognise the same caller across a minute and cannot be turned back into a key, so this report is safe to read, screenshot and paste.  It also reports what the sensor's own ceilings are doing (strain, tracked, ceiling, refused) and how many screens the scorer did not answer (unscored), so a control that has stopped measuring or a judge that has stopped answering is a number here rather than a quiet day.  Scoped to the caller's own validated organization. A SuperAdmin may inspect a specific tenant with ?org=<slug>, or the lane that has no tenant — every caller the identity boundary could not validate — with an empty ?org=.
  Future<TrafficView?> gatewayTraffic() async {
    final response = await gatewayTrafficWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TrafficView',) as TrafficView;
    
    }
    return null;
  }

  /// Read returns the EFFECTIVE edge policy the caller is subject to: the platform CORS allowlist and pre-auth per-IP flood cap in force, plus the caller's own authenticated rate ceiling, edge-cache TTLs and accepted-method allowlist.
  ///
  /// Read returns the EFFECTIVE edge policy the caller is subject to: the platform CORS allowlist and pre-auth per-IP flood cap in force, plus the caller's own authenticated rate ceiling, edge-cache TTLs and accepted-method allowlist. A SuperAdmin may inspect a specific tenant's effective policy with ?org=<slug>.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getGatewayConfigWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/gateway/config';

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

  /// Read returns the EFFECTIVE edge policy the caller is subject to: the platform CORS allowlist and pre-auth per-IP flood cap in force, plus the caller's own authenticated rate ceiling, edge-cache TTLs and accepted-method allowlist.
  ///
  /// Read returns the EFFECTIVE edge policy the caller is subject to: the platform CORS allowlist and pre-auth per-IP flood cap in force, plus the caller's own authenticated rate ceiling, edge-cache TTLs and accepted-method allowlist. A SuperAdmin may inspect a specific tenant's effective policy with ?org=<slug>.
  Future<Policy?> getGatewayConfig() async {
    final response = await getGatewayConfigWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Policy',) as Policy;
    
    }
    return null;
  }

  /// Write updates one policy scope and returns the policy in force after the write.
  ///
  /// Write updates one policy scope and returns the policy in force after the write. A body carrying any PLATFORM field (cors_origins, per_ip_rpm, window_sec) is a platform write and requires SuperAdmin; otherwise it is a per-org write (org_rpm, cache_ttl_sec, cache_paths, methods) scoped to the caller's own org — or, for a SuperAdmin, the tenant named by ?org=<slug>. A body that sets nothing is a 400. The abuse gate's mode is an OPERATOR field: setting it requires SuperAdmin, whichever organization it lands on. updated_at and updated_by are server-stamped; a client-supplied value is ignored.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Policy] policy (required):
  Future<Response> putGatewayConfigWithHttpInfo(Policy policy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/gateway/config';

    // ignore: prefer_final_locals
    Object? postBody = policy;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Write updates one policy scope and returns the policy in force after the write.
  ///
  /// Write updates one policy scope and returns the policy in force after the write. A body carrying any PLATFORM field (cors_origins, per_ip_rpm, window_sec) is a platform write and requires SuperAdmin; otherwise it is a per-org write (org_rpm, cache_ttl_sec, cache_paths, methods) scoped to the caller's own org — or, for a SuperAdmin, the tenant named by ?org=<slug>. A body that sets nothing is a 400. The abuse gate's mode is an OPERATOR field: setting it requires SuperAdmin, whichever organization it lands on. updated_at and updated_by are server-stamped; a client-supplied value is ignored.
  ///
  /// Parameters:
  ///
  /// * [Policy] policy (required):
  Future<Policy?> putGatewayConfig(Policy policy,) async {
    final response = await putGatewayConfigWithHttpInfo(policy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Policy',) as Policy;
    
    }
    return null;
  }
}
