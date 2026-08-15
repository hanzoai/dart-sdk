//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class DnsApi {
  DnsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete a DNS zone or record
  ///
  /// Removes a DNS zone or record from the Hanzo DNS control plane. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The sub-path after /v1/dns and the query string ARE the plane's own API address, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> deleteDnsByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dns/{wildcard1}'
      .replaceAll('{wildcard1}', wildcard1);

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

  /// Delete a DNS zone or record
  ///
  /// Removes a DNS zone or record from the Hanzo DNS control plane. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The sub-path after /v1/dns and the query string ARE the plane's own API address, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> deleteDnsByWildcard1(String wildcard1,) async {
    final response = await deleteDnsByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Read your org's DNS zones and records
  ///
  /// Reads DNS state — a zone, a record, a listing — from the Hanzo DNS control plane. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The sub-path after /v1/dns and the query string ARE the plane's own API address, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> getDnsByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dns/{wildcard1}'
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

  /// Read your org's DNS zones and records
  ///
  /// Reads DNS state — a zone, a record, a listing — from the Hanzo DNS control plane. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The sub-path after /v1/dns and the query string ARE the plane's own API address, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> getDnsByWildcard1(String wildcard1,) async {
    final response = await getDnsByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Amend a DNS zone or record
  ///
  /// Amends a DNS zone or record on the Hanzo DNS control plane. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The sub-path after /v1/dns and the query string ARE the plane's own API address, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> patchDnsByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dns/{wildcard1}'
      .replaceAll('{wildcard1}', wildcard1);

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

  /// Amend a DNS zone or record
  ///
  /// Amends a DNS zone or record on the Hanzo DNS control plane. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The sub-path after /v1/dns and the query string ARE the plane's own API address, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> patchDnsByWildcard1(String wildcard1,) async {
    final response = await patchDnsByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a DNS zone or record
  ///
  /// Creates DNS state — a zone, a record — on the Hanzo DNS control plane. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The sub-path after /v1/dns and the query string ARE the plane's own API address, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> postDnsByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dns/{wildcard1}'
      .replaceAll('{wildcard1}', wildcard1);

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

  /// Create a DNS zone or record
  ///
  /// Creates DNS state — a zone, a record — on the Hanzo DNS control plane. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The sub-path after /v1/dns and the query string ARE the plane's own API address, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> postDnsByWildcard1(String wildcard1,) async {
    final response = await postDnsByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a DNS zone or record
  ///
  /// Replaces a DNS zone or record on the Hanzo DNS control plane. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The sub-path after /v1/dns and the query string ARE the plane's own API address, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> putDnsByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dns/{wildcard1}'
      .replaceAll('{wildcard1}', wildcard1);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Replace a DNS zone or record
  ///
  /// Replaces a DNS zone or record on the Hanzo DNS control plane. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The sub-path after /v1/dns and the query string ARE the plane's own API address, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> putDnsByWildcard1(String wildcard1,) async {
    final response = await putDnsByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
