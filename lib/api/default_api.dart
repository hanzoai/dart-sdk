//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class DefaultApi {
  DefaultApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Browse your org's repositories
  ///
  /// The repository list for the signed-in caller's org — each repo with its description, default branch, size and last update. SIGNED OUT it renders the public explore page instead of refusing, because most Hanzo repos are open source and the open face is the default one; signed in, the caller's own org shows its private repositories alongside its public ones. This is a server-rendered browser page, not JSON — the console repo-browser reads the same repository through the JSON ops under /v1/git. Repository names, paths and file contents all render through auto-escaping templates rather than being concatenated into HTML. Served only on the dedicated git host, where a browse URL matches the clone URL; on the API and console hosts it falls through to their own routes, so it can never shadow them.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> callGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/';

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

  /// Browse your org's repositories
  ///
  /// The repository list for the signed-in caller's org — each repo with its description, default branch, size and last update. SIGNED OUT it renders the public explore page instead of refusing, because most Hanzo repos are open source and the open face is the default one; signed in, the caller's own org shows its private repositories alongside its public ones. This is a server-rendered browser page, not JSON — the console repo-browser reads the same repository through the JSON ops under /v1/git. Repository names, paths and file contents all render through auto-escaping templates rather than being concatenated into HTML. Served only on the dedicated git host, where a browse URL matches the clone URL; on the API and console hosts it falls through to their own routes, so it can never shadow them.
  Future<void> callGet() async {
    final response = await callGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Not served by the call client
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteMeetAppWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/meet';

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

  /// Not served by the call client
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  Future<void> deleteMeetApp() async {
    final response = await deleteMeetAppWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Not served by the call client
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> deleteMeetAppAssetsWithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/meet/{wildcard1}'
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

  /// Not served by the call client
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> deleteMeetAppAssets(String wildcard1,) async {
    final response = await deleteMeetAppAssetsWithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Not served by the tasks console
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteTasksAppWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/tasks';

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

  /// Not served by the tasks console
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  Future<void> deleteTasksApp() async {
    final response = await deleteTasksAppWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Not served by the tasks console
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> deleteTasksAppAssetsWithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{wildcard1}'
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

  /// Not served by the tasks console
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> deleteTasksAppAssets(String wildcard1,) async {
    final response = await deleteTasksAppAssetsWithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Advertise a repository's refs to a git client
  ///
  /// The ref-advertisement phase of git's smart-HTTP protocol — the first request a clone, a fetch and a push all make. `?service=` selects which: `git-upload-pack` advertises for a fetch, `git-receive-pack` for a push, and any other value is 400.  ANONYMOUS ONLY FOR FETCH, AND ONLY ON A PUBLIC REPOSITORY. The push advertisement always requires an authenticated org, and where a path org is present it must equal the authenticated one. A private repository reached without its org is 404, indistinguishable from one that does not exist. Addressed at the git host's root with the PROJECT as a middle path segment — the canonical-URL form of the project-scoped remote, since a git client has no header to carry a project. Served only on the dedicated git host; elsewhere it falls through. This is git's own wire protocol, not an API call to make by hand: point a git client at the clone URL and it makes this request itself.
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
  Future<Response> getByOrgByProjectByRepoInfoRefsWithHttpInfo(String org, String project, String repo,) async {
    // ignore: prefer_const_declarations
    final path = r'/{org}/{project}/{repo}/info/refs'
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
  /// The ref-advertisement phase of git's smart-HTTP protocol — the first request a clone, a fetch and a push all make. `?service=` selects which: `git-upload-pack` advertises for a fetch, `git-receive-pack` for a push, and any other value is 400.  ANONYMOUS ONLY FOR FETCH, AND ONLY ON A PUBLIC REPOSITORY. The push advertisement always requires an authenticated org, and where a path org is present it must equal the authenticated one. A private repository reached without its org is 404, indistinguishable from one that does not exist. Addressed at the git host's root with the PROJECT as a middle path segment — the canonical-URL form of the project-scoped remote, since a git client has no header to carry a project. Served only on the dedicated git host; elsewhere it falls through. This is git's own wire protocol, not an API call to make by hand: point a git client at the clone URL and it makes this request itself.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] project (required):
  ///
  /// * [String] repo (required):
  Future<void> getByOrgByProjectByRepoInfoRefs(String org, String project, String repo,) async {
    final response = await getByOrgByProjectByRepoInfoRefsWithHttpInfo(org, project, repo,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Open a repository's home page
  ///
  /// A repository at a glance: its branches, the tree at the tip, its most recent commits, its README rendered, and the HTTPS and SSH clone URLs. `?ref=` selects a branch, tag or commit; the default branch is used when it is omitted. A repository with no commits yet renders its clone instructions rather than an error, which is what a caller who has just created one needs to see. A public repository is readable by anyone; a private one only by its own org. A repository that does not exist and one belonging to another org answer the SAME 404, so the page is never an existence oracle. This is a server-rendered browser page, not JSON — the console repo-browser reads the same repository through the JSON ops under /v1/git. Repository names, paths and file contents all render through auto-escaping templates rather than being concatenated into HTML. Served only on the dedicated git host, where a browse URL matches the clone URL; on the API and console hosts it falls through to their own routes, so it can never shadow them.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] repo (required):
  Future<Response> getByOrgByRepoWithHttpInfo(String org, String repo,) async {
    // ignore: prefer_const_declarations
    final path = r'/{org}/{repo}'
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

  /// Open a repository's home page
  ///
  /// A repository at a glance: its branches, the tree at the tip, its most recent commits, its README rendered, and the HTTPS and SSH clone URLs. `?ref=` selects a branch, tag or commit; the default branch is used when it is omitted. A repository with no commits yet renders its clone instructions rather than an error, which is what a caller who has just created one needs to see. A public repository is readable by anyone; a private one only by its own org. A repository that does not exist and one belonging to another org answer the SAME 404, so the page is never an existence oracle. This is a server-rendered browser page, not JSON — the console repo-browser reads the same repository through the JSON ops under /v1/git. Repository names, paths and file contents all render through auto-escaping templates rather than being concatenated into HTML. Served only on the dedicated git host, where a browse URL matches the clone URL; on the API and console hosts it falls through to their own routes, so it can never shadow them.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] repo (required):
  Future<void> getByOrgByRepo(String org, String repo,) async {
    final response = await getByOrgByRepoWithHttpInfo(org, repo,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// View a file in a repository
  ///
  /// One file's contents at one revision, with its size and line count. A BINARY file is reported as binary rather than dumped into the page. The path after /blob/ is the file and `?ref=` selects the branch, tag or commit. An unknown ref or a path that is not a file in it is 404. A public repository is readable by anyone; a private one only by its own org. A repository that does not exist and one belonging to another org answer the SAME 404, so the page is never an existence oracle. This is a server-rendered browser page, not JSON — the console repo-browser reads the same repository through the JSON ops under /v1/git. Repository names, paths and file contents all render through auto-escaping templates rather than being concatenated into HTML. Served only on the dedicated git host, where a browse URL matches the clone URL; on the API and console hosts it falls through to their own routes, so it can never shadow them.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [String] wildcard1 (required):
  Future<Response> getByOrgByRepoBlobByWildcard1WithHttpInfo(String org, String repo, String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/{org}/{repo}/blob/{wildcard1}'
      .replaceAll('{org}', org)
      .replaceAll('{repo}', repo)
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

  /// View a file in a repository
  ///
  /// One file's contents at one revision, with its size and line count. A BINARY file is reported as binary rather than dumped into the page. The path after /blob/ is the file and `?ref=` selects the branch, tag or commit. An unknown ref or a path that is not a file in it is 404. A public repository is readable by anyone; a private one only by its own org. A repository that does not exist and one belonging to another org answer the SAME 404, so the page is never an existence oracle. This is a server-rendered browser page, not JSON — the console repo-browser reads the same repository through the JSON ops under /v1/git. Repository names, paths and file contents all render through auto-escaping templates rather than being concatenated into HTML. Served only on the dedicated git host, where a browse URL matches the clone URL; on the API and console hosts it falls through to their own routes, so it can never shadow them.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [String] wildcard1 (required):
  Future<void> getByOrgByRepoBlobByWildcard1(String org, String repo, String wildcard1,) async {
    final response = await getByOrgByRepoBlobByWildcard1WithHttpInfo(org, repo, wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Read a repository's commit log
  ///
  /// The hundred most recent commits on one ref, each with its author, message and date. `?ref=` selects the branch, tag or commit, defaulting to the repository's default branch; an unknown one is 404. A public repository is readable by anyone; a private one only by its own org. A repository that does not exist and one belonging to another org answer the SAME 404, so the page is never an existence oracle. This is a server-rendered browser page, not JSON — the console repo-browser reads the same repository through the JSON ops under /v1/git. Repository names, paths and file contents all render through auto-escaping templates rather than being concatenated into HTML. Served only on the dedicated git host, where a browse URL matches the clone URL; on the API and console hosts it falls through to their own routes, so it can never shadow them.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] repo (required):
  Future<Response> getByOrgByRepoCommitsWithHttpInfo(String org, String repo,) async {
    // ignore: prefer_const_declarations
    final path = r'/{org}/{repo}/commits'
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

  /// Read a repository's commit log
  ///
  /// The hundred most recent commits on one ref, each with its author, message and date. `?ref=` selects the branch, tag or commit, defaulting to the repository's default branch; an unknown one is 404. A public repository is readable by anyone; a private one only by its own org. A repository that does not exist and one belonging to another org answer the SAME 404, so the page is never an existence oracle. This is a server-rendered browser page, not JSON — the console repo-browser reads the same repository through the JSON ops under /v1/git. Repository names, paths and file contents all render through auto-escaping templates rather than being concatenated into HTML. Served only on the dedicated git host, where a browse URL matches the clone URL; on the API and console hosts it falls through to their own routes, so it can never shadow them.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] repo (required):
  Future<void> getByOrgByRepoCommits(String org, String repo,) async {
    final response = await getByOrgByRepoCommitsWithHttpInfo(org, repo,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Advertise a repository's refs to a git client
  ///
  /// The ref-advertisement phase of git's smart-HTTP protocol — the first request a clone, a fetch and a push all make. `?service=` selects which: `git-upload-pack` advertises for a fetch, `git-receive-pack` for a push, and any other value is 400.  ANONYMOUS ONLY FOR FETCH, AND ONLY ON A PUBLIC REPOSITORY. The push advertisement always requires an authenticated org, and where a path org is present it must equal the authenticated one. A private repository reached without its org is 404, indistinguishable from one that does not exist. Addressed at the git host's root, so `git clone https://<git-host>/<org>/<repo>.git` works with the canonical URL and no prefix. Served ONLY on the dedicated git host; on the API and console hosts it falls through, so a bare /:org/:repo can never shadow another surface. This is git's own wire protocol, not an API call to make by hand: point a git client at the clone URL and it makes this request itself.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] repo (required):
  Future<Response> getByOrgByRepoInfoRefsWithHttpInfo(String org, String repo,) async {
    // ignore: prefer_const_declarations
    final path = r'/{org}/{repo}/info/refs'
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
  /// The ref-advertisement phase of git's smart-HTTP protocol — the first request a clone, a fetch and a push all make. `?service=` selects which: `git-upload-pack` advertises for a fetch, `git-receive-pack` for a push, and any other value is 400.  ANONYMOUS ONLY FOR FETCH, AND ONLY ON A PUBLIC REPOSITORY. The push advertisement always requires an authenticated org, and where a path org is present it must equal the authenticated one. A private repository reached without its org is 404, indistinguishable from one that does not exist. Addressed at the git host's root, so `git clone https://<git-host>/<org>/<repo>.git` works with the canonical URL and no prefix. Served ONLY on the dedicated git host; on the API and console hosts it falls through, so a bare /:org/:repo can never shadow another surface. This is git's own wire protocol, not an API call to make by hand: point a git client at the clone URL and it makes this request itself.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] repo (required):
  Future<void> getByOrgByRepoInfoRefs(String org, String repo,) async {
    final response = await getByOrgByRepoInfoRefsWithHttpInfo(org, repo,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Browse a directory inside a repository
  ///
  /// The contents of one directory at one revision, with breadcrumbs back up and links onward into subdirectories and files. The path after /tree/ is the directory and `?ref=` selects the branch, tag or commit, defaulting to the repository's own default branch. An unknown ref is 404, as is a repository with no commits. A public repository is readable by anyone; a private one only by its own org. A repository that does not exist and one belonging to another org answer the SAME 404, so the page is never an existence oracle. This is a server-rendered browser page, not JSON — the console repo-browser reads the same repository through the JSON ops under /v1/git. Repository names, paths and file contents all render through auto-escaping templates rather than being concatenated into HTML. Served only on the dedicated git host, where a browse URL matches the clone URL; on the API and console hosts it falls through to their own routes, so it can never shadow them.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [String] wildcard1 (required):
  Future<Response> getByOrgByRepoTreeByWildcard1WithHttpInfo(String org, String repo, String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/{org}/{repo}/tree/{wildcard1}'
      .replaceAll('{org}', org)
      .replaceAll('{repo}', repo)
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

  /// Browse a directory inside a repository
  ///
  /// The contents of one directory at one revision, with breadcrumbs back up and links onward into subdirectories and files. The path after /tree/ is the directory and `?ref=` selects the branch, tag or commit, defaulting to the repository's own default branch. An unknown ref is 404, as is a repository with no commits. A public repository is readable by anyone; a private one only by its own org. A repository that does not exist and one belonging to another org answer the SAME 404, so the page is never an existence oracle. This is a server-rendered browser page, not JSON — the console repo-browser reads the same repository through the JSON ops under /v1/git. Repository names, paths and file contents all render through auto-escaping templates rather than being concatenated into HTML. Served only on the dedicated git host, where a browse URL matches the clone URL; on the API and console hosts it falls through to their own routes, so it can never shadow them.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [String] wildcard1 (required):
  Future<void> getByOrgByRepoTreeByWildcard1(String org, String repo, String wildcard1,) async {
    final response = await getByOrgByRepoTreeByWildcard1WithHttpInfo(org, repo, wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Open the live collaborative-editing socket
  ///
  /// Upgrades to the hocuspocus WebSocket the Team editor syncs its Y.js documents over: binary frames of document name, message type and payload, with ONE socket multiplexing every document a tab has open. The server is a relay and an ordered update log, not a CRDT engine — it replays the log to each joining peer and broadcasts every update to the rest, which converges because Y.js updates are commutative and idempotent. There is no body; the response is a protocol upgrade.  IT SITS OUTSIDE /v1 ON PURPOSE. The client derives both collaborator lanes from one configured URL — this socket at its root, the markup-snapshot RPC one segment in — so the path is fixed by the editor library's contract rather than chosen by this service.  AUTH IS IN-BAND, PER DOCUMENT, NOT ON THE UPGRADE. The handshake gates only on browser Origin (403 outside the team surfaces; no Origin at all is admitted, which is what a non-browser sends), and then the first frame for a document must be an Auth message carrying the same session or workspace token every other team route verifies — a browser WebSocket cannot set an Authorization header, which is why the token rides inside the protocol. Anything else on an unauthenticated document is answered with one permission denial and nothing further.  Every document is authorized on its own: the document's workspace must be the token's workspace when the token pins one, and the caller must be a member of it. A mismatch, an unknown workspace and a non-member deny alike with \"document not found\". Rooms are keyed by org and workspace and the persisted log's key embeds both, so a foreign document id can neither join a room nor read a blob.  The server pings every twenty seconds and drops a socket silent for sixty, so a backgrounded tab — whose JS timers are throttled but whose network stack still auto-pongs — stays connected instead of dying into a reconnect loop.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCollaboratorWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/collaborator';

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

  /// Open the live collaborative-editing socket
  ///
  /// Upgrades to the hocuspocus WebSocket the Team editor syncs its Y.js documents over: binary frames of document name, message type and payload, with ONE socket multiplexing every document a tab has open. The server is a relay and an ordered update log, not a CRDT engine — it replays the log to each joining peer and broadcasts every update to the rest, which converges because Y.js updates are commutative and idempotent. There is no body; the response is a protocol upgrade.  IT SITS OUTSIDE /v1 ON PURPOSE. The client derives both collaborator lanes from one configured URL — this socket at its root, the markup-snapshot RPC one segment in — so the path is fixed by the editor library's contract rather than chosen by this service.  AUTH IS IN-BAND, PER DOCUMENT, NOT ON THE UPGRADE. The handshake gates only on browser Origin (403 outside the team surfaces; no Origin at all is admitted, which is what a non-browser sends), and then the first frame for a document must be an Auth message carrying the same session or workspace token every other team route verifies — a browser WebSocket cannot set an Authorization header, which is why the token rides inside the protocol. Anything else on an unauthenticated document is answered with one permission denial and nothing further.  Every document is authorized on its own: the document's workspace must be the token's workspace when the token pins one, and the caller must be a member of it. A mismatch, an unknown workspace and a non-member deny alike with \"document not found\". Rooms are keyed by org and workspace and the persisted log's key embeds both, so a foreign document id can neither join a room nor read a blob.  The server pings every twenty seconds and drops a socket silent for sixty, so a backgrounded tab — whose JS timers are throttled but whose network stack still auto-pongs — stays connected instead of dying into a reconnect loop.
  Future<void> getCollaborator() async {
    final response = await getCollaboratorWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Read the crypto deposit watcher's runtime state, asset by asset
  ///
  /// Reports whether the deposit watcher is running, its poll interval, and one row per armed asset: chain, token, contract, pooled address and the last block that asset's cursor reached. That last block is the only way to see a watcher that is up but no longer advancing, which is what a stalled deposit rail looks like from outside. SuperAdmin only — the reserved admin org's owner claim; an authenticated caller without it is refused 403 and an anonymous one 401. It is READ-ONLY by design: arming an asset stays a CRYPTO_DEPOSIT_* deployment act and is deliberately not a button here, so there is nothing on this surface that can start crediting a customer's balance. The asset's RPC endpoint is reduced to scheme://host before it is returned, because a managed node URL carries its API key in the path or query and echoing it verbatim would publish that credential to every reader of this status.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceDepositsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/_/commerce/deposits';

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

  /// Read the crypto deposit watcher's runtime state, asset by asset
  ///
  /// Reports whether the deposit watcher is running, its poll interval, and one row per armed asset: chain, token, contract, pooled address and the last block that asset's cursor reached. That last block is the only way to see a watcher that is up but no longer advancing, which is what a stalled deposit rail looks like from outside. SuperAdmin only — the reserved admin org's owner claim; an authenticated caller without it is refused 403 and an anonymous one 401. It is READ-ONLY by design: arming an asset stays a CRYPTO_DEPOSIT_* deployment act and is deliberately not a button here, so there is nothing on this surface that can start crediting a customer's balance. The asset's RPC endpoint is reduced to scheme://host before it is returned, because a managed node URL carries its API key in the path or query and echoing it verbatim would publish that credential to every reader of this status.
  Future<void> getCommerceDeposits() async {
    final response = await getCommerceDepositsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Answers ok whenever the commerce subsystem is mounted.
  ///
  /// Answers ok whenever the commerce subsystem is mounted. It is registered before the module embed boots, so it keeps answering even when the embed failed and every business route serves the fail-closed 503 — which is the point: it reports that the process is reachable, never that the money plane is healthy. Unauthenticated, and under /_ so the ingress withholds it publicly.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceHealthzWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/_/commerce/healthz';

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

  /// Answers ok whenever the commerce subsystem is mounted.
  ///
  /// Answers ok whenever the commerce subsystem is mounted. It is registered before the module embed boots, so it keeps answering even when the embed failed and every business route serves the fail-closed 503 — which is the point: it reports that the process is reachable, never that the money plane is healthy. Unauthenticated, and under /_ so the ingress withholds it publicly.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  Future<Liveness?> getCommerceHealthz() async {
    final response = await getCommerceHealthzWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Liveness',) as Liveness;
    
    }
    return null;
  }

  /// The Hanzo event tag — the one-line install for a surface with no bundler
  ///
  /// Serves the browser tag that autocaptures pageviews (initial and SPA) and uncaught errors onto the canonical wire at POST /v1/event.  Install is one line, and it is the same line for a Hanzo property and for a customer's own page:      <script defer src=\"https://api.hanzo.ai/v1/event.js\" data-key=\"pk-…\"></script>  `data-key` is the publishable key the project mints; `data-product` optionally names the emitting surface. The key may also ride the src as `?key=` for a host that strips data attributes.  WITHOUT A KEY THE TAG SENDS NOTHING. A keyless beacon is accepted 200 into $public, a reserved tenant the owning org cannot read — so silence is the honest failure, and the tag picks it rather than reporting success into a tenant nobody reads.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getEventJsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/event.js';

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

  /// The Hanzo event tag — the one-line install for a surface with no bundler
  ///
  /// Serves the browser tag that autocaptures pageviews (initial and SPA) and uncaught errors onto the canonical wire at POST /v1/event.  Install is one line, and it is the same line for a Hanzo property and for a customer's own page:      <script defer src=\"https://api.hanzo.ai/v1/event.js\" data-key=\"pk-…\"></script>  `data-key` is the publishable key the project mints; `data-product` optionally names the emitting surface. The key may also ride the src as `?key=` for a host that strips data attributes.  WITHOUT A KEY THE TAG SENDS NOTHING. A keyless beacon is accepted 200 into $public, a reserved tenant the owning org cannot read — so silence is the honest failure, and the tag picks it rather than reporting success into a tenant nobody reads.
  Future<MultipartFile?> getEventJs() async {
    final response = await getEventJsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Discover public repositories across every org
  ///
  /// The open, unauthenticated face of the git host: every PUBLIC repository in the fleet, org-qualified, so a project can be found and cloned with no account at all — signing in is for private repos and for writes. Repositories live in per-org stores with no global index, so this unions each org's public rows and is bounded to a fixed number of stores per request, keeping discovery quick however many orgs exist. A fleet with no orgs yet is an empty page, not an error. This is a server-rendered browser page, not JSON — the console repo-browser reads the same repository through the JSON ops under /v1/git. Repository names, paths and file contents all render through auto-escaping templates rather than being concatenated into HTML. Served only on the dedicated git host, where a browse URL matches the clone URL; on the API and console hosts it falls through to their own routes, so it can never shadow them.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getExploreWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/explore';

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

  /// Discover public repositories across every org
  ///
  /// The open, unauthenticated face of the git host: every PUBLIC repository in the fleet, org-qualified, so a project can be found and cloned with no account at all — signing in is for private repos and for writes. Repositories live in per-org stores with no global index, so this unions each org's public rows and is bounded to a fixed number of stores per request, keeping discovery quick however many orgs exist. A fleet with no orgs yet is an empty page, not an error. This is a server-rendered browser page, not JSON — the console repo-browser reads the same repository through the JSON ops under /v1/git. Repository names, paths and file contents all render through auto-escaping templates rather than being concatenated into HTML. Served only on the dedicated git host, where a browse URL matches the clone URL; on the API and console hosts it falls through to their own routes, so it can never shadow them.
  Future<void> getExplore() async {
    final response = await getExploreWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Browse your org's repositories
  ///
  /// The repository list for the signed-in caller's org — each repo with its description, default branch, size and last update. SIGNED OUT it renders the public explore page instead of refusing, because most Hanzo repos are open source and the open face is the default one; signed in, the caller's own org shows its private repositories alongside its public ones. This is a server-rendered browser page, not JSON — the console repo-browser reads the same repository through the JSON ops under /v1/git. Repository names, paths and file contents all render through auto-escaping templates rather than being concatenated into HTML. Served on every host, which is how the console embeds the git browser under /git.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getGitWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/git';

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

  /// Browse your org's repositories
  ///
  /// The repository list for the signed-in caller's org — each repo with its description, default branch, size and last update. SIGNED OUT it renders the public explore page instead of refusing, because most Hanzo repos are open source and the open face is the default one; signed in, the caller's own org shows its private repositories alongside its public ones. This is a server-rendered browser page, not JSON — the console repo-browser reads the same repository through the JSON ops under /v1/git. Repository names, paths and file contents all render through auto-escaping templates rather than being concatenated into HTML. Served on every host, which is how the console embeds the git browser under /git.
  Future<void> getGit() async {
    final response = await getGitWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Open a repository's home page
  ///
  /// A repository at a glance: its branches, the tree at the tip, its most recent commits, its README rendered, and the HTTPS and SSH clone URLs. `?ref=` selects a branch, tag or commit; the default branch is used when it is omitted. A repository with no commits yet renders its clone instructions rather than an error, which is what a caller who has just created one needs to see. A public repository is readable by anyone; a private one only by its own org. A repository that does not exist and one belonging to another org answer the SAME 404, so the page is never an existence oracle. This is a server-rendered browser page, not JSON — the console repo-browser reads the same repository through the JSON ops under /v1/git. Repository names, paths and file contents all render through auto-escaping templates rather than being concatenated into HTML. Served on every host, which is how the console embeds the git browser under /git.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] repo (required):
  Future<Response> getGitByOrgByRepoWithHttpInfo(String org, String repo,) async {
    // ignore: prefer_const_declarations
    final path = r'/git/{org}/{repo}'
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

  /// Open a repository's home page
  ///
  /// A repository at a glance: its branches, the tree at the tip, its most recent commits, its README rendered, and the HTTPS and SSH clone URLs. `?ref=` selects a branch, tag or commit; the default branch is used when it is omitted. A repository with no commits yet renders its clone instructions rather than an error, which is what a caller who has just created one needs to see. A public repository is readable by anyone; a private one only by its own org. A repository that does not exist and one belonging to another org answer the SAME 404, so the page is never an existence oracle. This is a server-rendered browser page, not JSON — the console repo-browser reads the same repository through the JSON ops under /v1/git. Repository names, paths and file contents all render through auto-escaping templates rather than being concatenated into HTML. Served on every host, which is how the console embeds the git browser under /git.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] repo (required):
  Future<void> getGitByOrgByRepo(String org, String repo,) async {
    final response = await getGitByOrgByRepoWithHttpInfo(org, repo,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// View a file in a repository
  ///
  /// One file's contents at one revision, with its size and line count. A BINARY file is reported as binary rather than dumped into the page. The path after /blob/ is the file and `?ref=` selects the branch, tag or commit. An unknown ref or a path that is not a file in it is 404. A public repository is readable by anyone; a private one only by its own org. A repository that does not exist and one belonging to another org answer the SAME 404, so the page is never an existence oracle. This is a server-rendered browser page, not JSON — the console repo-browser reads the same repository through the JSON ops under /v1/git. Repository names, paths and file contents all render through auto-escaping templates rather than being concatenated into HTML. Served on every host, which is how the console embeds the git browser under /git.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [String] wildcard1 (required):
  Future<Response> getGitByOrgByRepoBlobByWildcard1WithHttpInfo(String org, String repo, String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/git/{org}/{repo}/blob/{wildcard1}'
      .replaceAll('{org}', org)
      .replaceAll('{repo}', repo)
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

  /// View a file in a repository
  ///
  /// One file's contents at one revision, with its size and line count. A BINARY file is reported as binary rather than dumped into the page. The path after /blob/ is the file and `?ref=` selects the branch, tag or commit. An unknown ref or a path that is not a file in it is 404. A public repository is readable by anyone; a private one only by its own org. A repository that does not exist and one belonging to another org answer the SAME 404, so the page is never an existence oracle. This is a server-rendered browser page, not JSON — the console repo-browser reads the same repository through the JSON ops under /v1/git. Repository names, paths and file contents all render through auto-escaping templates rather than being concatenated into HTML. Served on every host, which is how the console embeds the git browser under /git.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [String] wildcard1 (required):
  Future<void> getGitByOrgByRepoBlobByWildcard1(String org, String repo, String wildcard1,) async {
    final response = await getGitByOrgByRepoBlobByWildcard1WithHttpInfo(org, repo, wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Read a repository's commit log
  ///
  /// The hundred most recent commits on one ref, each with its author, message and date. `?ref=` selects the branch, tag or commit, defaulting to the repository's default branch; an unknown one is 404. A public repository is readable by anyone; a private one only by its own org. A repository that does not exist and one belonging to another org answer the SAME 404, so the page is never an existence oracle. This is a server-rendered browser page, not JSON — the console repo-browser reads the same repository through the JSON ops under /v1/git. Repository names, paths and file contents all render through auto-escaping templates rather than being concatenated into HTML. Served on every host, which is how the console embeds the git browser under /git.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] repo (required):
  Future<Response> getGitByOrgByRepoCommitsWithHttpInfo(String org, String repo,) async {
    // ignore: prefer_const_declarations
    final path = r'/git/{org}/{repo}/commits'
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

  /// Read a repository's commit log
  ///
  /// The hundred most recent commits on one ref, each with its author, message and date. `?ref=` selects the branch, tag or commit, defaulting to the repository's default branch; an unknown one is 404. A public repository is readable by anyone; a private one only by its own org. A repository that does not exist and one belonging to another org answer the SAME 404, so the page is never an existence oracle. This is a server-rendered browser page, not JSON — the console repo-browser reads the same repository through the JSON ops under /v1/git. Repository names, paths and file contents all render through auto-escaping templates rather than being concatenated into HTML. Served on every host, which is how the console embeds the git browser under /git.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] repo (required):
  Future<void> getGitByOrgByRepoCommits(String org, String repo,) async {
    final response = await getGitByOrgByRepoCommitsWithHttpInfo(org, repo,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Browse a directory inside a repository
  ///
  /// The contents of one directory at one revision, with breadcrumbs back up and links onward into subdirectories and files. The path after /tree/ is the directory and `?ref=` selects the branch, tag or commit, defaulting to the repository's own default branch. An unknown ref is 404, as is a repository with no commits. A public repository is readable by anyone; a private one only by its own org. A repository that does not exist and one belonging to another org answer the SAME 404, so the page is never an existence oracle. This is a server-rendered browser page, not JSON — the console repo-browser reads the same repository through the JSON ops under /v1/git. Repository names, paths and file contents all render through auto-escaping templates rather than being concatenated into HTML. Served on every host, which is how the console embeds the git browser under /git.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [String] wildcard1 (required):
  Future<Response> getGitByOrgByRepoTreeByWildcard1WithHttpInfo(String org, String repo, String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/git/{org}/{repo}/tree/{wildcard1}'
      .replaceAll('{org}', org)
      .replaceAll('{repo}', repo)
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

  /// Browse a directory inside a repository
  ///
  /// The contents of one directory at one revision, with breadcrumbs back up and links onward into subdirectories and files. The path after /tree/ is the directory and `?ref=` selects the branch, tag or commit, defaulting to the repository's own default branch. An unknown ref is 404, as is a repository with no commits. A public repository is readable by anyone; a private one only by its own org. A repository that does not exist and one belonging to another org answer the SAME 404, so the page is never an existence oracle. This is a server-rendered browser page, not JSON — the console repo-browser reads the same repository through the JSON ops under /v1/git. Repository names, paths and file contents all render through auto-escaping templates rather than being concatenated into HTML. Served on every host, which is how the console embeds the git browser under /git.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [String] wildcard1 (required):
  Future<void> getGitByOrgByRepoTreeByWildcard1(String org, String repo, String wildcard1,) async {
    final response = await getGitByOrgByRepoTreeByWildcard1WithHttpInfo(org, repo, wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Discover public repositories across every org
  ///
  /// The open, unauthenticated face of the git host: every PUBLIC repository in the fleet, org-qualified, so a project can be found and cloned with no account at all — signing in is for private repos and for writes. Repositories live in per-org stores with no global index, so this unions each org's public rows and is bounded to a fixed number of stores per request, keeping discovery quick however many orgs exist. A fleet with no orgs yet is an empty page, not an error. This is a server-rendered browser page, not JSON — the console repo-browser reads the same repository through the JSON ops under /v1/git. Repository names, paths and file contents all render through auto-escaping templates rather than being concatenated into HTML. Served on every host, which is how the console embeds the git browser under /git.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getGitExploreWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/git/explore';

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

  /// Discover public repositories across every org
  ///
  /// The open, unauthenticated face of the git host: every PUBLIC repository in the fleet, org-qualified, so a project can be found and cloned with no account at all — signing in is for private repos and for writes. Repositories live in per-org stores with no global index, so this unions each org's public rows and is bounded to a fixed number of stores per request, keeping discovery quick however many orgs exist. A fleet with no orgs yet is an empty page, not an error. This is a server-rendered browser page, not JSON — the console repo-browser reads the same repository through the JSON ops under /v1/git. Repository names, paths and file contents all render through auto-escaping templates rather than being concatenated into HTML. Served on every host, which is how the console embeds the git browser under /git.
  Future<void> getGitExplore() async {
    final response = await getGitExploreWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The call client
  ///
  /// Serves the application shell on GET, which is the entry point a browser loads before it calls anything under /v1/meet/.  This is the call client itself — HTML and hashed assets, not an API. Only GET and HEAD are served; every other method is refused 405. Hashed assets are returned immutable and cached for a year, while the shell is always revalidated, so a new deployment replaces a stale one on the next request.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMeetAppWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/meet';

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

  /// The call client
  ///
  /// Serves the application shell on GET, which is the entry point a browser loads before it calls anything under /v1/meet/.  This is the call client itself — HTML and hashed assets, not an API. Only GET and HEAD are served; every other method is refused 405. Hashed assets are returned immutable and cached for a year, while the shell is always revalidated, so a new deployment replaces a stale one on the next request.
  Future<void> getMeetApp() async {
    final response = await getMeetAppWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The call client's assets and client-side routes
  ///
  /// Serves the static assets on GET, and returns the application shell for any path that is not a file — client-side routing means a deep link is a shell load, not a 404.  The one exception is /meet/assets/, which holds only content-addressed build output: a name that is not there is a purged chunk, never a route, and answers 404. Everywhere else a path that looks like a missing file answers 200 with the shell, so read the content type rather than the status when a resource seems to be missing.  A bundle that was never built answers 503 under its own name on every path, which is a failed deploy rather than a missing page.  This is the call client itself — HTML and hashed assets, not an API. Only GET and HEAD are served; every other method is refused 405. Hashed assets are returned immutable and cached for a year, while the shell is always revalidated, so a new deployment replaces a stale one on the next request.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> getMeetAppAssetsWithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/meet/{wildcard1}'
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

  /// The call client's assets and client-side routes
  ///
  /// Serves the static assets on GET, and returns the application shell for any path that is not a file — client-side routing means a deep link is a shell load, not a 404.  The one exception is /meet/assets/, which holds only content-addressed build output: a name that is not there is a purged chunk, never a route, and answers 404. Everywhere else a path that looks like a missing file answers 200 with the shell, so read the content type rather than the status when a resource seems to be missing.  A bundle that was never built answers 503 under its own name on every path, which is a failed deploy rather than a missing page.  This is the call client itself — HTML and hashed assets, not an API. Only GET and HEAD are served; every other method is refused 405. Hashed assets are returned immutable and cached for a year, while the shell is always revalidated, so a new deployment replaces a stale one on the next request.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> getMeetAppAssets(String wildcard1,) async {
    final response = await getMeetAppAssetsWithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The API description this SDK was generated from
  ///
  /// Serves the OpenAPI document for the routes this process actually answers — generated from the live router at request time, not from a checked-in file that can disagree with it.  On an app it is that app's own surface; on the fleet's front door it is the woven document for every mounted app. Unauthenticated by design: a client has to be able to read the contract before it holds a credential, and the document grants nothing.  Rendered once and served as bytes thereafter, so the route table's immutability is what makes a repeat request a memcpy rather than a re-encode of a megabyte document.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getOpenapiJsonWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/openapi.json';

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

  /// The API description this SDK was generated from
  ///
  /// Serves the OpenAPI document for the routes this process actually answers — generated from the live router at request time, not from a checked-in file that can disagree with it.  On an app it is that app's own surface; on the fleet's front door it is the woven document for every mounted app. Unauthenticated by design: a client has to be able to read the contract before it holds a credential, and the document grants nothing.  Rendered once and served as bytes thereafter, so the route table's immutability is what makes a repeat request a memcpy rather than a re-encode of a megabyte document.
  Future<void> getOpenapiJson() async {
    final response = await getOpenapiJsonWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The tasks console
  ///
  /// Serves the application shell on GET, which is the entry point a browser loads before it calls anything under /v1/tasks/.  This is the tasks console itself — HTML and hashed assets, not an API. Only GET and HEAD are served; every other method is refused 405. Hashed assets are returned immutable and cached for a year, while the shell is always revalidated, so a new deployment replaces a stale one on the next request.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTasksAppWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/tasks';

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

  /// The tasks console
  ///
  /// Serves the application shell on GET, which is the entry point a browser loads before it calls anything under /v1/tasks/.  This is the tasks console itself — HTML and hashed assets, not an API. Only GET and HEAD are served; every other method is refused 405. Hashed assets are returned immutable and cached for a year, while the shell is always revalidated, so a new deployment replaces a stale one on the next request.
  Future<void> getTasksApp() async {
    final response = await getTasksAppWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The tasks console's assets and client-side routes
  ///
  /// Serves the static assets on GET, and returns the application shell for any path that is not a file — client-side routing means a deep link is a shell load, not a 404.  The one exception is /tasks/assets/, which holds only content-addressed build output: a name that is not there is a purged chunk, never a route, and answers 404. Everywhere else a path that looks like a missing file answers 200 with the shell, so read the content type rather than the status when a resource seems to be missing.  A bundle that was never built answers 503 under its own name on every path, which is a failed deploy rather than a missing page.  This is the tasks console itself — HTML and hashed assets, not an API. Only GET and HEAD are served; every other method is refused 405. Hashed assets are returned immutable and cached for a year, while the shell is always revalidated, so a new deployment replaces a stale one on the next request.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> getTasksAppAssetsWithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{wildcard1}'
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

  /// The tasks console's assets and client-side routes
  ///
  /// Serves the static assets on GET, and returns the application shell for any path that is not a file — client-side routing means a deep link is a shell load, not a 404.  The one exception is /tasks/assets/, which holds only content-addressed build output: a name that is not there is a purged chunk, never a route, and answers 404. Everywhere else a path that looks like a missing file answers 200 with the shell, so read the content type rather than the status when a resource seems to be missing.  A bundle that was never built answers 503 under its own name on every path, which is a failed deploy rather than a missing page.  This is the tasks console itself — HTML and hashed assets, not an API. Only GET and HEAD are served; every other method is refused 405. Hashed assets are returned immutable and cached for a year, while the shell is always revalidated, so a new deployment replaces a stale one on the next request.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> getTasksAppAssets(String wildcard1,) async {
    final response = await getTasksAppAssetsWithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// One skill's document, as markdown
  ///
  /// Serves a single agent skill's SKILL.md as text/markdown — the instructions a client follows once index.json has told it the skill exists, and byte for byte the document that index.json's sha256 for that skill was computed over.  The skill segment is a flat, service-prefixed id (`ai_models`): one path segment with no separators, so a request can never address anything outside the embedded catalogue. An id of any other shape, or a skill the serving brand does not carry, is `{\"error\":…}` at 404 — the same answer, so a probe learns nothing about which is which.  Brand resolution and caching are index.json's: the Host picks the catalogue, and the response is `Cache-Control: public, max-age=300`. Public — no bearer, no tenant scope.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] skill (required):
  Future<Response> getWellKnownAgentSkillsBySkillSkillMdWithHttpInfo(String skill,) async {
    // ignore: prefer_const_declarations
    final path = r'/.well-known/agent-skills/{skill}/SKILL.md'
      .replaceAll('{skill}', skill);

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

  /// One skill's document, as markdown
  ///
  /// Serves a single agent skill's SKILL.md as text/markdown — the instructions a client follows once index.json has told it the skill exists, and byte for byte the document that index.json's sha256 for that skill was computed over.  The skill segment is a flat, service-prefixed id (`ai_models`): one path segment with no separators, so a request can never address anything outside the embedded catalogue. An id of any other shape, or a skill the serving brand does not carry, is `{\"error\":…}` at 404 — the same answer, so a probe learns nothing about which is which.  Brand resolution and caching are index.json's: the Host picks the catalogue, and the response is `Cache-Control: public, max-age=300`. Public — no bearer, no tenant scope.
  ///
  /// Parameters:
  ///
  /// * [String] skill (required):
  Future<void> getWellKnownAgentSkillsBySkillSkillMd(String skill,) async {
    final response = await getWellKnownAgentSkillsBySkillSkillMdWithHttpInfo(skill,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The brand's master catalogue of agent skills
  ///
  /// The Agent Skills Discovery catalogue an AI client reads to learn what this deployment can do: every skill, with the sha256 of the SKILL.md that is actually served for it, so a client can verify the document it then fetches.  The catalogue is GENERATED from the per-service OpenAPI specs and embedded in the binary; this route serves those bytes verbatim and never re-derives them, which is what makes the digests hold. Which brand's catalogue you get is decided per request from the Host — api.hanzo.ai answers the Hanzo catalogue, api.lux.network the Lux one, api.zoo.ngo the Zoo one — never one brand's skills on another's surface; a Host whose brand has no embedded catalogue falls back to the deployment brand, then to hanzo.  Public by design: the discovery surface carries no secrets, so there is no bearer and no tenant scope. Answers `Cache-Control: public, max-age=300`, and a catalogue that is not embedded is `{\"error\":…}` at 404.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getWellKnownAgentSkillsIndexJsonWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/.well-known/agent-skills/index.json';

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

  /// The brand's master catalogue of agent skills
  ///
  /// The Agent Skills Discovery catalogue an AI client reads to learn what this deployment can do: every skill, with the sha256 of the SKILL.md that is actually served for it, so a client can verify the document it then fetches.  The catalogue is GENERATED from the per-service OpenAPI specs and embedded in the binary; this route serves those bytes verbatim and never re-derives them, which is what makes the digests hold. Which brand's catalogue you get is decided per request from the Host — api.hanzo.ai answers the Hanzo catalogue, api.lux.network the Lux one, api.zoo.ngo the Zoo one — never one brand's skills on another's surface; a Host whose brand has no embedded catalogue falls back to the deployment brand, then to hanzo.  Public by design: the discovery surface carries no secrets, so there is no bearer and no tenant scope. Answers `Cache-Control: public, max-age=300`, and a catalogue that is not embedded is `{\"error\":…}` at 404.
  Future<void> getWellKnownAgentSkillsIndexJson() async {
    final response = await getWellKnownAgentSkillsIndexJsonWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Publishes the public keys that verify the tokens issued here — the one URL you point a service at so it can check a token itself, offline, without calling back and without holding any secret of ours.
  ///
  /// Publishes the public keys that verify the tokens issued here — the one URL you point a service at so it can check a token itself, offline, without calling back and without holding any secret of ours.  Keys appear here before they start signing and stay after they stop, so a rotation never leaves a live token unverifiable. Nothing private is ever published.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getWellKnownJwksWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/.well-known/jwks';

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

  /// Publishes the public keys that verify the tokens issued here — the one URL you point a service at so it can check a token itself, offline, without calling back and without holding any secret of ours.
  ///
  /// Publishes the public keys that verify the tokens issued here — the one URL you point a service at so it can check a token itself, offline, without calling back and without holding any secret of ours.  Keys appear here before they start signing and stay after they stop, so a rotation never leaves a live token unverifiable. Nothing private is ever published.
  Future<void> getWellKnownJwks() async {
    final response = await getWellKnownJwksWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the OpenID Connect discovery document — the one URL you point a standards-compliant client at so it can find every other endpoint on its own, instead of you configuring them by hand.
  ///
  /// Returns the OpenID Connect discovery document — the one URL you point a standards-compliant client at so it can find every other endpoint on its own, instead of you configuring them by hand.  It advertises only what is actually implemented, so a client that reads it cannot ask for a flow that will fail: the authorization-code flow, PKCE with S256, the supported grants, and the signing algorithms whose public keys the JWKS really publishes.  The issuer is derived from the host you asked on and is the same value the tokens carry, so a client that pins the issuer never sees it change.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getWellKnownOauthAuthorizationServerWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/.well-known/oauth-authorization-server';

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

  /// Returns the OpenID Connect discovery document — the one URL you point a standards-compliant client at so it can find every other endpoint on its own, instead of you configuring them by hand.
  ///
  /// Returns the OpenID Connect discovery document — the one URL you point a standards-compliant client at so it can find every other endpoint on its own, instead of you configuring them by hand.  It advertises only what is actually implemented, so a client that reads it cannot ask for a flow that will fail: the authorization-code flow, PKCE with S256, the supported grants, and the signing algorithms whose public keys the JWKS really publishes.  The issuer is derived from the host you asked on and is the same value the tokens carry, so a client that pins the issuer never sees it change.
  Future<void> getWellKnownOauthAuthorizationServer() async {
    final response = await getWellKnownOauthAuthorizationServerWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the OpenID Connect discovery document — the one URL you point a standards-compliant client at so it can find every other endpoint on its own, instead of you configuring them by hand.
  ///
  /// Returns the OpenID Connect discovery document — the one URL you point a standards-compliant client at so it can find every other endpoint on its own, instead of you configuring them by hand.  It advertises only what is actually implemented, so a client that reads it cannot ask for a flow that will fail: the authorization-code flow, PKCE with S256, the supported grants, and the signing algorithms whose public keys the JWKS really publishes.  The issuer is derived from the host you asked on and is the same value the tokens carry, so a client that pins the issuer never sees it change.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getWellKnownOpenidConfigurationWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/.well-known/openid-configuration';

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

  /// Returns the OpenID Connect discovery document — the one URL you point a standards-compliant client at so it can find every other endpoint on its own, instead of you configuring them by hand.
  ///
  /// Returns the OpenID Connect discovery document — the one URL you point a standards-compliant client at so it can find every other endpoint on its own, instead of you configuring them by hand.  It advertises only what is actually implemented, so a client that reads it cannot ask for a flow that will fail: the authorization-code flow, PKCE with S256, the supported grants, and the signing algorithms whose public keys the JWKS really publishes.  The issuer is derived from the host you asked on and is the same value the tokens carry, so a client that pins the issuer never sees it change.
  Future<void> getWellKnownOpenidConfiguration() async {
    final response = await getWellKnownOpenidConfigurationWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Watch one running query's progress over a websocket
  ///
  /// The same progress read as /v1/o11y/query_progress, delivered over a websocket: the Upgrade IS the contract, so there is no JSON response to declare and no typed operation to make of it.  It sits outside /v1/o11y on purpose — the upgrade handshake is a transport concern, not a resource — and it was unreachable from the composed binary until the route table named it, because the old wildcard covered only the o11y prefix.  A validated, org-scoped principal is required.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getWsQueryProgressWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/ws/query_progress';

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

  /// Watch one running query's progress over a websocket
  ///
  /// The same progress read as /v1/o11y/query_progress, delivered over a websocket: the Upgrade IS the contract, so there is no JSON response to declare and no typed operation to make of it.  It sits outside /v1/o11y on purpose — the upgrade handshake is a transport concern, not a resource — and it was unreachable from the composed binary until the route table named it, because the old wildcard covered only the o11y prefix.  A validated, org-scoped principal is required.
  Future<void> getWsQueryProgress() async {
    final response = await getWsQueryProgressWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Not served by the call client
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> patchMeetAppWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/meet';

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

  /// Not served by the call client
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  Future<void> patchMeetApp() async {
    final response = await patchMeetAppWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Not served by the call client
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> patchMeetAppAssetsWithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/meet/{wildcard1}'
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

  /// Not served by the call client
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> patchMeetAppAssets(String wildcard1,) async {
    final response = await patchMeetAppAssetsWithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Not served by the tasks console
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> patchTasksAppWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/tasks';

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

  /// Not served by the tasks console
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  Future<void> patchTasksApp() async {
    final response = await patchTasksAppWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Not served by the tasks console
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> patchTasksAppAssetsWithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{wildcard1}'
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

  /// Not served by the tasks console
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> patchTasksAppAssets(String wildcard1,) async {
    final response = await patchTasksAppAssetsWithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Accept a push, and turn it into a build
  ///
  /// The pack-transfer phase of a push, and the point at which a push becomes an EVENT. NEVER ANONYMOUS: a push always requires an authenticated org, and the org in the path must equal it.  Once the pack is on disk the repository's storage usage is metered and a build is fired for every branch whose tip actually moved, computed from the before/after branch diff rather than from what the client claimed. That runs on a cancel-immune context, so a client that hangs up the moment its push lands still gets its build, and it runs even when git itself exited non-zero — the refs on disk are the ground truth. Repacking housekeeping is detached and never blocks the response.  A Content-Type other than `application/x-git-receive-pack-request` is 400. Addressed at the git host's root with the PROJECT as a middle path segment — the canonical-URL form of the project-scoped remote, since a git client has no header to carry a project. Served only on the dedicated git host; elsewhere it falls through. This is git's own wire protocol, not an API call to make by hand: point a git client at the clone URL and it makes this request itself.
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
  Future<Response> postByOrgByProjectByRepoGitReceivePackWithHttpInfo(String org, String project, String repo, { MultipartFile? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/{org}/{project}/{repo}/git-receive-pack'
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
  /// The pack-transfer phase of a push, and the point at which a push becomes an EVENT. NEVER ANONYMOUS: a push always requires an authenticated org, and the org in the path must equal it.  Once the pack is on disk the repository's storage usage is metered and a build is fired for every branch whose tip actually moved, computed from the before/after branch diff rather than from what the client claimed. That runs on a cancel-immune context, so a client that hangs up the moment its push lands still gets its build, and it runs even when git itself exited non-zero — the refs on disk are the ground truth. Repacking housekeeping is detached and never blocks the response.  A Content-Type other than `application/x-git-receive-pack-request` is 400. Addressed at the git host's root with the PROJECT as a middle path segment — the canonical-URL form of the project-scoped remote, since a git client has no header to carry a project. Served only on the dedicated git host; elsewhere it falls through. This is git's own wire protocol, not an API call to make by hand: point a git client at the clone URL and it makes this request itself.
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
  Future<void> postByOrgByProjectByRepoGitReceivePack(String org, String project, String repo, { MultipartFile? body, }) async {
    final response = await postByOrgByProjectByRepoGitReceivePackWithHttpInfo(org, project, repo,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Serve a clone or fetch
  ///
  /// The pack-transfer phase of a clone or fetch: the request and the response are git's binary pack protocol, streamed straight through git itself — request body to git's stdin, git's stdout to the response — so a multi-gigabyte clone never lands in this process's memory.  A PUBLIC repository is fetched anonymously; a private one requires its own org, and a wrong or absent org is 404 rather than a hint that the repository exists. A Content-Type other than `application/x-git-upload-pack-request` is 400. Addressed at the git host's root with the PROJECT as a middle path segment — the canonical-URL form of the project-scoped remote, since a git client has no header to carry a project. Served only on the dedicated git host; elsewhere it falls through. This is git's own wire protocol, not an API call to make by hand: point a git client at the clone URL and it makes this request itself.
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
  Future<Response> postByOrgByProjectByRepoGitUploadPackWithHttpInfo(String org, String project, String repo, { MultipartFile? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/{org}/{project}/{repo}/git-upload-pack'
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
  /// The pack-transfer phase of a clone or fetch: the request and the response are git's binary pack protocol, streamed straight through git itself — request body to git's stdin, git's stdout to the response — so a multi-gigabyte clone never lands in this process's memory.  A PUBLIC repository is fetched anonymously; a private one requires its own org, and a wrong or absent org is 404 rather than a hint that the repository exists. A Content-Type other than `application/x-git-upload-pack-request` is 400. Addressed at the git host's root with the PROJECT as a middle path segment — the canonical-URL form of the project-scoped remote, since a git client has no header to carry a project. Served only on the dedicated git host; elsewhere it falls through. This is git's own wire protocol, not an API call to make by hand: point a git client at the clone URL and it makes this request itself.
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
  Future<void> postByOrgByProjectByRepoGitUploadPack(String org, String project, String repo, { MultipartFile? body, }) async {
    final response = await postByOrgByProjectByRepoGitUploadPackWithHttpInfo(org, project, repo,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Accept a push, and turn it into a build
  ///
  /// The pack-transfer phase of a push, and the point at which a push becomes an EVENT. NEVER ANONYMOUS: a push always requires an authenticated org, and the org in the path must equal it.  Once the pack is on disk the repository's storage usage is metered and a build is fired for every branch whose tip actually moved, computed from the before/after branch diff rather than from what the client claimed. That runs on a cancel-immune context, so a client that hangs up the moment its push lands still gets its build, and it runs even when git itself exited non-zero — the refs on disk are the ground truth. Repacking housekeeping is detached and never blocks the response.  A Content-Type other than `application/x-git-receive-pack-request` is 400. Addressed at the git host's root, so `git clone https://<git-host>/<org>/<repo>.git` works with the canonical URL and no prefix. Served ONLY on the dedicated git host; on the API and console hosts it falls through, so a bare /:org/:repo can never shadow another surface. This is git's own wire protocol, not an API call to make by hand: point a git client at the clone URL and it makes this request itself.
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
  Future<Response> postByOrgByRepoGitReceivePackWithHttpInfo(String org, String repo, { MultipartFile? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/{org}/{repo}/git-receive-pack'
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
  /// The pack-transfer phase of a push, and the point at which a push becomes an EVENT. NEVER ANONYMOUS: a push always requires an authenticated org, and the org in the path must equal it.  Once the pack is on disk the repository's storage usage is metered and a build is fired for every branch whose tip actually moved, computed from the before/after branch diff rather than from what the client claimed. That runs on a cancel-immune context, so a client that hangs up the moment its push lands still gets its build, and it runs even when git itself exited non-zero — the refs on disk are the ground truth. Repacking housekeeping is detached and never blocks the response.  A Content-Type other than `application/x-git-receive-pack-request` is 400. Addressed at the git host's root, so `git clone https://<git-host>/<org>/<repo>.git` works with the canonical URL and no prefix. Served ONLY on the dedicated git host; on the API and console hosts it falls through, so a bare /:org/:repo can never shadow another surface. This is git's own wire protocol, not an API call to make by hand: point a git client at the clone URL and it makes this request itself.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [MultipartFile] body:
  Future<void> postByOrgByRepoGitReceivePack(String org, String repo, { MultipartFile? body, }) async {
    final response = await postByOrgByRepoGitReceivePackWithHttpInfo(org, repo,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Serve a clone or fetch
  ///
  /// The pack-transfer phase of a clone or fetch: the request and the response are git's binary pack protocol, streamed straight through git itself — request body to git's stdin, git's stdout to the response — so a multi-gigabyte clone never lands in this process's memory.  A PUBLIC repository is fetched anonymously; a private one requires its own org, and a wrong or absent org is 404 rather than a hint that the repository exists. A Content-Type other than `application/x-git-upload-pack-request` is 400. Addressed at the git host's root, so `git clone https://<git-host>/<org>/<repo>.git` works with the canonical URL and no prefix. Served ONLY on the dedicated git host; on the API and console hosts it falls through, so a bare /:org/:repo can never shadow another surface. This is git's own wire protocol, not an API call to make by hand: point a git client at the clone URL and it makes this request itself.
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
  Future<Response> postByOrgByRepoGitUploadPackWithHttpInfo(String org, String repo, { MultipartFile? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/{org}/{repo}/git-upload-pack'
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
  /// The pack-transfer phase of a clone or fetch: the request and the response are git's binary pack protocol, streamed straight through git itself — request body to git's stdin, git's stdout to the response — so a multi-gigabyte clone never lands in this process's memory.  A PUBLIC repository is fetched anonymously; a private one requires its own org, and a wrong or absent org is 404 rather than a hint that the repository exists. A Content-Type other than `application/x-git-upload-pack-request` is 400. Addressed at the git host's root, so `git clone https://<git-host>/<org>/<repo>.git` works with the canonical URL and no prefix. Served ONLY on the dedicated git host; on the API and console hosts it falls through, so a bare /:org/:repo can never shadow another surface. This is git's own wire protocol, not an API call to make by hand: point a git client at the clone URL and it makes this request itself.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [MultipartFile] body:
  Future<void> postByOrgByRepoGitUploadPack(String org, String repo, { MultipartFile? body, }) async {
    final response = await postByOrgByRepoGitUploadPackWithHttpInfo(org, repo,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// CollabRPC is the collaborative-markup snapshot plane the Team front's editor speaks: createContent stores a document field's markup at a fresh, immutable blob ref and returns it, updateContent stores a new snapshot and answers nothing, and getContent reads back the exact snapshot a ref names.
  ///
  /// CollabRPC is the collaborative-markup snapshot plane the Team front's editor speaks: createContent stores a document field's markup at a fresh, immutable blob ref and returns it, updateContent stores a new snapshot and answers nothing, and getContent reads back the exact snapshot a ref names.  createContent ALSO seeds the live-editing update log from the front-supplied Y.js update, so a dialog-authored description is visible in the collaborative editor — which replays that log — and not only in snapshot reads. updateContent never touches that log: peers may be live-editing the document, and their edits are not this call's to overwrite.  Every call is scoped to the caller's VERIFIED session or workspace token: the documentId's workspace must be the token's workspace when the token names one, and the caller must be a member of it. An unknown workspace, another tenant's workspace and a workspace the caller is not in all answer the same 404, so a probe learns nothing about what exists.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///   DocumentID addresses the document field, as \"<workspaceUuid>|<objectClass>|<objectId>|<objectAttr>\" — the collaborator-client encodeDocumentId shape, from the path.
  ///
  /// * [CollabRequest] collabRequest (required):
  Future<Response> postCollaboratorRpcByDocumentidWithHttpInfo(String documentId, CollabRequest collabRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/collaborator/rpc/{documentId}'
      .replaceAll('{documentId}', documentId);

    // ignore: prefer_final_locals
    Object? postBody = collabRequest;

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

  /// CollabRPC is the collaborative-markup snapshot plane the Team front's editor speaks: createContent stores a document field's markup at a fresh, immutable blob ref and returns it, updateContent stores a new snapshot and answers nothing, and getContent reads back the exact snapshot a ref names.
  ///
  /// CollabRPC is the collaborative-markup snapshot plane the Team front's editor speaks: createContent stores a document field's markup at a fresh, immutable blob ref and returns it, updateContent stores a new snapshot and answers nothing, and getContent reads back the exact snapshot a ref names.  createContent ALSO seeds the live-editing update log from the front-supplied Y.js update, so a dialog-authored description is visible in the collaborative editor — which replays that log — and not only in snapshot reads. updateContent never touches that log: peers may be live-editing the document, and their edits are not this call's to overwrite.  Every call is scoped to the caller's VERIFIED session or workspace token: the documentId's workspace must be the token's workspace when the token names one, and the caller must be a member of it. An unknown workspace, another tenant's workspace and a workspace the caller is not in all answer the same 404, so a probe learns nothing about what exists.
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///   DocumentID addresses the document field, as \"<workspaceUuid>|<objectClass>|<objectId>|<objectAttr>\" — the collaborator-client encodeDocumentId shape, from the path.
  ///
  /// * [CollabRequest] collabRequest (required):
  Future<CollabResult?> postCollaboratorRpcByDocumentid(String documentId, CollabRequest collabRequest,) async {
    final response = await postCollaboratorRpcByDocumentidWithHttpInfo(documentId, collabRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CollabResult',) as CollabResult;
    
    }
    return null;
  }

  /// Not served by the call client
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postMeetAppWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/meet';

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

  /// Not served by the call client
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  Future<void> postMeetApp() async {
    final response = await postMeetAppWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Not served by the call client
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> postMeetAppAssetsWithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/meet/{wildcard1}'
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

  /// Not served by the call client
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> postMeetAppAssets(String wildcard1,) async {
    final response = await postMeetAppAssetsWithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Not served by the tasks console
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postTasksAppWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/tasks';

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

  /// Not served by the tasks console
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  Future<void> postTasksApp() async {
    final response = await postTasksAppWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Not served by the tasks console
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> postTasksAppAssetsWithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{wildcard1}'
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

  /// Not served by the tasks console
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> postTasksAppAssets(String wildcard1,) async {
    final response = await postTasksAppAssetsWithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Not served by the call client
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> putMeetAppWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/meet';

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

  /// Not served by the call client
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  Future<void> putMeetApp() async {
    final response = await putMeetAppWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Not served by the call client
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> putMeetAppAssetsWithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/meet/{wildcard1}'
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

  /// Not served by the call client
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> putMeetAppAssets(String wildcard1,) async {
    final response = await putMeetAppAssetsWithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Not served by the tasks console
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> putTasksAppWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/tasks';

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

  /// Not served by the tasks console
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  Future<void> putTasksApp() async {
    final response = await putTasksAppWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Not served by the tasks console
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> putTasksAppAssetsWithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{wildcard1}'
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

  /// Not served by the tasks console
  ///
  /// Published because this address accepts every method, but a static bundle has no writes: the request is refused 405 and nothing is read or changed.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> putTasksAppAssets(String wildcard1,) async {
    final response = await putTasksAppAssetsWithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
