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

  /// Delete a DNS zone
  ///
  /// Removes one of the calling org's zones, and the records in it, from the DNS control plane. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The address and the query string ARE the plane's own, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zone (required):
  Future<Response> deleteDnsZonesByZoneWithHttpInfo(String zone,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dns/zones/{zone}'
      .replaceAll('{zone}', zone);

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

  /// Delete a DNS zone
  ///
  /// Removes one of the calling org's zones, and the records in it, from the DNS control plane. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The address and the query string ARE the plane's own, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Parameters:
  ///
  /// * [String] zone (required):
  Future<void> deleteDnsZonesByZone(String zone,) async {
    final response = await deleteDnsZonesByZoneWithHttpInfo(zone,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a DNS record
  ///
  /// Removes one record from one zone. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The address and the query string ARE the plane's own, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zone (required):
  ///
  /// * [String] record (required):
  Future<Response> deleteDnsZonesByZoneRecordsByRecordWithHttpInfo(String zone, String record,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dns/zones/{zone}/records/{record}'
      .replaceAll('{zone}', zone)
      .replaceAll('{record}', record);

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

  /// Delete a DNS record
  ///
  /// Removes one record from one zone. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The address and the query string ARE the plane's own, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Parameters:
  ///
  /// * [String] zone (required):
  ///
  /// * [String] record (required):
  Future<void> deleteDnsZonesByZoneRecordsByRecord(String zone, String record,) async {
    final response = await deleteDnsZonesByZoneRecordsByRecordWithHttpInfo(zone, record,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Check the DNS control plane
  ///
  /// Reports whether the DNS control plane is answering. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The address and the query string ARE the plane's own, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDnsHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dns/health';

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

  /// Check the DNS control plane
  ///
  /// Reports whether the DNS control plane is answering. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The address and the query string ARE the plane's own, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  Future<void> getDnsHealth() async {
    final response = await getDnsHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List your org's DNS zones
  ///
  /// Lists every DNS zone the calling org holds, authoritative and provider-backed alike. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The address and the query string ARE the plane's own, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDnsZonesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dns/zones';

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

  /// List your org's DNS zones
  ///
  /// Lists every DNS zone the calling org holds, authoritative and provider-backed alike. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The address and the query string ARE the plane's own, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  Future<void> getDnsZones() async {
    final response = await getDnsZonesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Read one DNS zone
  ///
  /// Reads one of the calling org's zones by name. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The address and the query string ARE the plane's own, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zone (required):
  Future<Response> getDnsZonesByZoneWithHttpInfo(String zone,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dns/zones/{zone}'
      .replaceAll('{zone}', zone);

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

  /// Read one DNS zone
  ///
  /// Reads one of the calling org's zones by name. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The address and the query string ARE the plane's own, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Parameters:
  ///
  /// * [String] zone (required):
  Future<void> getDnsZonesByZone(String zone,) async {
    final response = await getDnsZonesByZoneWithHttpInfo(zone,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List a zone's DNS records
  ///
  /// Lists the records in one zone. A provider-backed zone is read from the provider, which is its source of truth. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The address and the query string ARE the plane's own, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zone (required):
  Future<Response> getDnsZonesByZoneRecordsWithHttpInfo(String zone,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dns/zones/{zone}/records'
      .replaceAll('{zone}', zone);

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

  /// List a zone's DNS records
  ///
  /// Lists the records in one zone. A provider-backed zone is read from the provider, which is its source of truth. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The address and the query string ARE the plane's own, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Parameters:
  ///
  /// * [String] zone (required):
  Future<void> getDnsZonesByZoneRecords(String zone,) async {
    final response = await getDnsZonesByZoneRecordsWithHttpInfo(zone,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Read one DNS record
  ///
  /// Reads one record of one zone by its id. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The address and the query string ARE the plane's own, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zone (required):
  ///
  /// * [String] record (required):
  Future<Response> getDnsZonesByZoneRecordsByRecordWithHttpInfo(String zone, String record,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dns/zones/{zone}/records/{record}'
      .replaceAll('{zone}', zone)
      .replaceAll('{record}', record);

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

  /// Read one DNS record
  ///
  /// Reads one record of one zone by its id. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The address and the query string ARE the plane's own, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Parameters:
  ///
  /// * [String] zone (required):
  ///
  /// * [String] record (required):
  Future<void> getDnsZonesByZoneRecordsByRecord(String zone, String record,) async {
    final response = await getDnsZonesByZoneRecordsByRecordWithHttpInfo(zone, record,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Amend a DNS record
  ///
  /// Amends one record of one zone. Only the fields the body carries change; the rest keep the values they hold at the plane. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The address and the query string ARE the plane's own, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zone (required):
  ///
  /// * [String] record (required):
  Future<Response> patchDnsZonesByZoneRecordsByRecordWithHttpInfo(String zone, String record,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dns/zones/{zone}/records/{record}'
      .replaceAll('{zone}', zone)
      .replaceAll('{record}', record);

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

  /// Amend a DNS record
  ///
  /// Amends one record of one zone. Only the fields the body carries change; the rest keep the values they hold at the plane. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The address and the query string ARE the plane's own, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Parameters:
  ///
  /// * [String] zone (required):
  ///
  /// * [String] record (required):
  Future<void> patchDnsZonesByZoneRecordsByRecord(String zone, String record,) async {
    final response = await patchDnsZonesByZoneRecordsByRecordWithHttpInfo(zone, record,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Push a set of zones and records in one call
  ///
  /// Replaces the calling org's zones and their records in bulk. The owning org is the caller's own validated claim, never the body, so a sync reaches nobody else's zones. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The address and the query string ARE the plane's own, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postDnsSyncWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dns/sync';

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

  /// Push a set of zones and records in one call
  ///
  /// Replaces the calling org's zones and their records in bulk. The owning org is the caller's own validated claim, never the body, so a sync reaches nobody else's zones. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The address and the query string ARE the plane's own, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  Future<void> postDnsSync() async {
    final response = await postDnsSyncWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a DNS zone
  ///
  /// Creates a zone for the calling org — authoritative, or backed by a DNS provider the org has connected. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The address and the query string ARE the plane's own, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postDnsZonesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dns/zones';

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

  /// Create a DNS zone
  ///
  /// Creates a zone for the calling org — authoritative, or backed by a DNS provider the org has connected. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The address and the query string ARE the plane's own, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  Future<void> postDnsZones() async {
    final response = await postDnsZonesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a DNS record
  ///
  /// Creates a record in one zone. A provider-backed zone is written at the provider first, then mirrored locally so the resolver serves it. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The address and the query string ARE the plane's own, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zone (required):
  Future<Response> postDnsZonesByZoneRecordsWithHttpInfo(String zone,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dns/zones/{zone}/records'
      .replaceAll('{zone}', zone);

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

  /// Create a DNS record
  ///
  /// Creates a record in one zone. A provider-backed zone is written at the provider first, then mirrored locally so the resolver serves it. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The address and the query string ARE the plane's own, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Parameters:
  ///
  /// * [String] zone (required):
  Future<void> postDnsZonesByZoneRecords(String zone,) async {
    final response = await postDnsZonesByZoneRecordsWithHttpInfo(zone,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Amend a DNS record
  ///
  /// Amends one record of one zone. Only the fields the body carries change; this is the same partial update PATCH performs, not a replacement of the whole record. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The address and the query string ARE the plane's own, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zone (required):
  ///
  /// * [String] record (required):
  Future<Response> putDnsZonesByZoneRecordsByRecordWithHttpInfo(String zone, String record,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dns/zones/{zone}/records/{record}'
      .replaceAll('{zone}', zone)
      .replaceAll('{record}', record);

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

  /// Amend a DNS record
  ///
  /// Amends one record of one zone. Only the fields the body carries change; this is the same partial update PATCH performs, not a replacement of the whole record. The plane owns the authoritative zone and record store behind every name pointed at Hanzo; this head keeps none of it. The address and the query string ARE the plane's own, relayed verbatim, and the plane's answer comes back unchanged — its status code, its Content-Type, and its Location on a redirect this head never follows.  It travels under the CALLER'S OWN identity and substitutes no service credential, which would collapse tenants: the caller's validated session bearer goes upstream as Authorization and the server-validated org as X-Org-Id, so a caller in one org reaches only that org's zones, exactly as if it had called the plane directly. The upstream host comes only from deployment config, never from the request, so no path can re-target another host.  Fails closed before a byte leaves cloud: no validated principal is 403; an API key is 401, because a pk-/sk- key is not a JWT the OIDC-gated plane can validate and there is no substitute credential to send in its place; a path that normalizes outside /v1/dns, or still carries a percent-escape or a `..` after one decode, is 400; an unconfigured plane is 503 and an unreachable one 502.
  ///
  /// Parameters:
  ///
  /// * [String] zone (required):
  ///
  /// * [String] record (required):
  Future<void> putDnsZonesByZoneRecordsByRecord(String zone, String record,) async {
    final response = await putDnsZonesByZoneRecordsByRecordWithHttpInfo(zone, record,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
