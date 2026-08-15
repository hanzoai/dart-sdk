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

  /// Deletes a project and takes its site off the internet.
  ///
  /// Deletes a project and takes its site off the internet.  The metadata delete is authoritative and everything after it is best-effort, in this order: the public `<slug>` subdomain binding is released so the slug is free to reclaim, the release rows are dropped so a reclaimed slug never inherits the previous owner's rollback menu, the git source is retired on every copy it has so a reclaimed slug never adopts a repository left behind (visibility.go), the S3 origin is purged under BOTH `<org>/<slug>/` and the site's sibling release space, and the edge cache-tag is flushed. A failure in any of those is logged and the delete still answers 204 — resurrecting a project because a purge missed would be worse than a leaked prefix.  Scope: a validated principal is required (403 without one) and the project is resolved within that principal's org, so another tenant's slug is a 404 and nothing of theirs is touched.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the project to act on, from the path. It is unique within the caller's org and nowhere else, so another tenant's slug is a 404.
  Future<Response> deletePlatformSitesBySlugWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/sites/{slug}'
      .replaceAll('{slug}', slug);

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

  /// Deletes a project and takes its site off the internet.
  ///
  /// Deletes a project and takes its site off the internet.  The metadata delete is authoritative and everything after it is best-effort, in this order: the public `<slug>` subdomain binding is released so the slug is free to reclaim, the release rows are dropped so a reclaimed slug never inherits the previous owner's rollback menu, the git source is retired on every copy it has so a reclaimed slug never adopts a repository left behind (visibility.go), the S3 origin is purged under BOTH `<org>/<slug>/` and the site's sibling release space, and the edge cache-tag is flushed. A failure in any of those is logged and the delete still answers 204 — resurrecting a project because a purge missed would be worse than a leaked prefix.  Scope: a validated principal is required (403 without one) and the project is resolved within that principal's org, so another tenant's slug is a 404 and nothing of theirs is touched.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the project to act on, from the path. It is unique within the caller's org and nowhere else, so another tenant's slug is a 404.
  Future<void> deletePlatformSitesBySlug(String slug,) async {
    final response = await deletePlatformSitesBySlugWithHttpInfo(slug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Gives a custom hostname back, so the name is free to reuse.
  ///
  /// Gives a custom hostname back, so the name is free to reuse.  A claim is FIRST-COME and global, so an add-only surface was not ownership but a leak: a customer who mistyped a domain, or claimed one they later moved elsewhere, could neither reuse it nor let anyone else. This is the third writer that closes it. The release is scoped to (host, org, slug), so it can only ever drop THIS tenant's own claim, and it is IDEMPOTENT: releasing a host we do not hold is a clean 204, never a 404 that would let a caller probe which hosts other tenants hold. The edge cache-tag is flushed, since the host stops routing here.  Scope: a validated principal is required (403 without one) and the site is resolved within that principal's org, so another tenant's slug is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the project the host is attached to, from the path.
  ///
  /// * [String] host (required):
  ///   Host is the custom hostname, from the path. It is cleaned to its canonical form (lowercased, trailing dot dropped) before anything is looked up.
  Future<Response> deletePlatformSitesBySlugDomainsByHostWithHttpInfo(String slug, String host,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/sites/{slug}/domains/{host}'
      .replaceAll('{slug}', slug)
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

  /// Gives a custom hostname back, so the name is free to reuse.
  ///
  /// Gives a custom hostname back, so the name is free to reuse.  A claim is FIRST-COME and global, so an add-only surface was not ownership but a leak: a customer who mistyped a domain, or claimed one they later moved elsewhere, could neither reuse it nor let anyone else. This is the third writer that closes it. The release is scoped to (host, org, slug), so it can only ever drop THIS tenant's own claim, and it is IDEMPOTENT: releasing a host we do not hold is a clean 204, never a 404 that would let a caller probe which hosts other tenants hold. The edge cache-tag is flushed, since the host stops routing here.  Scope: a validated principal is required (403 without one) and the site is resolved within that principal's org, so another tenant's slug is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the project the host is attached to, from the path.
  ///
  /// * [String] host (required):
  ///   Host is the custom hostname, from the path. It is cleaned to its canonical form (lowercased, trailing dot dropped) before anything is looked up.
  Future<void> deletePlatformSitesBySlugDomainsByHost(String slug, String host,) async {
    final response = await deletePlatformSitesBySlugDomainsByHostWithHttpInfo(slug, host,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// What this organization has declared, and what CD did with it
  ///
  /// Returns the declarations in the caller's own org directory, each joined with the Hanzo CD Application reconciling it — sync verdict, health, the universe commit last applied. `cd` is null for a declaration the delivery plane has no Application for, which is the normal state of one that exists only on a branch.  If the delivery plane cannot be read, the declarations are still returned and `cdUnavailable` says why. An unreadable plane never renders as \"nothing has been reconciled\".
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPlatformAppsWithHttpInfo() async {
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
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// What this organization has declared, and what CD did with it
  ///
  /// Returns the declarations in the caller's own org directory, each joined with the Hanzo CD Application reconciling it — sync verdict, health, the universe commit last applied. `cd` is null for a declaration the delivery plane has no Application for, which is the normal state of one that exists only on a branch.  If the delivery plane cannot be read, the declarations are still returned and `cdUnavailable` says why. An unreadable plane never renders as \"nothing has been reconciled\".
  Future<void> getPlatformApps() async {
    final response = await getPlatformAppsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// One declaration
  ///
  /// The values file for one app as git declares it: image repository and tag, hosts, replicas, and whether CD is automated on it. 404 when this organization declares no such app.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] app (required):
  Future<Response> getPlatformAppsByAppWithHttpInfo(String app,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/apps/{app}'
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

  /// One declaration
  ///
  /// The values file for one app as git declares it: image repository and tag, hosts, replicas, and whether CD is automated on it. 404 when this organization declares no such app.
  ///
  /// Parameters:
  ///
  /// * [String] app (required):
  Future<void> getPlatformAppsByApp(String app,) async {
    final response = await getPlatformAppsByAppWithHttpInfo(app,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// One app's reconciliation
  ///
  /// The Hanzo CD Application for one declaration, on its own — the poll a deploy view makes while it waits, without re-reading the whole inventory. 404 while the declaration exists only on a branch, because the generator reads main.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] app (required):
  Future<Response> getPlatformAppsByAppCdWithHttpInfo(String app,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/apps/{app}/cd'
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

  /// One app's reconciliation
  ///
  /// The Hanzo CD Application for one declaration, on its own — the poll a deploy view makes while it waits, without re-reading the whole inventory. 404 while the declaration exists only on a branch, because the generator reads main.
  ///
  /// Parameters:
  ///
  /// * [String] app (required):
  Future<void> getPlatformAppsByAppCd(String app,) async {
    final response = await getPlatformAppsByAppCdWithHttpInfo(app,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The delivery plane
  ///
  /// Every Hanzo CD Application this caller may observe, with its sync verdict, health, the universe revision last applied, and whether automation and self-heal are on. A SuperAdmin sees the fleet; an org admin sees only Applications whose destination namespace IS its own organization, and never a reserved one.  A cluster with no CD installed answers an empty plane. A plane that cannot be READ answers 503 and says why — the two are opposite facts and never share a shape.
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

  /// The delivery plane
  ///
  /// Every Hanzo CD Application this caller may observe, with its sync verdict, health, the universe revision last applied, and whether automation and self-heal are on. A SuperAdmin sees the fleet; an org admin sees only Applications whose destination namespace IS its own organization, and never a reserved one.  A cluster with no CD installed answers an empty plane. A plane that cannot be READ answers 503 and says why — the two are opposite facts and never share a shape.
  Future<void> getPlatformCd() async {
    final response = await getPlatformCdWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
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

  /// Returns every project your org owns.
  ///
  /// Returns every project your org owns.  Each row carries the slug, name, framework, visibility, status and live URL — the same rows console and the builder render, because there is only one store behind both. It requires a validated principal (403 without one) and is keyed by that principal's org, so it never contains another tenant's project.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPlatformSitesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/sites';

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

  /// Returns every project your org owns.
  ///
  /// Returns every project your org owns.  Each row carries the slug, name, framework, visibility, status and live URL — the same rows console and the builder render, because there is only one store behind both. It requires a validated principal (403 without one) and is keyed by that principal's org, so it never contains another tenant's project.
  Future<List<ProjectsProject>?> getPlatformSites() async {
    final response = await getPlatformSitesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ProjectsProject>') as List)
        .cast<ProjectsProject>()
        .toList(growable: false);

    }
    return null;
  }

  /// Returns one project of yours by slug — its settings, its live URL and the deployment currently serving it.
  ///
  /// Returns one project of yours by slug — its settings, its live URL and the deployment currently serving it.  Scope: a validated principal is required (403 without one) and the lookup is keyed by (org, slug), so another tenant's slug is a 404 exactly like a nonexistent one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the project to act on, from the path. It is unique within the caller's org and nowhere else, so another tenant's slug is a 404.
  Future<Response> getPlatformSitesBySlugWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/sites/{slug}'
      .replaceAll('{slug}', slug);

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

  /// Returns one project of yours by slug — its settings, its live URL and the deployment currently serving it.
  ///
  /// Returns one project of yours by slug — its settings, its live URL and the deployment currently serving it.  Scope: a validated principal is required (403 without one) and the lookup is keyed by (org, slug), so another tenant's slug is a 404 exactly like a nonexistent one.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the project to act on, from the path. It is unique within the caller's org and nowhere else, so another tenant's slug is a 404.
  Future<ProjectsProject?> getPlatformSitesBySlug(String slug,) async {
    final response = await getPlatformSitesBySlugWithHttpInfo(slug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectsProject',) as ProjectsProject;
    
    }
    return null;
  }

  /// Returns a project's deploy history, newest version first.
  ///
  /// Returns a project's deploy history, newest version first.  Every deploy of the project is a row — uploads, generated sites, and git/CI builds alike — carrying its version, status, source, commit, live URL, file count and byte count. The short-lived upload grant a queued git deployment was handed is NOT replayed here: it exists only on the 202 that minted it, so a grant cannot outlive its build by being fetched again.  Scope: a validated principal is required (403 without one) and the project is resolved within that principal's org, so another tenant's slug is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the project to act on, from the path. It is unique within the caller's org and nowhere else, so another tenant's slug is a 404.
  Future<Response> getPlatformSitesBySlugDeploymentsWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/sites/{slug}/deployments'
      .replaceAll('{slug}', slug);

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

  /// Returns a project's deploy history, newest version first.
  ///
  /// Returns a project's deploy history, newest version first.  Every deploy of the project is a row — uploads, generated sites, and git/CI builds alike — carrying its version, status, source, commit, live URL, file count and byte count. The short-lived upload grant a queued git deployment was handed is NOT replayed here: it exists only on the 202 that minted it, so a grant cannot outlive its build by being fetched again.  Scope: a validated principal is required (403 without one) and the project is resolved within that principal's org, so another tenant's slug is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the project to act on, from the path. It is unique within the caller's org and nowhere else, so another tenant's slug is a 404.
  Future<List<ProjectsDeployment>?> getPlatformSitesBySlugDeployments(String slug,) async {
    final response = await getPlatformSitesBySlugDeploymentsWithHttpInfo(slug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ProjectsDeployment>') as List)
        .cast<ProjectsDeployment>()
        .toList(growable: false);

    }
    return null;
  }

  /// Returns one deployment of a project by id.
  ///
  /// Returns one deployment of a project by id.  It is how a console follows a build: the status (`queued`, `uploading`, `live`, `error`), the message a failure left, and the URL and prefix it went live at. Like the history, it never replays the upload grant.  Scope: a validated principal is required (403 without one). Both the project and the deployment are resolved within that principal's org, so a deployment of another project — or of another tenant — is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the project the deployment belongs to, from the path.
  ///
  /// * [String] id (required):
  ///   ID is the deployment id, from the path. A deployment of another project — or of another tenant's project — is not found.
  Future<Response> getPlatformSitesBySlugDeploymentsByIdWithHttpInfo(String slug, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/sites/{slug}/deployments/{id}'
      .replaceAll('{slug}', slug)
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

  /// Returns one deployment of a project by id.
  ///
  /// Returns one deployment of a project by id.  It is how a console follows a build: the status (`queued`, `uploading`, `live`, `error`), the message a failure left, and the URL and prefix it went live at. Like the history, it never replays the upload grant.  Scope: a validated principal is required (403 without one). Both the project and the deployment are resolved within that principal's org, so a deployment of another project — or of another tenant — is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the project the deployment belongs to, from the path.
  ///
  /// * [String] id (required):
  ///   ID is the deployment id, from the path. A deployment of another project — or of another tenant's project — is not found.
  Future<ProjectsDeployment?> getPlatformSitesBySlugDeploymentsById(String slug, String id,) async {
    final response = await getPlatformSitesBySlugDeploymentsByIdWithHttpInfo(slug, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectsDeployment',) as ProjectsDeployment;
    
    }
    return null;
  }

  /// Returns every custom hostname this site holds: the live ones, plus any pending claim with the DNS records it still owes.
  ///
  /// Returns every custom hostname this site holds: the live ones, plus any pending claim with the DNS records it still owes.  `domains` is the routing answer — the hosts that are verified right now — while `claims` is the full panel, one row per host, each saying whether it is live or pending and, if pending, exactly what to publish.  Scope: a validated principal is required (403 without one) and the site is resolved within that principal's org, so another tenant's slug is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the project to act on, from the path. It is unique within the caller's org and nowhere else, so another tenant's slug is a 404.
  Future<Response> getPlatformSitesBySlugDomainsWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/sites/{slug}/domains'
      .replaceAll('{slug}', slug);

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

  /// Returns every custom hostname this site holds: the live ones, plus any pending claim with the DNS records it still owes.
  ///
  /// Returns every custom hostname this site holds: the live ones, plus any pending claim with the DNS records it still owes.  `domains` is the routing answer — the hosts that are verified right now — while `claims` is the full panel, one row per host, each saying whether it is live or pending and, if pending, exactly what to publish.  Scope: a validated principal is required (403 without one) and the site is resolved within that principal's org, so another tenant's slug is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the project to act on, from the path. It is unique within the caller's org and nowhere else, so another tenant's slug is a 404.
  Future<ProjectsDomains?> getPlatformSitesBySlugDomains(String slug,) async {
    final response = await getPlatformSitesBySlugDomainsWithHttpInfo(slug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectsDomains',) as ProjectsDomains;
    
    }
    return null;
  }

  /// Returns a site's releases newest-first, marking the active one — the rollback menu.
  ///
  /// Returns a site's releases newest-first, marking the active one — the rollback menu.  Each row carries the release id to activate, the source it was promoted from, its object and byte counts, and the URL if it is the one serving. Retention bounds the list, so it is the set that can actually still be rolled back to, not a full history.  Scope: a validated principal is required (403 without one) and the site is resolved within that principal's org, so another tenant's slug is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the project to act on, from the path. It is unique within the caller's org and nowhere else, so another tenant's slug is a 404.
  Future<Response> getPlatformSitesBySlugReleasesWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/sites/{slug}/releases'
      .replaceAll('{slug}', slug);

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

  /// Returns a site's releases newest-first, marking the active one — the rollback menu.
  ///
  /// Returns a site's releases newest-first, marking the active one — the rollback menu.  Each row carries the release id to activate, the source it was promoted from, its object and byte counts, and the URL if it is the one serving. Retention bounds the list, so it is the set that can actually still be rolled back to, not a full history.  Scope: a validated principal is required (403 without one) and the site is resolved within that principal's org, so another tenant's slug is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the project to act on, from the path. It is unique within the caller's org and nowhere else, so another tenant's slug is a 404.
  Future<List<ProjectsRelease>?> getPlatformSitesBySlugReleases(String slug,) async {
    final response = await getPlatformSitesBySlugReleasesWithHttpInfo(slug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ProjectsRelease>') as List)
        .cast<ProjectsRelease>()
        .toList(growable: false);

    }
    return null;
  }

  /// Changes a project's settings, and only the settings you send.
  ///
  /// Changes a project's settings, and only the settings you send.  Every field is optional and absent means \"leave it\": `name` may not be blanked, `framework` must stay a known build hint, and `cacheControl` is capped at 256 characters with no newlines (it becomes a response header). `visibility` flips public/private under the same rule as create — public is free, private needs a funded org. `upstream` and `license` are free-text credit for third-party work, and sending \"\" clears one. Changing anything reconciles the project's canonical git repo, so a visibility change reaches the source and not just the listing.  `hidden`/`hiddenReason` are platform MODERATION and are ignored unless the caller is a platform admin; they remove a project from the public catalogue without touching the publisher's own visibility choice, so un-hiding restores exactly what they asked for.  Scope: a validated principal is required (403 without one) and the project is resolved within that principal's org, so another tenant's slug is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the project to update, from the path. The URL is the addressing authority — a `slug` in the body cannot move the write to another project.
  ///
  /// * [ProjectsUpdate] projectsUpdate (required):
  Future<Response> patchPlatformSitesBySlugWithHttpInfo(String slug, ProjectsUpdate projectsUpdate,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/sites/{slug}'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = projectsUpdate;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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

  /// Changes a project's settings, and only the settings you send.
  ///
  /// Changes a project's settings, and only the settings you send.  Every field is optional and absent means \"leave it\": `name` may not be blanked, `framework` must stay a known build hint, and `cacheControl` is capped at 256 characters with no newlines (it becomes a response header). `visibility` flips public/private under the same rule as create — public is free, private needs a funded org. `upstream` and `license` are free-text credit for third-party work, and sending \"\" clears one. Changing anything reconciles the project's canonical git repo, so a visibility change reaches the source and not just the listing.  `hidden`/`hiddenReason` are platform MODERATION and are ignored unless the caller is a platform admin; they remove a project from the public catalogue without touching the publisher's own visibility choice, so un-hiding restores exactly what they asked for.  Scope: a validated principal is required (403 without one) and the project is resolved within that principal's org, so another tenant's slug is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the project to update, from the path. The URL is the addressing authority — a `slug` in the body cannot move the write to another project.
  ///
  /// * [ProjectsUpdate] projectsUpdate (required):
  Future<ProjectsProject?> patchPlatformSitesBySlug(String slug, ProjectsUpdate projectsUpdate,) async {
    final response = await patchPlatformSitesBySlugWithHttpInfo(slug, projectsUpdate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectsProject',) as ProjectsProject;
    
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

  /// Creates a project — the handle a site is deployed and served under — and answers 201 with it in `draft`.
  ///
  /// Creates a project — the handle a site is deployed and served under — and answers 201 with it in `draft`.  `name` is required; `slug` is derived from the name when omitted and is the identifier that matters — it becomes the S3 key segment, the public host `<slug>.hanzo.app`, and the handle every later call addresses, so it must match `^[a-z0-9]([a-z0-9-]{0,38}[a-z0-9])?$` and may not be a reserved label such as `api` or `admin`. `framework` is a build hint from a closed set, defaulting to `static`; it never gates a deploy, it only tells CI how to build a linked repo.  Two defaults are worth knowing: the analytics beacon is ON unless `analytics` is explicitly false, and `visibility` is `public` unless asked otherwise. Publishing publicly is free; PRIVATE is the paid feature, and an unfunded org asking for it is refused rather than quietly published as public. Creation also provisions the project's data space and a canonical git repo, both best-effort — neither can fail the create.  Scope: a validated principal is required (403 without one) and the project is created in THAT principal's org. The slug is unique per org, so a slug already used in the caller's own org is a 409 while the same slug in another org is irrelevant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProjectsCreate] projectsCreate (required):
  Future<Response> postPlatformSitesWithHttpInfo(ProjectsCreate projectsCreate,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/sites';

    // ignore: prefer_final_locals
    Object? postBody = projectsCreate;

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

  /// Creates a project — the handle a site is deployed and served under — and answers 201 with it in `draft`.
  ///
  /// Creates a project — the handle a site is deployed and served under — and answers 201 with it in `draft`.  `name` is required; `slug` is derived from the name when omitted and is the identifier that matters — it becomes the S3 key segment, the public host `<slug>.hanzo.app`, and the handle every later call addresses, so it must match `^[a-z0-9]([a-z0-9-]{0,38}[a-z0-9])?$` and may not be a reserved label such as `api` or `admin`. `framework` is a build hint from a closed set, defaulting to `static`; it never gates a deploy, it only tells CI how to build a linked repo.  Two defaults are worth knowing: the analytics beacon is ON unless `analytics` is explicitly false, and `visibility` is `public` unless asked otherwise. Publishing publicly is free; PRIVATE is the paid feature, and an unfunded org asking for it is refused rather than quietly published as public. Creation also provisions the project's data space and a canonical git repo, both best-effort — neither can fail the create.  Scope: a validated principal is required (403 without one) and the project is created in THAT principal's org. The slug is unique per org, so a slug already used in the caller's own org is a 409 while the same slug in another org is irrelevant.
  ///
  /// Parameters:
  ///
  /// * [ProjectsCreate] projectsCreate (required):
  Future<ProjectsProject?> postPlatformSites(ProjectsCreate projectsCreate,) async {
    final response = await postPlatformSitesWithHttpInfo(projectsCreate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectsProject',) as ProjectsProject;
    
    }
    return null;
  }

  /// Upload a built site as one archive and serve it
  ///
  /// Takes a built site live at `https://<slug>.hanzo.app` in one call. The body is the site itself — a `zip` or `tar.gz` holding `index.html` at its root (or a single wrapper directory that does), sent raw or as a multipart file part. It is unpacked to the site's own storage prefix and served immediately, answering the finished deployment.  It is bounded by the edge body limit (16 MiB by default), and that bound is the whole reason the other path exists: an oversized POST is refused by the server BEFORE any handler runs and surfaces as an opaque `400 Error when parsing request` that reads like a malformed payload rather than a size cap. A site too large for one archive opens a deployment with `POST /v1/sites/{slug}/deployments` instead and writes its files straight to storage against the scoped grant that answers with — no body limit, and no bytes through this API at all.  Billing is fail-closed and fails FIRST: the hosting gate runs before anything is parsed or uploaded, so an unfunded org is 402 and an unreachable commerce is 503 with nothing written. The debit lands only on success — a failed upload is never billed and never flips the live site — and a redeploy answers the SAME URL, because slug and apex are stable.  Scope: a validated principal is required (403 without one) and the site is resolved within that principal's org, so another tenant's slug is a 404. Object storage must be configured (503); an archive that does not walk is a 400 and one over the size cap is a 413.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [MultipartFile] body:
  Future<Response> postPlatformSitesBySlugDeployWithHttpInfo(String slug, { MultipartFile? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/sites/{slug}/deploy'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/octet-stream'];


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

  /// Upload a built site as one archive and serve it
  ///
  /// Takes a built site live at `https://<slug>.hanzo.app` in one call. The body is the site itself — a `zip` or `tar.gz` holding `index.html` at its root (or a single wrapper directory that does), sent raw or as a multipart file part. It is unpacked to the site's own storage prefix and served immediately, answering the finished deployment.  It is bounded by the edge body limit (16 MiB by default), and that bound is the whole reason the other path exists: an oversized POST is refused by the server BEFORE any handler runs and surfaces as an opaque `400 Error when parsing request` that reads like a malformed payload rather than a size cap. A site too large for one archive opens a deployment with `POST /v1/sites/{slug}/deployments` instead and writes its files straight to storage against the scoped grant that answers with — no body limit, and no bytes through this API at all.  Billing is fail-closed and fails FIRST: the hosting gate runs before anything is parsed or uploaded, so an unfunded org is 402 and an unreachable commerce is 503 with nothing written. The debit lands only on success — a failed upload is never billed and never flips the live site — and a redeploy answers the SAME URL, because slug and apex are stable.  Scope: a validated principal is required (403 without one) and the site is resolved within that principal's org, so another tenant's slug is a 404. Object storage must be configured (503); an archive that does not walk is a 400 and one over the size cap is a 413.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [MultipartFile] body:
  Future<ProjectsDeployment?> postPlatformSitesBySlugDeploy(String slug, { MultipartFile? body, }) async {
    final response = await postPlatformSitesBySlugDeployWithHttpInfo(slug,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectsDeployment',) as ProjectsDeployment;
    
    }
    return null;
  }

  /// Opens a deployment and hands back a short-lived, prefix-scoped grant to write its bytes straight to object storage.
  ///
  /// Opens a deployment and hands back a short-lived, prefix-scoped grant to write its bytes straight to object storage. Answers 202.  This is the path for a site too large to send as one archive: a real export is hundreds of megabytes against a 16 MiB body limit, so the bytes deliberately do NOT pass through the API. The answer carries `bucket`, `prefix` and `upload` — a presigned POST policy that S3 itself confines to this site's prefix (starts-with `<org>/<slug>/`), expires in 30 minutes and bounds each object. So a build writes its own files and holds no standing bucket credential; there is nothing to rotate and nothing that leaks between tenants. Never guess the prefix — it is server-derived, and a guessed one lands where nothing is served.  The deployment is `queued` until POST .../deployments/{id}/complete flips it live (or error). That completion is also where DELETION happens: the grant authorizes writes only, so a build cannot remove a file, and cloud reconciles the prefix against the `keys` manifest the completion carries. A build that dies before completing leaves the deployment queued rather than a half-live site.  The grant is on the 202 and NOWHERE else — it is never stored and never replayed on a later read, so it cannot outlive the build it was minted for. A deployment whose grant could not be minted is still created and still completable; it simply carries no `upload`, and a caller with no other way to write should treat that as the failure it is.  Billing: the hosting gate runs BEFORE anything is created (402 unfunded, 503 commerce unreachable), and the debit lands on the completion that goes live — never on a queued or failed build.  Scope: a validated principal is required (403 without one) and the site is resolved within that principal's org, so another tenant's slug is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the site to deploy, from the path.
  ///
  /// * [ProjectsDeployStart] projectsDeployStart (required):
  Future<Response> postPlatformSitesBySlugDeploymentsWithHttpInfo(String slug, ProjectsDeployStart projectsDeployStart,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/sites/{slug}/deployments'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = projectsDeployStart;

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

  /// Opens a deployment and hands back a short-lived, prefix-scoped grant to write its bytes straight to object storage.
  ///
  /// Opens a deployment and hands back a short-lived, prefix-scoped grant to write its bytes straight to object storage. Answers 202.  This is the path for a site too large to send as one archive: a real export is hundreds of megabytes against a 16 MiB body limit, so the bytes deliberately do NOT pass through the API. The answer carries `bucket`, `prefix` and `upload` — a presigned POST policy that S3 itself confines to this site's prefix (starts-with `<org>/<slug>/`), expires in 30 minutes and bounds each object. So a build writes its own files and holds no standing bucket credential; there is nothing to rotate and nothing that leaks between tenants. Never guess the prefix — it is server-derived, and a guessed one lands where nothing is served.  The deployment is `queued` until POST .../deployments/{id}/complete flips it live (or error). That completion is also where DELETION happens: the grant authorizes writes only, so a build cannot remove a file, and cloud reconciles the prefix against the `keys` manifest the completion carries. A build that dies before completing leaves the deployment queued rather than a half-live site.  The grant is on the 202 and NOWHERE else — it is never stored and never replayed on a later read, so it cannot outlive the build it was minted for. A deployment whose grant could not be minted is still created and still completable; it simply carries no `upload`, and a caller with no other way to write should treat that as the failure it is.  Billing: the hosting gate runs BEFORE anything is created (402 unfunded, 503 commerce unreachable), and the debit lands on the completion that goes live — never on a queued or failed build.  Scope: a validated principal is required (403 without one) and the site is resolved within that principal's org, so another tenant's slug is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the site to deploy, from the path.
  ///
  /// * [ProjectsDeployStart] projectsDeployStart (required):
  Future<ProjectsDeployment?> postPlatformSitesBySlugDeployments(String slug, ProjectsDeployStart projectsDeployStart,) async {
    final response = await postPlatformSitesBySlugDeploymentsWithHttpInfo(slug, projectsDeployStart,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectsDeployment',) as ProjectsDeployment;
    
    }
    return null;
  }

  /// CompleteDeployment is the CI completion hook that flips a queued git deployment to live (or error) once CI has synced the built site to S3.
  ///
  /// CompleteDeployment is the CI completion hook that flips a queued git deployment to live (or error) once CI has synced the built site to S3.  `status` must be `live` or `error`. On a LIVE completion the public host is claimed FIRST, so the deployment reports the URL it actually OWNS — a CI-supplied `liveUrl` is a hint that can refine that URL but can never assert a subdomain another tenant holds. `keys` is the manifest CI just uploaded, relative to the deployment prefix: cloud reconciles the prefix against it so a page deleted from the build actually stops serving. Omit `keys` and nothing is deleted — the prefix only grows. Reconciliation runs only on a live completion (pruning against a failed build's manifest would delete the site the last good build is still serving) and is best-effort, so a stale leftover never turns a successful deploy into a 500. A live completion is also the one billable moment on the git path; an error completion bills nothing.  Scope: a validated principal is required (403 without one). CI authenticates with an org-scoped token through the gateway, so the deployment is resolved within that principal's org and another tenant's slug or deployment id is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the project the deployment belongs to, from the path.
  ///
  /// * [String] id (required):
  ///   ID is the queued deployment to complete, from the path.
  ///
  /// * [ProjectsComplete] projectsComplete (required):
  Future<Response> postPlatformSitesBySlugDeploymentsByIdCompleteWithHttpInfo(String slug, String id, ProjectsComplete projectsComplete,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/sites/{slug}/deployments/{id}/complete'
      .replaceAll('{slug}', slug)
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = projectsComplete;

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

  /// CompleteDeployment is the CI completion hook that flips a queued git deployment to live (or error) once CI has synced the built site to S3.
  ///
  /// CompleteDeployment is the CI completion hook that flips a queued git deployment to live (or error) once CI has synced the built site to S3.  `status` must be `live` or `error`. On a LIVE completion the public host is claimed FIRST, so the deployment reports the URL it actually OWNS — a CI-supplied `liveUrl` is a hint that can refine that URL but can never assert a subdomain another tenant holds. `keys` is the manifest CI just uploaded, relative to the deployment prefix: cloud reconciles the prefix against it so a page deleted from the build actually stops serving. Omit `keys` and nothing is deleted — the prefix only grows. Reconciliation runs only on a live completion (pruning against a failed build's manifest would delete the site the last good build is still serving) and is best-effort, so a stale leftover never turns a successful deploy into a 500. A live completion is also the one billable moment on the git path; an error completion bills nothing.  Scope: a validated principal is required (403 without one). CI authenticates with an org-scoped token through the gateway, so the deployment is resolved within that principal's org and another tenant's slug or deployment id is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the project the deployment belongs to, from the path.
  ///
  /// * [String] id (required):
  ///   ID is the queued deployment to complete, from the path.
  ///
  /// * [ProjectsComplete] projectsComplete (required):
  Future<ProjectsDeployment?> postPlatformSitesBySlugDeploymentsByIdComplete(String slug, String id, ProjectsComplete projectsComplete,) async {
    final response = await postPlatformSitesBySlugDeploymentsByIdCompleteWithHttpInfo(slug, id, projectsComplete,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectsDeployment',) as ProjectsDeployment;
    
    }
    return null;
  }

  /// Attaches one or more CUSTOM public hostnames to this org's site.
  ///
  /// Attaches one or more CUSTOM public hostnames to this org's site.  Binding a host you do not own would let you shadow it at the edge, so which outcome you get depends on whether ownership is already established: a SuperAdmin vouches (the operator manages the customer's DNS, so its bind IS the proof) and binds VERIFIED immediately; every other caller, INCLUDING an admin of the deployment's own brand org, has the host CLAIMED as pending and gets the DNS challenge back in `bound[].records`. A pending claim HOLDS the name so nobody else can take it, but it does not route until POST .../domains/{host}/verify proves control.  A hostname we operate is refused to a non-vouched caller (those are assigned by the platform, never claimed), a host another site already holds is a 409, and a name the platform holds is a 400 for EVERY caller — a vouch skips the ownership proof, never the host table's own invariant. Claims and binds are idempotent for the same (org, slug), and re-claiming returns the SAME token rather than invalidating a record the customer has already published. The edge cache-tag is flushed afterwards so a newly-verified host serves the current build immediately.  Scope: a validated principal is required (403 without one) and the site is resolved within that principal's org, so another tenant's slug is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the site the hosts attach to, from the path.
  ///
  /// * [ProjectsDomainsBind] projectsDomainsBind (required):
  Future<Response> postPlatformSitesBySlugDomainsWithHttpInfo(String slug, ProjectsDomainsBind projectsDomainsBind,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/sites/{slug}/domains'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = projectsDomainsBind;

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

  /// Attaches one or more CUSTOM public hostnames to this org's site.
  ///
  /// Attaches one or more CUSTOM public hostnames to this org's site.  Binding a host you do not own would let you shadow it at the edge, so which outcome you get depends on whether ownership is already established: a SuperAdmin vouches (the operator manages the customer's DNS, so its bind IS the proof) and binds VERIFIED immediately; every other caller, INCLUDING an admin of the deployment's own brand org, has the host CLAIMED as pending and gets the DNS challenge back in `bound[].records`. A pending claim HOLDS the name so nobody else can take it, but it does not route until POST .../domains/{host}/verify proves control.  A hostname we operate is refused to a non-vouched caller (those are assigned by the platform, never claimed), a host another site already holds is a 409, and a name the platform holds is a 400 for EVERY caller — a vouch skips the ownership proof, never the host table's own invariant. Claims and binds are idempotent for the same (org, slug), and re-claiming returns the SAME token rather than invalidating a record the customer has already published. The edge cache-tag is flushed afterwards so a newly-verified host serves the current build immediately.  Scope: a validated principal is required (403 without one) and the site is resolved within that principal's org, so another tenant's slug is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the site the hosts attach to, from the path.
  ///
  /// * [ProjectsDomainsBind] projectsDomainsBind (required):
  Future<ProjectsBoundDomains?> postPlatformSitesBySlugDomains(String slug, ProjectsDomainsBind projectsDomainsBind,) async {
    final response = await postPlatformSitesBySlugDomainsWithHttpInfo(slug, projectsDomainsBind,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectsBoundDomains',) as ProjectsBoundDomains;
    
    }
    return null;
  }

  /// Checks the DNS challenge for a pending custom hostname and, when it passes, promotes the host so it begins routing at the edge.
  ///
  /// Checks the DNS challenge for a pending custom hostname and, when it passes, promotes the host so it begins routing at the edge.  It answers 200 either way, with the host's honest current state: verified once the TXT record is found, still pending — with the records to publish and the resolver's own explanation in `detail` — when it is not. A not-yet is not an error: the check ran, DNS simply has not propagated, and the customer retries. An already-verified host is returned unchanged without re-resolving. On a successful promotion the edge cache-tag is flushed, since the host routes as of that moment.  Scope: a validated principal is required (403 without one). Both the site and the claim are resolved within that principal's org, so a host claimed by another tenant is \"not claimed by this site\".
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the project the host is attached to, from the path.
  ///
  /// * [String] host (required):
  ///   Host is the custom hostname, from the path. It is cleaned to its canonical form (lowercased, trailing dot dropped) before anything is looked up.
  Future<Response> postPlatformSitesBySlugDomainsByHostVerifyWithHttpInfo(String slug, String host,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/sites/{slug}/domains/{host}/verify'
      .replaceAll('{slug}', slug)
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

  /// Checks the DNS challenge for a pending custom hostname and, when it passes, promotes the host so it begins routing at the edge.
  ///
  /// Checks the DNS challenge for a pending custom hostname and, when it passes, promotes the host so it begins routing at the edge.  It answers 200 either way, with the host's honest current state: verified once the TXT record is found, still pending — with the records to publish and the resolver's own explanation in `detail` — when it is not. A not-yet is not an error: the check ran, DNS simply has not propagated, and the customer retries. An already-verified host is returned unchanged without re-resolving. On a successful promotion the edge cache-tag is flushed, since the host routes as of that moment.  Scope: a validated principal is required (403 without one). Both the site and the claim are resolved within that principal's org, so a host claimed by another tenant is \"not claimed by this site\".
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the project the host is attached to, from the path.
  ///
  /// * [String] host (required):
  ///   Host is the custom hostname, from the path. It is cleaned to its canonical form (lowercased, trailing dot dropped) before anything is looked up.
  Future<ProjectsDomain?> postPlatformSitesBySlugDomainsByHostVerify(String slug, String host,) async {
    final response = await postPlatformSitesBySlugDomainsByHostVerifyWithHttpInfo(slug, host,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectsDomain',) as ProjectsDomain;
    
    }
    return null;
  }

  /// Promotes a build output into a new release AND goes live with it — create+activate in one call, which is the 99% path.
  ///
  /// Promotes a build output into a new release AND goes live with it — create+activate in one call, which is the 99% path.  It is exactly the two halves in sequence with no extra semantics, so the staged flow and the one-shot flow can never drift apart: `source` is promoted under the same org-relative rule and the same guards CreateRelease applies, then the site's pointer is flipped to it, the public host is claimed and the edge is purged. Idempotent on unchanged bytes — same manifest, same release id, no copy — and billed once, after the release exists.  Scope: a validated principal is required (403 without one) and the site is resolved within that principal's org, so another tenant's slug is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the site to publish, from the path.
  ///
  /// * [ProjectsPublish] projectsPublish (required):
  Future<Response> postPlatformSitesBySlugPublishWithHttpInfo(String slug, ProjectsPublish projectsPublish,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/sites/{slug}/publish'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = projectsPublish;

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

  /// Promotes a build output into a new release AND goes live with it — create+activate in one call, which is the 99% path.
  ///
  /// Promotes a build output into a new release AND goes live with it — create+activate in one call, which is the 99% path.  It is exactly the two halves in sequence with no extra semantics, so the staged flow and the one-shot flow can never drift apart: `source` is promoted under the same org-relative rule and the same guards CreateRelease applies, then the site's pointer is flipped to it, the public host is claimed and the edge is purged. Idempotent on unchanged bytes — same manifest, same release id, no copy — and billed once, after the release exists.  Scope: a validated principal is required (403 without one) and the site is resolved within that principal's org, so another tenant's slug is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the site to publish, from the path.
  ///
  /// * [ProjectsPublish] projectsPublish (required):
  Future<ProjectsRelease?> postPlatformSitesBySlugPublish(String slug, ProjectsPublish projectsPublish,) async {
    final response = await postPlatformSitesBySlugPublishWithHttpInfo(slug, projectsPublish,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectsRelease',) as ProjectsRelease;
    
    }
    return null;
  }

  /// Flushes the site's edge cache without redeploying anything.
  ///
  /// Flushes the site's edge cache without redeploying anything.  It invalidates the edge cache-tag `site-<org>-<slug>` and stamps `lastPurgeAt` (unix seconds), and it NEVER writes or deletes the S3 origin — the live build keeps serving; only stale copies held at the edge drop, so the next request re-fetches the current artifact from origin. Idempotent, and an edge that is unconfigured or failing is not fatal: `lastPurgeAt` is still stamped and the answer is still the updated project.  Scope: a validated principal is required (403 without one) and the project is resolved within that principal's org, so another tenant's slug is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the project to act on, from the path. It is unique within the caller's org and nowhere else, so another tenant's slug is a 404.
  Future<Response> postPlatformSitesBySlugPurgeWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/sites/{slug}/purge'
      .replaceAll('{slug}', slug);

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

  /// Flushes the site's edge cache without redeploying anything.
  ///
  /// Flushes the site's edge cache without redeploying anything.  It invalidates the edge cache-tag `site-<org>-<slug>` and stamps `lastPurgeAt` (unix seconds), and it NEVER writes or deletes the S3 origin — the live build keeps serving; only stale copies held at the edge drop, so the next request re-fetches the current artifact from origin. Idempotent, and an edge that is unconfigured or failing is not fatal: `lastPurgeAt` is still stamped and the answer is still the updated project.  Scope: a validated principal is required (403 without one) and the project is resolved within that principal's org, so another tenant's slug is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the project to act on, from the path. It is unique within the caller's org and nowhere else, so another tenant's slug is a 404.
  Future<ProjectsProject?> postPlatformSitesBySlugPurge(String slug,) async {
    final response = await postPlatformSitesBySlugPurgeWithHttpInfo(slug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectsProject',) as ProjectsProject;
    
    }
    return null;
  }

  /// Promotes a build output into a new immutable release WITHOUT serving it — the staged half of publishing, for when you want to check a release before it goes live.
  ///
  /// Promotes a build output into a new immutable release WITHOUT serving it — the staged half of publishing, for when you want to check a release before it goes live. Answers 201.  `source` is a path RELATIVE to your org's own storage space: the org segment is prepended server-side from the validated principal and the bucket is never in the request at all, so a server-side copy can only ever reach bytes your org already owns. The prefix is listed, content-addressed (SHA-256 over the sorted manifest of key/size/etag), and copied into an immutable `<org>/.releases/<slug>/<id>/` prefix; the row is written LAST, so a partial copy is unreachable rather than merely unlikely. Re-publishing an unchanged source is idempotent BY CONSTRUCTION — same bytes, same id, no copy at all.  The source must contain index.html at its root and stay under the same file and byte caps an artifact deploy does (413 past them); a source that changes mid-copy is a 409 and the release is abandoned. Each publish also reclaims releases past the retention depth, so a site's release space stays bounded. This is the billable half — the hosting gate runs before any copy, and the debit lands once the release exists.  Scope: a validated principal is required (403 without one) and the site is resolved within that principal's org, so another tenant's slug is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the site to publish, from the path.
  ///
  /// * [ProjectsPublish] projectsPublish (required):
  Future<Response> postPlatformSitesBySlugReleasesWithHttpInfo(String slug, ProjectsPublish projectsPublish,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/sites/{slug}/releases'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = projectsPublish;

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

  /// Promotes a build output into a new immutable release WITHOUT serving it — the staged half of publishing, for when you want to check a release before it goes live.
  ///
  /// Promotes a build output into a new immutable release WITHOUT serving it — the staged half of publishing, for when you want to check a release before it goes live. Answers 201.  `source` is a path RELATIVE to your org's own storage space: the org segment is prepended server-side from the validated principal and the bucket is never in the request at all, so a server-side copy can only ever reach bytes your org already owns. The prefix is listed, content-addressed (SHA-256 over the sorted manifest of key/size/etag), and copied into an immutable `<org>/.releases/<slug>/<id>/` prefix; the row is written LAST, so a partial copy is unreachable rather than merely unlikely. Re-publishing an unchanged source is idempotent BY CONSTRUCTION — same bytes, same id, no copy at all.  The source must contain index.html at its root and stay under the same file and byte caps an artifact deploy does (413 past them); a source that changes mid-copy is a 409 and the release is abandoned. Each publish also reclaims releases past the retention depth, so a site's release space stays bounded. This is the billable half — the hosting gate runs before any copy, and the debit lands once the release exists.  Scope: a validated principal is required (403 without one) and the site is resolved within that principal's org, so another tenant's slug is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the site to publish, from the path.
  ///
  /// * [ProjectsPublish] projectsPublish (required):
  Future<ProjectsRelease?> postPlatformSitesBySlugReleases(String slug, ProjectsPublish projectsPublish,) async {
    final response = await postPlatformSitesBySlugReleasesWithHttpInfo(slug, projectsPublish,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectsRelease',) as ProjectsRelease;
    
    }
    return null;
  }

  /// Points the site at an existing release — the go-live, and equally the ROLLBACK.
  ///
  /// Points the site at an existing release — the go-live, and equally the ROLLBACK.  Aim it at an older release and the site serves that one again: releases are immutable and retained to the retention depth, so nothing is rebuilt or re-copied and the flip is one atomic statement. Before the flip, two conditions run in the order that gives each its own honest answer — the ROW says whether this release exists for this tenant at all (404, with no signal about a foreign id), and only then do the BYTES say whether it can still serve (410 GONE when retention has reclaimed them; that rollback target is not coming back, so publish again). Going live also claims the public host and purges the edge, so the release is reachable and no cached predecessor is served. NOT billed: no new content is produced, only a pointer moved.  Scope: a validated principal is required (403 without one) and the site is resolved within that principal's org, so another tenant's slug is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the site the release belongs to, from the path.
  ///
  /// * [String] release (required):
  ///   Release is the content-addressed release id (\"rel_\" + 32 hex chars), from the path. Anything that is not that shape is not found, rather than being interpolated into a storage prefix.
  Future<Response> postPlatformSitesBySlugReleasesByReleaseActivateWithHttpInfo(String slug, String release,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platform/sites/{slug}/releases/{release}/activate'
      .replaceAll('{slug}', slug)
      .replaceAll('{release}', release);

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

  /// Points the site at an existing release — the go-live, and equally the ROLLBACK.
  ///
  /// Points the site at an existing release — the go-live, and equally the ROLLBACK.  Aim it at an older release and the site serves that one again: releases are immutable and retained to the retention depth, so nothing is rebuilt or re-copied and the flip is one atomic statement. Before the flip, two conditions run in the order that gives each its own honest answer — the ROW says whether this release exists for this tenant at all (404, with no signal about a foreign id), and only then do the BYTES say whether it can still serve (410 GONE when retention has reclaimed them; that rollback target is not coming back, so publish again). Going live also claims the public host and purges the edge, so the release is reachable and no cached predecessor is served. NOT billed: no new content is produced, only a pointer moved.  Scope: a validated principal is required (403 without one) and the site is resolved within that principal's org, so another tenant's slug is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the site the release belongs to, from the path.
  ///
  /// * [String] release (required):
  ///   Release is the content-addressed release id (\"rel_\" + 32 hex chars), from the path. Anything that is not that shape is not found, rather than being interpolated into a storage prefix.
  Future<ProjectsRelease?> postPlatformSitesBySlugReleasesByReleaseActivate(String slug, String release,) async {
    final response = await postPlatformSitesBySlugReleasesByReleaseActivateWithHttpInfo(slug, release,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectsRelease',) as ProjectsRelease;
    
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
