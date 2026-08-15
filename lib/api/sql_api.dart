//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class SqlApi {
  SqlApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// DropSQL deprovisions one Hanzo SQL database.
  ///
  /// DropSQL deprovisions one Hanzo SQL database. It reverts any app instance bound to it back to Base BEFORE tearing down the org's dedicated Postgres instance — never a live app pointed at a deleted backend — then deletes the sealed credential and removes the metadata row. Answers 204 with no body; a second call is a 404, not a second delete.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<Response> deleteSqlByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sql/{name}'
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

  /// DropSQL deprovisions one Hanzo SQL database.
  ///
  /// DropSQL deprovisions one Hanzo SQL database. It reverts any app instance bound to it back to Base BEFORE tearing down the org's dedicated Postgres instance — never a live app pointed at a deleted backend — then deletes the sealed credential and removes the metadata row. Answers 204 with no body; a second call is a 404, not a second delete.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<void> deleteSqlByName(String name,) async {
    final response = await deleteSqlByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// ListSQL lists the caller org's Hanzo SQL databases.
  ///
  /// ListSQL lists the caller org's Hanzo SQL databases. Each one is a DEDICATED PostgreSQL instance the org alone runs, so the host is that instance's own in-cluster Service and the port is 5432.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSqlWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sql';

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

  /// ListSQL lists the caller org's Hanzo SQL databases.
  ///
  /// ListSQL lists the caller org's Hanzo SQL databases. Each one is a DEDICATED PostgreSQL instance the org alone runs, so the host is that instance's own in-cluster Service and the port is 5432.
  Future<List<ProvisionedSummary>?> getSql() async {
    final response = await getSqlWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ProvisionedSummary>') as List)
        .cast<ProvisionedSummary>()
        .toList(growable: false);

    }
    return null;
  }

  /// GetSQL returns one Hanzo SQL database's metadata.
  ///
  /// GetSQL returns one Hanzo SQL database's metadata. It carries the database's status, its instance address and the admin user Postgres booted with — never the password, which is returned once at create and otherwise lives only in Hanzo KMS. A still-booting instance reads \"provisioning\", reconciled from the operator's live view rather than from the row.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<Response> getSqlByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sql/{name}'
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

  /// GetSQL returns one Hanzo SQL database's metadata.
  ///
  /// GetSQL returns one Hanzo SQL database's metadata. It carries the database's status, its instance address and the admin user Postgres booted with — never the password, which is returned once at create and otherwise lives only in Hanzo KMS. A still-booting instance reads \"provisioning\", reconciled from the operator's live view rather than from the row.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the resource's org-unique slug, from the path. Lower-cased and trimmed before lookup, exactly as it was at create.
  Future<ProvisionedResource?> getSqlByName(String name,) async {
    final response = await getSqlByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProvisionedResource',) as ProvisionedResource;
    
    }
    return null;
  }

  /// Provision a PostgreSQL database for your org
  ///
  /// Launches your org's OWN PostgreSQL instance and answers with its `postgres://` connection string. The instance is yours alone: a deployment in your own tenant namespace, so its admin credential is naturally scoped to you and no other tenant shares the process. Off-cluster, where there is no orchestrator to launch one, this fails closed with 503 rather than handing back a shared one.  `name` is the org-unique slug every physical name derives from, and must match ^[a-z0-9]([a-z0-9-]{0,38}[a-z0-9])?$. `instance` optionally BINDS the add-on to one of your app instances: the DSN is injected into that instance's addons secret as <KIND>_URL, switching the app off its built-in store and onto this one. Omit it and the connection string is yours to wire.  THE CREDENTIAL COMES BACK ONCE. The connection string and password are in this response and nowhere else — every read beside it omits the password — so a caller that does not keep them has to provision again. Where KMS is configured the password is sealed there and only a reference is persisted; where it is not, it is returned this once and stored nowhere. It is never held in plaintext.  Scoped to the caller's validated org (403 without one), which also namespaces the physical resource under a fixed-width hash, so two tenants can never fold onto one backend resource — a residual collision fails closed with 409 rather than silently sharing. A name already taken in your org is 409; an invalid name or instance slug is 400; a backend that refuses the create is 502. Where a later step fails after the backend resource already exists, it is torn back down rather than left orphaned.  Billing is gated BEFORE anything is created: an unfunded org — or, in the fail-closed default, an unreachable meter — gets the fleet-wide 402/503 and nothing is provisioned. The fee is per-kind and set by the deployment.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProvisionRequest] provisionRequest:
  Future<Response> postSqlWithHttpInfo({ ProvisionRequest? provisionRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sql';

    // ignore: prefer_final_locals
    Object? postBody = provisionRequest;

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

  /// Provision a PostgreSQL database for your org
  ///
  /// Launches your org's OWN PostgreSQL instance and answers with its `postgres://` connection string. The instance is yours alone: a deployment in your own tenant namespace, so its admin credential is naturally scoped to you and no other tenant shares the process. Off-cluster, where there is no orchestrator to launch one, this fails closed with 503 rather than handing back a shared one.  `name` is the org-unique slug every physical name derives from, and must match ^[a-z0-9]([a-z0-9-]{0,38}[a-z0-9])?$. `instance` optionally BINDS the add-on to one of your app instances: the DSN is injected into that instance's addons secret as <KIND>_URL, switching the app off its built-in store and onto this one. Omit it and the connection string is yours to wire.  THE CREDENTIAL COMES BACK ONCE. The connection string and password are in this response and nowhere else — every read beside it omits the password — so a caller that does not keep them has to provision again. Where KMS is configured the password is sealed there and only a reference is persisted; where it is not, it is returned this once and stored nowhere. It is never held in plaintext.  Scoped to the caller's validated org (403 without one), which also namespaces the physical resource under a fixed-width hash, so two tenants can never fold onto one backend resource — a residual collision fails closed with 409 rather than silently sharing. A name already taken in your org is 409; an invalid name or instance slug is 400; a backend that refuses the create is 502. Where a later step fails after the backend resource already exists, it is torn back down rather than left orphaned.  Billing is gated BEFORE anything is created: an unfunded org — or, in the fail-closed default, an unreachable meter — gets the fleet-wide 402/503 and nothing is provisioned. The fee is per-kind and set by the deployment.
  ///
  /// Parameters:
  ///
  /// * [ProvisionRequest] provisionRequest:
  Future<ProvisionResult?> postSql({ ProvisionRequest? provisionRequest, }) async {
    final response = await postSqlWithHttpInfo( provisionRequest: provisionRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProvisionResult',) as ProvisionResult;
    
    }
    return null;
  }
}
