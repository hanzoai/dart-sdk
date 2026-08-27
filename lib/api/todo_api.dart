//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class TodoApi {
  TodoApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Refused — a board is a repository on the forge
  ///
  /// Answers 405. A todo board IS a repository on this deployment's forge, so creating, renaming and deleting one is a FORGE operation carried out with FORGE permissions.  Offering it here would put a second endpoint on the same object, guarded by this surface instead of by the forge — a weaker guard on the same thing. So the route exists and refuses, rather than 404ing: \"not this service's job\" and \"no such thing\" are different facts, and the body names the forge so a caller knows where the job IS done.  What this surface DOES own is the work on a board: list the boards you can see, read and file their issues, move a card between columns, and read the schedule a milestone is. Those are the routes beside this one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  Future<Response> deleteTodoProjectsByKeyWithHttpInfo(String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/todo/projects/{key}'
      .replaceAll('{key}', key);

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

  /// Refused — a board is a repository on the forge
  ///
  /// Answers 405. A todo board IS a repository on this deployment's forge, so creating, renaming and deleting one is a FORGE operation carried out with FORGE permissions.  Offering it here would put a second endpoint on the same object, guarded by this surface instead of by the forge — a weaker guard on the same thing. So the route exists and refuses, rather than 404ing: \"not this service's job\" and \"no such thing\" are different facts, and the body names the forge so a caller knows where the job IS done.  What this surface DOES own is the work on a board: list the boards you can see, read and file their issues, move a card between columns, and read the schedule a milestone is. Those are the routes beside this one.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  Future<void> deleteTodoProjectsByKey(String key,) async {
    final response = await deleteTodoProjectsByKeyWithHttpInfo(key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns a board's issues — work items with their column, priority, assignee, labels and schedule.
  ///
  /// Returns a board's issues — work items with their column, priority, assignee, labels and schedule.  WHICH board is a filter, not an address. Bound to a repository (the key from the path) it is that project's board; left unbound it is the org's whole board; narrowed by label it is a board smaller than any repository — which is the only way an app that lives as a directory inside a shared repository can have one. Every combination is the same rows through the same projection, so no two boards can disagree about what a column means.  The column is a LABEL on the forge, so the board and the forge web UI are the same object seen twice: relabelling in either moves the card in both. A closed issue reads as done whatever its labels say.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key:
  ///   Key is the project whose issues to list, from the path. EMPTY means every project in the org — the global board. It is a filter like the rest of this struct rather than an address, which is what lets one op answer both \"this board\" and \"all the work\" without a second surface disagreeing with the first about what a column is.
  ///
  /// * [String] status:
  ///   Status keeps only issues in that board column: backlog, todo, in_progress, done or canceled. An unknown value is refused with 400.
  ///
  /// * [String] kind:
  ///   Kind keeps only work items of that shape: issue, pr or epic. An unknown value is refused with 400.
  ///
  /// * [String] repo:
  ///   Repo keeps only issues bound to that git repository.
  ///
  /// * [String] label:
  ///   Label keeps only issues carrying that label, compared case-insensitively.  This is how a board narrows to something SMALLER than a repository — the one mechanism for it. An estate whose apps are directories inside one repository (hanzoai/cloud carries ~140 of them) has no repository per app to address, so the app is a label: `label=app/meet` is the meet board. Nothing is provisioned to make one exist; a board is the query.
  ///
  /// * [String] source_:
  ///   Source keeps only issues opened from that surface: team, git, crm, helpdesk, cms or agent. An unknown value is refused with 400.
  ///
  /// * [bool] scheduled:
  ///   Scheduled keeps only issues that carry a date — a start, a due date or both. This is the timeline's slice of the board: pass scheduled=true to get exactly the rows a gantt has somewhere to draw, instead of fetching every issue and discarding the undated ones client-side.
  Future<Response> getTodoBoardWithHttpInfo({ String? key, String? status, String? kind, String? repo, String? label, String? source_, bool? scheduled, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/todo/board';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (key != null) {
      queryParams.addAll(_queryParams('', 'key', key));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (kind != null) {
      queryParams.addAll(_queryParams('', 'kind', kind));
    }
    if (repo != null) {
      queryParams.addAll(_queryParams('', 'repo', repo));
    }
    if (label != null) {
      queryParams.addAll(_queryParams('', 'label', label));
    }
    if (source_ != null) {
      queryParams.addAll(_queryParams('', 'source', source_));
    }
    if (scheduled != null) {
      queryParams.addAll(_queryParams('', 'scheduled', scheduled));
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

  /// Returns a board's issues — work items with their column, priority, assignee, labels and schedule.
  ///
  /// Returns a board's issues — work items with their column, priority, assignee, labels and schedule.  WHICH board is a filter, not an address. Bound to a repository (the key from the path) it is that project's board; left unbound it is the org's whole board; narrowed by label it is a board smaller than any repository — which is the only way an app that lives as a directory inside a shared repository can have one. Every combination is the same rows through the same projection, so no two boards can disagree about what a column means.  The column is a LABEL on the forge, so the board and the forge web UI are the same object seen twice: relabelling in either moves the card in both. A closed issue reads as done whatever its labels say.
  ///
  /// Parameters:
  ///
  /// * [String] key:
  ///   Key is the project whose issues to list, from the path. EMPTY means every project in the org — the global board. It is a filter like the rest of this struct rather than an address, which is what lets one op answer both \"this board\" and \"all the work\" without a second surface disagreeing with the first about what a column is.
  ///
  /// * [String] status:
  ///   Status keeps only issues in that board column: backlog, todo, in_progress, done or canceled. An unknown value is refused with 400.
  ///
  /// * [String] kind:
  ///   Kind keeps only work items of that shape: issue, pr or epic. An unknown value is refused with 400.
  ///
  /// * [String] repo:
  ///   Repo keeps only issues bound to that git repository.
  ///
  /// * [String] label:
  ///   Label keeps only issues carrying that label, compared case-insensitively.  This is how a board narrows to something SMALLER than a repository — the one mechanism for it. An estate whose apps are directories inside one repository (hanzoai/cloud carries ~140 of them) has no repository per app to address, so the app is a label: `label=app/meet` is the meet board. Nothing is provisioned to make one exist; a board is the query.
  ///
  /// * [String] source_:
  ///   Source keeps only issues opened from that surface: team, git, crm, helpdesk, cms or agent. An unknown value is refused with 400.
  ///
  /// * [bool] scheduled:
  ///   Scheduled keeps only issues that carry a date — a start, a due date or both. This is the timeline's slice of the board: pass scheduled=true to get exactly the rows a gantt has somewhere to draw, instead of fetching every issue and discarding the undated ones client-side.
  Future<List<IssueView>?> getTodoBoard({ String? key, String? status, String? kind, String? repo, String? label, String? source_, bool? scheduled, }) async {
    final response = await getTodoBoardWithHttpInfo( key: key, status: status, kind: kind, repo: repo, label: label, source_: source_, scheduled: scheduled, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IssueView>') as List)
        .cast<IssueView>()
        .toList(growable: false);

    }
    return null;
  }

  /// Answers across every project in the org.
  ///
  /// Answers across every project in the org.  The org comes from the validated principal and never from the request: a caller able to name the org could read another tenant's backlog, and a search is exactly the shape that would quietly return it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] q:
  ///   Q matches an issue's title or description. A word from the issue, which is what someone remembers — not its number, which is what they are looking up.
  ///
  /// * [String] project:
  ///   Project narrows to one team key; \"\" searches every project in the org, which is the point of this op.
  ///
  /// * [String] status:
  ///   Status keeps one board column: backlog, todo, in_progress, done, canceled.
  ///
  /// * [String] kind:
  ///   Kind keeps one shape: issue, pr, epic.
  ///
  /// * [String] repo:
  ///   Repo keeps issues bound to one git repository.
  ///
  /// * [String] room:
  ///   Room keeps issues bound to one collaboration room, spelled \"<workspace>_<room>\" — the exact value GET /v1/meet/call answers with, so a channel's call and its todo list name the room the same way. This is the read a channel view runs to draw its own list; it spans every board of the org, because the work a channel is about is not confined to one board.
  ///
  /// * [String] source_:
  ///   Source keeps one origin: team, git, crm, helpdesk, cms, agent. \"git\" is how you ask for the mirrored GitHub issues specifically.
  ///
  /// * [String] assignee:
  ///   Assignee keeps issues held by one person. Pass \"me\" for yourself.
  ///
  /// * [int] limit:
  ///   Limit caps the answer; 0 means the default, and anything above the ceiling is clamped rather than refused — a search that errors on being too broad teaches people to guess.
  Future<Response> getTodoIssuesWithHttpInfo({ String? q, String? project, String? status, String? kind, String? repo, String? room, String? source_, String? assignee, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/todo/issues';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (project != null) {
      queryParams.addAll(_queryParams('', 'project', project));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (kind != null) {
      queryParams.addAll(_queryParams('', 'kind', kind));
    }
    if (repo != null) {
      queryParams.addAll(_queryParams('', 'repo', repo));
    }
    if (room != null) {
      queryParams.addAll(_queryParams('', 'room', room));
    }
    if (source_ != null) {
      queryParams.addAll(_queryParams('', 'source', source_));
    }
    if (assignee != null) {
      queryParams.addAll(_queryParams('', 'assignee', assignee));
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

  /// Answers across every project in the org.
  ///
  /// Answers across every project in the org.  The org comes from the validated principal and never from the request: a caller able to name the org could read another tenant's backlog, and a search is exactly the shape that would quietly return it.
  ///
  /// Parameters:
  ///
  /// * [String] q:
  ///   Q matches an issue's title or description. A word from the issue, which is what someone remembers — not its number, which is what they are looking up.
  ///
  /// * [String] project:
  ///   Project narrows to one team key; \"\" searches every project in the org, which is the point of this op.
  ///
  /// * [String] status:
  ///   Status keeps one board column: backlog, todo, in_progress, done, canceled.
  ///
  /// * [String] kind:
  ///   Kind keeps one shape: issue, pr, epic.
  ///
  /// * [String] repo:
  ///   Repo keeps issues bound to one git repository.
  ///
  /// * [String] room:
  ///   Room keeps issues bound to one collaboration room, spelled \"<workspace>_<room>\" — the exact value GET /v1/meet/call answers with, so a channel's call and its todo list name the room the same way. This is the read a channel view runs to draw its own list; it spans every board of the org, because the work a channel is about is not confined to one board.
  ///
  /// * [String] source_:
  ///   Source keeps one origin: team, git, crm, helpdesk, cms, agent. \"git\" is how you ask for the mirrored GitHub issues specifically.
  ///
  /// * [String] assignee:
  ///   Assignee keeps issues held by one person. Pass \"me\" for yourself.
  ///
  /// * [int] limit:
  ///   Limit caps the answer; 0 means the default, and anything above the ceiling is clamped rather than refused — a search that errors on being too broad teaches people to guess.
  Future<IssueHits?> getTodoIssues({ String? q, String? project, String? status, String? kind, String? repo, String? room, String? source_, String? assignee, int? limit, }) async {
    final response = await getTodoIssuesWithHttpInfo( q: q, project: project, status: status, kind: kind, repo: repo, room: room, source_: source_, assignee: assignee, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IssueHits',) as IssueHits;
    
    }
    return null;
  }

  /// Returns the boards of your org — the places your work actually is.
  ///
  /// Returns the boards of your org — the places your work actually is. The key addresses the board's issues.  A BOARD IS A PLACE WORK IS, not an object somebody provisioned. So the list is assembled from the work itself: the repositories your org has filed issues on, plus the boards the index holds. A repository with nothing on it is not in the list and is still perfectly addressable — GET /projects/<name> reads it and a create files into it — so nothing is lost by leaving it out.  Measured, which is why: reading the forge's whole repository inventory put 745 boards here, of which all but a handful were vendored forks and mirrors (.github, .profile, DOMPurify, BoatAttack) that will never carry this org's work. A list that long is not a list — the estate's real roadmap was in it somewhere and no one could see it.  The forge half is the FORGE's answer for your own account, so two people in one org can legitimately see different boards.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTodoProjectsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/todo/projects';

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

  /// Returns the boards of your org — the places your work actually is.
  ///
  /// Returns the boards of your org — the places your work actually is. The key addresses the board's issues.  A BOARD IS A PLACE WORK IS, not an object somebody provisioned. So the list is assembled from the work itself: the repositories your org has filed issues on, plus the boards the index holds. A repository with nothing on it is not in the list and is still perfectly addressable — GET /projects/<name> reads it and a create files into it — so nothing is lost by leaving it out.  Measured, which is why: reading the forge's whole repository inventory put 745 boards here, of which all but a handful were vendored forks and mirrors (.github, .profile, DOMPurify, BoatAttack) that will never carry this org's work. A list that long is not a list — the estate's real roadmap was in it somewhere and no one could see it.  The forge half is the FORGE's answer for your own account, so two people in one org can legitimately see different boards.
  Future<List<TodoProject>?> getTodoProjects() async {
    final response = await getTodoProjectsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TodoProject>') as List)
        .cast<TodoProject>()
        .toList(growable: false);

    }
    return null;
  }

  /// Returns one board of your org by its key — the repository name.
  ///
  /// Returns one board of your org by its key — the repository name. 404 when your org has no repository under that key, or when your own forge account cannot see it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   Key is the project's org-unique handle: 2-8 uppercase alphanumerics starting with a letter (\"ENG\", \"OPS2\"). Matched case-insensitively.
  Future<Response> getTodoProjectsByKeyWithHttpInfo(String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/todo/projects/{key}'
      .replaceAll('{key}', key);

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

  /// Returns one board of your org by its key — the repository name.
  ///
  /// Returns one board of your org by its key — the repository name. 404 when your org has no repository under that key, or when your own forge account cannot see it.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   Key is the project's org-unique handle: 2-8 uppercase alphanumerics starting with a letter (\"ENG\", \"OPS2\"). Matched case-insensitively.
  Future<TodoProject?> getTodoProjectsByKey(String key,) async {
    final response = await getTodoProjectsByKeyWithHttpInfo(key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TodoProject',) as TodoProject;
    
    }
    return null;
  }

  /// Returns a board's issues — work items with their column, priority, assignee, labels and schedule.
  ///
  /// Returns a board's issues — work items with their column, priority, assignee, labels and schedule.  WHICH board is a filter, not an address. Bound to a repository (the key from the path) it is that project's board; left unbound it is the org's whole board; narrowed by label it is a board smaller than any repository — which is the only way an app that lives as a directory inside a shared repository can have one. Every combination is the same rows through the same projection, so no two boards can disagree about what a column means.  The column is a LABEL on the forge, so the board and the forge web UI are the same object seen twice: relabelling in either moves the card in both. A closed issue reads as done whatever its labels say.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   Key is the project whose issues to list, from the path. EMPTY means every project in the org — the global board. It is a filter like the rest of this struct rather than an address, which is what lets one op answer both \"this board\" and \"all the work\" without a second surface disagreeing with the first about what a column is.
  ///
  /// * [String] status:
  ///   Status keeps only issues in that board column: backlog, todo, in_progress, done or canceled. An unknown value is refused with 400.
  ///
  /// * [String] kind:
  ///   Kind keeps only work items of that shape: issue, pr or epic. An unknown value is refused with 400.
  ///
  /// * [String] repo:
  ///   Repo keeps only issues bound to that git repository.
  ///
  /// * [String] label:
  ///   Label keeps only issues carrying that label, compared case-insensitively.  This is how a board narrows to something SMALLER than a repository — the one mechanism for it. An estate whose apps are directories inside one repository (hanzoai/cloud carries ~140 of them) has no repository per app to address, so the app is a label: `label=app/meet` is the meet board. Nothing is provisioned to make one exist; a board is the query.
  ///
  /// * [String] source_:
  ///   Source keeps only issues opened from that surface: team, git, crm, helpdesk, cms or agent. An unknown value is refused with 400.
  ///
  /// * [bool] scheduled:
  ///   Scheduled keeps only issues that carry a date — a start, a due date or both. This is the timeline's slice of the board: pass scheduled=true to get exactly the rows a gantt has somewhere to draw, instead of fetching every issue and discarding the undated ones client-side.
  Future<Response> getTodoProjectsByKeyIssuesWithHttpInfo(String key, { String? status, String? kind, String? repo, String? label, String? source_, bool? scheduled, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/todo/projects/{key}/issues'
      .replaceAll('{key}', key);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (kind != null) {
      queryParams.addAll(_queryParams('', 'kind', kind));
    }
    if (repo != null) {
      queryParams.addAll(_queryParams('', 'repo', repo));
    }
    if (label != null) {
      queryParams.addAll(_queryParams('', 'label', label));
    }
    if (source_ != null) {
      queryParams.addAll(_queryParams('', 'source', source_));
    }
    if (scheduled != null) {
      queryParams.addAll(_queryParams('', 'scheduled', scheduled));
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

  /// Returns a board's issues — work items with their column, priority, assignee, labels and schedule.
  ///
  /// Returns a board's issues — work items with their column, priority, assignee, labels and schedule.  WHICH board is a filter, not an address. Bound to a repository (the key from the path) it is that project's board; left unbound it is the org's whole board; narrowed by label it is a board smaller than any repository — which is the only way an app that lives as a directory inside a shared repository can have one. Every combination is the same rows through the same projection, so no two boards can disagree about what a column means.  The column is a LABEL on the forge, so the board and the forge web UI are the same object seen twice: relabelling in either moves the card in both. A closed issue reads as done whatever its labels say.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   Key is the project whose issues to list, from the path. EMPTY means every project in the org — the global board. It is a filter like the rest of this struct rather than an address, which is what lets one op answer both \"this board\" and \"all the work\" without a second surface disagreeing with the first about what a column is.
  ///
  /// * [String] status:
  ///   Status keeps only issues in that board column: backlog, todo, in_progress, done or canceled. An unknown value is refused with 400.
  ///
  /// * [String] kind:
  ///   Kind keeps only work items of that shape: issue, pr or epic. An unknown value is refused with 400.
  ///
  /// * [String] repo:
  ///   Repo keeps only issues bound to that git repository.
  ///
  /// * [String] label:
  ///   Label keeps only issues carrying that label, compared case-insensitively.  This is how a board narrows to something SMALLER than a repository — the one mechanism for it. An estate whose apps are directories inside one repository (hanzoai/cloud carries ~140 of them) has no repository per app to address, so the app is a label: `label=app/meet` is the meet board. Nothing is provisioned to make one exist; a board is the query.
  ///
  /// * [String] source_:
  ///   Source keeps only issues opened from that surface: team, git, crm, helpdesk, cms or agent. An unknown value is refused with 400.
  ///
  /// * [bool] scheduled:
  ///   Scheduled keeps only issues that carry a date — a start, a due date or both. This is the timeline's slice of the board: pass scheduled=true to get exactly the rows a gantt has somewhere to draw, instead of fetching every issue and discarding the undated ones client-side.
  Future<List<IssueView>?> getTodoProjectsByKeyIssues(String key, { String? status, String? kind, String? repo, String? label, String? source_, bool? scheduled, }) async {
    final response = await getTodoProjectsByKeyIssuesWithHttpInfo(key,  status: status, kind: kind, repo: repo, label: label, source_: source_, scheduled: scheduled, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IssueView>') as List)
        .cast<IssueView>()
        .toList(growable: false);

    }
    return null;
  }

  /// Returns ONE work item in full — its description included.
  ///
  /// Returns ONE work item in full — its description included.  The list reads answer a board, and a board is a summary: the description is where the actual content of a work item lives — what an issue asks for, what an epic's acceptance criteria are — and no read on this surface returned it. The address is the one PATCH already accepts, so an item you can move is now an item you can read.  It reads the forge directly rather than filtering the org fan-out, then falls back to the index for a board the forge has never heard of — the same order, and the same reason, as GetProject: a row is one kind of thing however it came to exist, so a caller does not have to know which store it is in to fetch it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   Key is the board — the repository name, or an index board's key.
  ///
  /// * [int] num_ (required):
  ///   Num is the issue's number on that board.
  Future<Response> getTodoProjectsByKeyIssuesByNumWithHttpInfo(String key, int num_,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/todo/projects/{key}/issues/{num}'
      .replaceAll('{key}', key)
      .replaceAll('{num}', num_.toString());

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

  /// Returns ONE work item in full — its description included.
  ///
  /// Returns ONE work item in full — its description included.  The list reads answer a board, and a board is a summary: the description is where the actual content of a work item lives — what an issue asks for, what an epic's acceptance criteria are — and no read on this surface returned it. The address is the one PATCH already accepts, so an item you can move is now an item you can read.  It reads the forge directly rather than filtering the org fan-out, then falls back to the index for a board the forge has never heard of — the same order, and the same reason, as GetProject: a row is one kind of thing however it came to exist, so a caller does not have to know which store it is in to fetch it.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   Key is the board — the repository name, or an index board's key.
  ///
  /// * [int] num_ (required):
  ///   Num is the issue's number on that board.
  Future<IssueView?> getTodoProjectsByKeyIssuesByNum(String key, int num_,) async {
    final response = await getTodoProjectsByKeyIssuesByNumWithHttpInfo(key, num_,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IssueView',) as IssueView;
    
    }
    return null;
  }

  /// Summarises one room's work.
  ///
  /// Summarises one room's work.  The room is opaque here and is deliberately not resolved: this package cannot say whether a room exists — apps/team owns that document — so an unknown room answers an EMPTY board rather than a 404. That is the honest answer and the useful one: a channel that has never had an item filed in it and a channel id that was mistyped both have no work, and inventing a distinction would require this surface to hold a second copy of the room list (HIP-0523 §2 forbids it, and it would drift the first time a room was renamed).  Tenancy is the validated principal's org and nothing else, so a caller cannot read another tenant's channel by naming its room.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] room (required):
  ///   Room is the room, spelled \"<workspace>_<room>\" — the same value GET /v1/meet/call answers with, so a channel's call and its work name the room identically. From the path.
  Future<Response> getTodoRoomsByRoomWithHttpInfo(String room,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/todo/rooms/{room}'
      .replaceAll('{room}', room);

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

  /// Summarises one room's work.
  ///
  /// Summarises one room's work.  The room is opaque here and is deliberately not resolved: this package cannot say whether a room exists — apps/team owns that document — so an unknown room answers an EMPTY board rather than a 404. That is the honest answer and the useful one: a channel that has never had an item filed in it and a channel id that was mistyped both have no work, and inventing a distinction would require this surface to hold a second copy of the room list (HIP-0523 §2 forbids it, and it would drift the first time a room was renamed).  Tenancy is the validated principal's org and nothing else, so a caller cannot read another tenant's channel by naming its room.
  ///
  /// Parameters:
  ///
  /// * [String] room (required):
  ///   Room is the room, spelled \"<workspace>_<room>\" — the same value GET /v1/meet/call answers with, so a channel's call and its work name the room identically. From the path.
  Future<RoomWork?> getTodoRoomsByRoom(String room,) async {
    final response = await getTodoRoomsByRoomWithHttpInfo(room,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RoomWork',) as RoomWork;
    
    }
    return null;
  }

  /// Refused — a board is a repository on the forge
  ///
  /// Answers 405. A todo board IS a repository on this deployment's forge, so creating, renaming and deleting one is a FORGE operation carried out with FORGE permissions.  Offering it here would put a second endpoint on the same object, guarded by this surface instead of by the forge — a weaker guard on the same thing. So the route exists and refuses, rather than 404ing: \"not this service's job\" and \"no such thing\" are different facts, and the body names the forge so a caller knows where the job IS done.  What this surface DOES own is the work on a board: list the boards you can see, read and file their issues, move a card between columns, and read the schedule a milestone is. Those are the routes beside this one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  Future<Response> patchTodoProjectsByKeyWithHttpInfo(String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/todo/projects/{key}'
      .replaceAll('{key}', key);

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

  /// Refused — a board is a repository on the forge
  ///
  /// Answers 405. A todo board IS a repository on this deployment's forge, so creating, renaming and deleting one is a FORGE operation carried out with FORGE permissions.  Offering it here would put a second endpoint on the same object, guarded by this surface instead of by the forge — a weaker guard on the same thing. So the route exists and refuses, rather than 404ing: \"not this service's job\" and \"no such thing\" are different facts, and the body names the forge so a caller knows where the job IS done.  What this surface DOES own is the work on a board: list the boards you can see, read and file their issues, move a card between columns, and read the schedule a milestone is. Those are the routes beside this one.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  Future<void> patchTodoProjectsByKey(String key,) async {
    final response = await patchTodoProjectsByKeyWithHttpInfo(key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Edits a work item — rename it, rewrite it, move it to another column, or re-prioritise it.
  ///
  /// Edits a work item — rename it, rewrite it, move it to another column, or re-prioritise it. Absent fields are left alone.  MOVING A CARD IS A RELABEL. The column lives in the forge's label set, so the move replaces that set rather than writing a status column here that a forge-side change could contradict. Moving to `done` also CLOSES the issue on the forge, because a done card and an open issue are a contradiction.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   Key is the board — the repository name, from the path.
  ///
  /// * [int] num_ (required):
  ///   Num is the issue number on that repository, from the path.
  ///
  /// * [IssueEdit] issueEdit (required):
  Future<Response> patchTodoProjectsByKeyIssuesByNumWithHttpInfo(String key, int num_, IssueEdit issueEdit,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/todo/projects/{key}/issues/{num}'
      .replaceAll('{key}', key)
      .replaceAll('{num}', num_.toString());

    // ignore: prefer_final_locals
    Object? postBody = issueEdit;

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

  /// Edits a work item — rename it, rewrite it, move it to another column, or re-prioritise it.
  ///
  /// Edits a work item — rename it, rewrite it, move it to another column, or re-prioritise it. Absent fields are left alone.  MOVING A CARD IS A RELABEL. The column lives in the forge's label set, so the move replaces that set rather than writing a status column here that a forge-side change could contradict. Moving to `done` also CLOSES the issue on the forge, because a done card and an open issue are a contradiction.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   Key is the board — the repository name, from the path.
  ///
  /// * [int] num_ (required):
  ///   Num is the issue number on that repository, from the path.
  ///
  /// * [IssueEdit] issueEdit (required):
  Future<IssueView?> patchTodoProjectsByKeyIssuesByNum(String key, int num_, IssueEdit issueEdit,) async {
    final response = await patchTodoProjectsByKeyIssuesByNumWithHttpInfo(key, num_, issueEdit,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IssueView',) as IssueView;
    
    }
    return null;
  }

  /// Refused — a board is a repository on the forge
  ///
  /// Answers 405. A todo board IS a repository on this deployment's forge, so creating, renaming and deleting one is a FORGE operation carried out with FORGE permissions.  Offering it here would put a second endpoint on the same object, guarded by this surface instead of by the forge — a weaker guard on the same thing. So the route exists and refuses, rather than 404ing: \"not this service's job\" and \"no such thing\" are different facts, and the body names the forge so a caller knows where the job IS done.  What this surface DOES own is the work on a board: list the boards you can see, read and file their issues, move a card between columns, and read the schedule a milestone is. Those are the routes beside this one.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postTodoProjectsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/todo/projects';

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

  /// Refused — a board is a repository on the forge
  ///
  /// Answers 405. A todo board IS a repository on this deployment's forge, so creating, renaming and deleting one is a FORGE operation carried out with FORGE permissions.  Offering it here would put a second endpoint on the same object, guarded by this surface instead of by the forge — a weaker guard on the same thing. So the route exists and refuses, rather than 404ing: \"not this service's job\" and \"no such thing\" are different facts, and the body names the forge so a caller knows where the job IS done.  What this surface DOES own is the work on a board: list the boards you can see, read and file their issues, move a card between columns, and read the schedule a milestone is. Those are the routes beside this one.
  Future<void> postTodoProjects() async {
    final response = await postTodoProjectsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Opens a work item on the board — an issue on that repository on the deployment's forge, filed as YOU.
  ///
  /// Opens a work item on the board — an issue on that repository on the deployment's forge, filed as YOU.  The column and priority are written as LABELS, which is what makes the card and the forge issue the same object: someone relabelling in the forge web UI has moved your card.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   Key is the board — the repository name, from the path.
  ///
  /// * [NewIssue] newIssue (required):
  Future<Response> postTodoProjectsByKeyIssuesWithHttpInfo(String key, NewIssue newIssue,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/todo/projects/{key}/issues'
      .replaceAll('{key}', key);

    // ignore: prefer_final_locals
    Object? postBody = newIssue;

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

  /// Opens a work item on the board — an issue on that repository on the deployment's forge, filed as YOU.
  ///
  /// Opens a work item on the board — an issue on that repository on the deployment's forge, filed as YOU.  The column and priority are written as LABELS, which is what makes the card and the forge issue the same object: someone relabelling in the forge web UI has moved your card.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   Key is the board — the repository name, from the path.
  ///
  /// * [NewIssue] newIssue (required):
  Future<IssueView?> postTodoProjectsByKeyIssues(String key, NewIssue newIssue,) async {
    final response = await postTodoProjectsByKeyIssuesWithHttpInfo(key, newIssue,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IssueView',) as IssueView;
    
    }
    return null;
  }

  /// Takes an issue: it becomes yours and it moves to in_progress.
  ///
  /// Takes an issue: it becomes yours and it moves to in_progress.  The holder is the CALLER, never an argument. \"Assign this to someone else\" is a different act with different authority, and it already exists as a PATCH; conflating them would let anyone hand work to anyone by naming them.  Claiming something already held by someone else is refused rather than silently taken — two agents on one issue is the failure this prevents, and a claim that quietly wins a race is worse than one that says no.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///
  /// * [int] num_ (required):
  Future<Response> postTodoProjectsByKeyIssuesByNumClaimWithHttpInfo(String key, int num_,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/todo/projects/{key}/issues/{num}/claim'
      .replaceAll('{key}', key)
      .replaceAll('{num}', num_.toString());

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

  /// Takes an issue: it becomes yours and it moves to in_progress.
  ///
  /// Takes an issue: it becomes yours and it moves to in_progress.  The holder is the CALLER, never an argument. \"Assign this to someone else\" is a different act with different authority, and it already exists as a PATCH; conflating them would let anyone hand work to anyone by naming them.  Claiming something already held by someone else is refused rather than silently taken — two agents on one issue is the failure this prevents, and a claim that quietly wins a race is worse than one that says no.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///
  /// * [int] num_ (required):
  Future<IssueHit?> postTodoProjectsByKeyIssuesByNumClaim(String key, int num_,) async {
    final response = await postTodoProjectsByKeyIssuesByNumClaimWithHttpInfo(key, num_,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IssueHit',) as IssueHit;
    
    }
    return null;
  }
}
