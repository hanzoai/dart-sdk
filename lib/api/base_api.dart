//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class BaseApi {
  BaseApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Lists every Base the caller can reach, one per org their token carries.
  ///
  /// Lists every Base the caller can reach, one per org their token carries.  The orgs come from IAM's signed membership set, so the list is exactly the orgs the caller is a member of and cannot be widened by asking. It is the account-wide view: a Base is per org, so this is one entry per org and there is nothing to page.  A caller with no membership set — a machine credential, an API key — reaches no Base and receives an empty list rather than a refusal, because holding no membership is an answer and not a failure.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBaseBasesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/base/bases';

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

  /// Lists every Base the caller can reach, one per org their token carries.
  ///
  /// Lists every Base the caller can reach, one per org their token carries.  The orgs come from IAM's signed membership set, so the list is exactly the orgs the caller is a member of and cannot be widened by asking. It is the account-wide view: a Base is per org, so this is one entry per org and there is nothing to page.  A caller with no membership set — a machine credential, an API key — reaches no Base and receives an empty list rather than a refusal, because holding no membership is an answer and not a failure.
  Future<List<BaseView>?> getBaseBases() async {
    final response = await getBaseBasesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<BaseView>') as List)
        .cast<BaseView>()
        .toList(growable: false);

    }
    return null;
  }

  /// Describes ONE org's Base — whether its store exists, and what it occupies.
  ///
  /// Describes ONE org's Base — whether its store exists, and what it occupies.  The org must be one the caller's token carries; any other is not found, so this cannot be used to learn which orgs exist. That check is the same membership set the listing is built from, which is why the two can never disagree about what a caller may see.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///   Org is the org whose Base to describe, from the path. An org the caller's token does not carry is not found — the same answer a nonexistent one gets, so the listing cannot be used to discover which orgs exist.
  Future<Response> getBaseBasesByOrgWithHttpInfo(String org,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/base/bases/{org}'
      .replaceAll('{org}', org);

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

  /// Describes ONE org's Base — whether its store exists, and what it occupies.
  ///
  /// Describes ONE org's Base — whether its store exists, and what it occupies.  The org must be one the caller's token carries; any other is not found, so this cannot be used to learn which orgs exist. That check is the same membership set the listing is built from, which is why the two can never disagree about what a caller may see.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///   Org is the org whose Base to describe, from the path. An org the caller's token does not carry is not found — the same answer a nonexistent one gets, so the listing cannot be used to discover which orgs exist.
  Future<BaseView?> getBaseBasesByOrg(String org,) async {
    final response = await getBaseBasesByOrgWithHttpInfo(org,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BaseView',) as BaseView;
    
    }
    return null;
  }

  /// Reports that the base subsystem is serving.
  ///
  /// Reports that the base subsystem is serving.  It is deliberately INDEPENDENT of whether this deployment actually embeds the Base engine: the route answers before the CLOUD_BASE_EMBED gate and before the /v1/base/_* wildcard, so a liveness probe measures the process rather than an optional feature, and the wildcard can never shadow it. It reads no tenant, so a prober that sends no principal is answered rather than refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBaseHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/base/health';

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

  /// Reports that the base subsystem is serving.
  ///
  /// Reports that the base subsystem is serving.  It is deliberately INDEPENDENT of whether this deployment actually embeds the Base engine: the route answers before the CLOUD_BASE_EMBED gate and before the /v1/base/_* wildcard, so a liveness probe measures the process rather than an optional feature, and the wildcard can never shadow it. It reads no tenant, so a prober that sends no principal is answered rather than refused.
  Future<BaseHealth?> getBaseHealth() async {
    final response = await getBaseHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BaseHealth',) as BaseHealth;
    
    }
    return null;
  }
}
