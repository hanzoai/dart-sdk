//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class GitApi {
  GitApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Removes a registered SSH key, scoped to the caller's org: an org can only delete its own, and a key id it does not own is not found.
  ///
  /// Removes a registered SSH key, scoped to the caller's org: an org can only delete its own, and a key id it does not own is not found. Answers 204 with no body. Once removed the key no longer authenticates any SSH git access.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the key's identifier (\"gitkey_…\"), from the :id path segment.
  Future<Response> deleteGitKeysByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/keys/{id}'
      .replaceAll('{id}', id);

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

  /// Removes a registered SSH key, scoped to the caller's org: an org can only delete its own, and a key id it does not own is not found.
  ///
  /// Removes a registered SSH key, scoped to the caller's org: an org can only delete its own, and a key id it does not own is not found. Answers 204 with no body. Once removed the key no longer authenticates any SSH git access.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the key's identifier (\"gitkey_…\"), from the :id path segment.
  Future<void> deleteGitKeysById(String id,) async {
    final response = await deleteGitKeysByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes a repo's metadata and purges its storage.
  ///
  /// Removes a repo's metadata and purges its storage. Answers 204 with no body. The metadata row is the source of truth for existence, so a storage purge that fails is logged and the delete still succeeds — and a second call is a 404, not a second delete.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo's org-unique handle, from the :name path segment. A trailing \".git\" is stripped.
  Future<Response> deleteGitReposByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/repos/{name}'
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

  /// Removes a repo's metadata and purges its storage.
  ///
  /// Removes a repo's metadata and purges its storage. Answers 204 with no body. The metadata row is the source of truth for existence, so a storage purge that fails is logged and the delete still succeeds — and a second call is a 404, not a second delete.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo's org-unique handle, from the :name path segment. A trailing \".git\" is stripped.
  Future<void> deleteGitReposByName(String name,) async {
    final response = await deleteGitReposByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes one outbound mirror target; later pushes stop being forwarded to it.
  ///
  /// Removes one outbound mirror target; later pushes stop being forwarded to it. Answers 204 with no body. Nothing is done to the downstream remote itself — only this repo's intent to push there is dropped.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo, from the :name path segment.
  ///
  /// * [String] id (required):
  ///   ID is the row to remove, from the :id path segment.
  Future<Response> deleteGitReposByNameMirrorsByIdWithHttpInfo(String name, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/repos/{name}/mirrors/{id}'
      .replaceAll('{name}', name)
      .replaceAll('{id}', id);

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

  /// Removes one outbound mirror target; later pushes stop being forwarded to it.
  ///
  /// Removes one outbound mirror target; later pushes stop being forwarded to it. Answers 204 with no body. Nothing is done to the downstream remote itself — only this repo's intent to push there is dropped.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo, from the :name path segment.
  ///
  /// * [String] id (required):
  ///   ID is the row to remove, from the :id path segment.
  Future<void> deleteGitReposByNameMirrorsById(String name, String id,) async {
    final response = await deleteGitReposByNameMirrorsByIdWithHttpInfo(name, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes one Slack subscription from a repo; the notifier stops posting that repo's events to that channel.
  ///
  /// Removes one Slack subscription from a repo; the notifier stops posting that repo's events to that channel. Answers 204 with no body. An id that is not this repo's subscription is not found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo, from the :name path segment.
  ///
  /// * [String] id (required):
  ///   ID is the row to remove, from the :id path segment.
  Future<Response> deleteGitReposByNameSubscriptionsByIdWithHttpInfo(String name, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/repos/{name}/subscriptions/{id}'
      .replaceAll('{name}', name)
      .replaceAll('{id}', id);

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

  /// Removes one Slack subscription from a repo; the notifier stops posting that repo's events to that channel.
  ///
  /// Removes one Slack subscription from a repo; the notifier stops posting that repo's events to that channel. Answers 204 with no body. An id that is not this repo's subscription is not found.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo, from the :name path segment.
  ///
  /// * [String] id (required):
  ///   ID is the row to remove, from the :id path segment.
  Future<void> deleteGitReposByNameSubscriptionsById(String name, String id,) async {
    final response = await deleteGitReposByNameSubscriptionsByIdWithHttpInfo(name, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Advertise a repository's refs to a git client
  ///
  /// The ref-advertisement phase of git's smart-HTTP protocol — the first request a clone, a fetch and a push all make. `?service=` selects which: `git-upload-pack` advertises for a fetch, `git-receive-pack` for a push, and any other value is 400.  ANONYMOUS ONLY FOR FETCH, AND ONLY ON A PUBLIC REPOSITORY. The push advertisement always requires an authenticated org, and where a path org is present it must equal the authenticated one. A private repository reached without its org is 404, indistinguishable from one that does not exist. Addressed under the API prefix, with the PROJECT as a middle path segment: project scope otherwise rides a header a git client cannot send, so this path is the only usable remote for a project-scoped repository. This is git's own wire protocol, not an API call to make by hand: point a git client at the clone URL and it makes this request itself.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] project (required):
  ///
  /// * [String] repo (required):
  Future<Response> getGitByOrgByProjectByRepoInfoRefsWithHttpInfo(String org, String project, String repo,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/{org}/{project}/{repo}/info/refs'
      .replaceAll('{org}', org)
      .replaceAll('{project}', project)
      .replaceAll('{repo}', repo);

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

  /// Advertise a repository's refs to a git client
  ///
  /// The ref-advertisement phase of git's smart-HTTP protocol — the first request a clone, a fetch and a push all make. `?service=` selects which: `git-upload-pack` advertises for a fetch, `git-receive-pack` for a push, and any other value is 400.  ANONYMOUS ONLY FOR FETCH, AND ONLY ON A PUBLIC REPOSITORY. The push advertisement always requires an authenticated org, and where a path org is present it must equal the authenticated one. A private repository reached without its org is 404, indistinguishable from one that does not exist. Addressed under the API prefix, with the PROJECT as a middle path segment: project scope otherwise rides a header a git client cannot send, so this path is the only usable remote for a project-scoped repository. This is git's own wire protocol, not an API call to make by hand: point a git client at the clone URL and it makes this request itself.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] project (required):
  ///
  /// * [String] repo (required):
  Future<void> getGitByOrgByProjectByRepoInfoRefs(String org, String project, String repo,) async {
    final response = await getGitByOrgByProjectByRepoInfoRefsWithHttpInfo(org, project, repo,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Advertise a repository's refs to a git client
  ///
  /// The ref-advertisement phase of git's smart-HTTP protocol — the first request a clone, a fetch and a push all make. `?service=` selects which: `git-upload-pack` advertises for a fetch, `git-receive-pack` for a push, and any other value is 400.  ANONYMOUS ONLY FOR FETCH, AND ONLY ON A PUBLIC REPOSITORY. The push advertisement always requires an authenticated org, and where a path org is present it must equal the authenticated one. A private repository reached without its org is 404, indistinguishable from one that does not exist. Addressed under the API prefix, so `git clone https://<host>/v1/git/<org>/<repo>.git` works on any host the binary serves. This is git's own wire protocol, not an API call to make by hand: point a git client at the clone URL and it makes this request itself.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] repo (required):
  Future<Response> getGitByOrgByRepoInfoRefsWithHttpInfo(String org, String repo,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/{org}/{repo}/info/refs'
      .replaceAll('{org}', org)
      .replaceAll('{repo}', repo);

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

  /// Advertise a repository's refs to a git client
  ///
  /// The ref-advertisement phase of git's smart-HTTP protocol — the first request a clone, a fetch and a push all make. `?service=` selects which: `git-upload-pack` advertises for a fetch, `git-receive-pack` for a push, and any other value is 400.  ANONYMOUS ONLY FOR FETCH, AND ONLY ON A PUBLIC REPOSITORY. The push advertisement always requires an authenticated org, and where a path org is present it must equal the authenticated one. A private repository reached without its org is 404, indistinguishable from one that does not exist. Addressed under the API prefix, so `git clone https://<host>/v1/git/<org>/<repo>.git` works on any host the binary serves. This is git's own wire protocol, not an API call to make by hand: point a git client at the clone URL and it makes this request itself.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] repo (required):
  Future<void> getGitByOrgByRepoInfoRefs(String org, String repo,) async {
    final response = await getGitByOrgByRepoInfoRefsWithHttpInfo(org, repo,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the SSH public keys registered to the caller's org — the keys that authenticate `git clone git@<host>:<org>/<repo>.git`.
  ///
  /// Returns the SSH public keys registered to the caller's org — the keys that authenticate `git clone git@<host>:<org>/<repo>.git`. Keys are org-scoped on read even though the fingerprint index is global, so one org never sees another's.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getGitKeysWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/keys';

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

  /// Returns the SSH public keys registered to the caller's org — the keys that authenticate `git clone git@<host>:<org>/<repo>.git`.
  ///
  /// Returns the SSH public keys registered to the caller's org — the keys that authenticate `git clone git@<host>:<org>/<repo>.git`. Keys are org-scoped on read even though the fingerprint index is global, so one org never sees another's.
  Future<KeyList?> getGitKeys() async {
    final response = await getGitKeysWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KeyList',) as KeyList;
    
    }
    return null;
  }

  /// Returns the repos in the caller's scope, most recently updated first.
  ///
  /// Returns the repos in the caller's scope, most recently updated first. The scope is the request principal's — the gateway-minted org and its optional project — never anything off the wire, so a caller only ever sees its own. Rows carry no branches or HEAD; read one repo for those.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getGitReposWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/repos';

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

  /// Returns the repos in the caller's scope, most recently updated first.
  ///
  /// Returns the repos in the caller's scope, most recently updated first. The scope is the request principal's — the gateway-minted org and its optional project — never anything off the wire, so a caller only ever sees its own. Rows carry no branches or HEAD; read one repo for those.
  Future<RepoList?> getGitRepos() async {
    final response = await getGitReposWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RepoList',) as RepoList;
    
    }
    return null;
  }

  /// Returns one repo with its live ref state: every branch name and the resolved HEAD commit.
  ///
  /// Returns one repo with its live ref state: every branch name and the resolved HEAD commit. Both are read from the object store on each call, so an empty repo reports no branches and an empty head rather than failing. A repo outside the caller's scope is not found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo's org-unique handle, from the :name path segment. A trailing \".git\" is stripped.
  Future<Response> getGitReposByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/repos/{name}'
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

  /// Returns one repo with its live ref state: every branch name and the resolved HEAD commit.
  ///
  /// Returns one repo with its live ref state: every branch name and the resolved HEAD commit. Both are read from the object store on each call, so an empty repo reports no branches and an empty head rather than failing. A repo outside the caller's scope is not found.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo's org-unique handle, from the :name path segment. A trailing \".git\" is stripped.
  Future<RepoView?> getGitReposByName(String name,) async {
    final response = await getGitReposByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RepoView',) as RepoView;
    
    }
    return null;
  }

  /// Returns one file's bytes at one revision.
  ///
  /// Returns one file's bytes at one revision. Text comes back verbatim, binary comes back base64, and a file past the 1 MiB view cap comes back marked truncated with NO content — the client is expected to clone instead.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo to read, from the :name path segment.
  ///
  /// * [String] ref:
  ///   Ref is a branch, tag or commit; empty means the repo's HEAD.
  ///
  /// * [String] pathParam:
  ///   Path is repo-relative; empty is the tree root. Traversal is stripped.
  Future<Response> getGitReposByNameBlobWithHttpInfo(String name, { String? ref, String? pathParam, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/repos/{name}/blob'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (ref != null) {
      queryParams.addAll(_queryParams('', 'ref', ref));
    }
    if (pathParam != null) {
      queryParams.addAll(_queryParams('', 'path', pathParam));
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

  /// Returns one file's bytes at one revision.
  ///
  /// Returns one file's bytes at one revision. Text comes back verbatim, binary comes back base64, and a file past the 1 MiB view cap comes back marked truncated with NO content — the client is expected to clone instead.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo to read, from the :name path segment.
  ///
  /// * [String] ref:
  ///   Ref is a branch, tag or commit; empty means the repo's HEAD.
  ///
  /// * [String] pathParam:
  ///   Path is repo-relative; empty is the tree root. Traversal is stripped.
  Future<BlobJSON?> getGitReposByNameBlob(String name, { String? ref, String? pathParam, }) async {
    final response = await getGitReposByNameBlobWithHttpInfo(name,  ref: ref, pathParam: pathParam, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BlobJSON',) as BlobJSON;
    
    }
    return null;
  }

  /// Walks a ref's history newest first, or one path's history when a path is given.
  ///
  /// Walks a ref's history newest first, or one path's history when a path is given. There is no cursor: the page is the newest `limit` commits.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo to read, from the :name path segment.
  ///
  /// * [String] ref:
  ///   Ref is the branch, tag or commit to walk back from; empty means HEAD.
  ///
  /// * [String] pathParam:
  ///   Path narrows the history to commits touching it; empty walks the whole ref.
  ///
  /// * [int] limit:
  ///   Limit caps the page. Anything not positive means 50; the cap is 100.
  Future<Response> getGitReposByNameCommitsWithHttpInfo(String name, { String? ref, String? pathParam, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/repos/{name}/commits'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (ref != null) {
      queryParams.addAll(_queryParams('', 'ref', ref));
    }
    if (pathParam != null) {
      queryParams.addAll(_queryParams('', 'path', pathParam));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// Walks a ref's history newest first, or one path's history when a path is given.
  ///
  /// Walks a ref's history newest first, or one path's history when a path is given. There is no cursor: the page is the newest `limit` commits.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo to read, from the :name path segment.
  ///
  /// * [String] ref:
  ///   Ref is the branch, tag or commit to walk back from; empty means HEAD.
  ///
  /// * [String] pathParam:
  ///   Path narrows the history to commits touching it; empty walks the whole ref.
  ///
  /// * [int] limit:
  ///   Limit caps the page. Anything not positive means 50; the cap is 100.
  Future<CommitsJSON?> getGitReposByNameCommits(String name, { String? ref, String? pathParam, int? limit, }) async {
    final response = await getGitReposByNameCommitsWithHttpInfo(name,  ref: ref, pathParam: pathParam, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CommitsJSON',) as CommitsJSON;
    
    }
    return null;
  }

  /// Returns every file a glob selects at one revision, WITH its bytes and the revision they came from.
  ///
  /// Returns every file a glob selects at one revision, WITH its bytes and the revision they came from. It is the read a delivery generator makes: one call answers \"what is the inventory at this commit, and what does it say\", where listing and then fetching would be a request per file.  Returning the resolved revision matters as much as the bytes. A generator that lists at `main` and then reads at `main` can straddle a push and assemble half its inventory from one commit and half from the next; resolving once makes the whole read consistent by construction.  A file past the read cap comes back Truncated with no content rather than being dropped. A caller building a desired set has to know the difference between \"this file is empty\" and \"this file was not read\" — silently omitting it is how a pruning reconcile deletes what the missing file declared.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo to read, from the :name path segment.
  ///
  /// * [String] ref:
  ///   Ref is a branch, tag or commit; empty means the repo's HEAD.
  ///
  /// * [String] glob:
  ///   Glob selects files, matched segment by segment so `*` never crosses a `/`. `**` matches zero or more whole segments.
  Future<Response> getGitReposByNameFilesWithHttpInfo(String name, { String? ref, String? glob, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/repos/{name}/files'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (ref != null) {
      queryParams.addAll(_queryParams('', 'ref', ref));
    }
    if (glob != null) {
      queryParams.addAll(_queryParams('', 'glob', glob));
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

  /// Returns every file a glob selects at one revision, WITH its bytes and the revision they came from.
  ///
  /// Returns every file a glob selects at one revision, WITH its bytes and the revision they came from. It is the read a delivery generator makes: one call answers \"what is the inventory at this commit, and what does it say\", where listing and then fetching would be a request per file.  Returning the resolved revision matters as much as the bytes. A generator that lists at `main` and then reads at `main` can straddle a push and assemble half its inventory from one commit and half from the next; resolving once makes the whole read consistent by construction.  A file past the read cap comes back Truncated with no content rather than being dropped. A caller building a desired set has to know the difference between \"this file is empty\" and \"this file was not read\" — silently omitting it is how a pruning reconcile deletes what the missing file declared.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo to read, from the :name path segment.
  ///
  /// * [String] ref:
  ///   Ref is a branch, tag or commit; empty means the repo's HEAD.
  ///
  /// * [String] glob:
  ///   Glob selects files, matched segment by segment so `*` never crosses a `/`. `**` matches zero or more whole segments.
  Future<FilesJSON?> getGitReposByNameFiles(String name, { String? ref, String? glob, }) async {
    final response = await getGitReposByNameFilesWithHttpInfo(name,  ref: ref, glob: glob, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FilesJSON',) as FilesJSON;
    
    }
    return null;
  }

  /// Returns a repo's outbound mirror targets — the downstream remotes the mirror reactor pushes to whenever a push lands here.
  ///
  /// Returns a repo's outbound mirror targets — the downstream remotes the mirror reactor pushes to whenever a push lands here.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo's org-unique handle, from the :name path segment. A trailing \".git\" is stripped.
  Future<Response> getGitReposByNameMirrorsWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/repos/{name}/mirrors'
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

  /// Returns a repo's outbound mirror targets — the downstream remotes the mirror reactor pushes to whenever a push lands here.
  ///
  /// Returns a repo's outbound mirror targets — the downstream remotes the mirror reactor pushes to whenever a push lands here.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo's org-unique handle, from the :name path segment. A trailing \".git\" is stripped.
  Future<MirrorList?> getGitReposByNameMirrors(String name,) async {
    final response = await getGitReposByNameMirrorsWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MirrorList',) as MirrorList;
    
    }
    return null;
  }

  /// Returns a repo's pull requests, newest number first — what is waiting to be reviewed, and what has already landed.
  ///
  /// Returns a repo's pull requests, newest number first — what is waiting to be reviewed, and what has already landed. Narrow it with ?state=open or ?state=merged; omit state for every proposal.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo, from the :name path segment.
  ///
  /// * [String] state:
  ///   State narrows the list to \"open\" or \"merged\". Omit it for every proposal.
  Future<Response> getGitReposByNamePullsWithHttpInfo(String name, { String? state, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/repos/{name}/pulls'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (state != null) {
      queryParams.addAll(_queryParams('', 'state', state));
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

  /// Returns a repo's pull requests, newest number first — what is waiting to be reviewed, and what has already landed.
  ///
  /// Returns a repo's pull requests, newest number first — what is waiting to be reviewed, and what has already landed. Narrow it with ?state=open or ?state=merged; omit state for every proposal.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo, from the :name path segment.
  ///
  /// * [String] state:
  ///   State narrows the list to \"open\" or \"merged\". Omit it for every proposal.
  Future<PullList?> getGitReposByNamePulls(String name, { String? state, }) async {
    final response = await getGitReposByNamePullsWithHttpInfo(name,  state: state, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PullList',) as PullList;
    
    }
    return null;
  }

  /// Returns one pull request by its per-repo number.
  ///
  /// Returns one pull request by its per-repo number. A number belonging to another tenant's repo is not found, exactly as the repo itself is not.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo, from the :name path segment.
  ///
  /// * [int] number (required):
  ///   Number is the proposal's per-repo number, from the :number path segment.
  Future<Response> getGitReposByNamePullsByNumberWithHttpInfo(String name, int number,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/repos/{name}/pulls/{number}'
      .replaceAll('{name}', name)
      .replaceAll('{number}', number.toString());

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

  /// Returns one pull request by its per-repo number.
  ///
  /// Returns one pull request by its per-repo number. A number belonging to another tenant's repo is not found, exactly as the repo itself is not.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo, from the :name path segment.
  ///
  /// * [int] number (required):
  ///   Number is the proposal's per-repo number, from the :number path segment.
  Future<PullView?> getGitReposByNamePullsByNumber(String name, int number,) async {
    final response = await getGitReposByNamePullsByNumberWithHttpInfo(name, number,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PullView',) as PullView;
    
    }
    return null;
  }

  /// Returns the README at the tree root as plain text — unrendered, so the caller decides how to present it.
  ///
  /// Returns the README at the tree root as plain text — unrendered, so the caller decides how to present it. A repo with no README is not found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo to read, from the :name path segment.
  ///
  /// * [String] ref:
  ///   Ref is a branch, tag or commit; empty means the repo's HEAD.
  Future<Response> getGitReposByNameReadmeWithHttpInfo(String name, { String? ref, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/repos/{name}/readme'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (ref != null) {
      queryParams.addAll(_queryParams('', 'ref', ref));
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

  /// Returns the README at the tree root as plain text — unrendered, so the caller decides how to present it.
  ///
  /// Returns the README at the tree root as plain text — unrendered, so the caller decides how to present it. A repo with no README is not found.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo to read, from the :name path segment.
  ///
  /// * [String] ref:
  ///   Ref is a branch, tag or commit; empty means the repo's HEAD.
  Future<ReadmeJSON?> getGitReposByNameReadme(String name, { String? ref, }) async {
    final response = await getGitReposByNameReadmeWithHttpInfo(name,  ref: ref, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReadmeJSON',) as ReadmeJSON;
    
    }
    return null;
  }

  /// Lists a repo's branches, tags and default branch — what a branch picker needs in one call.
  ///
  /// Lists a repo's branches, tags and default branch — what a branch picker needs in one call. Unlike the other read ops it tolerates a repo with no commits: the ref sets come back empty and the default branch is still named.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo's org-unique handle, from the :name path segment. A trailing \".git\" is stripped.
  Future<Response> getGitReposByNameRefsWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/repos/{name}/refs'
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

  /// Lists a repo's branches, tags and default branch — what a branch picker needs in one call.
  ///
  /// Lists a repo's branches, tags and default branch — what a branch picker needs in one call. Unlike the other read ops it tolerates a repo with no commits: the ref sets come back empty and the default branch is still named.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo's org-unique handle, from the :name path segment. A trailing \".git\" is stripped.
  Future<RefsJSON?> getGitReposByNameRefs(String name,) async {
    final response = await getGitReposByNameRefsWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RefsJSON',) as RefsJSON;
    
    }
    return null;
  }

  /// Returns a repo's Slack subscriptions — which channels the lifecycle notifier posts this repo's push and deploy events to.
  ///
  /// Returns a repo's Slack subscriptions — which channels the lifecycle notifier posts this repo's push and deploy events to.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo's org-unique handle, from the :name path segment. A trailing \".git\" is stripped.
  Future<Response> getGitReposByNameSubscriptionsWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/repos/{name}/subscriptions'
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

  /// Returns a repo's Slack subscriptions — which channels the lifecycle notifier posts this repo's push and deploy events to.
  ///
  /// Returns a repo's Slack subscriptions — which channels the lifecycle notifier posts this repo's push and deploy events to.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo's org-unique handle, from the :name path segment. A trailing \".git\" is stripped.
  Future<SubscriptionList?> getGitReposByNameSubscriptions(String name,) async {
    final response = await getGitReposByNameSubscriptionsWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SubscriptionList',) as SubscriptionList;
    
    }
    return null;
  }

  /// Lists the immediate children of one directory at one revision, directories before files.
  ///
  /// Lists the immediate children of one directory at one revision, directories before files. It does not recurse — walk down a level at a time.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo to read, from the :name path segment.
  ///
  /// * [String] ref:
  ///   Ref is a branch, tag or commit; empty means the repo's HEAD.
  ///
  /// * [String] pathParam:
  ///   Path is repo-relative; empty is the tree root. Traversal is stripped.
  Future<Response> getGitReposByNameTreeWithHttpInfo(String name, { String? ref, String? pathParam, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/repos/{name}/tree'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (ref != null) {
      queryParams.addAll(_queryParams('', 'ref', ref));
    }
    if (pathParam != null) {
      queryParams.addAll(_queryParams('', 'path', pathParam));
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

  /// Lists the immediate children of one directory at one revision, directories before files.
  ///
  /// Lists the immediate children of one directory at one revision, directories before files. It does not recurse — walk down a level at a time.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo to read, from the :name path segment.
  ///
  /// * [String] ref:
  ///   Ref is a branch, tag or commit; empty means the repo's HEAD.
  ///
  /// * [String] pathParam:
  ///   Path is repo-relative; empty is the tree root. Traversal is stripped.
  Future<TreeJSON?> getGitReposByNameTree(String name, { String? ref, String? pathParam, }) async {
    final response = await getGitReposByNameTreeWithHttpInfo(name,  ref: ref, pathParam: pathParam, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TreeJSON',) as TreeJSON;
    
    }
    return null;
  }

  /// Returns per-repo and total storage bytes for the caller's org — the queryable, per-tenant number commerce and o11y meter on.
  ///
  /// Returns per-repo and total storage bytes for the caller's org — the queryable, per-tenant number commerce and o11y meter on. It spans EVERY project sub-scope, unlike the repo list, so a billing consumer sees the whole tenant footprint in one call. Sizes are last-measured values (create, push, mirror and gc each re-measure), not a live walk of the disk.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getGitUsageWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/usage';

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

  /// Returns per-repo and total storage bytes for the caller's org — the queryable, per-tenant number commerce and o11y meter on.
  ///
  /// Returns per-repo and total storage bytes for the caller's org — the queryable, per-tenant number commerce and o11y meter on. It spans EVERY project sub-scope, unlike the repo list, so a billing consumer sees the whole tenant footprint in one call. Sizes are last-measured values (create, push, mirror and gc each re-measure), not a live walk of the disk.
  Future<UsageView?> getGitUsage() async {
    final response = await getGitUsageWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UsageView',) as UsageView;
    
    }
    return null;
  }

  /// Flips a repo's public bit, the one mutable repo setting today.
  ///
  /// Flips a repo's public bit, the one mutable repo setting today. Public grants ANONYMOUS fetch only; push and the whole control plane stay org-authed. Returns the updated repo.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo to update, from the :name path segment.
  ///
  /// * [PatchIn] patchIn (required):
  Future<Response> patchGitReposByNameWithHttpInfo(String name, PatchIn patchIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/repos/{name}'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = patchIn;

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

  /// Flips a repo's public bit, the one mutable repo setting today.
  ///
  /// Flips a repo's public bit, the one mutable repo setting today. Public grants ANONYMOUS fetch only; push and the whole control plane stay org-authed. Returns the updated repo.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo to update, from the :name path segment.
  ///
  /// * [PatchIn] patchIn (required):
  Future<RepoView?> patchGitReposByName(String name, PatchIn patchIn,) async {
    final response = await patchGitReposByNameWithHttpInfo(name, patchIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RepoView',) as RepoView;
    
    }
    return null;
  }

  /// Accept a push, and turn it into a build
  ///
  /// The pack-transfer phase of a push, and the point at which a push becomes an EVENT. NEVER ANONYMOUS: a push always requires an authenticated org, and the org in the path must equal it.  Once the pack is on disk the repository's storage usage is metered and a build is fired for every branch whose tip actually moved, computed from the before/after branch diff rather than from what the client claimed. That runs on a cancel-immune context, so a client that hangs up the moment its push lands still gets its build, and it runs even when git itself exited non-zero — the refs on disk are the ground truth. Repacking housekeeping is detached and never blocks the response.  A Content-Type other than `application/x-git-receive-pack-request` is 400. Addressed under the API prefix, with the PROJECT as a middle path segment: project scope otherwise rides a header a git client cannot send, so this path is the only usable remote for a project-scoped repository. This is git's own wire protocol, not an API call to make by hand: point a git client at the clone URL and it makes this request itself.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] project (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [MultipartFile] body:
  Future<Response> postGitByOrgByProjectByRepoGitReceivePackWithHttpInfo(String org, String project, String repo, { MultipartFile? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/{org}/{project}/{repo}/git-receive-pack'
      .replaceAll('{org}', org)
      .replaceAll('{project}', project)
      .replaceAll('{repo}', repo);

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

  /// Accept a push, and turn it into a build
  ///
  /// The pack-transfer phase of a push, and the point at which a push becomes an EVENT. NEVER ANONYMOUS: a push always requires an authenticated org, and the org in the path must equal it.  Once the pack is on disk the repository's storage usage is metered and a build is fired for every branch whose tip actually moved, computed from the before/after branch diff rather than from what the client claimed. That runs on a cancel-immune context, so a client that hangs up the moment its push lands still gets its build, and it runs even when git itself exited non-zero — the refs on disk are the ground truth. Repacking housekeeping is detached and never blocks the response.  A Content-Type other than `application/x-git-receive-pack-request` is 400. Addressed under the API prefix, with the PROJECT as a middle path segment: project scope otherwise rides a header a git client cannot send, so this path is the only usable remote for a project-scoped repository. This is git's own wire protocol, not an API call to make by hand: point a git client at the clone URL and it makes this request itself.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] project (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [MultipartFile] body:
  Future<void> postGitByOrgByProjectByRepoGitReceivePack(String org, String project, String repo, { MultipartFile? body, }) async {
    final response = await postGitByOrgByProjectByRepoGitReceivePackWithHttpInfo(org, project, repo,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Serve a clone or fetch
  ///
  /// The pack-transfer phase of a clone or fetch: the request and the response are git's binary pack protocol, streamed straight through git itself — request body to git's stdin, git's stdout to the response — so a multi-gigabyte clone never lands in this process's memory.  A PUBLIC repository is fetched anonymously; a private one requires its own org, and a wrong or absent org is 404 rather than a hint that the repository exists. A Content-Type other than `application/x-git-upload-pack-request` is 400. Addressed under the API prefix, with the PROJECT as a middle path segment: project scope otherwise rides a header a git client cannot send, so this path is the only usable remote for a project-scoped repository. This is git's own wire protocol, not an API call to make by hand: point a git client at the clone URL and it makes this request itself.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] project (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [MultipartFile] body:
  Future<Response> postGitByOrgByProjectByRepoGitUploadPackWithHttpInfo(String org, String project, String repo, { MultipartFile? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/{org}/{project}/{repo}/git-upload-pack'
      .replaceAll('{org}', org)
      .replaceAll('{project}', project)
      .replaceAll('{repo}', repo);

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

  /// Serve a clone or fetch
  ///
  /// The pack-transfer phase of a clone or fetch: the request and the response are git's binary pack protocol, streamed straight through git itself — request body to git's stdin, git's stdout to the response — so a multi-gigabyte clone never lands in this process's memory.  A PUBLIC repository is fetched anonymously; a private one requires its own org, and a wrong or absent org is 404 rather than a hint that the repository exists. A Content-Type other than `application/x-git-upload-pack-request` is 400. Addressed under the API prefix, with the PROJECT as a middle path segment: project scope otherwise rides a header a git client cannot send, so this path is the only usable remote for a project-scoped repository. This is git's own wire protocol, not an API call to make by hand: point a git client at the clone URL and it makes this request itself.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] project (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [MultipartFile] body:
  Future<void> postGitByOrgByProjectByRepoGitUploadPack(String org, String project, String repo, { MultipartFile? body, }) async {
    final response = await postGitByOrgByProjectByRepoGitUploadPackWithHttpInfo(org, project, repo,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Accept a push, and turn it into a build
  ///
  /// The pack-transfer phase of a push, and the point at which a push becomes an EVENT. NEVER ANONYMOUS: a push always requires an authenticated org, and the org in the path must equal it.  Once the pack is on disk the repository's storage usage is metered and a build is fired for every branch whose tip actually moved, computed from the before/after branch diff rather than from what the client claimed. That runs on a cancel-immune context, so a client that hangs up the moment its push lands still gets its build, and it runs even when git itself exited non-zero — the refs on disk are the ground truth. Repacking housekeeping is detached and never blocks the response.  A Content-Type other than `application/x-git-receive-pack-request` is 400. Addressed under the API prefix, so `git clone https://<host>/v1/git/<org>/<repo>.git` works on any host the binary serves. This is git's own wire protocol, not an API call to make by hand: point a git client at the clone URL and it makes this request itself.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [MultipartFile] body:
  Future<Response> postGitByOrgByRepoGitReceivePackWithHttpInfo(String org, String repo, { MultipartFile? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/{org}/{repo}/git-receive-pack'
      .replaceAll('{org}', org)
      .replaceAll('{repo}', repo);

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

  /// Accept a push, and turn it into a build
  ///
  /// The pack-transfer phase of a push, and the point at which a push becomes an EVENT. NEVER ANONYMOUS: a push always requires an authenticated org, and the org in the path must equal it.  Once the pack is on disk the repository's storage usage is metered and a build is fired for every branch whose tip actually moved, computed from the before/after branch diff rather than from what the client claimed. That runs on a cancel-immune context, so a client that hangs up the moment its push lands still gets its build, and it runs even when git itself exited non-zero — the refs on disk are the ground truth. Repacking housekeeping is detached and never blocks the response.  A Content-Type other than `application/x-git-receive-pack-request` is 400. Addressed under the API prefix, so `git clone https://<host>/v1/git/<org>/<repo>.git` works on any host the binary serves. This is git's own wire protocol, not an API call to make by hand: point a git client at the clone URL and it makes this request itself.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [MultipartFile] body:
  Future<void> postGitByOrgByRepoGitReceivePack(String org, String repo, { MultipartFile? body, }) async {
    final response = await postGitByOrgByRepoGitReceivePackWithHttpInfo(org, repo,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Serve a clone or fetch
  ///
  /// The pack-transfer phase of a clone or fetch: the request and the response are git's binary pack protocol, streamed straight through git itself — request body to git's stdin, git's stdout to the response — so a multi-gigabyte clone never lands in this process's memory.  A PUBLIC repository is fetched anonymously; a private one requires its own org, and a wrong or absent org is 404 rather than a hint that the repository exists. A Content-Type other than `application/x-git-upload-pack-request` is 400. Addressed under the API prefix, so `git clone https://<host>/v1/git/<org>/<repo>.git` works on any host the binary serves. This is git's own wire protocol, not an API call to make by hand: point a git client at the clone URL and it makes this request itself.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [MultipartFile] body:
  Future<Response> postGitByOrgByRepoGitUploadPackWithHttpInfo(String org, String repo, { MultipartFile? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/{org}/{repo}/git-upload-pack'
      .replaceAll('{org}', org)
      .replaceAll('{repo}', repo);

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

  /// Serve a clone or fetch
  ///
  /// The pack-transfer phase of a clone or fetch: the request and the response are git's binary pack protocol, streamed straight through git itself — request body to git's stdin, git's stdout to the response — so a multi-gigabyte clone never lands in this process's memory.  A PUBLIC repository is fetched anonymously; a private one requires its own org, and a wrong or absent org is 404 rather than a hint that the repository exists. A Content-Type other than `application/x-git-upload-pack-request` is 400. Addressed under the API prefix, so `git clone https://<host>/v1/git/<org>/<repo>.git` works on any host the binary serves. This is git's own wire protocol, not an API call to make by hand: point a git client at the clone URL and it makes this request itself.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [MultipartFile] body:
  Future<void> postGitByOrgByRepoGitUploadPack(String org, String repo, { MultipartFile? body, }) async {
    final response = await postGitByOrgByRepoGitUploadPackWithHttpInfo(org, repo,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Registers an SSH public key so it can authenticate `git clone git@<host>:<org>/<repo>.git` for the caller's org.
  ///
  /// Registers an SSH public key so it can authenticate `git clone git@<host>:<org>/<repo>.git` for the caller's org. The key line is parsed and canonicalized before storage, its SHA256 fingerprint becomes the auth lookup handle, and the full public key round-trips (it is public). Answers 201. Fingerprints are globally unique, so a key already registered — to this org or any other — is a 409: one key belongs to exactly one org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RegisterKeyReq] registerKeyReq (required):
  Future<Response> postGitKeysWithHttpInfo(RegisterKeyReq registerKeyReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/keys';

    // ignore: prefer_final_locals
    Object? postBody = registerKeyReq;

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

  /// Registers an SSH public key so it can authenticate `git clone git@<host>:<org>/<repo>.git` for the caller's org.
  ///
  /// Registers an SSH public key so it can authenticate `git clone git@<host>:<org>/<repo>.git` for the caller's org. The key line is parsed and canonicalized before storage, its SHA256 fingerprint becomes the auth lookup handle, and the full public key round-trips (it is public). Answers 201. Fingerprints are globally unique, so a key already registered — to this org or any other — is a 409: one key belongs to exactly one org.
  ///
  /// Parameters:
  ///
  /// * [RegisterKeyReq] registerKeyReq (required):
  Future<KeyView?> postGitKeys(RegisterKeyReq registerKeyReq,) async {
    final response = await postGitKeysWithHttpInfo(registerKeyReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KeyView',) as KeyView;
    
    }
    return null;
  }

  /// Provisions an empty bare repository in the caller's scope and returns it with its clone URLs.
  ///
  /// Provisions an empty bare repository in the caller's scope and returns it with its clone URLs. Answers 201. The name must be unique within the scope — a repeat is a 409, never a silent overwrite of an existing repo. The org comes from the validated principal, so a repo is always born owned by the caller's own tenant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateReq] createReq (required):
  Future<Response> postGitReposWithHttpInfo(CreateReq createReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/repos';

    // ignore: prefer_final_locals
    Object? postBody = createReq;

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

  /// Provisions an empty bare repository in the caller's scope and returns it with its clone URLs.
  ///
  /// Provisions an empty bare repository in the caller's scope and returns it with its clone URLs. Answers 201. The name must be unique within the scope — a repeat is a 409, never a silent overwrite of an existing repo. The org comes from the validated principal, so a repo is always born owned by the caller's own tenant.
  ///
  /// Parameters:
  ///
  /// * [CreateReq] createReq (required):
  Future<RepoView?> postGitRepos(CreateReq createReq,) async {
    final response = await postGitReposWithHttpInfo(createReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RepoView',) as RepoView;
    
    }
    return null;
  }

  /// Repacks a repo into one bitmapped pack and rewrites its commit-graph, so the next clone reuses the bitmap instead of walking the whole object graph.
  ///
  /// Repacks a repo into one bitmapped pack and rewrites its commit-graph, so the next clone reuses the bitmap instead of walking the whole object graph. Idempotent, and safe to interrupt — git swaps both artifacts atomically. It runs under one pack slot with the same memory bounds as a clone, so it can block behind heavy pack traffic rather than compete with it. Storage usage is re-measured afterwards, since a repack reclaims space.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo's org-unique handle, from the :name path segment. A trailing \".git\" is stripped.
  Future<Response> postGitReposByNameGcWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/repos/{name}/gc'
      .replaceAll('{name}', name);

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

  /// Repacks a repo into one bitmapped pack and rewrites its commit-graph, so the next clone reuses the bitmap instead of walking the whole object graph.
  ///
  /// Repacks a repo into one bitmapped pack and rewrites its commit-graph, so the next clone reuses the bitmap instead of walking the whole object graph. Idempotent, and safe to interrupt — git swaps both artifacts atomically. It runs under one pack slot with the same memory bounds as a clone, so it can block behind heavy pack traffic rather than compete with it. Storage usage is re-measured afterwards, since a repack reclaims space.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo's org-unique handle, from the :name path segment. A trailing \".git\" is stripped.
  Future<GcOut?> postGitReposByNameGc(String name,) async {
    final response = await postGitReposByNameGcWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GcOut',) as GcOut;
    
    }
    return null;
  }

  /// Imports an external git repository into the caller's repo, provisioning it on first use.
  ///
  /// Imports an external git repository into the caller's repo, provisioning it on first use. Fetch is FORCED and covers every ref, so a first call clones the source and a repeat call re-syncs it — the endpoint is idempotent by mirror semantics. Mirrored bytes are metered exactly like a push, and a push.landed event is emitted for the default branch so the code index picks the repo up.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the local repo to mirror into, from the :name path segment. It is CREATED on first use.
  ///
  /// * [MirrorReq] mirrorReq (required):
  Future<Response> postGitReposByNameMirrorWithHttpInfo(String name, MirrorReq mirrorReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/repos/{name}/mirror'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = mirrorReq;

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

  /// Imports an external git repository into the caller's repo, provisioning it on first use.
  ///
  /// Imports an external git repository into the caller's repo, provisioning it on first use. Fetch is FORCED and covers every ref, so a first call clones the source and a repeat call re-syncs it — the endpoint is idempotent by mirror semantics. Mirrored bytes are metered exactly like a push, and a push.landed event is emitted for the default branch so the code index picks the repo up.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the local repo to mirror into, from the :name path segment. It is CREATED on first use.
  ///
  /// * [MirrorReq] mirrorReq (required):
  Future<RepoView?> postGitReposByNameMirror(String name, MirrorReq mirrorReq,) async {
    final response = await postGitReposByNameMirrorWithHttpInfo(name, mirrorReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RepoView',) as RepoView;
    
    }
    return null;
  }

  /// Registers a downstream remote the repo's advanced refs are pushed to whenever a push lands here.
  ///
  /// Registers a downstream remote the repo's advanced refs are pushed to whenever a push lands here. Answers 201. The URL must be https to a host on the mirror allowlist (github.com / gitlab.com): the same set the mirror credential may be sent to, so a target can never capture the shared token or point the push at an internal service. Any embedded userinfo is stripped — credentials ride env-only at push time and never enter the stored URL. One mirror per host per repo; a second is a 409.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo whose advanced refs are pushed downstream, from the :name path segment.
  ///
  /// * [MirrorTargetReq] mirrorTargetReq (required):
  Future<Response> postGitReposByNameMirrorsWithHttpInfo(String name, MirrorTargetReq mirrorTargetReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/repos/{name}/mirrors'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = mirrorTargetReq;

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

  /// Registers a downstream remote the repo's advanced refs are pushed to whenever a push lands here.
  ///
  /// Registers a downstream remote the repo's advanced refs are pushed to whenever a push lands here. Answers 201. The URL must be https to a host on the mirror allowlist (github.com / gitlab.com): the same set the mirror credential may be sent to, so a target can never capture the shared token or point the push at an internal service. Any embedded userinfo is stripped — credentials ride env-only at push time and never enter the stored URL. One mirror per host per repo; a second is a 409.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo whose advanced refs are pushed downstream, from the :name path segment.
  ///
  /// * [MirrorTargetReq] mirrorTargetReq (required):
  Future<MirrorTargetView?> postGitReposByNameMirrors(String name, MirrorTargetReq mirrorTargetReq,) async {
    final response = await postGitReposByNameMirrorsWithHttpInfo(name, mirrorTargetReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MirrorTargetView',) as MirrorTargetView;
    
    }
    return null;
  }

  /// Proposes a branch for merging and returns it with its number.
  ///
  /// Proposes a branch for merging and returns it with its number. Answers 201. Both branches must already exist — a proposal naming a branch nobody pushed is a typo, not a plan — and base defaults to the repo's default branch.  Proposing the same head into the same base twice is a 409 while the first proposal is still open, so a retried agent run leaves ONE thing to review rather than a pile of identical ones. A repo outside the caller's scope is a 404, exactly as reading it is.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo the proposal belongs to, from the :name path segment.
  ///
  /// * [OpenReq] openReq (required):
  Future<Response> postGitReposByNamePullsWithHttpInfo(String name, OpenReq openReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/repos/{name}/pulls'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = openReq;

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

  /// Proposes a branch for merging and returns it with its number.
  ///
  /// Proposes a branch for merging and returns it with its number. Answers 201. Both branches must already exist — a proposal naming a branch nobody pushed is a typo, not a plan — and base defaults to the repo's default branch.  Proposing the same head into the same base twice is a 409 while the first proposal is still open, so a retried agent run leaves ONE thing to review rather than a pile of identical ones. A repo outside the caller's scope is a 404, exactly as reading it is.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo the proposal belongs to, from the :name path segment.
  ///
  /// * [OpenReq] openReq (required):
  Future<PullView?> postGitReposByNamePulls(String name, OpenReq openReq,) async {
    final response = await postGitReposByNamePullsWithHttpInfo(name, openReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PullView',) as PullView;
    
    }
    return null;
  }

  /// Merges an open pull request by FAST-FORWARDING base to head, and answers the proposal in its merged state with the revision base now points at.
  ///
  /// Merges an open pull request by FAST-FORWARDING base to head, and answers the proposal in its merged state with the revision base now points at.  It merges only when base is already an ancestor of head — the case where head contains every commit base has, so moving the branch loses nothing and invents nothing. When base has moved on independently, this REFUSES with 409 and says so: a real three-way merge is not implemented here, and reporting one would claim a result these bytes do not produce. Rebase head onto base and merge again.  The move is judged by the same ref policy a `git push` of it would face, and fires the same build and notify reactions, so merging is not a way around either. Merging an already-merged proposal is a 409.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo, from the :name path segment.
  ///
  /// * [int] number (required):
  ///   Number is the proposal's per-repo number, from the :number path segment.
  Future<Response> postGitReposByNamePullsByNumberMergeWithHttpInfo(String name, int number,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/repos/{name}/pulls/{number}/merge'
      .replaceAll('{name}', name)
      .replaceAll('{number}', number.toString());

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

  /// Merges an open pull request by FAST-FORWARDING base to head, and answers the proposal in its merged state with the revision base now points at.
  ///
  /// Merges an open pull request by FAST-FORWARDING base to head, and answers the proposal in its merged state with the revision base now points at.  It merges only when base is already an ancestor of head — the case where head contains every commit base has, so moving the branch loses nothing and invents nothing. When base has moved on independently, this REFUSES with 409 and says so: a real three-way merge is not implemented here, and reporting one would claim a result these bytes do not produce. Rebase head onto base and merge again.  The move is judged by the same ref policy a `git push` of it would face, and fires the same build and notify reactions, so merging is not a way around either. Merging an already-merged proposal is a 409.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo, from the :name path segment.
  ///
  /// * [int] number (required):
  ///   Number is the proposal's per-repo number, from the :number path segment.
  Future<PullView?> postGitReposByNamePullsByNumberMerge(String name, int number,) async {
    final response = await postGitReposByNamePullsByNumberMergeWithHttpInfo(name, number,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PullView',) as PullView;
    
    }
    return null;
  }

  /// Lands a set of files as one commit without a git client — the hanzo.app builder's push.
  ///
  /// Lands a set of files as one commit without a git client — the hanzo.app builder's push. The repo is CREATED on first push, the files are merged onto the branch tip (unlisted files survive), and the same push-to-deploy hook a real receive-pack fires is fired, so downstream this is indistinguishable from a `git push`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo to push into, from the :name path segment. It is CREATED on first push if it does not exist.
  ///
  /// * [PushReq] pushReq (required):
  Future<Response> postGitReposByNamePushWithHttpInfo(String name, PushReq pushReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/repos/{name}/push'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = pushReq;

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

  /// Lands a set of files as one commit without a git client — the hanzo.app builder's push.
  ///
  /// Lands a set of files as one commit without a git client — the hanzo.app builder's push. The repo is CREATED on first push, the files are merged onto the branch tip (unlisted files survive), and the same push-to-deploy hook a real receive-pack fires is fired, so downstream this is indistinguishable from a `git push`.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo to push into, from the :name path segment. It is CREATED on first push if it does not exist.
  ///
  /// * [PushReq] pushReq (required):
  Future<PushResp?> postGitReposByNamePush(String name, PushReq pushReq,) async {
    final response = await postGitReposByNamePushWithHttpInfo(name, pushReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PushResp',) as PushResp;
    
    }
    return null;
  }

  /// Binds a Slack channel to a repo, so the lifecycle notifier posts that repo's push and deploy events there.
  ///
  /// Binds a Slack channel to a repo, so the lifecycle notifier posts that repo's push and deploy events there. Answers 201. The same channel twice on one repo is a 409; a repo outside the caller's scope is a 404, exactly as reading it is.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo to subscribe, from the :name path segment.
  ///
  /// * [SubscribeReq] subscribeReq (required):
  Future<Response> postGitReposByNameSubscriptionsWithHttpInfo(String name, SubscribeReq subscribeReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/repos/{name}/subscriptions'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = subscribeReq;

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

  /// Binds a Slack channel to a repo, so the lifecycle notifier posts that repo's push and deploy events there.
  ///
  /// Binds a Slack channel to a repo, so the lifecycle notifier posts that repo's push and deploy events there. Answers 201. The same channel twice on one repo is a 409; a repo outside the caller's scope is a 404, exactly as reading it is.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the repo to subscribe, from the :name path segment.
  ///
  /// * [SubscribeReq] subscribeReq (required):
  Future<SubscriptionView?> postGitReposByNameSubscriptions(String name, SubscribeReq subscribeReq,) async {
    final response = await postGitReposByNameSubscriptionsWithHttpInfo(name, subscribeReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SubscriptionView',) as SubscriptionView;
    
    }
    return null;
  }

  /// Retired — forge pushes build via platform.hanzo.ai
  ///
  /// GONE (410). This was the canonical forge's push-to-deploy door, and it never dispatched a build in its life.  It handed each verified push to cloud.OnGitPush, a single-registrant seam whose only registrant lives in apps/platform. cloud runs each app as its own OS process, so in the git process that builder is nil forever — and this handler answered 204 either way. Delivered, signature valid, green on the forge's hook page, and nothing built.  Push-to-deploy now belongs to POST https://platform.hanzo.ai/v1/git-webhook, which owns the build system-of-record and dispatches BuildKit Jobs. git.hanzo.ai delivers there through ONE forge-wide system webhook covering every repository; a repo opts in by committing hanzo.yml, not by owning a hook of its own.  The route is kept, and answers 410 naming that address, precisely so a misdirected delivery says what is wrong. Deleting it would 404, and a 404 here reads as 'the API is switched off' — the wrong conclusion this estate has already drawn twice.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postGitWebhookWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/webhook';

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

  /// Retired — forge pushes build via platform.hanzo.ai
  ///
  /// GONE (410). This was the canonical forge's push-to-deploy door, and it never dispatched a build in its life.  It handed each verified push to cloud.OnGitPush, a single-registrant seam whose only registrant lives in apps/platform. cloud runs each app as its own OS process, so in the git process that builder is nil forever — and this handler answered 204 either way. Delivered, signature valid, green on the forge's hook page, and nothing built.  Push-to-deploy now belongs to POST https://platform.hanzo.ai/v1/git-webhook, which owns the build system-of-record and dispatches BuildKit Jobs. git.hanzo.ai delivers there through ONE forge-wide system webhook covering every repository; a repo opts in by committing hanzo.yml, not by owning a hook of its own.  The route is kept, and answers 410 naming that address, precisely so a misdirected delivery says what is wrong. Deleting it would 404, and a 404 here reads as 'the API is switched off' — the wrong conclusion this estate has already drawn twice.
  Future<void> postGitWebhook() async {
    final response = await postGitWebhookWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a repository over the ZAP transport
  ///
  /// Creates a repository in the caller's org and project scope and answers with its record. `name` is required and `description` is optional; `project` narrows the scope within the org. A name already taken in that scope is a 409 envelope and an invalid name a 400.  A ZAP PROCEDURE, not a REST resource. It answers the bridge's {status, msg, data} envelope rather than the raw view the /v1 route returns — which is a wire shape a typed op cannot produce, and the reason this stays a raw handler — and it calls the SAME core function the REST route calls, so the two transports cannot diverge in behaviour. Org and project scope come from the request identity and NEVER from the body: the body cannot widen the caller's scope. Without a validated org the answer is a 403 envelope.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ZapProcReq] zapProcReq:
  Future<Response> postGitZapCreaterepoWithHttpInfo({ ZapProcReq? zapProcReq, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/zap/createRepo';

    // ignore: prefer_final_locals
    Object? postBody = zapProcReq;

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

  /// Create a repository over the ZAP transport
  ///
  /// Creates a repository in the caller's org and project scope and answers with its record. `name` is required and `description` is optional; `project` narrows the scope within the org. A name already taken in that scope is a 409 envelope and an invalid name a 400.  A ZAP PROCEDURE, not a REST resource. It answers the bridge's {status, msg, data} envelope rather than the raw view the /v1 route returns — which is a wire shape a typed op cannot produce, and the reason this stays a raw handler — and it calls the SAME core function the REST route calls, so the two transports cannot diverge in behaviour. Org and project scope come from the request identity and NEVER from the body: the body cannot widen the caller's scope. Without a validated org the answer is a 403 envelope.
  ///
  /// Parameters:
  ///
  /// * [ZapProcReq] zapProcReq:
  Future<void> postGitZapCreaterepo({ ZapProcReq? zapProcReq, }) async {
    final response = await postGitZapCreaterepoWithHttpInfo( zapProcReq: zapProcReq, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a repository over the ZAP transport
  ///
  /// Deletes the repository named by `name` and answers with the deleted name. A repository outside the caller's org and project scope is a 404 envelope, so a delete can never reach another tenant's repository.  A ZAP PROCEDURE, not a REST resource. It answers the bridge's {status, msg, data} envelope rather than the raw view the /v1 route returns — which is a wire shape a typed op cannot produce, and the reason this stays a raw handler — and it calls the SAME core function the REST route calls, so the two transports cannot diverge in behaviour. Org and project scope come from the request identity and NEVER from the body: the body cannot widen the caller's scope. Without a validated org the answer is a 403 envelope.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ZapProcReq] zapProcReq:
  Future<Response> postGitZapDeleterepoWithHttpInfo({ ZapProcReq? zapProcReq, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/zap/deleteRepo';

    // ignore: prefer_final_locals
    Object? postBody = zapProcReq;

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

  /// Delete a repository over the ZAP transport
  ///
  /// Deletes the repository named by `name` and answers with the deleted name. A repository outside the caller's org and project scope is a 404 envelope, so a delete can never reach another tenant's repository.  A ZAP PROCEDURE, not a REST resource. It answers the bridge's {status, msg, data} envelope rather than the raw view the /v1 route returns — which is a wire shape a typed op cannot produce, and the reason this stays a raw handler — and it calls the SAME core function the REST route calls, so the two transports cannot diverge in behaviour. Org and project scope come from the request identity and NEVER from the body: the body cannot widen the caller's scope. Without a validated org the answer is a 403 envelope.
  ///
  /// Parameters:
  ///
  /// * [ZapProcReq] zapProcReq:
  Future<void> postGitZapDeleterepo({ ZapProcReq? zapProcReq, }) async {
    final response = await postGitZapDeleterepoWithHttpInfo( zapProcReq: zapProcReq, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Read one repository over the ZAP transport
  ///
  /// Answers a single repository's record, named by `name`. A repository outside the caller's org and project scope is a 404 envelope, the same answer one that does not exist gets.  A ZAP PROCEDURE, not a REST resource. It answers the bridge's {status, msg, data} envelope rather than the raw view the /v1 route returns — which is a wire shape a typed op cannot produce, and the reason this stays a raw handler — and it calls the SAME core function the REST route calls, so the two transports cannot diverge in behaviour. Org and project scope come from the request identity and NEVER from the body: the body cannot widen the caller's scope. Without a validated org the answer is a 403 envelope.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ZapProcReq] zapProcReq:
  Future<Response> postGitZapGetrepoWithHttpInfo({ ZapProcReq? zapProcReq, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/zap/getRepo';

    // ignore: prefer_final_locals
    Object? postBody = zapProcReq;

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

  /// Read one repository over the ZAP transport
  ///
  /// Answers a single repository's record, named by `name`. A repository outside the caller's org and project scope is a 404 envelope, the same answer one that does not exist gets.  A ZAP PROCEDURE, not a REST resource. It answers the bridge's {status, msg, data} envelope rather than the raw view the /v1 route returns — which is a wire shape a typed op cannot produce, and the reason this stays a raw handler — and it calls the SAME core function the REST route calls, so the two transports cannot diverge in behaviour. Org and project scope come from the request identity and NEVER from the body: the body cannot widen the caller's scope. Without a validated org the answer is a 403 envelope.
  ///
  /// Parameters:
  ///
  /// * [ZapProcReq] zapProcReq:
  Future<void> postGitZapGetrepo({ ZapProcReq? zapProcReq, }) async {
    final response = await postGitZapGetrepoWithHttpInfo( zapProcReq: zapProcReq, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List your repositories over the ZAP transport
  ///
  /// Answers every repository in the caller's org and project scope. It reads NO body — the scope is entirely the caller's identity — so a request with an empty object is correct.  A ZAP PROCEDURE, not a REST resource. It answers the bridge's {status, msg, data} envelope rather than the raw view the /v1 route returns — which is a wire shape a typed op cannot produce, and the reason this stays a raw handler — and it calls the SAME core function the REST route calls, so the two transports cannot diverge in behaviour. Org and project scope come from the request identity and NEVER from the body: the body cannot widen the caller's scope. Without a validated org the answer is a 403 envelope.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postGitZapListreposWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/zap/listRepos';

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

  /// List your repositories over the ZAP transport
  ///
  /// Answers every repository in the caller's org and project scope. It reads NO body — the scope is entirely the caller's identity — so a request with an empty object is correct.  A ZAP PROCEDURE, not a REST resource. It answers the bridge's {status, msg, data} envelope rather than the raw view the /v1 route returns — which is a wire shape a typed op cannot produce, and the reason this stays a raw handler — and it calls the SAME core function the REST route calls, so the two transports cannot diverge in behaviour. Org and project scope come from the request identity and NEVER from the body: the body cannot widen the caller's scope. Without a validated org the answer is a 403 envelope.
  Future<void> postGitZapListrepos() async {
    final response = await postGitZapListreposWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Report your org's git storage footprint over the ZAP transport
  ///
  /// Answers every repository in the caller's org with its size in bytes, plus the org's total — what git storage is actually being used, and by which repository. It reads NO body, and it is scoped to the caller's own org, so it is that org's footprint and never the fleet's.  A ZAP PROCEDURE, not a REST resource. It answers the bridge's {status, msg, data} envelope rather than the raw view the /v1 route returns — which is a wire shape a typed op cannot produce, and the reason this stays a raw handler — and it calls the SAME core function the REST route calls, so the two transports cannot diverge in behaviour. Org and project scope come from the request identity and NEVER from the body: the body cannot widen the caller's scope. Without a validated org the answer is a 403 envelope.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postGitZapUsageWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git/zap/usage';

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

  /// Report your org's git storage footprint over the ZAP transport
  ///
  /// Answers every repository in the caller's org with its size in bytes, plus the org's total — what git storage is actually being used, and by which repository. It reads NO body, and it is scoped to the caller's own org, so it is that org's footprint and never the fleet's.  A ZAP PROCEDURE, not a REST resource. It answers the bridge's {status, msg, data} envelope rather than the raw view the /v1 route returns — which is a wire shape a typed op cannot produce, and the reason this stays a raw handler — and it calls the SAME core function the REST route calls, so the two transports cannot diverge in behaviour. Org and project scope come from the request identity and NEVER from the body: the body cannot widen the caller's scope. Without a validated org the answer is a 403 envelope.
  Future<void> postGitZapUsage() async {
    final response = await postGitZapUsageWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
