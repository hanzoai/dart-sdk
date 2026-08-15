//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class SitesApi {
  SitesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns the org's deployed sites at the pretty URLs they serve at.
  ///
  /// Returns the org's deployed sites at the pretty URLs they serve at.  It reads the SAME org-scoped store as /v1/projects and keeps only the projects that are actually `live`, so a draft or a failed build is not advertised as a site.  Scope: a validated principal is required (403 without one) and the list is keyed by that principal's org.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSitesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sites';

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

  /// Returns the org's deployed sites at the pretty URLs they serve at.
  ///
  /// Returns the org's deployed sites at the pretty URLs they serve at.  It reads the SAME org-scoped store as /v1/projects and keeps only the projects that are actually `live`, so a draft or a failed build is not advertised as a site.  Scope: a validated principal is required (403 without one) and the list is keyed by that principal's org.
  Future<List<ProjectsSite>?> getSites() async {
    final response = await getSitesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ProjectsSite>') as List)
        .cast<ProjectsSite>()
        .toList(growable: false);

    }
    return null;
  }

  /// Returns one site — the same row ListSites carries, for one slug.
  ///
  /// Returns one site — the same row ListSites carries, for one slug.  Every sub-resource under a site already answered: deployments, releases, publish. The site itself did not, and a route that is never registered answers 404 for a LIVE site exactly as it does for one that was never created. So the one call a client makes to ask \"is it there yet?\" could only ever say no, and a CI lane watching for its own publish would wait forever on a success it had already achieved.  The org is the caller's, never a path segment. A slug is unique within an org and two orgs may both own `tel`; taking the org from the validated principal instead of the URL means a caller cannot read another org's site by editing a path, and it is the same scope ListProjects and ListSites already use.  A site that exists but is not live is NOT found here, matching ListSites, which keeps only `live` rows so a draft or a failed build is never advertised as a site. One definition of \"is a site\", used by both.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the project to act on, from the path. It is unique within the caller's org and nowhere else, so another tenant's slug is a 404.
  Future<Response> getSitesBySlugWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sites/{slug}'
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

  /// Returns one site — the same row ListSites carries, for one slug.
  ///
  /// Returns one site — the same row ListSites carries, for one slug.  Every sub-resource under a site already answered: deployments, releases, publish. The site itself did not, and a route that is never registered answers 404 for a LIVE site exactly as it does for one that was never created. So the one call a client makes to ask \"is it there yet?\" could only ever say no, and a CI lane watching for its own publish would wait forever on a success it had already achieved.  The org is the caller's, never a path segment. A slug is unique within an org and two orgs may both own `tel`; taking the org from the validated principal instead of the URL means a caller cannot read another org's site by editing a path, and it is the same scope ListProjects and ListSites already use.  A site that exists but is not live is NOT found here, matching ListSites, which keeps only `live` rows so a draft or a failed build is never advertised as a site. One definition of \"is a site\", used by both.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the project to act on, from the path. It is unique within the caller's org and nowhere else, so another tenant's slug is a 404.
  Future<ProjectsSite?> getSitesBySlug(String slug,) async {
    final response = await getSitesBySlugWithHttpInfo(slug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectsSite',) as ProjectsSite;
    
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
  Future<Response> getSitesBySlugDeploymentsWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sites/{slug}/deployments'
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
  Future<List<ProjectsDeployment>?> getSitesBySlugDeployments(String slug,) async {
    final response = await getSitesBySlugDeploymentsWithHttpInfo(slug,);
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
  Future<Response> getSitesBySlugDeploymentsByIdWithHttpInfo(String slug, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sites/{slug}/deployments/{id}'
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
  Future<ProjectsDeployment?> getSitesBySlugDeploymentsById(String slug, String id,) async {
    final response = await getSitesBySlugDeploymentsByIdWithHttpInfo(slug, id,);
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
  Future<Response> getSitesBySlugReleasesWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sites/{slug}/releases'
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
  Future<List<ProjectsRelease>?> getSitesBySlugReleases(String slug,) async {
    final response = await getSitesBySlugReleasesWithHttpInfo(slug,);
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

  /// Generates a self-contained, mobile-responsive static site from a natural-language brief and deploys it live in one call.
  ///
  /// Generates a self-contained, mobile-responsive static site from a natural-language brief and deploys it live in one call.  One inference call turns `brief` (capped at 8 KiB) into a file manifest, which then runs through the SAME validation, guards and viewport guarantee as a hand-supplied manifest: index.html required at the root, absolute and traversal paths rejected, per-file and total size capped, and a mobile viewport meta tag injected into every HTML document that lacks one. The generated site is fully inline — no CDNs, no remote fonts or images — so it is CSP-safe. `slug` and `name` are optional: the model's own title is preferred, and a slug is derived or minted when none is given.  It writes into the SAME org-scoped store as /v1/projects — it ensures a project (framework `static`) for the resolved slug and records a deployment — so this is a second door onto one publish pipeline, not a second copy of project state. Ordering is the billing contract: the hosting gate runs BEFORE any inference or upload, so a denied gate generates and uploads NOTHING, and the debit lands once, only after the site is actually live. The tokens are billed to the same ledger the hosting fee was reserved against.  Answers 503 when object storage or inference is unconfigured, and 400 when the model's manifest cannot be parsed or fails the guards.  Scope: a validated principal is required (403 without one) and the site is published into THAT principal's org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProjectsBuildSite] projectsBuildSite (required):
  Future<Response> postSitesWithHttpInfo(ProjectsBuildSite projectsBuildSite,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sites';

    // ignore: prefer_final_locals
    Object? postBody = projectsBuildSite;

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

  /// Generates a self-contained, mobile-responsive static site from a natural-language brief and deploys it live in one call.
  ///
  /// Generates a self-contained, mobile-responsive static site from a natural-language brief and deploys it live in one call.  One inference call turns `brief` (capped at 8 KiB) into a file manifest, which then runs through the SAME validation, guards and viewport guarantee as a hand-supplied manifest: index.html required at the root, absolute and traversal paths rejected, per-file and total size capped, and a mobile viewport meta tag injected into every HTML document that lacks one. The generated site is fully inline — no CDNs, no remote fonts or images — so it is CSP-safe. `slug` and `name` are optional: the model's own title is preferred, and a slug is derived or minted when none is given.  It writes into the SAME org-scoped store as /v1/projects — it ensures a project (framework `static`) for the resolved slug and records a deployment — so this is a second door onto one publish pipeline, not a second copy of project state. Ordering is the billing contract: the hosting gate runs BEFORE any inference or upload, so a denied gate generates and uploads NOTHING, and the debit lands once, only after the site is actually live. The tokens are billed to the same ledger the hosting fee was reserved against.  Answers 503 when object storage or inference is unconfigured, and 400 when the model's manifest cannot be parsed or fails the guards.  Scope: a validated principal is required (403 without one) and the site is published into THAT principal's org.
  ///
  /// Parameters:
  ///
  /// * [ProjectsBuildSite] projectsBuildSite (required):
  Future<ProjectsSiteDeploy?> postSites(ProjectsBuildSite projectsBuildSite,) async {
    final response = await postSitesWithHttpInfo(projectsBuildSite,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectsSiteDeploy',) as ProjectsSiteDeploy;
    
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
  Future<Response> postSitesBySlugDeploymentsWithHttpInfo(String slug, ProjectsDeployStart projectsDeployStart,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sites/{slug}/deployments'
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
  Future<ProjectsDeployment?> postSitesBySlugDeployments(String slug, ProjectsDeployStart projectsDeployStart,) async {
    final response = await postSitesBySlugDeploymentsWithHttpInfo(slug, projectsDeployStart,);
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
  Future<Response> postSitesBySlugDeploymentsByIdCompleteWithHttpInfo(String slug, String id, ProjectsComplete projectsComplete,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sites/{slug}/deployments/{id}/complete'
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
  Future<ProjectsDeployment?> postSitesBySlugDeploymentsByIdComplete(String slug, String id, ProjectsComplete projectsComplete,) async {
    final response = await postSitesBySlugDeploymentsByIdCompleteWithHttpInfo(slug, id, projectsComplete,);
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
  Future<Response> postSitesBySlugPublishWithHttpInfo(String slug, ProjectsPublish projectsPublish,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sites/{slug}/publish'
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
  Future<ProjectsRelease?> postSitesBySlugPublish(String slug, ProjectsPublish projectsPublish,) async {
    final response = await postSitesBySlugPublishWithHttpInfo(slug, projectsPublish,);
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
  Future<Response> postSitesBySlugReleasesWithHttpInfo(String slug, ProjectsPublish projectsPublish,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sites/{slug}/releases'
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
  Future<ProjectsRelease?> postSitesBySlugReleases(String slug, ProjectsPublish projectsPublish,) async {
    final response = await postSitesBySlugReleasesWithHttpInfo(slug, projectsPublish,);
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
  Future<Response> postSitesBySlugReleasesByReleaseActivateWithHttpInfo(String slug, String release,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sites/{slug}/releases/{release}/activate'
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
  Future<ProjectsRelease?> postSitesBySlugReleasesByReleaseActivate(String slug, String release,) async {
    final response = await postSitesBySlugReleasesByReleaseActivateWithHttpInfo(slug, release,);
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

  /// Deploys a caller-supplied file manifest — the deploy_site capability an agent calls — and answers with where it went live.
  ///
  /// Deploys a caller-supplied file manifest — the deploy_site capability an agent calls — and answers with where it went live.  `files` is a list of {path, content} pairs, the same shape the brief build emits, and it runs through the SAME guards: index.html required at the root, absolute and traversal paths rejected, per-file and total size capped, and a mobile viewport meta tag injected into every HTML document that lacks one — so a hand-built site is exactly as safe and as responsive as a generated one. `slug` and `name` are optional; a slug is derived from the name or minted.  It writes into the SAME org-scoped store as /v1/projects, ensuring a project (framework `static`) for the resolved slug and recording a deployment. The hosting gate runs before the upload and the debit lands once, after the site is live — a failed upload is never billed. Answers 503 when object storage is unconfigured.  Scope: a validated principal is required (403 without one) and the site is published into THAT principal's org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProjectsDeploySite] projectsDeploySite (required):
  Future<Response> postSitesDeployWithHttpInfo(ProjectsDeploySite projectsDeploySite,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sites/deploy';

    // ignore: prefer_final_locals
    Object? postBody = projectsDeploySite;

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

  /// Deploys a caller-supplied file manifest — the deploy_site capability an agent calls — and answers with where it went live.
  ///
  /// Deploys a caller-supplied file manifest — the deploy_site capability an agent calls — and answers with where it went live.  `files` is a list of {path, content} pairs, the same shape the brief build emits, and it runs through the SAME guards: index.html required at the root, absolute and traversal paths rejected, per-file and total size capped, and a mobile viewport meta tag injected into every HTML document that lacks one — so a hand-built site is exactly as safe and as responsive as a generated one. `slug` and `name` are optional; a slug is derived from the name or minted.  It writes into the SAME org-scoped store as /v1/projects, ensuring a project (framework `static`) for the resolved slug and recording a deployment. The hosting gate runs before the upload and the debit lands once, after the site is live — a failed upload is never billed. Answers 503 when object storage is unconfigured.  Scope: a validated principal is required (403 without one) and the site is published into THAT principal's org.
  ///
  /// Parameters:
  ///
  /// * [ProjectsDeploySite] projectsDeploySite (required):
  Future<ProjectsSiteDeploy?> postSitesDeploy(ProjectsDeploySite projectsDeploySite,) async {
    final response = await postSitesDeployWithHttpInfo(projectsDeploySite,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectsSiteDeploy',) as ProjectsSiteDeploy;
    
    }
    return null;
  }
}
