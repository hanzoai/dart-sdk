//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class BenchmarkApi {
  BenchmarkApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Is the canonical public benchmarks this arena runs — the id, title, axis, item count and upstream source of each, with native marking the ones the standardized harness runs today; the rest are registered and adapter-pending.
  ///
  /// Is the canonical public benchmarks this arena runs — the id, title, axis, item count and upstream source of each, with native marking the ones the standardized harness runs today; the rest are registered and adapter-pending.  These ids are the vocabulary the rest of the surface takes: a run names them, and the leaderboard and compare read them from ?benchmark=. The catalog is deployment-wide and identical for every caller — there is no tenant in it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBenchmarkCatalogWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/benchmark/catalog';

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

  /// Is the canonical public benchmarks this arena runs — the id, title, axis, item count and upstream source of each, with native marking the ones the standardized harness runs today; the rest are registered and adapter-pending.
  ///
  /// Is the canonical public benchmarks this arena runs — the id, title, axis, item count and upstream source of each, with native marking the ones the standardized harness runs today; the rest are registered and adapter-pending.  These ids are the vocabulary the rest of the surface takes: a run names them, and the leaderboard and compare read them from ?benchmark=. The catalog is deployment-wide and identical for every caller — there is no tenant in it.
  Future<BenchmarkCatalog?> getBenchmarkCatalog() async {
    final response = await getBenchmarkCatalogWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BenchmarkCatalog',) as BenchmarkCatalog;
    
    }
    return null;
  }

  /// Lists the effective published claims: what the leaderboard will use for each (benchmark, model) after the seed, the import and any stored correction are layered.
  ///
  /// Lists the effective published claims: what the leaderboard will use for each (benchmark, model) after the seed, the import and any stored correction are layered. It answers the operator's question — what does this arena currently believe someone else reported, and did we ship that or fix it.  Effective values only. The history of a key lives in the append-only file and is not what this op is for; a list that returned every superseded row would make the common question the hard one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] benchmark:
  ///   Benchmark filters to one benchmark id. Empty returns every benchmark.
  ///
  /// * [String] model:
  ///   Model filters to one model. Empty returns every model.
  ///
  /// * [String] provider:
  ///   Provider filters to one lab or leaderboard — the way to read what a single source claims across every model it covers.
  ///
  /// * [String] source_:
  ///   Source filters to one citation, which is the finest grain there is: a source is what makes two claims about one model independent rather than a restatement of each other.
  ///
  /// * [String] protocol:
  ///   Protocol filters by HOW a claim was scored, so provider cards can be read apart from third parties running their own harness.
  Future<Response> getBenchmarkClaimsWithHttpInfo({ String? benchmark, String? model, String? provider, String? source_, String? protocol, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/benchmark/claims';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (benchmark != null) {
      queryParams.addAll(_queryParams('', 'Benchmark', benchmark));
    }
    if (model != null) {
      queryParams.addAll(_queryParams('', 'Model', model));
    }
    if (provider != null) {
      queryParams.addAll(_queryParams('', 'Provider', provider));
    }
    if (source_ != null) {
      queryParams.addAll(_queryParams('', 'Source', source_));
    }
    if (protocol != null) {
      queryParams.addAll(_queryParams('', 'Protocol', protocol));
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

  /// Lists the effective published claims: what the leaderboard will use for each (benchmark, model) after the seed, the import and any stored correction are layered.
  ///
  /// Lists the effective published claims: what the leaderboard will use for each (benchmark, model) after the seed, the import and any stored correction are layered. It answers the operator's question — what does this arena currently believe someone else reported, and did we ship that or fix it.  Effective values only. The history of a key lives in the append-only file and is not what this op is for; a list that returned every superseded row would make the common question the hard one.
  ///
  /// Parameters:
  ///
  /// * [String] benchmark:
  ///   Benchmark filters to one benchmark id. Empty returns every benchmark.
  ///
  /// * [String] model:
  ///   Model filters to one model. Empty returns every model.
  ///
  /// * [String] provider:
  ///   Provider filters to one lab or leaderboard — the way to read what a single source claims across every model it covers.
  ///
  /// * [String] source_:
  ///   Source filters to one citation, which is the finest grain there is: a source is what makes two claims about one model independent rather than a restatement of each other.
  ///
  /// * [String] protocol:
  ///   Protocol filters by HOW a claim was scored, so provider cards can be read apart from third parties running their own harness.
  Future<ClaimsOut?> getBenchmarkClaims({ String? benchmark, String? model, String? provider, String? source_, String? protocol, }) async {
    final response = await getBenchmarkClaimsWithHttpInfo( benchmark: benchmark, model: model, provider: provider, source_: source_, protocol: protocol, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClaimsOut',) as ClaimsOut;
    
    }
    return null;
  }

  /// Is the ONLY valid arm-vs-arm test: it pairs the two models on the items BOTH completed, and answers rescue and damage counts with an exact-McNemar p.
  ///
  /// Is the ONLY valid arm-vs-arm test: it pairs the two models on the items BOTH completed, and answers rescue and damage counts with an exact-McNemar p.  Pairing is what prevents the subset artifact — comparing one model's easy subset against another's full run — so n_common, not either arm's own coverage, is the number to read this by.  Both a and b are required. The benchmark defaults to gpqa_diamond.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] a (required):
  ///   A is the first model id. It is required.
  ///
  /// * [String] b (required):
  ///   B is the second model id. It is required.
  ///
  /// * [String] benchmark:
  ///   Benchmark is the catalog id to compare on, defaulting to gpqa_diamond.
  Future<Response> getBenchmarkCompareWithHttpInfo(String a, String b, { String? benchmark, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/benchmark/compare';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (benchmark != null) {
      queryParams.addAll(_queryParams('', 'benchmark', benchmark));
    }
      queryParams.addAll(_queryParams('', 'a', a));
      queryParams.addAll(_queryParams('', 'b', b));

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

  /// Is the ONLY valid arm-vs-arm test: it pairs the two models on the items BOTH completed, and answers rescue and damage counts with an exact-McNemar p.
  ///
  /// Is the ONLY valid arm-vs-arm test: it pairs the two models on the items BOTH completed, and answers rescue and damage counts with an exact-McNemar p.  Pairing is what prevents the subset artifact — comparing one model's easy subset against another's full run — so n_common, not either arm's own coverage, is the number to read this by.  Both a and b are required. The benchmark defaults to gpqa_diamond.
  ///
  /// Parameters:
  ///
  /// * [String] a (required):
  ///   A is the first model id. It is required.
  ///
  /// * [String] b (required):
  ///   B is the second model id. It is required.
  ///
  /// * [String] benchmark:
  ///   Benchmark is the catalog id to compare on, defaulting to gpqa_diamond.
  Future<Pairing?> getBenchmarkCompare(String a, String b, { String? benchmark, }) async {
    final response = await getBenchmarkCompareWithHttpInfo(a, b,  benchmark: benchmark, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Pairing',) as Pairing;
    
    }
    return null;
  }

  /// Returns each model's measured score per run over time, oldest first, with the change between runs.
  ///
  /// Returns each model's measured score per run over time, oldest first, with the change between runs.  This is the counterweight to a leaderboard: the board shows the latest run because that is what \"how good is it\" means, and a single latest number cannot distinguish a model that has always been strong from one that just improved, or from one that regressed after a provider changed something. Both matter for routing, and only one of them is visible on a board.  Runs with no id — attempts recorded before runs existed — group under the empty run, which is honestly what they are: one undated measurement.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] benchmark:
  ///   Benchmark is the catalog id to read, defaulting to gpqa_diamond.
  ///
  /// * [String] model:
  ///   Model filters to one model. Empty returns every model measured.
  Future<Response> getBenchmarkHistoryWithHttpInfo({ String? benchmark, String? model, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/benchmark/history';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (benchmark != null) {
      queryParams.addAll(_queryParams('', 'Benchmark', benchmark));
    }
    if (model != null) {
      queryParams.addAll(_queryParams('', 'Model', model));
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

  /// Returns each model's measured score per run over time, oldest first, with the change between runs.
  ///
  /// Returns each model's measured score per run over time, oldest first, with the change between runs.  This is the counterweight to a leaderboard: the board shows the latest run because that is what \"how good is it\" means, and a single latest number cannot distinguish a model that has always been strong from one that just improved, or from one that regressed after a provider changed something. Both matter for routing, and only one of them is visible on a board.  Runs with no id — attempts recorded before runs existed — group under the empty run, which is honestly what they are: one undated measurement.
  ///
  /// Parameters:
  ///
  /// * [String] benchmark:
  ///   Benchmark is the catalog id to read, defaulting to gpqa_diamond.
  ///
  /// * [String] model:
  ///   Model filters to one model. Empty returns every model measured.
  Future<HistoryOut?> getBenchmarkHistory({ String? benchmark, String? model, }) async {
    final response = await getBenchmarkHistoryWithHttpInfo( benchmark: benchmark, model: model, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HistoryOut',) as HistoryOut;
    
    }
    return null;
  }

  /// Answers one row per model for the benchmark named — what our own harness measured, beside what the vendor claims, and the gap between them.
  ///
  /// Answers one row per model for the benchmark named — what our own harness measured, beside what the vendor claims, and the gap between them.  The gap is the point of the arena; provider-reported claims have run materially hot against one standardized harness.  The two planes are NEVER blended, and that is the rule to read the rows by: a model we have measured but no vendor has claimed for shows published null, a model with only a claim shows measured null, and gap exists only where both do.  n is coverage and is not decoration: two measured numbers taken over different item counts are not comparable, so read the row's n before reading its accuracy.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] benchmark:
  ///   Benchmark is the catalog id to read, defaulting to gpqa_diamond.
  Future<Response> getBenchmarkLeaderboardWithHttpInfo({ String? benchmark, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/benchmark/leaderboard';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (benchmark != null) {
      queryParams.addAll(_queryParams('', 'benchmark', benchmark));
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

  /// Answers one row per model for the benchmark named — what our own harness measured, beside what the vendor claims, and the gap between them.
  ///
  /// Answers one row per model for the benchmark named — what our own harness measured, beside what the vendor claims, and the gap between them.  The gap is the point of the arena; provider-reported claims have run materially hot against one standardized harness.  The two planes are NEVER blended, and that is the rule to read the rows by: a model we have measured but no vendor has claimed for shows published null, a model with only a claim shows measured null, and gap exists only where both do.  n is coverage and is not decoration: two measured numbers taken over different item counts are not comparable, so read the row's n before reading its accuracy.
  ///
  /// Parameters:
  ///
  /// * [String] benchmark:
  ///   Benchmark is the catalog id to read, defaulting to gpqa_diamond.
  Future<Leaderboard?> getBenchmarkLeaderboard({ String? benchmark, }) async {
    final response = await getBenchmarkLeaderboardWithHttpInfo( benchmark: benchmark, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Leaderboard',) as Leaderboard;
    
    }
    return null;
  }

  /// Are the router blends available to compose from — a named set of model arms, the rank they escalate through and the panel width that bounds fan-out — each served by the model layer as enso-<name>.
  ///
  /// Are the router blends available to compose from — a named set of model arms, the rank they escalate through and the panel width that bounds fan-out — each served by the model layer as enso-<name>.  Today it answers exactly one row, the reference blend: a worked example written in models we name, published as an example of the FORM. It is deliberately not the composition of a Hanzo-served tier — the tier name exists to abstract that — so fork it and swap arms by what the leaderboard measures on your own tasks rather than reading it as a disclosure.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBenchmarkPresetsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/benchmark/presets';

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

  /// Are the router blends available to compose from — a named set of model arms, the rank they escalate through and the panel width that bounds fan-out — each served by the model layer as enso-<name>.
  ///
  /// Are the router blends available to compose from — a named set of model arms, the rank they escalate through and the panel width that bounds fan-out — each served by the model layer as enso-<name>.  Today it answers exactly one row, the reference blend: a worked example written in models we name, published as an example of the FORM. It is deliberately not the composition of a Hanzo-served tier — the tier name exists to abstract that — so fork it and swap arms by what the leaderboard measures on your own tasks rather than reading it as a disclosure.
  Future<PresetList?> getBenchmarkPresets() async {
    final response = await getBenchmarkPresetsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PresetList',) as PresetList;
    
    }
    return null;
  }

  /// Records published claims: one to correct a number, many to import a leaderboard.
  ///
  /// Records published claims: one to correct a number, many to import a leaderboard. Every row must carry a Source, because a claim without its citation is a number nobody can check — and an unattributed number in the published plane is indistinguishable from a measurement, which is the one confusion this whole surface is built to prevent.  Writes are append-only, so this never destroys the value it replaces. A vendor restating a score leaves both rows on disk, which is how the restating itself becomes visible.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PutClaimsIn] putClaimsIn (required):
  Future<Response> postBenchmarkClaimsWithHttpInfo(PutClaimsIn putClaimsIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/benchmark/claims';

    // ignore: prefer_final_locals
    Object? postBody = putClaimsIn;

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

  /// Records published claims: one to correct a number, many to import a leaderboard.
  ///
  /// Records published claims: one to correct a number, many to import a leaderboard. Every row must carry a Source, because a claim without its citation is a number nobody can check — and an unattributed number in the published plane is indistinguishable from a measurement, which is the one confusion this whole surface is built to prevent.  Writes are append-only, so this never destroys the value it replaces. A vendor restating a score leaves both rows on disk, which is how the restating itself becomes visible.
  ///
  /// Parameters:
  ///
  /// * [PutClaimsIn] putClaimsIn (required):
  Future<PutClaimsOut?> postBenchmarkClaims(PutClaimsIn putClaimsIn,) async {
    final response = await postBenchmarkClaimsWithHttpInfo(putClaimsIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PutClaimsOut',) as PutClaimsOut;
    
    }
    return null;
  }

  /// Validates a router blend — its name, its arms, the rank they escalate through and the panel fan-out width — and answers 202 with the preset and the enso-<name> it would be served as.
  ///
  /// Validates a router blend — its name, its arms, the rank they escalate through and the panel fan-out width — and answers 202 with the preset and the enso-<name> it would be served as.  It VALIDATES AND ECHOES: the definition is not persisted yet, so a preset accepted here is not one the model layer will resolve. Treat the response as a check on the blend, not a promise to serve it.  Defaults fill the shape rather than refusing it: an omitted rank becomes the arms in declared order and a panel below 1 becomes 1. The one real invariant is that rank may only name arms the blend declares — the same rule the model catalog enforces — and a rank naming anything else is a 422 listing exactly which entries were undeclared. A blend with no name or no arms is a 400.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Preset] preset (required):
  Future<Response> postBenchmarkPresetsWithHttpInfo(Preset preset,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/benchmark/presets';

    // ignore: prefer_final_locals
    Object? postBody = preset;

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

  /// Validates a router blend — its name, its arms, the rank they escalate through and the panel fan-out width — and answers 202 with the preset and the enso-<name> it would be served as.
  ///
  /// Validates a router blend — its name, its arms, the rank they escalate through and the panel fan-out width — and answers 202 with the preset and the enso-<name> it would be served as.  It VALIDATES AND ECHOES: the definition is not persisted yet, so a preset accepted here is not one the model layer will resolve. Treat the response as a check on the blend, not a promise to serve it.  Defaults fill the shape rather than refusing it: an omitted rank becomes the arms in declared order and a panel below 1 becomes 1. The one real invariant is that rank may only name arms the blend declares — the same rule the model catalog enforces — and a rank naming anything else is a 422 listing exactly which entries were undeclared. A blend with no name or no arms is a 400.
  ///
  /// Parameters:
  ///
  /// * [Preset] preset (required):
  Future<PresetAccepted?> postBenchmarkPresets(Preset preset,) async {
    final response = await postBenchmarkPresetsWithHttpInfo(preset,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PresetAccepted',) as PresetAccepted;
    
    }
    return null;
  }

  /// Admits and queues a benchmark run against a model or your own endpoint, and answers 202 with the receipt.
  ///
  /// Admits and queues a benchmark run against a model or your own endpoint, and answers 202 with the receipt.  It is an ADMISSION, not a result: the work is done by the harness afterwards and the numbers appear on the leaderboard as it completes them.  Cost is bounded by the store rather than by a quota: attempts are append-only and keyed by (benchmark, item, model), so an (item, model) pair already attempted is skipped instead of re-spent, and re-queuing the same run is close to free.  Validation is up front and total — a request with neither model nor endpoint is a 400, one with no benchmarks is a 400, and any benchmark id outside the catalog is a 422 naming exactly which ids were unknown, so a typo never silently queues a partial run.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Suite] suite (required):
  Future<Response> postBenchmarkRunsWithHttpInfo(Suite suite,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/benchmark/runs';

    // ignore: prefer_final_locals
    Object? postBody = suite;

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

  /// Admits and queues a benchmark run against a model or your own endpoint, and answers 202 with the receipt.
  ///
  /// Admits and queues a benchmark run against a model or your own endpoint, and answers 202 with the receipt.  It is an ADMISSION, not a result: the work is done by the harness afterwards and the numbers appear on the leaderboard as it completes them.  Cost is bounded by the store rather than by a quota: attempts are append-only and keyed by (benchmark, item, model), so an (item, model) pair already attempted is skipped instead of re-spent, and re-queuing the same run is close to free.  Validation is up front and total — a request with neither model nor endpoint is a 400, one with no benchmarks is a 400, and any benchmark id outside the catalog is a 422 naming exactly which ids were unknown, so a typo never silently queues a partial run.
  ///
  /// Parameters:
  ///
  /// * [Suite] suite (required):
  Future<Admission?> postBenchmarkRuns(Suite suite,) async {
    final response = await postBenchmarkRunsWithHttpInfo(suite,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Admission',) as Admission;
    
    }
    return null;
  }
}
