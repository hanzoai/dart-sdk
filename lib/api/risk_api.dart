//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class RiskApi {
  RiskApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Whether the risk model plane can actually work right now
  ///
  /// Reports whether the per-organisation model plane is genuinely usable: that the plane was built, that the per-organisation stores can be written, and whether the event surface the feature plane is rolled up from is reachable. It is a REAL probe, not status theatre.  200 only when the plane can work. Otherwise 503 CARRYING THE REPORT — which part failed and the real error — and that body is why this is not a typed op: a typed op reaches a non-2xx by returning an error, and the envelope that produces would drop exactly the detail the probe exists to deliver.  An unreachable event surface is REPORTED and is not a failure. Scoring reads in-memory aggregates and never the warehouse, so a warm that cannot run degrades how much history a model has seen and does not stop it deciding.  It also reports how many organisations' models are resident, how many have been evicted to hold that bound, and how many of the resident ones are at their own aggregate bound. Eviction is lossless — learned state is written to that organisation's own store first and its aggregates rebuild from its own record — so a climbing count is a capacity signal, not a loss. A STRAINED model is different: it has started forgetting its own least-recently-active subjects, and each forgotten subject reads as inactive until it is active again. That is a control degrading, and it is reported here because it is otherwise silent.  It answers about the process, not about a tenant: it takes no organisation and names none.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getRiskHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/health';

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

  /// Whether the risk model plane can actually work right now
  ///
  /// Reports whether the per-organisation model plane is genuinely usable: that the plane was built, that the per-organisation stores can be written, and whether the event surface the feature plane is rolled up from is reachable. It is a REAL probe, not status theatre.  200 only when the plane can work. Otherwise 503 CARRYING THE REPORT — which part failed and the real error — and that body is why this is not a typed op: a typed op reaches a non-2xx by returning an error, and the envelope that produces would drop exactly the detail the probe exists to deliver.  An unreachable event surface is REPORTED and is not a failure. Scoring reads in-memory aggregates and never the warehouse, so a warm that cannot run degrades how much history a model has seen and does not stop it deciding.  It also reports how many organisations' models are resident, how many have been evicted to hold that bound, and how many of the resident ones are at their own aggregate bound. Eviction is lossless — learned state is written to that organisation's own store first and its aggregates rebuild from its own record — so a climbing count is a capacity signal, not a loss. A STRAINED model is different: it has started forgetting its own least-recently-active subjects, and each forgotten subject reads as inactive until it is active again. That is a control degrading, and it is reported here because it is otherwise silent.  It answers about the process, not about a tenant: it takes no organisation and names none.
  Future<void> getRiskHealth() async {
    final response = await getRiskHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Put one of your organisation's own published model values in force
  ///
  /// Puts one of your organisation's OWN PUBLISHED VALUES in force, by name — which is what an instant rollback is, what promoting a challenger is, and what installing the shape a search found is.  IT TAKES AN ADDRESS AND NEVER STATE. The masses are read from your own store, so nothing about your model has to be held by whatever is making this call. That closes the sharpest edge the previous shape had: a body of counters is something a caller can COMPOSE, and a region filled until activity inside it reads as ordinary is a model that has been shaped rather than learned. The engine's mass invariant was the only thing standing between a composed body and the model; with an address there is no body to compose.  IT ADOPTS THE SHAPE, NOT ONLY THE MASSES. A value records the model space its masses were taken in, and a value whose space differs from the one in force REPLANTS your model into that space before restoring them. That is what makes POST /v1/risk/search actionable: a search answers with the shape that fits your own history best and publishes it fitted, and its address is what you name here. Before this, a winning shape was advice nobody could take — the adoption path refused every shape change, and a winner is a different shape by definition.  WHAT ADOPTING A SEARCHED SHAPE COSTS, SAID PLAINLY: the value a search fits has learned the window the search replayed and nothing older, so installing it trades history for fit. Your appetite is untouched — that is your policy record's, with its own versions — and so is the geometry, which stays your own.  An address your organisation has not published is NOT FOUND. That includes one another organisation published, and it is not a lookup that failed: the store is per organisation and the address is a name, never an authority.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RiskAdoptIn] riskAdoptIn (required):
  Future<Response> riskAdoptModelWithHttpInfo(RiskAdoptIn riskAdoptIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/state/model';

    // ignore: prefer_final_locals
    Object? postBody = riskAdoptIn;

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

  /// Put one of your organisation's own published model values in force
  ///
  /// Puts one of your organisation's OWN PUBLISHED VALUES in force, by name — which is what an instant rollback is, what promoting a challenger is, and what installing the shape a search found is.  IT TAKES AN ADDRESS AND NEVER STATE. The masses are read from your own store, so nothing about your model has to be held by whatever is making this call. That closes the sharpest edge the previous shape had: a body of counters is something a caller can COMPOSE, and a region filled until activity inside it reads as ordinary is a model that has been shaped rather than learned. The engine's mass invariant was the only thing standing between a composed body and the model; with an address there is no body to compose.  IT ADOPTS THE SHAPE, NOT ONLY THE MASSES. A value records the model space its masses were taken in, and a value whose space differs from the one in force REPLANTS your model into that space before restoring them. That is what makes POST /v1/risk/search actionable: a search answers with the shape that fits your own history best and publishes it fitted, and its address is what you name here. Before this, a winning shape was advice nobody could take — the adoption path refused every shape change, and a winner is a different shape by definition.  WHAT ADOPTING A SEARCHED SHAPE COSTS, SAID PLAINLY: the value a search fits has learned the window the search replayed and nothing older, so installing it trades history for fit. Your appetite is untouched — that is your policy record's, with its own versions — and so is the geometry, which stays your own.  An address your organisation has not published is NOT FOUND. That includes one another organisation published, and it is not a lookup that failed: the store is per organisation and the address is a name, never an authority.
  ///
  /// Parameters:
  ///
  /// * [RiskAdoptIn] riskAdoptIn (required):
  Future<RiskModelState?> riskAdoptModel(RiskAdoptIn riskAdoptIn,) async {
    final response = await riskAdoptModelWithHttpInfo(riskAdoptIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskModelState',) as RiskModelState;
    
    }
    return null;
  }

  /// The feature catalogue: what the model reads, and what your surface carries
  ///
  /// Features is the feature catalogue in its two honest lenses.  The MODEL lens is the governed inventory: one entry per dimension of the model space, each carrying the typology it serves, the supervisor's own words for the indicator, and the published standard those words come from — so a coverage claim is checkable rather than asserted. It is the same for every organisation.  The SURFACE lens is what THIS organisation's own event surface actually carries, measured over the window: how many of its buckets carry each dimension at all, and what the dimension reads where it is present. A dimension present in no bucket is BLIND, and saying so is the difference between no risk and no data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] days:
  ///   Days is how far back to measure the organisation's own coverage, 1 to 400. Zero takes thirty.
  Future<Response> riskFeaturesWithHttpInfo({ int? days, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/features';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (days != null) {
      queryParams.addAll(_queryParams('', 'days', days));
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

  /// The feature catalogue: what the model reads, and what your surface carries
  ///
  /// Features is the feature catalogue in its two honest lenses.  The MODEL lens is the governed inventory: one entry per dimension of the model space, each carrying the typology it serves, the supervisor's own words for the indicator, and the published standard those words come from — so a coverage claim is checkable rather than asserted. It is the same for every organisation.  The SURFACE lens is what THIS organisation's own event surface actually carries, measured over the window: how many of its buckets carry each dimension at all, and what the dimension reads where it is present. A dimension present in no bucket is BLIND, and saying so is the difference between no risk and no data.
  ///
  /// Parameters:
  ///
  /// * [int] days:
  ///   Days is how far back to measure the organisation's own coverage, 1 to 400. Zero takes thirty.
  Future<RiskCatalog?> riskFeatures({ int? days, }) async {
    final response = await riskFeaturesWithHttpInfo( days: days, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskCatalog',) as RiskCatalog;
    
    }
    return null;
  }

  /// Teach your organisation's own model from its own events
  ///
  /// Learn records a batch of events into the caller organisation's own aggregates and lets its model learn from them. It answers how many it learned from.  IT DOES NOT SCORE, AND THAT IS THE POINT. An observation is a value you record; learning is a transformation over observations; a verdict is a query against the result. This op is the first two. [ops.score] is the third, it is pure, and it is the ONE door to a verdict. They were one call, which meant you could not record without training and could not train without being answered — and the model ran twice over every event to produce a verdict the response carried and no caller read.  TO OBSERVE AND JUDGE, COMPOSE THE TWO, and mind the order. Score FIRST, then learn: the score is then the model's opinion of an event it has not yet learned from, which is the question worth asking. The other order answers for a model that has already absorbed the event it is judging.  This is the training path, and there is no job behind it: the model IS a set of mass counters over half-space trees, so learning is an increment and the model is current the instant the last event lands. Nothing from any other organisation is in it, and nothing from this organisation leaves it.  A RETRY IS INERT. The record deduplicates on the event id you send, and an event already in it moves nothing, costs nothing and is not counted — so a client that timed out can send the same batch again and its model holds what it holds. Without an id of your own there is nothing to converge on: two identical bodies are two events.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RiskLearnIn] riskLearnIn (required):
  Future<Response> riskLearnWithHttpInfo(RiskLearnIn riskLearnIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/learn';

    // ignore: prefer_final_locals
    Object? postBody = riskLearnIn;

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

  /// Teach your organisation's own model from its own events
  ///
  /// Learn records a batch of events into the caller organisation's own aggregates and lets its model learn from them. It answers how many it learned from.  IT DOES NOT SCORE, AND THAT IS THE POINT. An observation is a value you record; learning is a transformation over observations; a verdict is a query against the result. This op is the first two. [ops.score] is the third, it is pure, and it is the ONE door to a verdict. They were one call, which meant you could not record without training and could not train without being answered — and the model ran twice over every event to produce a verdict the response carried and no caller read.  TO OBSERVE AND JUDGE, COMPOSE THE TWO, and mind the order. Score FIRST, then learn: the score is then the model's opinion of an event it has not yet learned from, which is the question worth asking. The other order answers for a model that has already absorbed the event it is judging.  This is the training path, and there is no job behind it: the model IS a set of mass counters over half-space trees, so learning is an increment and the model is current the instant the last event lands. Nothing from any other organisation is in it, and nothing from this organisation leaves it.  A RETRY IS INERT. The record deduplicates on the event id you send, and an event already in it moves nothing, costs nothing and is not counted — so a client that timed out can send the same batch again and its model holds what it holds. Without an id of your own there is nothing to converge on: two identical bodies are two events.
  ///
  /// Parameters:
  ///
  /// * [RiskLearnIn] riskLearnIn (required):
  Future<RiskLearnOut?> riskLearn(RiskLearnIn riskLearnIn,) async {
    final response = await riskLearnWithHttpInfo(riskLearnIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskLearnOut',) as RiskLearnOut;
    
    }
    return null;
  }

  /// Your organisation's decision-regime history, and which version is in force
  ///
  /// Policy reports the caller organisation's own decision-regime history: every distinct regime it has adopted, which version is in force, and what retention has taken.  WHY IT EXISTS. Every score cites the version it was decided under ([riskScoreOut.Policy]), and the threshold that score was measured against is derived from the appetite that version states. Restate the appetite and, without this record, every earlier decision becomes unreconstructible — the cut it was judged by no longer exists anywhere. An adverse decision that cannot be explained against the policy in force when it was taken cannot be defended.  It covers ONE organisation. The history is on that organisation's own shelf, so another's versions are not filtered out of the answer — they are not in the file the answer is read from.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> riskPolicyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/policy';

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

  /// Your organisation's decision-regime history, and which version is in force
  ///
  /// Policy reports the caller organisation's own decision-regime history: every distinct regime it has adopted, which version is in force, and what retention has taken.  WHY IT EXISTS. Every score cites the version it was decided under ([riskScoreOut.Policy]), and the threshold that score was measured against is derived from the appetite that version states. Restate the appetite and, without this record, every earlier decision becomes unreconstructible — the cut it was judged by no longer exists anywhere. An adverse decision that cannot be explained against the policy in force when it was taken cannot be defended.  It covers ONE organisation. The history is on that organisation's own shelf, so another's versions are not filtered out of the answer — they are not in the file the answer is read from.
  Future<RiskPolicyOut?> riskPolicy() async {
    final response = await riskPolicyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskPolicyOut',) as RiskPolicyOut;
    
    }
    return null;
  }

  /// Publish your organisation's model as a named, immutable value
  ///
  /// Publishes your organisation's model as a NAMED VALUE, so a decision taken today can be reconstructed tomorrow and a change made today can be undone.  It answers with a NAME and not with the state. The masses stay on your organisation's own encrypted store and are referred to by an address computed from their own content: the shape, the geometry seed, the position in the window, the threshold, the masses themselves as IEEE-754 bits, and the fold watermark behind them. That is what makes the value nameable without making the caller its custodian.  IT IS IDEMPOTENT ON THE VALUE. A model that has not changed publishes to the name it already has and mints nothing, reporting minted=false — so publishing at every boundary that matters is free. Ten values are retained per organisation, bounded in BYTES rather than in rows, and the oldest is disposed of past that.  A model that has learned nothing is refused: planted is not learned, and a value that reproduces nothing is not a value.  It is POST and PUT on one address because they are one plane's two verbs over one kind of thing: POST mints a value from the model in force, PUT puts a value in force. They were /v1/risk/state/snapshot and /v1/risk/state/restore — two addresses named after the operation rather than after the thing, which is how a reader ends up asking what the difference between a snapshot and a value is.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> riskPublishModelWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/state/model';

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

  /// Publish your organisation's model as a named, immutable value
  ///
  /// Publishes your organisation's model as a NAMED VALUE, so a decision taken today can be reconstructed tomorrow and a change made today can be undone.  It answers with a NAME and not with the state. The masses stay on your organisation's own encrypted store and are referred to by an address computed from their own content: the shape, the geometry seed, the position in the window, the threshold, the masses themselves as IEEE-754 bits, and the fold watermark behind them. That is what makes the value nameable without making the caller its custodian.  IT IS IDEMPOTENT ON THE VALUE. A model that has not changed publishes to the name it already has and mints nothing, reporting minted=false — so publishing at every boundary that matters is free. Ten values are retained per organisation, bounded in BYTES rather than in rows, and the oldest is disposed of past that.  A model that has learned nothing is refused: planted is not learned, and a value that reproduces nothing is not a value.  It is POST and PUT on one address because they are one plane's two verbs over one kind of thing: POST mints a value from the model in force, PUT puts a value in force. They were /v1/risk/state/snapshot and /v1/risk/state/restore — two addresses named after the operation rather than after the thing, which is how a reader ends up asking what the difference between a snapshot and a value is.
  Future<RiskPublishOut?> riskPublishModel() async {
    final response = await riskPublishModelWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskPublishOut',) as RiskPublishOut;
    
    }
    return null;
  }

  /// Score one event against your organisation's own model
  ///
  /// Score judges one event against the caller organisation's OWN model and learns nothing from it. It is how a candidate is tried against real behaviour before anything depends on the answer, and it is the model's analogue of testing a rule.  Because it records nothing, the aggregates it reads do not include the event: the numbers are the organisation's history as it stands. A model still warming declines with a reason rather than answering zero, because silence must never read as a clean result.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RiskScoreIn] riskScoreIn (required):
  Future<Response> riskScoreWithHttpInfo(RiskScoreIn riskScoreIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/score';

    // ignore: prefer_final_locals
    Object? postBody = riskScoreIn;

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

  /// Score one event against your organisation's own model
  ///
  /// Score judges one event against the caller organisation's OWN model and learns nothing from it. It is how a candidate is tried against real behaviour before anything depends on the answer, and it is the model's analogue of testing a rule.  Because it records nothing, the aggregates it reads do not include the event: the numbers are the organisation's history as it stands. A model still warming declines with a reason rather than answering zero, because silence must never read as a clean result.
  ///
  /// Parameters:
  ///
  /// * [RiskScoreIn] riskScoreIn (required):
  Future<RiskScoreOut?> riskScore(RiskScoreIn riskScoreIn,) async {
    final response = await riskScoreWithHttpInfo(riskScoreIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskScoreOut',) as RiskScoreOut;
    
    }
    return null;
  }

  /// Search exhaustively for the model shape that fits your own history
  ///
  /// Search runs an exhaustive search for the model shape that best fits the caller organisation's own history, and answers 202 with the run to read back.  Every candidate is replayed over that organisation's OWN feature surface in its own sandbox — its own aggregates, its own model, neither of them the live one — so a run cannot move a live threshold and cannot see another organisation's data. The result is the learning curve for each shape and the one that fit best, ranked on how closely it honoured the stated appetite, whether it warmed at all, whether it saturated, and how much of the coordinate space it left blind.  An empty history is REFUSED rather than reported as zero alerts, because \"no alerts\" is exactly what a quiet model looks like.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RiskSearchIn] riskSearchIn (required):
  Future<Response> riskSearchWithHttpInfo(RiskSearchIn riskSearchIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/search';

    // ignore: prefer_final_locals
    Object? postBody = riskSearchIn;

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

  /// Search exhaustively for the model shape that fits your own history
  ///
  /// Search runs an exhaustive search for the model shape that best fits the caller organisation's own history, and answers 202 with the run to read back.  Every candidate is replayed over that organisation's OWN feature surface in its own sandbox — its own aggregates, its own model, neither of them the live one — so a run cannot move a live threshold and cannot see another organisation's data. The result is the learning curve for each shape and the one that fit best, ranked on how closely it honoured the stated appetite, whether it warmed at all, whether it saturated, and how much of the coordinate space it left blind.  An empty history is REFUSED rather than reported as zero alerts, because \"no alerts\" is exactly what a quiet model looks like.
  ///
  /// Parameters:
  ///
  /// * [RiskSearchIn] riskSearchIn (required):
  Future<RiskSearchRun?> riskSearch(RiskSearchIn riskSearchIn,) async {
    final response = await riskSearchWithHttpInfo(riskSearchIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskSearchRun',) as RiskSearchRun;
    
    }
    return null;
  }

  /// Read back one exhaustive search
  ///
  /// Reads back one search run: every shape tried over this organisation's own history, best first, and the one that fit.  A run another organisation started is simply not there — the same 404 an unknown id gives, so the read is not a probe oracle.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the run, taken from the path. A run another organisation started is simply not there — the same answer an unknown id gives.
  Future<Response> riskSearchResultWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/search/{id}'
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

  /// Read back one exhaustive search
  ///
  /// Reads back one search run: every shape tried over this organisation's own history, best first, and the one that fit.  A run another organisation started is simply not there — the same 404 an unknown id gives, so the read is not a probe oracle.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the run, taken from the path. A run another organisation started is simply not there — the same answer an unknown id gives.
  Future<RiskSearchReport?> riskSearchResult(String id,) async {
    final response = await riskSearchResultWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskSearchReport',) as RiskSearchReport;
    
    }
    return null;
  }

  /// State the decision regime: the appetite, the sample, and whether the model is live
  ///
  /// States the decision regime the caller organisation's model decides under: how much of its own stream may be sent for examination, how much of the rest is sampled to measure what was missed, and whether the model may change an outcome at all.  The appetite is the decision a model is not permitted to make for itself: its output is a probability, so how likely it is to MISS something is a matter of policy that has to be stated, measured and reviewed rather than absorbed into a constant. The alert threshold is derived from it as a quantile of the scores actually observed, which is what keeps its meaning as the distribution drifts.  It is DURABLE BEFORE IT IS IN FORCE. The regime is recorded as a new version on the organisation's own shelf before anything in memory moves, so a policy that cannot be written down is refused rather than answered from state the next rollout would silently undo.  ARMING IS AN ADMIN ACT AND TUNING IS NOT. Setting `live` requires an admin of this organisation; stating the appetite and the sample is self-service for any member. Taking the model live decides whether it may change an OUTCOME at all — a payment frozen, a grant refused — for every customer this organisation has, and that is a decision an organisation takes rather than one of its members.  A RESTATEMENT OF THE REGIME IN FORCE MINTS NOTHING and answers the version already in force. Compare the version you receive with the version you had: unchanged means the numbers were the same, which is why there is no flag for it.  Learned state survives the change. The model's identity covers its SHAPE — the inventory and the geometry — and not its appetite, so restating policy unlearns nothing. It also does not REPORT the learned state: what the model is is read from the model.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RiskAppetiteIn] riskAppetiteIn (required):
  Future<Response> riskSetPolicyWithHttpInfo(RiskAppetiteIn riskAppetiteIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/policy';

    // ignore: prefer_final_locals
    Object? postBody = riskAppetiteIn;

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

  /// State the decision regime: the appetite, the sample, and whether the model is live
  ///
  /// States the decision regime the caller organisation's model decides under: how much of its own stream may be sent for examination, how much of the rest is sampled to measure what was missed, and whether the model may change an outcome at all.  The appetite is the decision a model is not permitted to make for itself: its output is a probability, so how likely it is to MISS something is a matter of policy that has to be stated, measured and reviewed rather than absorbed into a constant. The alert threshold is derived from it as a quantile of the scores actually observed, which is what keeps its meaning as the distribution drifts.  It is DURABLE BEFORE IT IS IN FORCE. The regime is recorded as a new version on the organisation's own shelf before anything in memory moves, so a policy that cannot be written down is refused rather than answered from state the next rollout would silently undo.  ARMING IS AN ADMIN ACT AND TUNING IS NOT. Setting `live` requires an admin of this organisation; stating the appetite and the sample is self-service for any member. Taking the model live decides whether it may change an OUTCOME at all — a payment frozen, a grant refused — for every customer this organisation has, and that is a decision an organisation takes rather than one of its members.  A RESTATEMENT OF THE REGIME IN FORCE MINTS NOTHING and answers the version already in force. Compare the version you receive with the version you had: unchanged means the numbers were the same, which is why there is no flag for it.  Learned state survives the change. The model's identity covers its SHAPE — the inventory and the geometry — and not its appetite, so restating policy unlearns nothing. It also does not REPORT the learned state: what the model is is read from the model.
  ///
  /// Parameters:
  ///
  /// * [RiskAppetiteIn] riskAppetiteIn (required):
  Future<RiskPolicyOut?> riskSetPolicy(RiskAppetiteIn riskAppetiteIn,) async {
    final response = await riskSetPolicyWithHttpInfo(riskAppetiteIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskPolicyOut',) as RiskPolicyOut;
    
    }
    return null;
  }

  /// Report your organisation's model: what it learned, and what it realised
  ///
  /// State reports the caller organisation's own model: what it has learned, whether it is live or still in shadow, the threshold in force, the appetite it stated beside the share it actually realised, every refusal by reason, every feature that read blind, and how much of the organisation's own event surface has been folded in.  It covers ONE organisation. A caller cannot learn another's volumes, alert rate or behaviour from it, because the state is read out of a model that holds only its own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> riskStateWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/state';

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

  /// Report your organisation's model: what it learned, and what it realised
  ///
  /// State reports the caller organisation's own model: what it has learned, whether it is live or still in shadow, the threshold in force, the appetite it stated beside the share it actually realised, every refusal by reason, every feature that read blind, and how much of the organisation's own event surface has been folded in.  It covers ONE organisation. A caller cannot learn another's volumes, alert rate or behaviour from it, because the state is read out of a model that holds only its own.
  Future<RiskModelState?> riskState() async {
    final response = await riskStateWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskModelState',) as RiskModelState;
    
    }
    return null;
  }
}
