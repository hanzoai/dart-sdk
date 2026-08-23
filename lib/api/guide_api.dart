//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class GuideApi {
  GuideApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Clears the caller org's curriculum override and returns the journey it falls back to — the brand blueprint, else the embedded fixture.
  ///
  /// Clears the caller org's curriculum override and returns the journey it falls back to — the brand blueprint, else the embedded fixture. Clearing an org that never set one is a no-op that answers the same default.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteGuideCurriculumWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/guide/curriculum';

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

  /// Clears the caller org's curriculum override and returns the journey it falls back to — the brand blueprint, else the embedded fixture.
  ///
  /// Clears the caller org's curriculum override and returns the journey it falls back to — the brand blueprint, else the embedded fixture. Clearing an org that never set one is a no-op that answers the same default.
  Future<CurriculumView?> deleteGuideCurriculum() async {
    final response = await deleteGuideCurriculumWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CurriculumView',) as CurriculumView;
    
    }
    return null;
  }

  /// Overview returns the caller org's launch journey: the active curriculum's version and title, every step with its state, whether it is available, what blocks it and whether the Business AI can run it, the done/total/percent progress with the next step to take, and the org's analytics funnel folded in.
  ///
  /// Overview returns the caller org's launch journey: the active curriculum's version and title, every step with its state, whether it is available, what blocks it and whether the Business AI can run it, the done/total/percent progress with the next step to take, and the org's analytics funnel folded in. Auto-detect runs first, so a step the org has already completed elsewhere reads done without anyone marking it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getGuideWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/guide';

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

  /// Overview returns the caller org's launch journey: the active curriculum's version and title, every step with its state, whether it is available, what blocks it and whether the Business AI can run it, the done/total/percent progress with the next step to take, and the org's analytics funnel folded in.
  ///
  /// Overview returns the caller org's launch journey: the active curriculum's version and title, every step with its state, whether it is available, what blocks it and whether the Business AI can run it, the done/total/percent progress with the next step to take, and the org's analytics funnel folded in. Auto-detect runs first, so a step the org has already completed elsewhere reads done without anyone marking it.
  Future<OverviewView?> getGuide() async {
    final response = await getGuideWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OverviewView',) as OverviewView;
    
    }
    return null;
  }

  /// Returns the caller org's Business AI action ledger, most recent first: every \"do it for me\" tool call, the arguments it ran with, its result and whether it succeeded.
  ///
  /// Returns the caller org's Business AI action ledger, most recent first: every \"do it for me\" tool call, the arguments it ran with, its result and whether it succeeded. It is the audit-visible record of what the agent did on the org's behalf, and the backing state for the \"acted\" auto-detect signal.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getGuideActionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/guide/actions';

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

  /// Returns the caller org's Business AI action ledger, most recent first: every \"do it for me\" tool call, the arguments it ran with, its result and whether it succeeded.
  ///
  /// Returns the caller org's Business AI action ledger, most recent first: every \"do it for me\" tool call, the arguments it ran with, its result and whether it succeeded. It is the audit-visible record of what the agent did on the org's behalf, and the backing state for the \"acted\" auto-detect signal.
  Future<ActionsView?> getGuideActions() async {
    final response = await getGuideActionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ActionsView',) as ActionsView;
    
    }
    return null;
  }

  /// Analytics returns the caller org's funnel from the analytics lens plus the GTM recommendations derived from it.
  ///
  /// Analytics returns the caller org's funnel from the analytics lens plus the GTM recommendations derived from it. It is the Business AI's data-grounded read — what the funnel is doing, and the next-best action to move its weakest stage. An unreachable or silent warehouse answers available=false, never a fabricated number.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getGuideAnalyticsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/guide/analytics';

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

  /// Analytics returns the caller org's funnel from the analytics lens plus the GTM recommendations derived from it.
  ///
  /// Analytics returns the caller org's funnel from the analytics lens plus the GTM recommendations derived from it. It is the Business AI's data-grounded read — what the funnel is doing, and the next-best action to move its weakest stage. An unreachable or silent warehouse answers available=false, never a fabricated number.
  Future<AnalyticsView?> getGuideAnalytics() async {
    final response = await getGuideAnalyticsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AnalyticsView',) as AnalyticsView;
    
    }
    return null;
  }

  /// Returns the FULL authored brand blueprint — every principle, section, step, strategy and template WITH its enabled flag made explicit, including the disabled items the org-facing reads never see — plus the active version number, the brand key it is stored under and the item counts.
  ///
  /// Returns the FULL authored brand blueprint — every principle, section, step, strategy and template WITH its enabled flag made explicit, including the disabled items the org-facing reads never see — plus the active version number, the brand key it is stored under and the item counts. It is the SuperAdmin authoring view of the platform blueprint, so it is refused 403 for anyone else, including a per-org admin: the brand blueprint is shared platform content, not a per-customer surface.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getGuideBlueprintWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/guide/blueprint';

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

  /// Returns the FULL authored brand blueprint — every principle, section, step, strategy and template WITH its enabled flag made explicit, including the disabled items the org-facing reads never see — plus the active version number, the brand key it is stored under and the item counts.
  ///
  /// Returns the FULL authored brand blueprint — every principle, section, step, strategy and template WITH its enabled flag made explicit, including the disabled items the org-facing reads never see — plus the active version number, the brand key it is stored under and the item counts. It is the SuperAdmin authoring view of the platform blueprint, so it is refused 403 for anyone else, including a per-org admin: the brand blueprint is shared platform content, not a per-customer surface.
  Future<BlueprintView?> getGuideBlueprint() async {
    final response = await getGuideBlueprintWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BlueprintView',) as BlueprintView;
    
    }
    return null;
  }

  /// Returns the brand blueprint's version history — every stored version's number and edit time, newest first — which is the point-in-time-recovery and audit trail behind the authoring plane.
  ///
  /// Returns the brand blueprint's version history — every stored version's number and edit time, newest first — which is the point-in-time-recovery and audit trail behind the authoring plane. Metadata only: the documents are not returned. SuperAdmin only, like the rest of this plane. The history is listable even when the current stored document no longer parses, so a schema-drifted row can still be diagnosed.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getGuideBlueprintVersionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/guide/blueprint/versions';

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

  /// Returns the brand blueprint's version history — every stored version's number and edit time, newest first — which is the point-in-time-recovery and audit trail behind the authoring plane.
  ///
  /// Returns the brand blueprint's version history — every stored version's number and edit time, newest first — which is the point-in-time-recovery and audit trail behind the authoring plane. Metadata only: the documents are not returned. SuperAdmin only, like the rest of this plane. The history is listable even when the current stored document no longer parses, so a schema-drifted row can still be diagnosed.
  Future<BlueprintVersionsView?> getGuideBlueprintVersions() async {
    final response = await getGuideBlueprintVersionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BlueprintVersionsView',) as BlueprintVersionsView;
    
    }
    return null;
  }

  /// Returns the journey the caller's org is actually running, and whether it comes from the org's OWN override (custom) or from the platform default — the brand blueprint, else the embedded fixture.
  ///
  /// Returns the journey the caller's org is actually running, and whether it comes from the org's OWN override (custom) or from the platform default — the brand blueprint, else the embedded fixture.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getGuideCurriculumWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/guide/curriculum';

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

  /// Returns the journey the caller's org is actually running, and whether it comes from the org's OWN override (custom) or from the platform default — the brand blueprint, else the embedded fixture.
  ///
  /// Returns the journey the caller's org is actually running, and whether it comes from the org's OWN override (custom) or from the platform default — the brand blueprint, else the embedded fixture.
  Future<CurriculumView?> getGuideCurriculum() async {
    final response = await getGuideCurriculumWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CurriculumView',) as CurriculumView;
    
    }
    return null;
  }

  /// Profile returns the caller org's OBSERVED growth profile — the signal set, the classified growth stage, and the org's own key metrics.
  ///
  /// Profile returns the caller org's OBSERVED growth profile — the signal set, the classified growth stage, and the org's own key metrics. It is a pure READ, recomputed from the org's CURRENT state each request (real-time by pull): it reuses the reconcile path (snapshotFor runs the detectors) for launch progress and runs the growth probes (observe) for the signals — it never caches, never runs a billable effect, never targets another org. Org-scoped on the validated principal; fail-closed without one. It PRODUCES the profile and classifies the stage; it decides NO recommendation (that is a later surface).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getGuideProfileWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/guide/profile';

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

  /// Profile returns the caller org's OBSERVED growth profile — the signal set, the classified growth stage, and the org's own key metrics.
  ///
  /// Profile returns the caller org's OBSERVED growth profile — the signal set, the classified growth stage, and the org's own key metrics. It is a pure READ, recomputed from the org's CURRENT state each request (real-time by pull): it reuses the reconcile path (snapshotFor runs the detectors) for launch progress and runs the growth probes (observe) for the signals — it never caches, never runs a billable effect, never targets another org. Org-scoped on the validated principal; fail-closed without one. It PRODUCES the profile and classifies the stage; it decides NO recommendation (that is a later surface).
  Future<ProfileResponse?> getGuideProfile() async {
    final response = await getGuideProfileWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProfileResponse',) as ProfileResponse;
    
    }
    return null;
  }

  /// Strategies returns the ENABLED tactics corpus for the caller's org: the tactics library narrowed by the explicit category/workload filters AND by the org's OBSERVED growth stage and capability signals (a tactic's tags are preconditions, so it surfaces only once the org can act on it).
  ///
  /// Strategies returns the ENABLED tactics corpus for the caller's org: the tactics library narrowed by the explicit category/workload filters AND by the org's OBSERVED growth stage and capability signals (a tactic's tags are preconditions, so it surfaces only once the org can act on it). Passing stage PREVIEWS the corpus at that stage instead of the observed one. The content is shared platform data — no org's records — and the read is never a billable effect.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] category:
  ///   Category filters to tactics in exactly this category.
  ///
  /// * [String] stage:
  ///   Stage previews the corpus at a chosen growth stage (research|formed|launched|activated|scaling), overriding the org's observed one. An unknown value is ignored and the observed stage stands.
  ///
  /// * [String] workload:
  ///   Workload filters to tactics with exactly this workload.
  Future<Response> getGuideStrategiesWithHttpInfo({ String? category, String? stage, String? workload, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/guide/strategies';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (category != null) {
      queryParams.addAll(_queryParams('', 'category', category));
    }
    if (stage != null) {
      queryParams.addAll(_queryParams('', 'stage', stage));
    }
    if (workload != null) {
      queryParams.addAll(_queryParams('', 'workload', workload));
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

  /// Strategies returns the ENABLED tactics corpus for the caller's org: the tactics library narrowed by the explicit category/workload filters AND by the org's OBSERVED growth stage and capability signals (a tactic's tags are preconditions, so it surfaces only once the org can act on it).
  ///
  /// Strategies returns the ENABLED tactics corpus for the caller's org: the tactics library narrowed by the explicit category/workload filters AND by the org's OBSERVED growth stage and capability signals (a tactic's tags are preconditions, so it surfaces only once the org can act on it). Passing stage PREVIEWS the corpus at that stage instead of the observed one. The content is shared platform data — no org's records — and the read is never a billable effect.
  ///
  /// Parameters:
  ///
  /// * [String] category:
  ///   Category filters to tactics in exactly this category.
  ///
  /// * [String] stage:
  ///   Stage previews the corpus at a chosen growth stage (research|formed|launched|activated|scaling), overriding the org's observed one. An unknown value is ignored and the observed stage stands.
  ///
  /// * [String] workload:
  ///   Workload filters to tactics with exactly this workload.
  Future<CorpusView?> getGuideStrategies({ String? category, String? stage, String? workload, }) async {
    final response = await getGuideStrategiesWithHttpInfo( category: category, stage: stage, workload: workload, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CorpusView',) as CorpusView;
    
    }
    return null;
  }

  /// Suggest returns the caller org's next-best quests: the available, non-terminal steps of its journey ranked by how much downstream work each unblocks, each with the grounded reason it is a good next move and whether the Business AI can run it, plus the org's funnel and the GTM recommendations derived from it.
  ///
  /// Suggest returns the caller org's next-best quests: the available, non-terminal steps of its journey ranked by how much downstream work each unblocks, each with the grounded reason it is a good next move and whether the Business AI can run it, plus the org's funnel and the GTM recommendations derived from it. A best-effort AI narrative over exactly those quests and numbers is included when an AI plane is wired. READ-ONLY: it advises and never runs a step — the only executing path is POST /v1/guide/steps/{id}/do.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getGuideSuggestWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/guide/suggest';

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

  /// Suggest returns the caller org's next-best quests: the available, non-terminal steps of its journey ranked by how much downstream work each unblocks, each with the grounded reason it is a good next move and whether the Business AI can run it, plus the org's funnel and the GTM recommendations derived from it.
  ///
  /// Suggest returns the caller org's next-best quests: the available, non-terminal steps of its journey ranked by how much downstream work each unblocks, each with the grounded reason it is a good next move and whether the Business AI can run it, plus the org's funnel and the GTM recommendations derived from it. A best-effort AI narrative over exactly those quests and numbers is included when an AI plane is wired. READ-ONLY: it advises and never runs a step — the only executing path is POST /v1/guide/steps/{id}/do.
  Future<SuggestResponse?> getGuideSuggest() async {
    final response = await getGuideSuggestWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuggestResponse',) as SuggestResponse;
    
    }
    return null;
  }

  /// Edit — or retire — one item of the brand blueprint
  ///
  /// Edits a single item of the brand blueprint by id and saves it as a NEW VERSION, answering the whole blueprint after the edit. `collection` is one of `sections`, `steps`, `strategies` or `templates`; anything else is 400, and an id that collection does not hold is 404. This is also the retire lever: `{\"enabled\": false}` takes an item out of every org's journey without deleting it or its history.  SuperAdmin ONLY, like the rest of the authoring plane; a per-org admin is 403. The write is audited.  The patch is a SHALLOW merge over the item's own top-level keys — a key you send replaces that key whole, a key you omit is left alone — and `id` is dropped from the patch before it is applied, so an edit can never rekey an item. That is why the body has no declarable shape: its keys are the patched item's, not this route's.  Fail-closed on the WHOLE document, not just the item: the blueprint is re-validated after the merge, so a patch that would dangle a dependency, break the step DAG or empty the journey is 422 and nothing is saved. An empty patch is 400 and one over 16 MiB is 413.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collection (required):
  ///
  /// * [String] id (required):
  Future<Response> patchGuideBlueprintByCollectionByIdWithHttpInfo(String collection, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/guide/blueprint/{collection}/{id}'
      .replaceAll('{collection}', collection)
      .replaceAll('{id}', id);

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

  /// Edit — or retire — one item of the brand blueprint
  ///
  /// Edits a single item of the brand blueprint by id and saves it as a NEW VERSION, answering the whole blueprint after the edit. `collection` is one of `sections`, `steps`, `strategies` or `templates`; anything else is 400, and an id that collection does not hold is 404. This is also the retire lever: `{\"enabled\": false}` takes an item out of every org's journey without deleting it or its history.  SuperAdmin ONLY, like the rest of the authoring plane; a per-org admin is 403. The write is audited.  The patch is a SHALLOW merge over the item's own top-level keys — a key you send replaces that key whole, a key you omit is left alone — and `id` is dropped from the patch before it is applied, so an edit can never rekey an item. That is why the body has no declarable shape: its keys are the patched item's, not this route's.  Fail-closed on the WHOLE document, not just the item: the blueprint is re-validated after the merge, so a patch that would dangle a dependency, break the step DAG or empty the journey is 422 and nothing is saved. An empty patch is 400 and one over 16 MiB is 413.
  ///
  /// Parameters:
  ///
  /// * [String] collection (required):
  ///
  /// * [String] id (required):
  Future<void> patchGuideBlueprintByCollectionById(String collection, String id,) async {
    final response = await patchGuideBlueprintByCollectionByIdWithHttpInfo(collection, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Chat answers a founder's question about their launch journey as the Business AI coach: it grounds the reply in the org's REAL progress, its ranked available quests and its analytics funnel, and returns those candidate quests alongside so the caller can act on one.
  ///
  /// Chat answers a founder's question about their launch journey as the Business AI coach: it grounds the reply in the org's REAL progress, its ranked available quests and its analytics funnel, and returns those candidate quests alongside so the caller can act on one. READ-ONLY — it advises and never runs a step, so it cannot be talked into performing an action; the only executing path is POST /v1/guide/steps/{id}/do. One AI completion per call, billed to the caller's own payer.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ChatRequest] chatRequest (required):
  Future<Response> postGuideChatWithHttpInfo(ChatRequest chatRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/guide/chat';

    // ignore: prefer_final_locals
    Object? postBody = chatRequest;

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

  /// Chat answers a founder's question about their launch journey as the Business AI coach: it grounds the reply in the org's REAL progress, its ranked available quests and its analytics funnel, and returns those candidate quests alongside so the caller can act on one.
  ///
  /// Chat answers a founder's question about their launch journey as the Business AI coach: it grounds the reply in the org's REAL progress, its ranked available quests and its analytics funnel, and returns those candidate quests alongside so the caller can act on one. READ-ONLY — it advises and never runs a step, so it cannot be talked into performing an action; the only executing path is POST /v1/guide/steps/{id}/do. One AI completion per call, billed to the caller's own payer.
  ///
  /// Parameters:
  ///
  /// * [ChatRequest] chatRequest (required):
  Future<ChatResponse?> postGuideChat(ChatRequest chatRequest,) async {
    final response = await postGuideChatWithHttpInfo(chatRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ChatResponse',) as ChatResponse;
    
    }
    return null;
  }

  /// Have the Business AI actually do the step for you
  ///
  /// Executes one step of the caller org's journey through that principal's OWN tool plane and answers the action log — `{step, events, state}` — so the caller sees every tool call the agent made and where the step ended up. This is the ONE executing path in guide: suggest and chat advise, this acts, and the work is charged to the calling principal's ledger.  Ask for it live and the same actions arrive as Server-Sent Events instead, on either of two triggers — `Accept: text/event-stream` or `?stream=1`. The stream opens with a comment, emits one frame per action as it happens, and closes with an `end` frame carrying `ok` and the final state. The streamed run is detached and bounded at 120 seconds, so it finishes on its own clock once the response has begun.  An agent that FAILS is not a failed request: the JSON answer still comes back 200 with `error` beside the events it did manage, and the stream still ends with `ok:false`. The refusals are the ones before the agent runs — 409 with `{error, step, blockedBy}` for a step whose dependencies are unfinished, 404 for an id the journey does not contain, 403 without a validated org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> postGuideStepsByIdDoWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/guide/steps/{id}/do'
      .replaceAll('{id}', id);

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

  /// Have the Business AI actually do the step for you
  ///
  /// Executes one step of the caller org's journey through that principal's OWN tool plane and answers the action log — `{step, events, state}` — so the caller sees every tool call the agent made and where the step ended up. This is the ONE executing path in guide: suggest and chat advise, this acts, and the work is charged to the calling principal's ledger.  Ask for it live and the same actions arrive as Server-Sent Events instead, on either of two triggers — `Accept: text/event-stream` or `?stream=1`. The stream opens with a comment, emits one frame per action as it happens, and closes with an `end` frame carrying `ok` and the final state. The streamed run is detached and bounded at 120 seconds, so it finishes on its own clock once the response has begun.  An agent that FAILS is not a failed request: the JSON answer still comes back 200 with `error` beside the events it did manage, and the stream still ends with `ok:false`. The refusals are the ones before the agent runs — 409 with `{error, step, blockedBy}` for a step whose dependencies are unfinished, 404 for an id the journey does not contain, 403 without a validated org.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> postGuideStepsByIdDo(String id,) async {
    final response = await postGuideStepsByIdDoWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Marks one step of the caller org's journey complete and returns the refreshed journey.
  ///
  /// Marks one step of the caller org's journey complete and returns the refreshed journey.  Dependency-GATED, exactly as start is: a step whose prerequisites are unfinished is refused 409 carrying {error, step, blockedBy} naming what is in the way.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the step's id, as it appears in the journey (e.g. \"gsuite\").
  Future<Response> postGuideStepsByIdDoneWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/guide/steps/{id}/done'
      .replaceAll('{id}', id);

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

  /// Marks one step of the caller org's journey complete and returns the refreshed journey.
  ///
  /// Marks one step of the caller org's journey complete and returns the refreshed journey.  Dependency-GATED, exactly as start is: a step whose prerequisites are unfinished is refused 409 carrying {error, step, blockedBy} naming what is in the way.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the step's id, as it appears in the journey (e.g. \"gsuite\").
  Future<OverviewView?> postGuideStepsByIdDone(String id,) async {
    final response = await postGuideStepsByIdDoneWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OverviewView',) as OverviewView;
    
    }
    return null;
  }

  /// Returns one step of the caller org's journey to todo — clearing a manual mark or a skip — and returns the refreshed journey.
  ///
  /// Returns one step of the caller org's journey to todo — clearing a manual mark or a skip — and returns the refreshed journey. Reset is never dependency-gated. Auto-detect runs on the next read, so a step the org has in fact completed elsewhere goes straight back to done.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the step's id, as it appears in the journey (e.g. \"gsuite\").
  Future<Response> postGuideStepsByIdResetWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/guide/steps/{id}/reset'
      .replaceAll('{id}', id);

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

  /// Returns one step of the caller org's journey to todo — clearing a manual mark or a skip — and returns the refreshed journey.
  ///
  /// Returns one step of the caller org's journey to todo — clearing a manual mark or a skip — and returns the refreshed journey. Reset is never dependency-gated. Auto-detect runs on the next read, so a step the org has in fact completed elsewhere goes straight back to done.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the step's id, as it appears in the journey (e.g. \"gsuite\").
  Future<OverviewView?> postGuideStepsByIdReset(String id,) async {
    final response = await postGuideStepsByIdResetWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OverviewView',) as OverviewView;
    
    }
    return null;
  }

  /// Marks one step of the caller org's journey skipped and returns the refreshed journey.
  ///
  /// Marks one step of the caller org's journey skipped and returns the refreshed journey. Skipping is never dependency-gated — the founder is declaring the step does not apply to them — so a step whose dependencies are unfinished can still be skipped, and a skipped step counts as terminal for everything downstream of it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the step's id, as it appears in the journey (e.g. \"gsuite\").
  Future<Response> postGuideStepsByIdSkipWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/guide/steps/{id}/skip'
      .replaceAll('{id}', id);

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

  /// Marks one step of the caller org's journey skipped and returns the refreshed journey.
  ///
  /// Marks one step of the caller org's journey skipped and returns the refreshed journey. Skipping is never dependency-gated — the founder is declaring the step does not apply to them — so a step whose dependencies are unfinished can still be skipped, and a skipped step counts as terminal for everything downstream of it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the step's id, as it appears in the journey (e.g. \"gsuite\").
  Future<OverviewView?> postGuideStepsByIdSkip(String id,) async {
    final response = await postGuideStepsByIdSkipWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OverviewView',) as OverviewView;
    
    }
    return null;
  }

  /// Marks one step of the caller org's journey in progress and returns the refreshed journey.
  ///
  /// Marks one step of the caller org's journey in progress and returns the refreshed journey.  Dependency-GATED: a step whose prerequisites are unfinished is refused 409 carrying {error, step, blockedBy}, where blockedBy names the exact steps in the way — enough to render the reason without asking again.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the step's id, as it appears in the journey (e.g. \"gsuite\").
  Future<Response> postGuideStepsByIdStartWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/guide/steps/{id}/start'
      .replaceAll('{id}', id);

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

  /// Marks one step of the caller org's journey in progress and returns the refreshed journey.
  ///
  /// Marks one step of the caller org's journey in progress and returns the refreshed journey.  Dependency-GATED: a step whose prerequisites are unfinished is refused 409 carrying {error, step, blockedBy}, where blockedBy names the exact steps in the way — enough to render the reason without asking again.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the step's id, as it appears in the journey (e.g. \"gsuite\").
  Future<OverviewView?> postGuideStepsByIdStart(String id,) async {
    final response = await postGuideStepsByIdStartWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OverviewView',) as OverviewView;
    
    }
    return null;
  }

  /// Publish a new version of the brand blueprint
  ///
  /// Replaces the deployment's brand blueprint — the shared journey, sections, strategies and templates every org starts from — as a NEW VERSION, and answers the stored document with its key and version number. The previous versions are kept, so /blueprint/versions is a real recovery trail.  SuperAdmin ONLY. A per-org admin is 403: this is platform content, not a per-customer surface — the per-customer surface is /v1/guide/curriculum. The write is audited.  The body is a blueprint document accepted as YAML **or** JSON, which is the caller-visible reason it takes a raw body. It must parse AND validate — unique ids throughout, an acyclic step graph with no dangling dependencies, every step's section and every strategy's principle resolving to a real one — or it is 422 and never becomes active, leaving the version already serving authoritative. An empty body is 400 and one over 16 MiB is 413.  Edits are live: the next resolve reads the newest version. A stored document that is itself corrupt or schema-drifted does not block this write — the target is resolved without parsing what is there — so a bad version can always be published over.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> putGuideBlueprintWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/guide/blueprint';

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

  /// Publish a new version of the brand blueprint
  ///
  /// Replaces the deployment's brand blueprint — the shared journey, sections, strategies and templates every org starts from — as a NEW VERSION, and answers the stored document with its key and version number. The previous versions are kept, so /blueprint/versions is a real recovery trail.  SuperAdmin ONLY. A per-org admin is 403: this is platform content, not a per-customer surface — the per-customer surface is /v1/guide/curriculum. The write is audited.  The body is a blueprint document accepted as YAML **or** JSON, which is the caller-visible reason it takes a raw body. It must parse AND validate — unique ids throughout, an acyclic step graph with no dangling dependencies, every step's section and every strategy's principle resolving to a real one — or it is 422 and never becomes active, leaving the version already serving authoritative. An empty body is 400 and one over 16 MiB is 413.  Edits are live: the next resolve reads the newest version. A stored document that is itself corrupt or schema-drifted does not block this write — the target is resolved without parsing what is there — so a bad version can always be published over.
  Future<void> putGuideBlueprint() async {
    final response = await putGuideBlueprintWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace your org's journey with a curriculum you author
  ///
  /// Sets the caller org's OWN curriculum — the per-customer override — and answers the journey now in force with `custom: true`. The body is a curriculum document, and it is accepted as YAML **or** JSON: that is the caller-visible reason this takes a raw body rather than a declared shape. Whatever the syntax, the CANONICAL parsed form is what is stored, so the document the engine runs never depends on how it was written.  Fail-closed: a body that does not parse, or parses but is not a valid journey (unique step ids, no dangling or cyclic dependencies), is 422 and NEVER becomes active — the org keeps the journey it had. Requires a validated org; 403 without one. An empty body is 400 and one over 256 KiB is 413.  This is tier one only. It overrides nothing but this org's own journey; the shared brand blueprint is a different surface with a different gate. DELETE the same path to drop the override and fall back to it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> putGuideCurriculumWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/guide/curriculum';

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

  /// Replace your org's journey with a curriculum you author
  ///
  /// Sets the caller org's OWN curriculum — the per-customer override — and answers the journey now in force with `custom: true`. The body is a curriculum document, and it is accepted as YAML **or** JSON: that is the caller-visible reason this takes a raw body rather than a declared shape. Whatever the syntax, the CANONICAL parsed form is what is stored, so the document the engine runs never depends on how it was written.  Fail-closed: a body that does not parse, or parses but is not a valid journey (unique step ids, no dangling or cyclic dependencies), is 422 and NEVER becomes active — the org keeps the journey it had. Requires a validated org; 403 without one. An empty body is 400 and one over 256 KiB is 413.  This is tier one only. It overrides nothing but this org's own journey; the shared brand blueprint is a different surface with a different gate. DELETE the same path to drop the override and fall back to it.
  Future<void> putGuideCurriculum() async {
    final response = await putGuideCurriculumWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
