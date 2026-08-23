//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class PlatformApi {
  PlatformApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Deletes an application and tears down what it runs.
  ///
  /// Deletes an application and tears down what it runs.  It removes the application record and tears down what it owns in the org's tenant namespace — its operator Service CR and its KMSSecret — then answers 204. An app this org and project do not have is 404, never a silent success.  Teardown is best-effort by design: a cluster that refuses or is unreachable does not block the delete, so the record cannot be left orphaned behind a broken cluster; the failure is logged for operators and the orphan reaper reconciles it. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  Future<Response> deletePlatformProjectsByProjectAppsByAppWithHttpInfo(String project, String app,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/projects/{project}/apps/{app}'
      .replaceAll('{project}', project)
      .replaceAll('{app}', app);

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

  /// Deletes an application and tears down what it runs.
  ///
  /// Deletes an application and tears down what it runs.  It removes the application record and tears down what it owns in the org's tenant namespace — its operator Service CR and its KMSSecret — then answers 204. An app this org and project do not have is 404, never a silent success.  Teardown is best-effort by design: a cluster that refuses or is unreachable does not block the delete, so the record cannot be left orphaned behind a broken cluster; the failure is logged for operators and the orphan reaper reconciles it. Requires a validated principal; 403 without one.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  Future<void> deletePlatformProjectsByProjectAppsByApp(String project, String app,) async {
    final response = await deletePlatformProjectsByProjectAppsByAppWithHttpInfo(project, app,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Detaches a hostname and releases the claim.
  ///
  /// Detaches a hostname and releases the claim.  It drops the host from the app's ingress and releases any custom claim on it, so the name becomes claimable again — by this org or any other. Answers 204.  The default host is permanent and cannot be removed: that is 400, not 404. A host that is neither attached nor claimed here is 404. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  ///
  /// * [String] host (required):
  ///   Host is the hostname, from the path.
  Future<Response> deletePlatformProjectsByProjectAppsByAppDomainsByHostWithHttpInfo(String project, String app, String host,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/projects/{project}/apps/{app}/domains/{host}'
      .replaceAll('{project}', project)
      .replaceAll('{app}', app)
      .replaceAll('{host}', host);

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

  /// Detaches a hostname and releases the claim.
  ///
  /// Detaches a hostname and releases the claim.  It drops the host from the app's ingress and releases any custom claim on it, so the name becomes claimable again — by this org or any other. Answers 204.  The default host is permanent and cannot be removed: that is 400, not 404. A host that is neither attached nor claimed here is 404. Requires a validated principal; 403 without one.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  ///
  /// * [String] host (required):
  ///   Host is the hostname, from the path.
  Future<void> deletePlatformProjectsByProjectAppsByAppDomainsByHost(String project, String app, String host,) async {
    final response = await deletePlatformProjectsByProjectAppsByAppDomainsByHostWithHttpInfo(project, app, host,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Answers what this organisation has declared, joined with what the delivery plane has done about it.
  ///
  /// Answers what this organisation has declared, joined with what the delivery plane has done about it.  The join is best-effort BY DESIGN and says so when it is missing: the declarations ARE the answer to \"what have I deployed\", so refusing the whole board because the cluster is unreadable would lose the half that is readable. What must never happen is a silent null — an unreadable plane is reported as `cd.unavailable` carrying the reason, never as an app with no reconciliation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org:
  ///   Org names the organisation whose declarations to read, defaulting to the caller's own. Only a SuperAdmin may name one that is not theirs; anyone else naming a foreign org is refused, so this widens nothing by itself.
  Future<Response> getPlatformAppsWithHttpInfo({ String? org, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/apps';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (org != null) {
      queryParams.addAll(_queryParams('', 'org', org));
    }

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

  /// Answers what this organisation has declared, joined with what the delivery plane has done about it.
  ///
  /// Answers what this organisation has declared, joined with what the delivery plane has done about it.  The join is best-effort BY DESIGN and says so when it is missing: the declarations ARE the answer to \"what have I deployed\", so refusing the whole board because the cluster is unreadable would lose the half that is readable. What must never happen is a silent null — an unreadable plane is reported as `cd.unavailable` carrying the reason, never as an app with no reconciliation.
  ///
  /// Parameters:
  ///
  /// * [String] org:
  ///   Org names the organisation whose declarations to read, defaulting to the caller's own. Only a SuperAdmin may name one that is not theirs; anyone else naming a foreign org is refused, so this widens nothing by itself.
  Future<DeclaredResp?> getPlatformApps({ String? org, }) async {
    final response = await getPlatformAppsWithHttpInfo( org: org, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeclaredResp',) as DeclaredResp;
    
    }
    return null;
  }

  /// Answers ONE declaration — what git says this app is, before the delivery plane has had any say in it.
  ///
  /// Answers ONE declaration — what git says this app is, before the delivery plane has had any say in it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] app (required):
  ///   App is the DNS-1123 label of the declaration. The URL is the addressing authority — a path segment binds after the body and after the query — so the address decides which app is read whatever else is sent.
  ///
  /// * [String] org:
  ///   Org names the organisation the declaration lives in, defaulting to the caller's own and subject to the same SuperAdmin rule as the listing.
  Future<Response> getPlatformAppsByAppWithHttpInfo(String app, { String? org, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/apps/{app}'
      .replaceAll('{app}', app);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (org != null) {
      queryParams.addAll(_queryParams('', 'org', org));
    }

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

  /// Answers ONE declaration — what git says this app is, before the delivery plane has had any say in it.
  ///
  /// Answers ONE declaration — what git says this app is, before the delivery plane has had any say in it.
  ///
  /// Parameters:
  ///
  /// * [String] app (required):
  ///   App is the DNS-1123 label of the declaration. The URL is the addressing authority — a path segment binds after the body and after the query — so the address decides which app is read whatever else is sent.
  ///
  /// * [String] org:
  ///   Org names the organisation the declaration lives in, defaulting to the caller's own and subject to the same SuperAdmin rule as the listing.
  Future<Declaration?> getPlatformAppsByApp(String app, { String? org, }) async {
    final response = await getPlatformAppsByAppWithHttpInfo(app,  org: org, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Declaration',) as Declaration;
    
    }
    return null;
  }

  /// Answers ONE app's reconciliation alone — the poll a deploy console makes while it waits, without re-reading the whole inventory each time.
  ///
  /// Answers ONE app's reconciliation alone — the poll a deploy console makes while it waits, without re-reading the whole inventory each time.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] app (required):
  ///   App is the DNS-1123 label of the declaration. The URL is the addressing authority — a path segment binds after the body and after the query — so the address decides which app is read whatever else is sent.
  ///
  /// * [String] org:
  ///   Org names the organisation the declaration lives in, defaulting to the caller's own and subject to the same SuperAdmin rule as the listing.
  Future<Response> getPlatformAppsByAppCdWithHttpInfo(String app, { String? org, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/apps/{app}/cd'
      .replaceAll('{app}', app);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (org != null) {
      queryParams.addAll(_queryParams('', 'org', org));
    }

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

  /// Answers ONE app's reconciliation alone — the poll a deploy console makes while it waits, without re-reading the whole inventory each time.
  ///
  /// Answers ONE app's reconciliation alone — the poll a deploy console makes while it waits, without re-reading the whole inventory each time.
  ///
  /// Parameters:
  ///
  /// * [String] app (required):
  ///   App is the DNS-1123 label of the declaration. The URL is the addressing authority — a path segment binds after the body and after the query — so the address decides which app is read whatever else is sent.
  ///
  /// * [String] org:
  ///   Org names the organisation the declaration lives in, defaulting to the caller's own and subject to the same SuperAdmin rule as the listing.
  Future<CDApp?> getPlatformAppsByAppCd(String app, { String? org, }) async {
    final response = await getPlatformAppsByAppCdWithHttpInfo(app,  org: org, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CDApp',) as CDApp;
    
    }
    return null;
  }

  /// Returns real build records for your org.
  ///
  /// Returns real build records for your org.  It lists the org's BuildKit build records — the git build step behind a deploy — each with the repo it built, the short commit, its status, when it started and how long it took. These are real records or an honest empty list; a build appears here because one ran, never because a page needed a row. Builds are created only by /deploy and the push-to-deploy hook. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPlatformBuildsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/builds';

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

  /// Returns real build records for your org.
  ///
  /// Returns real build records for your org.  It lists the org's BuildKit build records — the git build step behind a deploy — each with the repo it built, the short commit, its status, when it started and how long it took. These are real records or an honest empty list; a build appears here because one ran, never because a page needed a row. Builds are created only by /deploy and the push-to-deploy hook. Requires a validated principal; 403 without one.
  Future<BuildBoard?> getPlatformBuilds() async {
    final response = await getPlatformBuildsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BuildBoard',) as BuildBoard;
    
    }
    return null;
  }

  /// Answers every Application the delivery plane holds.
  ///
  /// Answers every Application the delivery plane holds.  Scoped to the namespaces the caller's own validated org owns: the ROLE opens the door and the tenant boundary is applied inside, so an admin of one org never observes another's.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPlatformCdWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/cd';

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

  /// Answers every Application the delivery plane holds.
  ///
  /// Answers every Application the delivery plane holds.  Scoped to the namespaces the caller's own validated org owns: the ROLE opens the door and the tenant boundary is applied inside, so an admin of one org never observes another's.
  Future<CdResp?> getPlatformCd() async {
    final response = await getPlatformCdWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CdResp',) as CdResp;
    
    }
    return null;
  }

  /// Continuous integration (not wired)
  ///
  /// Answers 501. The forge's Actions runs need a Forgejo API client and this deployment has none; an empty run list would be indistinguishable from a forge with no runs.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPlatformCiWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/ci';

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

  /// Continuous integration (not wired)
  ///
  /// Answers 501. The forge's Actions runs need a Forgejo API client and this deployment has none; an empty run list would be indistinguishable from a forge with no runs.
  Future<void> getPlatformCi() async {
    final response = await getPlatformCiWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns your deploy targets, and what is running on each.
  ///
  /// Returns your deploy targets, and what is running on each.  It returns the org's environments — the distinct deploy targets its applications name, `production` for anything that names none — each aggregating the apps that target it, a rolled-up status and when it last changed.  An environment is DERIVED, not stored: there is nothing to create or delete here, and an environment exists exactly as long as an app points at it. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPlatformEnvironmentsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/environments';

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

  /// Returns your deploy targets, and what is running on each.
  ///
  /// Returns your deploy targets, and what is running on each.  It returns the org's environments — the distinct deploy targets its applications name, `production` for anything that names none — each aggregating the apps that target it, a rolled-up status and when it last changed.  An environment is DERIVED, not stored: there is nothing to create or delete here, and an environment exists exactly as long as an app points at it. Requires a validated principal; 403 without one.
  Future<EnvironmentBoard?> getPlatformEnvironments() async {
    final response = await getPlatformEnvironmentsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EnvironmentBoard',) as EnvironmentBoard;
    
    }
    return null;
  }

  /// Returns the platform's own service tier, and where it has drifted.
  ///
  /// Returns the platform's own service tier, and where it has drifted.  It returns the board for the services the PLATFORM itself runs — iam, kms, gateway and the rest — as `{apps, summary}`: per service its environment, health, phase, the image tag its CR DECLARES, the tag actually running, and the drift between them, plus a summary counting the board green, yellow and red.  This is not a customer surface. `/v1/platform/projects/:project/apps` is a tenant's apps; this is the tier those tenants run ON, which is why the two are named differently rather than sharing a prefix.  Admission is scoped at the SCAN, before any CR is read: a platform SuperAdmin observes the whole fleet, an org admin observes only their own org's namespaces, and an org that owns none gets an empty board — a non-super caller never even lists another org's services. Narrow further with `env`, `health`, `org`, or `drift=1` for only what has drifted.  It degrades honestly rather than failing whole: a namespace that does not exist is skipped, and a running-state read the caller cannot make leaves the running tag empty — an unknown, never a guess — while the declared, health and phase columns still render.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] env:
  ///   Env narrows to one lifecycle env: main, test or dev.
  ///
  /// * [String] health:
  ///   Health narrows to one health colour: green, yellow or red.
  ///
  /// * [String] org:
  ///   Org narrows to one image namespace.
  ///
  /// * [String] drift:
  ///   Drift is `1` or `true` to show only rows that have actually drifted. It is a STRING and not a bool because those two spellings are exactly what the board has always accepted, and a bool would silently widen that to `?drift` alone and to `TRUE` — a behaviour change wearing a type change's clothes.
  Future<Response> getPlatformFleetWithHttpInfo({ String? env, String? health, String? org, String? drift, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/fleet';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (env != null) {
      queryParams.addAll(_queryParams('', 'env', env));
    }
    if (health != null) {
      queryParams.addAll(_queryParams('', 'health', health));
    }
    if (org != null) {
      queryParams.addAll(_queryParams('', 'org', org));
    }
    if (drift != null) {
      queryParams.addAll(_queryParams('', 'drift', drift));
    }

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

  /// Returns the platform's own service tier, and where it has drifted.
  ///
  /// Returns the platform's own service tier, and where it has drifted.  It returns the board for the services the PLATFORM itself runs — iam, kms, gateway and the rest — as `{apps, summary}`: per service its environment, health, phase, the image tag its CR DECLARES, the tag actually running, and the drift between them, plus a summary counting the board green, yellow and red.  This is not a customer surface. `/v1/platform/projects/:project/apps` is a tenant's apps; this is the tier those tenants run ON, which is why the two are named differently rather than sharing a prefix.  Admission is scoped at the SCAN, before any CR is read: a platform SuperAdmin observes the whole fleet, an org admin observes only their own org's namespaces, and an org that owns none gets an empty board — a non-super caller never even lists another org's services. Narrow further with `env`, `health`, `org`, or `drift=1` for only what has drifted.  It degrades honestly rather than failing whole: a namespace that does not exist is skipped, and a running-state read the caller cannot make leaves the running tag empty — an unknown, never a guess — while the declared, health and phase columns still render.
  ///
  /// Parameters:
  ///
  /// * [String] env:
  ///   Env narrows to one lifecycle env: main, test or dev.
  ///
  /// * [String] health:
  ///   Health narrows to one health colour: green, yellow or red.
  ///
  /// * [String] org:
  ///   Org narrows to one image namespace.
  ///
  /// * [String] drift:
  ///   Drift is `1` or `true` to show only rows that have actually drifted. It is a STRING and not a bool because those two spellings are exactly what the board has always accepted, and a bool would silently widen that to `?drift` alone and to `TRUE` — a behaviour change wearing a type change's clothes.
  Future<DriftBoard?> getPlatformFleet({ String? env, String? health, String? org, String? drift, }) async {
    final response = await getPlatformFleetWithHttpInfo( env: env, health: health, org: org, drift: drift, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DriftBoard',) as DriftBoard;
    
    }
    return null;
  }

  /// Returns one platform service, resolved to production by default.
  ///
  /// Returns one platform service, resolved to production by default.  It returns a single platform service by its CR name, with the same declared-versus-running and drift facts the board carries. The name must be a DNS-1123 label; anything else is 400.  Namespaces are scanned in lifecycle order — main, then test, then dev — and the first match wins, so a bare name resolves to PRODUCTION. The scan covers only the namespaces the caller is authorized for, so an org admin can never read a service outside their own org, and a name found in none of them is 404 rather than a leak.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] app (required):
  ///   App is the service's CR name, from the path. It must be a DNS-1123 label.
  ///
  /// * [String] env:
  ///   Env narrows the scan to one lifecycle env: main, test or dev. Omitted, the namespaces are scanned in lifecycle order and the first match wins, so a bare name resolves to PRODUCTION.
  Future<Response> getPlatformFleetByAppWithHttpInfo(String app, { String? env, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/fleet/{app}'
      .replaceAll('{app}', app);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (env != null) {
      queryParams.addAll(_queryParams('', 'env', env));
    }

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

  /// Returns one platform service, resolved to production by default.
  ///
  /// Returns one platform service, resolved to production by default.  It returns a single platform service by its CR name, with the same declared-versus-running and drift facts the board carries. The name must be a DNS-1123 label; anything else is 400.  Namespaces are scanned in lifecycle order — main, then test, then dev — and the first match wins, so a bare name resolves to PRODUCTION. The scan covers only the namespaces the caller is authorized for, so an org admin can never read a service outside their own org, and a name found in none of them is 404 rather than a leak.
  ///
  /// Parameters:
  ///
  /// * [String] app (required):
  ///   App is the service's CR name, from the path. It must be a DNS-1123 label.
  ///
  /// * [String] env:
  ///   Env narrows the scan to one lifecycle env: main, test or dev. Omitted, the namespaces are scanned in lifecycle order and the first match wins, so a bare name resolves to PRODUCTION.
  Future<AppView?> getPlatformFleetByApp(String app, { String? env, }) async {
    final response = await getPlatformFleetByAppWithHttpInfo(app,  env: env, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AppView',) as AppView;
    
    }
    return null;
  }

  /// Reports whether this control plane can actually deploy anything.
  ///
  /// Reports whether this control plane can actually deploy anything.  A real probe, not a status page. It answers 200 only when the metadata store is open AND the cluster is genuinely reachable — proved by LISTING the operator App CRD, which settles reachability and CRD presence in one bounded call, and which is the exact question every deploy depends on. Anything else is 503 carrying the real reason and whether the CRD was found.  A constructed cluster client proves nothing — it is built from a kubeconfig, not from a reachable apiserver — so this deliberately spends a round trip rather than reporting `ok` while every deploy fails. Not admin-gated: liveness has to be probe-able without a credential.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPlatformHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/health';

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

  /// Reports whether this control plane can actually deploy anything.
  ///
  /// Reports whether this control plane can actually deploy anything.  A real probe, not a status page. It answers 200 only when the metadata store is open AND the cluster is genuinely reachable — proved by LISTING the operator App CRD, which settles reachability and CRD presence in one bounded call, and which is the exact question every deploy depends on. Anything else is 503 carrying the real reason and whether the CRD was found.  A constructed cluster client proves nothing — it is built from a kubeconfig, not from a reachable apiserver — so this deliberately spends a round trip rather than reporting `ok` while every deploy fails. Not admin-gated: liveness has to be probe-able without a credential.
  Future<Readiness?> getPlatformHealth() async {
    final response = await getPlatformHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Readiness',) as Readiness;
    
    }
    return null;
  }

  /// Returns one build-and-deploy pipeline per app, with its latest run.
  ///
  /// Returns one build-and-deploy pipeline per app, with its latest run.  It returns one pipeline per application in the caller's org — its repo or image source, its current status, and when its most recent deployment ran and how long it took. A pipeline is a PROJECTION of an app plus its newest deployment, not a separate record: it comes into existence with the app and is triggered only through /deploy, never here. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPlatformPipelinesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/pipelines';

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

  /// Returns one build-and-deploy pipeline per app, with its latest run.
  ///
  /// Returns one build-and-deploy pipeline per app, with its latest run.  It returns one pipeline per application in the caller's org — its repo or image source, its current status, and when its most recent deployment ran and how long it took. A pipeline is a PROJECTION of an app plus its newest deployment, not a separate record: it comes into existence with the app and is triggered only through /deploy, never here. Requires a validated principal; 403 without one.
  Future<PipelineBoard?> getPlatformPipelines() async {
    final response = await getPlatformPipelinesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PipelineBoard',) as PipelineBoard;
    
    }
    return null;
  }

  /// Returns your org's projects, each with how many apps live under it.
  ///
  /// Returns your org's projects, each with how many apps live under it.  It lists the caller org's projects with the number of platform applications in each. A project is IAM's resource — it is created and deleted at /v1/iam/projects, never here — so this is the ONE projection IAM cannot serve: the project plus what the platform has put under it.  Requires a validated principal; 403 without one, and the org comes from that validated identity rather than a request header. This is the console's first authenticated read, so a project store that is not yet initialised degrades to an EMPTY list rather than a 500 — a new org genuinely has zero projects — and the real cause is surfaced to operators instead of to the caller.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPlatformProjectsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/projects';

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

  /// Returns your org's projects, each with how many apps live under it.
  ///
  /// Returns your org's projects, each with how many apps live under it.  It lists the caller org's projects with the number of platform applications in each. A project is IAM's resource — it is created and deleted at /v1/iam/projects, never here — so this is the ONE projection IAM cannot serve: the project plus what the platform has put under it.  Requires a validated principal; 403 without one, and the org comes from that validated identity rather than a request header. This is the console's first authenticated read, so a project store that is not yet initialised degrades to an EMPTY list rather than a 500 — a new org genuinely has zero projects — and the real cause is surfaced to operators instead of to the caller.
  Future<List<ProjectView>?> getPlatformProjects() async {
    final response = await getPlatformProjectsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ProjectView>') as List)
        .cast<ProjectView>()
        .toList(growable: false);

    }
    return null;
  }

  /// Returns one project and its app count.
  ///
  /// Returns one project and its app count.  It returns a single project of the caller's org with the number of platform applications under it. A project this org does not have is 404, which is also what another tenant's project looks like from here. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project's name, from the path.
  Future<Response> getPlatformProjectsByProjectWithHttpInfo(String project,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/projects/{project}'
      .replaceAll('{project}', project);

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

  /// Returns one project and its app count.
  ///
  /// Returns one project and its app count.  It returns a single project of the caller's org with the number of platform applications under it. A project this org does not have is 404, which is also what another tenant's project looks like from here. Requires a validated principal; 403 without one.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project's name, from the path.
  Future<ProjectView?> getPlatformProjectsByProject(String project,) async {
    final response = await getPlatformProjectsByProjectWithHttpInfo(project,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectView',) as ProjectView;
    
    }
    return null;
  }

  /// Returns the applications in one project, with what the cluster says about them.
  ///
  /// Returns the applications in one project, with what the cluster says about them.  It lists the caller org's applications under one project. Each row carries the stored record and, for an app that is live or deploying, the LIVE phase and health read from its operator Service CR; an app with sealed env also carries its secret-sync state. Those cluster reads are best-effort — an unreachable cluster leaves those fields empty and never blocks the listing.  The project must exist in IAM for this org, or the answer is 404; the `default` project is implicit and always accepted, because it is part of what an org IS. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project's name, from the path.
  Future<Response> getPlatformProjectsByProjectAppsWithHttpInfo(String project,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/projects/{project}/apps'
      .replaceAll('{project}', project);

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

  /// Returns the applications in one project, with what the cluster says about them.
  ///
  /// Returns the applications in one project, with what the cluster says about them.  It lists the caller org's applications under one project. Each row carries the stored record and, for an app that is live or deploying, the LIVE phase and health read from its operator Service CR; an app with sealed env also carries its secret-sync state. Those cluster reads are best-effort — an unreachable cluster leaves those fields empty and never blocks the listing.  The project must exist in IAM for this org, or the answer is 404; the `default` project is implicit and always accepted, because it is part of what an org IS. Requires a validated principal; 403 without one.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project's name, from the path.
  Future<List<AppView>?> getPlatformProjectsByProjectApps(String project,) async {
    final response = await getPlatformProjectsByProjectAppsWithHttpInfo(project,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AppView>') as List)
        .cast<AppView>()
        .toList(growable: false);

    }
    return null;
  }

  /// Returns one application, with its live phase, health and secret sync.
  ///
  /// Returns one application, with its live phase, health and secret sync.  It returns a single application of the caller's org together with what the cluster currently reports for it: the operator Service CR's phase and health, and whether its sealed env has synced. An app this org and project do not have is 404. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  Future<Response> getPlatformProjectsByProjectAppsByAppWithHttpInfo(String project, String app,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/projects/{project}/apps/{app}'
      .replaceAll('{project}', project)
      .replaceAll('{app}', app);

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

  /// Returns one application, with its live phase, health and secret sync.
  ///
  /// Returns one application, with its live phase, health and secret sync.  It returns a single application of the caller's org together with what the cluster currently reports for it: the operator Service CR's phase and health, and whether its sealed env has synced. An app this org and project do not have is 404. Requires a validated principal; 403 without one.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  Future<AppView?> getPlatformProjectsByProjectAppsByApp(String project, String app,) async {
    final response = await getPlatformProjectsByProjectAppsByAppWithHttpInfo(project, app,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AppView',) as AppView;
    
    }
    return null;
  }

  /// Returns an app's deployment history.
  ///
  /// Returns an app's deployment history.  It lists every deployment recorded for one of the caller org's applications, newest version first, each with its version, status, source, commit and image. Failed and superseded attempts are included — that is the point of a history. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  Future<Response> getPlatformProjectsByProjectAppsByAppDeploymentsWithHttpInfo(String project, String app,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/projects/{project}/apps/{app}/deployments'
      .replaceAll('{project}', project)
      .replaceAll('{app}', app);

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

  /// Returns an app's deployment history.
  ///
  /// Returns an app's deployment history.  It lists every deployment recorded for one of the caller org's applications, newest version first, each with its version, status, source, commit and image. Failed and superseded attempts are included — that is the point of a history. Requires a validated principal; 403 without one.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  Future<List<DeploymentView>?> getPlatformProjectsByProjectAppsByAppDeployments(String project, String app,) async {
    final response = await getPlatformProjectsByProjectAppsByAppDeploymentsWithHttpInfo(project, app,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DeploymentView>') as List)
        .cast<DeploymentView>()
        .toList(growable: false);

    }
    return null;
  }

  /// Returns one deployment of one app.
  ///
  /// Returns one deployment of one app.  It returns a single deployment by id, scoped to the named application of the caller's org — so an id belonging to another app or another tenant is 404, not a read. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  ///
  /// * [String] id (required):
  ///   ID is the deployment's id, from the path.
  Future<Response> getPlatformProjectsByProjectAppsByAppDeploymentsByIdWithHttpInfo(String project, String app, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/projects/{project}/apps/{app}/deployments/{id}'
      .replaceAll('{project}', project)
      .replaceAll('{app}', app)
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

  /// Returns one deployment of one app.
  ///
  /// Returns one deployment of one app.  It returns a single deployment by id, scoped to the named application of the caller's org — so an id belonging to another app or another tenant is 404, not a read. Requires a validated principal; 403 without one.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  ///
  /// * [String] id (required):
  ///   ID is the deployment's id, from the path.
  Future<DeploymentView?> getPlatformProjectsByProjectAppsByAppDeploymentsById(String project, String app, String id,) async {
    final response = await getPlatformProjectsByProjectAppsByAppDeploymentsByIdWithHttpInfo(project, app, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeploymentView',) as DeploymentView;
    
    }
    return null;
  }

  /// Returns real logs for a deployment — the build's, then the app's.
  ///
  /// Returns real logs for a deployment — the build's, then the app's.  It returns the deployment's recorded status timeline together with LIVE pod logs pulled from the cluster: the build pod's output while a git build is running, and the running app's output once it is deployed. The `source` field says which of the two the body is — `build`, `app` or `none` — so a console can label the pane honestly.  It never fabricates log content. When no pod exists yet, or the cluster is unreachable, it degrades to the recorded timeline and says so. Every cluster read is confined to the caller org's own namespaces and time-boxed. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  ///
  /// * [String] id (required):
  ///   ID is the deployment's id, from the path.
  Future<Response> getPlatformProjectsByProjectAppsByAppDeploymentsByIdLogsWithHttpInfo(String project, String app, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/projects/{project}/apps/{app}/deployments/{id}/logs'
      .replaceAll('{project}', project)
      .replaceAll('{app}', app)
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

  /// Returns real logs for a deployment — the build's, then the app's.
  ///
  /// Returns real logs for a deployment — the build's, then the app's.  It returns the deployment's recorded status timeline together with LIVE pod logs pulled from the cluster: the build pod's output while a git build is running, and the running app's output once it is deployed. The `source` field says which of the two the body is — `build`, `app` or `none` — so a console can label the pane honestly.  It never fabricates log content. When no pod exists yet, or the cluster is unreachable, it degrades to the recorded timeline and says so. Every cluster read is confined to the caller org's own namespaces and time-boxed. Requires a validated principal; 403 without one.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  ///
  /// * [String] id (required):
  ///   ID is the deployment's id, from the path.
  Future<DeployLogs?> getPlatformProjectsByProjectAppsByAppDeploymentsByIdLogs(String project, String app, String id,) async {
    final response = await getPlatformProjectsByProjectAppsByAppDeploymentsByIdLogsWithHttpInfo(project, app, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeployLogs',) as DeployLogs;
    
    }
    return null;
  }

  /// Returns every hostname this app answers on.
  ///
  /// Returns every hostname this app answers on.  It lists the app's hosts: the permanent default host it was born with, any org-subtree hosts attached to it, and every custom host claimed for it with its verification state and, while pending, the DNS challenge records to publish. Live endpoint status for each host is observed from the cluster. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  Future<Response> getPlatformProjectsByProjectAppsByAppDomainsWithHttpInfo(String project, String app,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/projects/{project}/apps/{app}/domains'
      .replaceAll('{project}', project)
      .replaceAll('{app}', app);

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

  /// Returns every hostname this app answers on.
  ///
  /// Returns every hostname this app answers on.  It lists the app's hosts: the permanent default host it was born with, any org-subtree hosts attached to it, and every custom host claimed for it with its verification state and, while pending, the DNS challenge records to publish. Live endpoint status for each host is observed from the cluster. Requires a validated principal; 403 without one.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  Future<List<DomainView>?> getPlatformProjectsByProjectAppsByAppDomains(String project, String app,) async {
    final response = await getPlatformProjectsByProjectAppsByAppDomainsWithHttpInfo(project, app,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DomainView>') as List)
        .cast<DomainView>()
        .toList(growable: false);

    }
    return null;
  }

  /// Returns the versions that actually reached the cluster.
  ///
  /// Returns the versions that actually reached the cluster.  It lists the org's releases: the deployments that were genuinely applied to the cluster, with the app they belong to, their version, environment, status and when they were released. A deployment that failed or is still building is NOT a release and is excluded — reaching the cluster is what makes one. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPlatformReleasesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/releases';

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

  /// Returns the versions that actually reached the cluster.
  ///
  /// Returns the versions that actually reached the cluster.  It lists the org's releases: the deployments that were genuinely applied to the cluster, with the app they belong to, their version, environment, status and when they were released. A deployment that failed or is still building is NOT a release and is excluded — reaching the cluster is what makes one. Requires a validated principal; 403 without one.
  Future<ReleaseBoard?> getPlatformReleases() async {
    final response = await getPlatformReleasesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReleaseBoard',) as ReleaseBoard;
    
    }
    return null;
  }

  /// Deploy an app through cd.hanzo.ai
  ///
  /// Builds a git repository into an image and writes the declaration that names it — a values file in `hanzoai/universe` under `charts/app/values/<namespace>/<name>.yaml`, which the `fleet` ApplicationSet renders as one Application. That file IS the deployment: nothing else has to be applied.  `mode` decides whether anything can go live. The default, `branch`, pushes to `deploy/<namespace>/<name>/<tag>` and returns a review URL; the generator reads main, so a branch declaration deploys NOTHING and merging the review is the deliberate act. `commit` writes main, and proves the image is pullable first — a declaration naming an image the registry cannot serve is an ImagePullBackOff with no rollback path.  Omit `tag` to build; give it to declare an image an earlier call already built, which is how a green build is released without rebuilding it.  An org is its name: the values DIRECTORY, the destination NAMESPACE and the AppProject FENCE are all `<org>`, and the image is `<registry>/<org>/<app>`. None of them is a request field — the directory decides what CD admits the sync under and the repository decides what the cluster pulls, so a caller who could name either could reach outside its own org.  `org` is an ACT-AS, not a placement field: it defaults to the caller's own, and naming another requires SuperAdmin. So does naming a RESERVED org — the platform's own namespace family (the brands and their environments, the control and delivery planes, `admin`) — even when it is the caller's own, because an IAM org named `kube-system` does not own Kubernetes. Both refuse rather than downgrade, so an escape attempt is never indistinguishable from a normal request.  A host outside the caller's org subtree is refused: claim and verify a custom domain first.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postPlatformAppsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/apps';

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

  /// Deploy an app through cd.hanzo.ai
  ///
  /// Builds a git repository into an image and writes the declaration that names it — a values file in `hanzoai/universe` under `charts/app/values/<namespace>/<name>.yaml`, which the `fleet` ApplicationSet renders as one Application. That file IS the deployment: nothing else has to be applied.  `mode` decides whether anything can go live. The default, `branch`, pushes to `deploy/<namespace>/<name>/<tag>` and returns a review URL; the generator reads main, so a branch declaration deploys NOTHING and merging the review is the deliberate act. `commit` writes main, and proves the image is pullable first — a declaration naming an image the registry cannot serve is an ImagePullBackOff with no rollback path.  Omit `tag` to build; give it to declare an image an earlier call already built, which is how a green build is released without rebuilding it.  An org is its name: the values DIRECTORY, the destination NAMESPACE and the AppProject FENCE are all `<org>`, and the image is `<registry>/<org>/<app>`. None of them is a request field — the directory decides what CD admits the sync under and the repository decides what the cluster pulls, so a caller who could name either could reach outside its own org.  `org` is an ACT-AS, not a placement field: it defaults to the caller's own, and naming another requires SuperAdmin. So does naming a RESERVED org — the platform's own namespace family (the brands and their environments, the control and delivery planes, `admin`) — even when it is the caller's own, because an IAM org named `kube-system` does not own Kubernetes. Both refuse rather than downgrade, so an escape attempt is never indistinguishable from a normal request.  A host outside the caller's org subtree is refused: claim and verify a custom domain first.
  Future<void> postPlatformApps() async {
    final response = await postPlatformAppsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Rolls a platform service's pods, in a named environment.
  ///
  /// Rolls a platform service's pods, in a named environment.  It triggers a rolling restart of one platform service's Deployment by stamping a fresh restart annotation, and answers 202 with the app, the namespace, the environment and the timestamp. It restarts pods; it does NOT change the image — a version change is the release path, not this.  SuperAdmin ONLY, and deliberately narrower than the read gate beside it. The only namespaces this board touches are the platform's own tier, so a restart here recycles a SHARED service every tenant depends on. A brand-org admin is a customer-org admin, not a platform operator: observing the board is bounded and audited, and restarting production identity is not.  `?env=main|test|dev` is REQUIRED — a bare call does not default to production, which is what closes the fat-finger and confused-deputy hazard — and any other value is 400. A service with no Deployment to restart in that environment is 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] app (required):
  ///   App is the service's CR name, from the path. It must be a DNS-1123 label.
  ///
  /// * [RestartRef] restartRef (required):
  Future<Response> postPlatformFleetByAppDeployWithHttpInfo(String app, RestartRef restartRef,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/fleet/{app}/deploy'
      .replaceAll('{app}', app);

    // ignore: prefer_final_locals
    Object? postBody = restartRef;

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

  /// Rolls a platform service's pods, in a named environment.
  ///
  /// Rolls a platform service's pods, in a named environment.  It triggers a rolling restart of one platform service's Deployment by stamping a fresh restart annotation, and answers 202 with the app, the namespace, the environment and the timestamp. It restarts pods; it does NOT change the image — a version change is the release path, not this.  SuperAdmin ONLY, and deliberately narrower than the read gate beside it. The only namespaces this board touches are the platform's own tier, so a restart here recycles a SHARED service every tenant depends on. A brand-org admin is a customer-org admin, not a platform operator: observing the board is bounded and audited, and restarting production identity is not.  `?env=main|test|dev` is REQUIRED — a bare call does not default to production, which is what closes the fat-finger and confused-deputy hazard — and any other value is 400. A service with no Deployment to restart in that environment is 404.
  ///
  /// Parameters:
  ///
  /// * [String] app (required):
  ///   App is the service's CR name, from the path. It must be a DNS-1123 label.
  ///
  /// * [RestartRef] restartRef (required):
  Future<Restarted?> postPlatformFleetByAppDeploy(String app, RestartRef restartRef,) async {
    final response = await postPlatformFleetByAppDeployWithHttpInfo(app, restartRef,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Restarted',) as Restarted;
    
    }
    return null;
  }

  /// Receive a push from the forge and trigger its build
  ///
  /// The forge's push-to-deploy door. git.hanzo.ai runs as a separate server, so its pushes never reach this fleet's own receive-pack; without this a push to the host we call canonical builds nothing. A verified push is handed to the SAME two clients a native push travels — the single-registrant deploy trigger, and the many-subscriber lifecycle stream that notifies and indexes — and the build decision itself stays downstream in the one place that knows what a push means.  PUBLIC at the JWT layer, because the forge carries no Hanzo session: AUTHENTICATION IS THE SIGNATURE. The HMAC covers the raw bytes and is verified BEFORE the payload is parsed, so an unauthenticated body is never decoded. The secret is read from KMS; a deployment that cannot read it answers 503 and processes nothing, rather than trusting a delivery it could not check. The body is read UNCOMPRESSED — a request declaring a Content-Encoding is refused 415 before it is touched, because decoding one is unbounded work bought with a few bytes and no credential. A bad signature is 401, a payload over 8 MiB is 413, and a malformed one 400.  A verified push that reaches both clients answers 200 with fired true and the NUMBER OF BUILDS it launched — zero is ordinary, since most pushes track no application, and it is the answer 'fired' cannot give. A push that could not be dispatched answers 500: the delivery page shows it red, and the Replay that prompts reaches a fresh attempt rather than being declined as already landed.  The deliveries deliberately ignored answer 200 with a reason and nothing else: a payload that is not a push, a ref DELETE (a zero `after` has no commit to build), a BOT-authored push (release automation pushes as the forge's own Actions user, and a release must never rebuild itself), a push from a forge namespace that maps to no org, and a redelivery of a push already fired. Branches and tags both reach the build trigger, because releases are cut by tag and filtering here would silently stop publishing.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Push] push:
  Future<Response> postPlatformHookWithHttpInfo({ Push? push, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/hook';

    // ignore: prefer_final_locals
    Object? postBody = push;

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

  /// Receive a push from the forge and trigger its build
  ///
  /// The forge's push-to-deploy door. git.hanzo.ai runs as a separate server, so its pushes never reach this fleet's own receive-pack; without this a push to the host we call canonical builds nothing. A verified push is handed to the SAME two clients a native push travels — the single-registrant deploy trigger, and the many-subscriber lifecycle stream that notifies and indexes — and the build decision itself stays downstream in the one place that knows what a push means.  PUBLIC at the JWT layer, because the forge carries no Hanzo session: AUTHENTICATION IS THE SIGNATURE. The HMAC covers the raw bytes and is verified BEFORE the payload is parsed, so an unauthenticated body is never decoded. The secret is read from KMS; a deployment that cannot read it answers 503 and processes nothing, rather than trusting a delivery it could not check. The body is read UNCOMPRESSED — a request declaring a Content-Encoding is refused 415 before it is touched, because decoding one is unbounded work bought with a few bytes and no credential. A bad signature is 401, a payload over 8 MiB is 413, and a malformed one 400.  A verified push that reaches both clients answers 200 with fired true and the NUMBER OF BUILDS it launched — zero is ordinary, since most pushes track no application, and it is the answer 'fired' cannot give. A push that could not be dispatched answers 500: the delivery page shows it red, and the Replay that prompts reaches a fresh attempt rather than being declined as already landed.  The deliveries deliberately ignored answer 200 with a reason and nothing else: a payload that is not a push, a ref DELETE (a zero `after` has no commit to build), a BOT-authored push (release automation pushes as the forge's own Actions user, and a release must never rebuild itself), a push from a forge namespace that maps to no org, and a redelivery of a push already fired. Branches and tags both reach the build trigger, because releases are cut by tag and filtering here would silently stop publishing.
  ///
  /// Parameters:
  ///
  /// * [Push] push:
  Future<Verdict?> postPlatformHook({ Push? push, }) async {
    final response = await postPlatformHookWithHttpInfo( push: push, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Verdict',) as Verdict;
    
    }
    return null;
  }

  /// Creates an application from a git repo or a container image.
  ///
  /// Creates an application from a git repo or a container image.  It registers a new application under one of the caller org's projects and answers 201 with it. Creating does NOT deploy: the app lands in `draft` and nothing reaches the cluster until /deploy.  `source` is `git` — which requires `repo.url` — or `image`, which requires `image.repository`; anything else is 400. A git app builds with zero-config `pack` by default and may opt into `dockerfile`; an image app never builds. The repo URL and Dockerfile path are validated here against the SAME allowlist the privileged build enforces, so an unsafe source is refused before it is ever persisted.  The `slug` is the app's identity in the cluster: given or derived from `name`, it must match `^[a-z0-9]([a-z0-9-]{0,38}[a-z0-9])?$`, and a slug already used in this project is 409. `replicas` and `storageGb` are clamped to the deployment's limits rather than refused.  Env keys must match `^[A-Za-z_][A-Za-z0-9_]*$`. A variable marked `secret: true` is SEALED into KMS and its plaintext is never written to the database — and if KMS is unavailable the create fails 503 rather than falling back to storing a secret in the clear.  The app is seeded with its canonical default host, so it has a working HTTPS URL the moment it deploys. A bare custom domain cannot be attached here — it has to go through add-domain and DNS verification first. Requires a validated principal; 403 without one, and every cluster object it will later create lands in that org's own `tenant-<org>` namespace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project to create the application under, from the path.
  ///
  /// * [CreateAppReq] createAppReq (required):
  Future<Response> postPlatformProjectsByProjectAppsWithHttpInfo(String project, CreateAppReq createAppReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/projects/{project}/apps'
      .replaceAll('{project}', project);

    // ignore: prefer_final_locals
    Object? postBody = createAppReq;

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

  /// Creates an application from a git repo or a container image.
  ///
  /// Creates an application from a git repo or a container image.  It registers a new application under one of the caller org's projects and answers 201 with it. Creating does NOT deploy: the app lands in `draft` and nothing reaches the cluster until /deploy.  `source` is `git` — which requires `repo.url` — or `image`, which requires `image.repository`; anything else is 400. A git app builds with zero-config `pack` by default and may opt into `dockerfile`; an image app never builds. The repo URL and Dockerfile path are validated here against the SAME allowlist the privileged build enforces, so an unsafe source is refused before it is ever persisted.  The `slug` is the app's identity in the cluster: given or derived from `name`, it must match `^[a-z0-9]([a-z0-9-]{0,38}[a-z0-9])?$`, and a slug already used in this project is 409. `replicas` and `storageGb` are clamped to the deployment's limits rather than refused.  Env keys must match `^[A-Za-z_][A-Za-z0-9_]*$`. A variable marked `secret: true` is SEALED into KMS and its plaintext is never written to the database — and if KMS is unavailable the create fails 503 rather than falling back to storing a secret in the clear.  The app is seeded with its canonical default host, so it has a working HTTPS URL the moment it deploys. A bare custom domain cannot be attached here — it has to go through add-domain and DNS verification first. Requires a validated principal; 403 without one, and every cluster object it will later create lands in that org's own `tenant-<org>` namespace.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project to create the application under, from the path.
  ///
  /// * [CreateAppReq] createAppReq (required):
  Future<AppView?> postPlatformProjectsByProjectApps(String project, CreateAppReq createAppReq,) async {
    final response = await postPlatformProjectsByProjectAppsWithHttpInfo(project, createAppReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AppView',) as AppView;
    
    }
    return null;
  }

  /// Deploys the app — building it first if it comes from git.
  ///
  /// Deploys the app — building it first if it comes from git.  It starts a new, monotonically versioned deployment of the app and answers 202 with the deployment record. A 202 is an ACCEPTED deployment, not a live one.  An IMAGE app deploys the tag you name (falling back to the app's tag, then `latest`) by writing its operator Service CR; the operator reconciles it to running. A GIT app launches an in-cluster BuildKit Job at `commit` — or the app's branch — and comes back in `building`; the Service CR is applied later, by the reconciler, once the Job succeeds. The reconciler is restart-safe, so a build in flight survives a cloud restart.  Deploys are bounded per org: over the concurrent-deploy cap is 429 and NOTHING is recorded, so a rejected deploy leaves no phantom in the history. An unreachable cluster is 503 but still records an honest `error` deployment, because a deploy that was attempted and failed must not be indistinguishable from one never made. Every other failure is likewise recorded in its real terminal state.  This is metered work: a git build is billed to the org's ledger in wall-clock build minutes once the Job finishes, and the running deployment is billed for its compute per tick for as long as it stays live. Requires a validated principal; 403 without one, and everything is written into that org's own `tenant-<org>` namespace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  ///
  /// * [DeployReq] deployReq (required):
  Future<Response> postPlatformProjectsByProjectAppsByAppDeployWithHttpInfo(String project, String app, DeployReq deployReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/projects/{project}/apps/{app}/deploy'
      .replaceAll('{project}', project)
      .replaceAll('{app}', app);

    // ignore: prefer_final_locals
    Object? postBody = deployReq;

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

  /// Deploys the app — building it first if it comes from git.
  ///
  /// Deploys the app — building it first if it comes from git.  It starts a new, monotonically versioned deployment of the app and answers 202 with the deployment record. A 202 is an ACCEPTED deployment, not a live one.  An IMAGE app deploys the tag you name (falling back to the app's tag, then `latest`) by writing its operator Service CR; the operator reconciles it to running. A GIT app launches an in-cluster BuildKit Job at `commit` — or the app's branch — and comes back in `building`; the Service CR is applied later, by the reconciler, once the Job succeeds. The reconciler is restart-safe, so a build in flight survives a cloud restart.  Deploys are bounded per org: over the concurrent-deploy cap is 429 and NOTHING is recorded, so a rejected deploy leaves no phantom in the history. An unreachable cluster is 503 but still records an honest `error` deployment, because a deploy that was attempted and failed must not be indistinguishable from one never made. Every other failure is likewise recorded in its real terminal state.  This is metered work: a git build is billed to the org's ledger in wall-clock build minutes once the Job finishes, and the running deployment is billed for its compute per tick for as long as it stays live. Requires a validated principal; 403 without one, and everything is written into that org's own `tenant-<org>` namespace.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  ///
  /// * [DeployReq] deployReq (required):
  Future<DeploymentView?> postPlatformProjectsByProjectAppsByAppDeploy(String project, String app, DeployReq deployReq,) async {
    final response = await postPlatformProjectsByProjectAppsByAppDeployWithHttpInfo(project, app, deployReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeploymentView',) as DeploymentView;
    
    }
    return null;
  }

  /// Attaches a hostname — instantly if you already own it, otherwise with a DNS challenge.
  ///
  /// Attaches a hostname — instantly if you already own it, otherwise with a DNS challenge.  It attaches `host` to the app, and which of two things happens depends on who owns the name. A host inside the caller org's own subtree is structurally owned, so it goes ACTIVE immediately and answers 201. A bring-your-own host is claimed as PENDING and answers the DNS challenge records to publish; it is NOT rendered into the app's ingress until /verify passes.  Claims are globally unique. A host already claimed by another organization is 409, and so is one claimed by a different app in your own; re-adding this app's OWN claim is idempotent and answers its current state at 200. The default host is always attached and re-adding it is 409. A host under the platform's shared apex that is not the caller's own subtree is 403 — it belongs to whoever owns that subtree and can never be grabbed through the custom path.  `host` must be a valid DNS hostname; anything else is 400. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  ///
  /// * [AddDomainReq] addDomainReq (required):
  Future<Response> postPlatformProjectsByProjectAppsByAppDomainsWithHttpInfo(String project, String app, AddDomainReq addDomainReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/projects/{project}/apps/{app}/domains'
      .replaceAll('{project}', project)
      .replaceAll('{app}', app);

    // ignore: prefer_final_locals
    Object? postBody = addDomainReq;

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

  /// Attaches a hostname — instantly if you already own it, otherwise with a DNS challenge.
  ///
  /// Attaches a hostname — instantly if you already own it, otherwise with a DNS challenge.  It attaches `host` to the app, and which of two things happens depends on who owns the name. A host inside the caller org's own subtree is structurally owned, so it goes ACTIVE immediately and answers 201. A bring-your-own host is claimed as PENDING and answers the DNS challenge records to publish; it is NOT rendered into the app's ingress until /verify passes.  Claims are globally unique. A host already claimed by another organization is 409, and so is one claimed by a different app in your own; re-adding this app's OWN claim is idempotent and answers its current state at 200. The default host is always attached and re-adding it is 409. A host under the platform's shared apex that is not the caller's own subtree is 403 — it belongs to whoever owns that subtree and can never be grabbed through the custom path.  `host` must be a valid DNS hostname; anything else is 400. Requires a validated principal; 403 without one.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  ///
  /// * [AddDomainReq] addDomainReq (required):
  Future<DomainView?> postPlatformProjectsByProjectAppsByAppDomains(String project, String app, AddDomainReq addDomainReq,) async {
    final response = await postPlatformProjectsByProjectAppsByAppDomainsWithHttpInfo(project, app, addDomainReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DomainView',) as DomainView;
    
    }
    return null;
  }

  /// Checks a custom domain's DNS and turns it on if it passes.
  ///
  /// Checks a custom domain's DNS and turns it on if it passes.  It runs the DNS challenge check for a pending custom host and, when it passes, marks the host verified and renders it into the app's ingress so it starts serving.  A check that RAN and did not pass is not an error: it answers 200 with the host still pending and the reason in `detail`, so a console can show the operator what DNS is actually returning. An already-verified host answers as-is without re-checking. A host not claimed by this app is 404. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  ///
  /// * [String] host (required):
  ///   Host is the hostname, from the path.
  Future<Response> postPlatformProjectsByProjectAppsByAppDomainsByHostVerifyWithHttpInfo(String project, String app, String host,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/projects/{project}/apps/{app}/domains/{host}/verify'
      .replaceAll('{project}', project)
      .replaceAll('{app}', app)
      .replaceAll('{host}', host);

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

  /// Checks a custom domain's DNS and turns it on if it passes.
  ///
  /// Checks a custom domain's DNS and turns it on if it passes.  It runs the DNS challenge check for a pending custom host and, when it passes, marks the host verified and renders it into the app's ingress so it starts serving.  A check that RAN and did not pass is not an error: it answers 200 with the host still pending and the reason in `detail`, so a console can show the operator what DNS is actually returning. An already-verified host answers as-is without re-checking. A host not claimed by this app is 404. Requires a validated principal; 403 without one.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  ///
  /// * [String] host (required):
  ///   Host is the hostname, from the path.
  Future<DomainView?> postPlatformProjectsByProjectAppsByAppDomainsByHostVerify(String project, String app, String host,) async {
    final response = await postPlatformProjectsByProjectAppsByAppDomainsByHostVerifyWithHttpInfo(project, app, host,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DomainView',) as DomainView;
    
    }
    return null;
  }

  /// Puts a branch on its own URL.
  ///
  /// Puts a branch on its own URL.  It deploys an already-built `image` to a per-branch preview and answers its URL, the branch, the preview's slug and the deployment. The preview is a FIRST-CLASS application named `<app>-<branch>` in the same project and tenant namespace, with its own default host — so it is completely isolated from production while reusing the same deploy mechanic. Re-previewing a branch converges that same target in place rather than stacking another one.  It carries NO environment variables, deliberately: a preview never inherits production's secrets. It also does not build — `image` is required and must already exist, and `branch` defaults to the parent app's. A branch that does not resolve to a valid slug distinct from the parent's is 400. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the parent application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the parent application's slug, from the path.
  ///
  /// * [PreviewReq] previewReq (required):
  Future<Response> postPlatformProjectsByProjectAppsByAppPreviewWithHttpInfo(String project, String app, PreviewReq previewReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/projects/{project}/apps/{app}/preview'
      .replaceAll('{project}', project)
      .replaceAll('{app}', app);

    // ignore: prefer_final_locals
    Object? postBody = previewReq;

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

  /// Puts a branch on its own URL.
  ///
  /// Puts a branch on its own URL.  It deploys an already-built `image` to a per-branch preview and answers its URL, the branch, the preview's slug and the deployment. The preview is a FIRST-CLASS application named `<app>-<branch>` in the same project and tenant namespace, with its own default host — so it is completely isolated from production while reusing the same deploy mechanic. Re-previewing a branch converges that same target in place rather than stacking another one.  It carries NO environment variables, deliberately: a preview never inherits production's secrets. It also does not build — `image` is required and must already exist, and `branch` defaults to the parent app's. A branch that does not resolve to a valid slug distinct from the parent's is 400. Requires a validated principal; 403 without one.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the parent application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the parent application's slug, from the path.
  ///
  /// * [PreviewReq] previewReq (required):
  Future<PreviewView?> postPlatformProjectsByProjectAppsByAppPreview(String project, String app, PreviewReq previewReq,) async {
    final response = await postPlatformProjectsByProjectAppsByAppPreviewWithHttpInfo(project, app, previewReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PreviewView',) as PreviewView;
    
    }
    return null;
  }

  /// Promotes an already-built release to the app.
  ///
  /// Promotes an already-built release to the app.  It redeploys an image that already exists — named either by `deploymentId`, which promotes that deployment's exact built image, or by `tag`, resolved the same way a deploy resolves one. One of the two is required; neither is 400.  Promotion never builds. A deployment that carries no built image cannot be promoted and is 400, and a deployment id outside this app is 404. It runs through the same deploy core as everything else, so it takes a NEW version number and is subject to the same per-org concurrency cap. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  ///
  /// * [PromoteReq] promoteReq (required):
  Future<Response> postPlatformProjectsByProjectAppsByAppPromoteWithHttpInfo(String project, String app, PromoteReq promoteReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/projects/{project}/apps/{app}/promote'
      .replaceAll('{project}', project)
      .replaceAll('{app}', app);

    // ignore: prefer_final_locals
    Object? postBody = promoteReq;

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

  /// Promotes an already-built release to the app.
  ///
  /// Promotes an already-built release to the app.  It redeploys an image that already exists — named either by `deploymentId`, which promotes that deployment's exact built image, or by `tag`, resolved the same way a deploy resolves one. One of the two is required; neither is 400.  Promotion never builds. A deployment that carries no built image cannot be promoted and is 400, and a deployment id outside this app is 404. It runs through the same deploy core as everything else, so it takes a NEW version number and is subject to the same per-org concurrency cap. Requires a validated principal; 403 without one.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  ///
  /// * [PromoteReq] promoteReq (required):
  Future<DeploymentView?> postPlatformProjectsByProjectAppsByAppPromote(String project, String app, PromoteReq promoteReq,) async {
    final response = await postPlatformProjectsByProjectAppsByAppPromoteWithHttpInfo(project, app, promoteReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeploymentView',) as DeploymentView;
    
    }
    return null;
  }

  /// Goes back to the previous release.
  ///
  /// Goes back to the previous release.  It redeploys a prior image: the one named by `deploymentId`, or — with no body — the newest earlier deployment that carries a real built image and did not error, skipping the release currently live. An app with nothing earlier to return to is 400.  A rollback is a deploy of an old image, not a rewind: it takes a NEW version number and appends to the history rather than erasing what came after. Both lookups are scoped to this app and org, so another tenant's image can never be rolled in. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  ///
  /// * [RollbackReq] rollbackReq (required):
  Future<Response> postPlatformProjectsByProjectAppsByAppRollbackWithHttpInfo(String project, String app, RollbackReq rollbackReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/projects/{project}/apps/{app}/rollback'
      .replaceAll('{project}', project)
      .replaceAll('{app}', app);

    // ignore: prefer_final_locals
    Object? postBody = rollbackReq;

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

  /// Goes back to the previous release.
  ///
  /// Goes back to the previous release.  It redeploys a prior image: the one named by `deploymentId`, or — with no body — the newest earlier deployment that carries a real built image and did not error, skipping the release currently live. An app with nothing earlier to return to is 400.  A rollback is a deploy of an old image, not a rewind: it takes a NEW version number and appends to the history rather than erasing what came after. Both lookups are scoped to this app and org, so another tenant's image can never be rolled in. Requires a validated principal; 403 without one.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  ///
  /// * [RollbackReq] rollbackReq (required):
  Future<DeploymentView?> postPlatformProjectsByProjectAppsByAppRollback(String project, String app, RollbackReq rollbackReq,) async {
    final response = await postPlatformProjectsByProjectAppsByAppRollbackWithHttpInfo(project, app, rollbackReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeploymentView',) as DeploymentView;
    
    }
    return null;
  }

  /// Starts a stopped app back up.
  ///
  /// Starts a stopped app back up.  It scales the app's Service back to its configured replica count and marks it live, answering the updated application. It does not redeploy: the image already on the Service CR is what comes back.  The billing watermark is reset to now as part of starting, so the org is charged for THIS live span and never for the gap the app spent stopped. An app with no Service CR is 404, an unreachable cluster is 503, and a cluster that refuses the scale is 502. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  Future<Response> postPlatformProjectsByProjectAppsByAppStartWithHttpInfo(String project, String app,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/projects/{project}/apps/{app}/start'
      .replaceAll('{project}', project)
      .replaceAll('{app}', app);

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

  /// Starts a stopped app back up.
  ///
  /// Starts a stopped app back up.  It scales the app's Service back to its configured replica count and marks it live, answering the updated application. It does not redeploy: the image already on the Service CR is what comes back.  The billing watermark is reset to now as part of starting, so the org is charged for THIS live span and never for the gap the app spent stopped. An app with no Service CR is 404, an unreachable cluster is 503, and a cluster that refuses the scale is 502. Requires a validated principal; 403 without one.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  Future<AppView?> postPlatformProjectsByProjectAppsByAppStart(String project, String app,) async {
    final response = await postPlatformProjectsByProjectAppsByAppStartWithHttpInfo(project, app,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AppView',) as AppView;
    
    }
    return null;
  }

  /// Stops an app without deleting it.
  ///
  /// Stops an app without deleting it.  It scales the app's Service to zero replicas and marks it stopped, answering the updated application. Nothing else is removed — the record, its env, its domains and its deployment history all survive, and /start brings it back at the same replica count.  An app that is not deployed has no Service CR to scale and is 404. An unreachable cluster is 503 and a cluster that refuses the scale is 502. Because the pods stop, so does the compute metering. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  Future<Response> postPlatformProjectsByProjectAppsByAppStopWithHttpInfo(String project, String app,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/projects/{project}/apps/{app}/stop'
      .replaceAll('{project}', project)
      .replaceAll('{app}', app);

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

  /// Stops an app without deleting it.
  ///
  /// Stops an app without deleting it.  It scales the app's Service to zero replicas and marks it stopped, answering the updated application. Nothing else is removed — the record, its env, its domains and its deployment history all survive, and /start brings it back at the same replica count.  An app that is not deployed has no Service CR to scale and is 404. An unreachable cluster is 503 and a cluster that refuses the scale is 502. Because the pods stop, so does the compute metering. Requires a validated principal; 403 without one.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  Future<AppView?> postPlatformProjectsByProjectAppsByAppStop(String project, String app,) async {
    final response = await postPlatformProjectsByProjectAppsByAppStopWithHttpInfo(project, app,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AppView',) as AppView;
    
    }
    return null;
  }

  /// Runs a container image and gives back a URL.
  ///
  /// Runs a container image and gives back a URL.  The one-call shortcut over project → app → deploy: give it a `name` and an `image` and it creates or updates an image-source application in your org's DEFAULT project, deploys it through the same operator Service-CR writer everything else uses, and answers its id, name, live URL, status and shape. Re-running the same name UPDATES it in place, so the call is idempotent by name.  What it produces is a first-class application, not a special object: it is listable, stoppable and redeployable through the /v1/platform routes like any other app.  `minScale` is the replica floor. `maxScale` above it declares an autoscaling ceiling; `maxScale: 0` means no autoscaler at all — a fixed run at the floor. Both are clamped to the deployment's limits. `runtime` and `shape` are accepted for the client contract and echoed back: the image is the runtime unit and sizing is the operator's default.  It is BILLING-GATED before it touches the cluster: a flat per-run fee is authorized against the org's own prepaid balance first, so an org that cannot pay is refused without anything being created. An unreachable cluster is 503 — a run never reports a URL it did not create. Secret env is sealed into KMS and fails closed without it.  Requires a validated principal; 403 without one. The org is resolved from that validated identity and is what both pays and owns the namespace — it is never read from the body.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RunReq] runReq (required):
  Future<Response> postPlatformRunWithHttpInfo(RunReq runReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/run';

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
  Future<RunView?> postPlatformRun(RunReq runReq,) async {
    final response = await postPlatformRunWithHttpInfo(runReq,);
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

  /// Triggers a native build — an image, or the binaries a repo declares.
  ///
  /// Triggers a native build — an image, or the binaries a repo declares.  The fabric's own build trigger, and what `hanzo build` and git-push-to-deploy call. It answers 202 with the build job id: a queued build, not a pushed artifact.  Two lanes, and a build is exactly one of them. The IMAGE lane takes `repo` and the output `image` and launches a BuildKit Job that pushes it. The ARTIFACT lane takes `binaries` — the same recipe the repo's hanzo.yml declares — and publishes to object storage instead; it must carry no `image`, because a build produces binaries or an image, never both.  PRIVILEGED, and A BUILD BELONGS TO THE ORGANIZATION ITS CREDENTIAL NAMES. Two credentials, never a third:    - one that NAMES an organization — a person who administers it (the `hanzo     build` path, so one IAM login authorizes a build with no separate build     token), or that organization's own machine identity (the pipeline path). The     build is attributed to that org and confined to what it owns.   - the shared build-callback token, compared in constant time. It names NO     organization, which is both why the fabric's own release can publish across     brands with it and why anything that CAN name one is read first.  Both are bounded by the owned-registry allowlist. The org path is bounded again, by the org: the image's registry namespace must be one that organization owns, so it publishes into its own brand and can never overwrite another's through the shared push credential. The same confinement applies to the artifact lane's repo owner. There is no request field naming an organization — the attribution is read off the credential, so there is nothing for a caller to write it with.  The output image is parsed and validated as a single well-formed OCI ref before any authorization decision reads it, so a crafted ref cannot smuggle a build-exporter attribute past the check.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RunnerBuildReq] runnerBuildReq (required):
  Future<Response> postPlatformRunnerWithHttpInfo(RunnerBuildReq runnerBuildReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/runner';

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
  /// Triggers a native build — an image, or the binaries a repo declares.  The fabric's own build trigger, and what `hanzo build` and git-push-to-deploy call. It answers 202 with the build job id: a queued build, not a pushed artifact.  Two lanes, and a build is exactly one of them. The IMAGE lane takes `repo` and the output `image` and launches a BuildKit Job that pushes it. The ARTIFACT lane takes `binaries` — the same recipe the repo's hanzo.yml declares — and publishes to object storage instead; it must carry no `image`, because a build produces binaries or an image, never both.  PRIVILEGED, and A BUILD BELONGS TO THE ORGANIZATION ITS CREDENTIAL NAMES. Two credentials, never a third:    - one that NAMES an organization — a person who administers it (the `hanzo     build` path, so one IAM login authorizes a build with no separate build     token), or that organization's own machine identity (the pipeline path). The     build is attributed to that org and confined to what it owns.   - the shared build-callback token, compared in constant time. It names NO     organization, which is both why the fabric's own release can publish across     brands with it and why anything that CAN name one is read first.  Both are bounded by the owned-registry allowlist. The org path is bounded again, by the org: the image's registry namespace must be one that organization owns, so it publishes into its own brand and can never overwrite another's through the shared push credential. The same confinement applies to the artifact lane's repo owner. There is no request field naming an organization — the attribution is read off the credential, so there is nothing for a caller to write it with.  The output image is parsed and validated as a single well-formed OCI ref before any authorization decision reads it, so a crafted ref cannot smuggle a build-exporter attribute past the check.
  ///
  /// Parameters:
  ///
  /// * [RunnerBuildReq] runnerBuildReq (required):
  Future<RunnerBuildResp?> postPlatformRunner(RunnerBuildReq runnerBuildReq,) async {
    final response = await postPlatformRunnerWithHttpInfo(runnerBuildReq,);
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

  /// Replaces an app's environment variables.
  ///
  /// Replaces an app's environment variables.  It writes the app's whole environment set and answers the updated application. This is the one post-create write path for env, and it REPLACES rather than merges: a variable absent from the body is gone, and a secret dropped from the set leaves the app's Secret on its next deploy.  Keys must match `^[A-Za-z_][A-Za-z0-9_]*$`. A value marked `secret: true` is sealed into KMS and blanked in the database, so plaintext is never persisted — and the write fails 503 if KMS is unavailable rather than storing one in the clear.  The rule worth knowing: this does not restart anything. Once the app has been deployed the secret sync is re-declared immediately so the operator re-materialises the Secret, but RUNNING pods keep the environment they started with until their next deploy or restart. Requires a validated principal; 403 without one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  ///
  /// * [SetEnvReq] setEnvReq (required):
  Future<Response> putPlatformProjectsByProjectAppsByAppEnvWithHttpInfo(String project, String app, SetEnvReq setEnvReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/projects/{project}/apps/{app}/env'
      .replaceAll('{project}', project)
      .replaceAll('{app}', app);

    // ignore: prefer_final_locals
    Object? postBody = setEnvReq;

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

  /// Replaces an app's environment variables.
  ///
  /// Replaces an app's environment variables.  It writes the app's whole environment set and answers the updated application. This is the one post-create write path for env, and it REPLACES rather than merges: a variable absent from the body is gone, and a secret dropped from the set leaves the app's Secret on its next deploy.  Keys must match `^[A-Za-z_][A-Za-z0-9_]*$`. A value marked `secret: true` is sealed into KMS and blanked in the database, so plaintext is never persisted — and the write fails 503 if KMS is unavailable rather than storing one in the clear.  The rule worth knowing: this does not restart anything. Once the app has been deployed the secret sync is re-declared immediately so the operator re-materialises the Secret, but RUNNING pods keep the environment they started with until their next deploy or restart. Requires a validated principal; 403 without one.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project the application lives under, from the path.
  ///
  /// * [String] app (required):
  ///   App is the application's slug, from the path.
  ///
  /// * [SetEnvReq] setEnvReq (required):
  Future<AppView?> putPlatformProjectsByProjectAppsByAppEnv(String project, String app, SetEnvReq setEnvReq,) async {
    final response = await putPlatformProjectsByProjectAppsByAppEnvWithHttpInfo(project, app, setEnvReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AppView',) as AppView;
    
    }
    return null;
  }
}
