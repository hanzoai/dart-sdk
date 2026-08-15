//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class ResearchApi {
  ResearchApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns the caller org's research-diary feed newest-first — the snapshots and reports tied to its runs, as metadata and content addresses; the bytes themselves are fetched by hash.
  ///
  /// Returns the caller org's research-diary feed newest-first — the snapshots and reports tied to its runs, as metadata and content addresses; the bytes themselves are fetched by hash. ?run= narrows to one run, ?project= to one project (default the caller's project scope), and ?since= to a unix second.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project:
  ///   Project narrows to one project. Empty takes the caller's project scope.
  ///
  /// * [String] run:
  ///   Run narrows to one run's artifacts by its stable id.
  ///
  /// * [int] since:
  ///   Since bounds the feed to artifacts recorded at or after this unix second.
  Future<Response> getResearchArtifactsWithHttpInfo({ String? project, String? run, int? since, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/research/artifacts';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (project != null) {
      queryParams.addAll(_queryParams('', 'project', project));
    }
    if (run != null) {
      queryParams.addAll(_queryParams('', 'run', run));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
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

  /// Returns the caller org's research-diary feed newest-first — the snapshots and reports tied to its runs, as metadata and content addresses; the bytes themselves are fetched by hash.
  ///
  /// Returns the caller org's research-diary feed newest-first — the snapshots and reports tied to its runs, as metadata and content addresses; the bytes themselves are fetched by hash. ?run= narrows to one run, ?project= to one project (default the caller's project scope), and ?since= to a unix second.
  ///
  /// Parameters:
  ///
  /// * [String] project:
  ///   Project narrows to one project. Empty takes the caller's project scope.
  ///
  /// * [String] run:
  ///   Run narrows to one run's artifacts by its stable id.
  ///
  /// * [int] since:
  ///   Since bounds the feed to artifacts recorded at or after this unix second.
  Future<ArtifactsOut?> getResearchArtifacts({ String? project, String? run, int? since, }) async {
    final response = await getResearchArtifactsWithHttpInfo( project: project, run: run, since: since, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ArtifactsOut',) as ArtifactsOut;
    
    }
    return null;
  }

  /// Fetch one recorded artifact's bytes by its content hash.
  ///
  /// Streams the artifact's stored bytes — the retrieval half of hash-addressing, where the diary feed hands out hashes and this hands back what they name. The Content-Type is image/png when the artifact was recorded as a snapshot and application/octet-stream otherwise; it comes from the recorded KIND, not from sniffing the bytes, so an artifact filed as a report always arrives as opaque bytes.  The hash is an address, and the read is NOT global. The store file IS the org, so the same bytes recorded by two tenants are two artifacts, and a hash that exists but belongs to somebody else is a 404 exactly like one that was never recorded — knowing a content hash is never enough to read it. A caller with no validated org is refused 403 outright.  Project narrows further INSIDE that org: the artifact's project must equal the caller's, which is `?project=` when given and otherwise the caller's own project scope, defaulting to the default project. So an artifact filed under a named project is not found until the caller names that project — a mismatch is the same 404 an unknown hash gets, never a distinguishable refusal.  The address can be trusted because the WRITE derived it: the server hashes the bytes it stores, inside the trust boundary, and refuses a client-supplied sha256 that disagrees with them, so poisoning a first write would take a preimage. This read does not re-hash — it looks the hash up as a key.  One shape to expect: this route writes its errors IN-BAND as {\"error\": …} at the real status code, not the {status, error} envelope the typed ops beside it return. It is mounted under an error-flattening filter that would otherwise rewrite its 4xx, so the body is written before that filter runs. A store that cannot be opened is a 500.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sha256 (required):
  Future<Response> getResearchArtifactsBySha256WithHttpInfo(String sha256,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/research/artifacts/{sha256}'
      .replaceAll('{sha256}', sha256);

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

  /// Fetch one recorded artifact's bytes by its content hash.
  ///
  /// Streams the artifact's stored bytes — the retrieval half of hash-addressing, where the diary feed hands out hashes and this hands back what they name. The Content-Type is image/png when the artifact was recorded as a snapshot and application/octet-stream otherwise; it comes from the recorded KIND, not from sniffing the bytes, so an artifact filed as a report always arrives as opaque bytes.  The hash is an address, and the read is NOT global. The store file IS the org, so the same bytes recorded by two tenants are two artifacts, and a hash that exists but belongs to somebody else is a 404 exactly like one that was never recorded — knowing a content hash is never enough to read it. A caller with no validated org is refused 403 outright.  Project narrows further INSIDE that org: the artifact's project must equal the caller's, which is `?project=` when given and otherwise the caller's own project scope, defaulting to the default project. So an artifact filed under a named project is not found until the caller names that project — a mismatch is the same 404 an unknown hash gets, never a distinguishable refusal.  The address can be trusted because the WRITE derived it: the server hashes the bytes it stores, inside the trust boundary, and refuses a client-supplied sha256 that disagrees with them, so poisoning a first write would take a preimage. This read does not re-hash — it looks the hash up as a key.  One shape to expect: this route writes its errors IN-BAND as {\"error\": …} at the real status code, not the {status, error} envelope the typed ops beside it return. It is mounted under an error-flattening filter that would otherwise rewrite its 4xx, so the body is written before that filter runs. A store that cannot be opened is a 500.
  ///
  /// Parameters:
  ///
  /// * [String] sha256 (required):
  Future<void> getResearchArtifactsBySha256(String sha256,) async {
    final response = await getResearchArtifactsBySha256WithHttpInfo(sha256,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the caller org's CANONICAL experiments — the deterministic deduped view over the versioned history.
  ///
  /// Returns the caller org's CANONICAL experiments — the deterministic deduped view over the versioned history. With no ?project= it reads the org's whole set across projects (the ops board's cross-project view, since a project is a sub-scope of the one tenant); ?project= narrows to one and ?kind= to one discriminator.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project:
  ///   Project narrows to one project. Empty reads the org's whole set across projects.
  ///
  /// * [String] kind:
  ///   Kind narrows to one discriminator: benchmark, kernel-perf, training, ablation or policy-eval.
  Future<Response> getResearchExperimentsWithHttpInfo({ String? project, String? kind, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/research/experiments';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (project != null) {
      queryParams.addAll(_queryParams('', 'project', project));
    }
    if (kind != null) {
      queryParams.addAll(_queryParams('', 'kind', kind));
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

  /// Returns the caller org's CANONICAL experiments — the deterministic deduped view over the versioned history.
  ///
  /// Returns the caller org's CANONICAL experiments — the deterministic deduped view over the versioned history. With no ?project= it reads the org's whole set across projects (the ops board's cross-project view, since a project is a sub-scope of the one tenant); ?project= narrows to one and ?kind= to one discriminator.
  ///
  /// Parameters:
  ///
  /// * [String] project:
  ///   Project narrows to one project. Empty reads the org's whole set across projects.
  ///
  /// * [String] kind:
  ///   Kind narrows to one discriminator: benchmark, kernel-perf, training, ablation or policy-eval.
  Future<ExperimentsOut?> getResearchExperiments({ String? project, String? kind, }) async {
    final response = await getResearchExperimentsWithHttpInfo( project: project, kind: kind, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExperimentsOut',) as ExperimentsOut;
    
    }
    return null;
  }

  /// Returns every research project in the caller's org with its real totals — canonical and retained side by side — which is the ops board's \"every project + real totals\" view.
  ///
  /// Returns every research project in the caller's org with its real totals — canonical and retained side by side — which is the ops board's \"every project + real totals\" view.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getResearchProjectsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/research/projects';

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

  /// Returns every research project in the caller's org with its real totals — canonical and retained side by side — which is the ops board's \"every project + real totals\" view.
  ///
  /// Returns every research project in the caller's org with its real totals — canonical and retained side by side — which is the ops board's \"every project + real totals\" view.
  Future<ProjectsOut?> getResearchProjects() async {
    final response = await getResearchProjectsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectsOut',) as ProjectsOut;
    
    }
    return null;
  }

  /// Returns the caller org's headline aggregate plus a per-kind breakdown — the observatory's poll target.
  ///
  /// Returns the caller org's headline aggregate plus a per-kind breakdown — the observatory's poll target. Canonical and retained counts travel together, so a deduped view never reads as loss. ?project= narrows to one project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project:
  ///   Project narrows the aggregate to one project. Empty aggregates the whole org.
  Future<Response> getResearchTotalsWithHttpInfo({ String? project, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/research/totals';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (project != null) {
      queryParams.addAll(_queryParams('', 'project', project));
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

  /// Returns the caller org's headline aggregate plus a per-kind breakdown — the observatory's poll target.
  ///
  /// Returns the caller org's headline aggregate plus a per-kind breakdown — the observatory's poll target. Canonical and retained counts travel together, so a deduped view never reads as loss. ?project= narrows to one project.
  ///
  /// Parameters:
  ///
  /// * [String] project:
  ///   Project narrows the aggregate to one project. Empty aggregates the whole org.
  Future<ResearchTotals?> getResearchTotals({ String? project, }) async {
    final response = await getResearchTotalsWithHttpInfo( project: project, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResearchTotals',) as ResearchTotals;
    
    }
    return null;
  }

  /// Records one research-diary artifact — a board snapshot or a generated report — CONTENT-ADDRESSED inside the trust boundary.
  ///
  /// Records one research-diary artifact — a board snapshot or a generated report — CONTENT-ADDRESSED inside the trust boundary. The caller submits the bytes as base64 `content`; the SERVER hashes them and THAT hash is the identity and the ref, so the address can never be poisoned by a client-asserted one. A client-supplied sha256, if present, must match the bytes. The project is the SERVER's value and visibility is forced private. Re-posting the same bytes is a no-op that reports created=false.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ResearchArtifact] researchArtifact (required):
  Future<Response> postResearchArtifactsWithHttpInfo(ResearchArtifact researchArtifact,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/research/artifacts';

    // ignore: prefer_final_locals
    Object? postBody = researchArtifact;

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

  /// Records one research-diary artifact — a board snapshot or a generated report — CONTENT-ADDRESSED inside the trust boundary.
  ///
  /// Records one research-diary artifact — a board snapshot or a generated report — CONTENT-ADDRESSED inside the trust boundary. The caller submits the bytes as base64 `content`; the SERVER hashes them and THAT hash is the identity and the ref, so the address can never be poisoned by a client-asserted one. A client-supplied sha256, if present, must match the bytes. The project is the SERVER's value and visibility is forced private. Re-posting the same bytes is a no-op that reports created=false.
  ///
  /// Parameters:
  ///
  /// * [ResearchArtifact] researchArtifact (required):
  Future<ArtifactOut?> postResearchArtifacts(ResearchArtifact researchArtifact,) async {
    final response = await postResearchArtifactsWithHttpInfo(researchArtifact,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ArtifactOut',) as ArtifactOut;
    
    }
    return null;
  }

  /// Appends one batch of experiment and attempt versions to the caller org's evidence store, idempotently by content, then rolls it up to the analytics plane best-effort.
  ///
  /// Appends one batch of experiment and attempt versions to the caller org's evidence store, idempotently by content, then rolls it up to the analytics plane best-effort. The project is the SERVER's value and visibility is forced private — an upload grants no training or publication right, which is a separate call. A run carrying a BYO endpoint is SSRF-checked before the store is touched. The answer carries BOTH the canonical (deduped) and retained (full history) counts, so a caller sees the versioned truth rather than a dedup that reads as loss.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IngestRequest] ingestRequest (required):
  Future<Response> postResearchExperimentsWithHttpInfo(IngestRequest ingestRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/research/experiments';

    // ignore: prefer_final_locals
    Object? postBody = ingestRequest;

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

  /// Appends one batch of experiment and attempt versions to the caller org's evidence store, idempotently by content, then rolls it up to the analytics plane best-effort.
  ///
  /// Appends one batch of experiment and attempt versions to the caller org's evidence store, idempotently by content, then rolls it up to the analytics plane best-effort. The project is the SERVER's value and visibility is forced private — an upload grants no training or publication right, which is a separate call. A run carrying a BYO endpoint is SSRF-checked before the store is touched. The answer carries BOTH the canonical (deduped) and retained (full history) counts, so a caller sees the versioned truth rather than a dedup that reads as loss.
  ///
  /// Parameters:
  ///
  /// * [IngestRequest] ingestRequest (required):
  Future<IngestOut?> postResearchExperiments(IngestRequest ingestRequest,) async {
    final response = await postResearchExperimentsWithHttpInfo(ingestRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IngestOut',) as IngestOut;
    
    }
    return null;
  }

  /// Records the SEPARATE authorization an upload never implies: a record's visibility (private, org or public) and, for a run, its training and commons-publication consent.
  ///
  /// Records the SEPARATE authorization an upload never implies: a record's visibility (private, org or public) and, for a run, its training and commons-publication consent. Address a run by its stable id or an artifact by its sha256; an artifact grant sets visibility only. The ORG is the tenant boundary and comes from the validated principal, so a caller can only ever grant within its own org; `project` locates WHICH record inside it and defaults to the caller's project scope.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GrantRequest] grantRequest (required):
  Future<Response> postResearchGrantsWithHttpInfo(GrantRequest grantRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/research/grants';

    // ignore: prefer_final_locals
    Object? postBody = grantRequest;

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

  /// Records the SEPARATE authorization an upload never implies: a record's visibility (private, org or public) and, for a run, its training and commons-publication consent.
  ///
  /// Records the SEPARATE authorization an upload never implies: a record's visibility (private, org or public) and, for a run, its training and commons-publication consent. Address a run by its stable id or an artifact by its sha256; an artifact grant sets visibility only. The ORG is the tenant boundary and comes from the validated principal, so a caller can only ever grant within its own org; `project` locates WHICH record inside it and defaults to the caller's project scope.
  ///
  /// Parameters:
  ///
  /// * [GrantRequest] grantRequest (required):
  Future<GrantOut?> postResearchGrants(GrantRequest grantRequest,) async {
    final response = await postResearchGrantsWithHttpInfo(grantRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrantOut',) as GrantOut;
    
    }
    return null;
  }
}
