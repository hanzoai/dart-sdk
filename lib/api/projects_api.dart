//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class ProjectsApi {
  ProjectsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

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
  Future<Response> deleteProjectsBySlugWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/{slug}'
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
  Future<void> deleteProjectsBySlug(String slug,) async {
    final response = await deleteProjectsBySlugWithHttpInfo(slug,);
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
  Future<Response> deleteProjectsBySlugDomainsByHostWithHttpInfo(String slug, String host,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/{slug}/domains/{host}'
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
  Future<void> deleteProjectsBySlugDomainsByHost(String slug, String host,) async {
    final response = await deleteProjectsBySlugDomainsByHostWithHttpInfo(slug, host,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns every project your org owns.
  ///
  /// Returns every project your org owns.  Each row carries the slug, name, framework, visibility, status and live URL — the same rows console and the builder render, because there is only one store behind both. It requires a validated principal (403 without one) and is keyed by that principal's org, so it never contains another tenant's project.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getProjectsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects';

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
  Future<List<ProjectsProject>?> getProjects() async {
    final response = await getProjectsWithHttpInfo();
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
  Future<Response> getProjectsBySlugWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/{slug}'
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
  Future<ProjectsProject?> getProjectsBySlug(String slug,) async {
    final response = await getProjectsBySlugWithHttpInfo(slug,);
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
  Future<Response> getProjectsBySlugDeploymentsWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/{slug}/deployments'
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
  Future<List<ProjectsDeployment>?> getProjectsBySlugDeployments(String slug,) async {
    final response = await getProjectsBySlugDeploymentsWithHttpInfo(slug,);
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
  Future<Response> getProjectsBySlugDeploymentsByIdWithHttpInfo(String slug, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/{slug}/deployments/{id}'
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
  Future<ProjectsDeployment?> getProjectsBySlugDeploymentsById(String slug, String id,) async {
    final response = await getProjectsBySlugDeploymentsByIdWithHttpInfo(slug, id,);
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
  Future<Response> getProjectsBySlugDomainsWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/{slug}/domains'
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
  Future<ProjectsDomains?> getProjectsBySlugDomains(String slug,) async {
    final response = await getProjectsBySlugDomainsWithHttpInfo(slug,);
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
  Future<Response> patchProjectsBySlugWithHttpInfo(String slug, ProjectsUpdate projectsUpdate,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/{slug}'
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
  Future<ProjectsProject?> patchProjectsBySlug(String slug, ProjectsUpdate projectsUpdate,) async {
    final response = await patchProjectsBySlugWithHttpInfo(slug, projectsUpdate,);
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

  /// Creates a project — the handle a site is deployed and served under — and answers 201 with it in `draft`.
  ///
  /// Creates a project — the handle a site is deployed and served under — and answers 201 with it in `draft`.  `name` is required; `slug` is derived from the name when omitted and is the identifier that matters — it becomes the S3 key segment, the public host `<slug>.hanzo.app`, and the handle every later call addresses, so it must match `^[a-z0-9]([a-z0-9-]{0,38}[a-z0-9])?$` and may not be a reserved label such as `api` or `admin`. `framework` is a build hint from a closed set, defaulting to `static`; it never gates a deploy, it only tells CI how to build a linked repo.  Two defaults are worth knowing: the analytics beacon is ON unless `analytics` is explicitly false, and `visibility` is `public` unless asked otherwise. Publishing publicly is free; PRIVATE is the paid feature, and an unfunded org asking for it is refused rather than quietly published as public. Creation also provisions the project's data space and a canonical git repo, both best-effort — neither can fail the create.  Scope: a validated principal is required (403 without one) and the project is created in THAT principal's org. The slug is unique per org, so a slug already used in the caller's own org is a 409 while the same slug in another org is irrelevant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProjectsCreate] projectsCreate (required):
  Future<Response> postProjectsWithHttpInfo(ProjectsCreate projectsCreate,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects';

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
  Future<ProjectsProject?> postProjects(ProjectsCreate projectsCreate,) async {
    final response = await postProjectsWithHttpInfo(projectsCreate,);
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
  Future<Response> postProjectsBySlugDeployWithHttpInfo(String slug, { MultipartFile? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/{slug}/deploy'
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
  Future<ProjectsDeployment?> postProjectsBySlugDeploy(String slug, { MultipartFile? body, }) async {
    final response = await postProjectsBySlugDeployWithHttpInfo(slug,  body: body, );
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
  Future<Response> postProjectsBySlugDeploymentsWithHttpInfo(String slug, ProjectsDeployStart projectsDeployStart,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/{slug}/deployments'
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
  Future<ProjectsDeployment?> postProjectsBySlugDeployments(String slug, ProjectsDeployStart projectsDeployStart,) async {
    final response = await postProjectsBySlugDeploymentsWithHttpInfo(slug, projectsDeployStart,);
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
  Future<Response> postProjectsBySlugDeploymentsByIdCompleteWithHttpInfo(String slug, String id, ProjectsComplete projectsComplete,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/{slug}/deployments/{id}/complete'
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
  Future<ProjectsDeployment?> postProjectsBySlugDeploymentsByIdComplete(String slug, String id, ProjectsComplete projectsComplete,) async {
    final response = await postProjectsBySlugDeploymentsByIdCompleteWithHttpInfo(slug, id, projectsComplete,);
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
  Future<Response> postProjectsBySlugDomainsWithHttpInfo(String slug, ProjectsDomainsBind projectsDomainsBind,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/{slug}/domains'
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
  Future<ProjectsBoundDomains?> postProjectsBySlugDomains(String slug, ProjectsDomainsBind projectsDomainsBind,) async {
    final response = await postProjectsBySlugDomainsWithHttpInfo(slug, projectsDomainsBind,);
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
  Future<Response> postProjectsBySlugDomainsByHostVerifyWithHttpInfo(String slug, String host,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/{slug}/domains/{host}/verify'
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
  Future<ProjectsDomain?> postProjectsBySlugDomainsByHostVerify(String slug, String host,) async {
    final response = await postProjectsBySlugDomainsByHostVerifyWithHttpInfo(slug, host,);
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
  Future<Response> postProjectsBySlugPurgeWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/{slug}/purge'
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
  Future<ProjectsProject?> postProjectsBySlugPurge(String slug,) async {
    final response = await postProjectsBySlugPurgeWithHttpInfo(slug,);
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

  /// Creates a project seeded from a PUBLISHED EXAMPLE — either a starter-kit template from the ONE embedded gallery catalog, or any live project on the platform (an example a seeded creator published, or another org's app serving at <slug>.hanzo.app).
  ///
  /// Creates a project seeded from a PUBLISHED EXAMPLE — either a starter-kit template from the ONE embedded gallery catalog, or any live project on the platform (an example a seeded creator published, or another org's app serving at <slug>.hanzo.app). Answers 201 with the new project.  `slug` names the PARENT to fork and is required. Templates resolve first, and the caller org's own private templates ahead of the public gallery, so a curated template slug keeps meaning the same thing even if someone later publishes a live project under it; `variant` picks that template's format/page/theme. If no template matches, the slug resolves to the UNIQUE live project that owns it across all orgs — the same resolution the site edge uses to serve <slug>.hanzo.app, so what you can browse is what you can fork.  `name` and `target` override the derived project name and slug; everything else is inherited from the parent. A live parent contributes its REPO, so the child builds from the same source — the parent's deployed bytes are never copied, because releases are per-tenant by design and the fork publishes its own. The parent it actually resolved is stamped on the child as `forkedFrom`, so attribution is a fact recorded at fork time rather than a claim reconstructed later.  It funnels through the SAME create path POST /v1/projects uses, so slug validation, org scoping, ID minting and the 409 on a slug the caller's own org already uses are identical.  Scope: a validated principal is required (403 without one) and the child is created in THAT principal's org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProjectsFork] projectsFork (required):
  Future<Response> postProjectsForkWithHttpInfo(ProjectsFork projectsFork,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/fork';

    // ignore: prefer_final_locals
    Object? postBody = projectsFork;

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

  /// Creates a project seeded from a PUBLISHED EXAMPLE — either a starter-kit template from the ONE embedded gallery catalog, or any live project on the platform (an example a seeded creator published, or another org's app serving at <slug>.hanzo.app).
  ///
  /// Creates a project seeded from a PUBLISHED EXAMPLE — either a starter-kit template from the ONE embedded gallery catalog, or any live project on the platform (an example a seeded creator published, or another org's app serving at <slug>.hanzo.app). Answers 201 with the new project.  `slug` names the PARENT to fork and is required. Templates resolve first, and the caller org's own private templates ahead of the public gallery, so a curated template slug keeps meaning the same thing even if someone later publishes a live project under it; `variant` picks that template's format/page/theme. If no template matches, the slug resolves to the UNIQUE live project that owns it across all orgs — the same resolution the site edge uses to serve <slug>.hanzo.app, so what you can browse is what you can fork.  `name` and `target` override the derived project name and slug; everything else is inherited from the parent. A live parent contributes its REPO, so the child builds from the same source — the parent's deployed bytes are never copied, because releases are per-tenant by design and the fork publishes its own. The parent it actually resolved is stamped on the child as `forkedFrom`, so attribution is a fact recorded at fork time rather than a claim reconstructed later.  It funnels through the SAME create path POST /v1/projects uses, so slug validation, org scoping, ID minting and the 409 on a slug the caller's own org already uses are identical.  Scope: a validated principal is required (403 without one) and the child is created in THAT principal's org.
  ///
  /// Parameters:
  ///
  /// * [ProjectsFork] projectsFork (required):
  Future<ProjectsProject?> postProjectsFork(ProjectsFork projectsFork,) async {
    final response = await postProjectsForkWithHttpInfo(projectsFork,);
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
}
