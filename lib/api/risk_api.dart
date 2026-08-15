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

  /// Removes one of your organisation's overrides.
  ///
  /// Removes one of your organisation's overrides.  It removes an entry your organisation wrote, never a baseline member: the published set is not writable from here, so a removal can only ever restore the baseline's own answer.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] set_ (required):
  ///
  /// * [String] key:
  Future<Response> riskClearReferenceWithHttpInfo(String set_, { String? key, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/reference/{set}'
      .replaceAll('{set}', set_);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (key != null) {
      queryParams.addAll(_queryParams('', 'key', key));
    }

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

  /// Removes one of your organisation's overrides.
  ///
  /// Removes one of your organisation's overrides.  It removes an entry your organisation wrote, never a baseline member: the published set is not writable from here, so a removal can only ever restore the baseline's own answer.
  ///
  /// Parameters:
  ///
  /// * [String] set_ (required):
  ///
  /// * [String] key:
  Future<ClearReferenceOut?> riskClearReference(String set_, { String? key, }) async {
    final response = await riskClearReferenceWithHttpInfo(set_,  key: key, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClearReferenceOut',) as ClearReferenceOut;
    
    }
    return null;
  }

  /// Declare the next version of a dataset
  ///
  /// Declares the next version of a dataset from a bound query over this org's own feature surface.  It mints a VERSION and writes no rows: a version is declared, then materialised once, then never rewritten. Version numbers are monotone and never reused, so \"version 3 of signups\" means one thing forever — which is the whole reason a model can cite one.  The window is bounded by the source's retention, the horizon by a year, the rows by the plane's cap, and the number of datasets and versions per org by their own limits. Every refusal names which bound it hit.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RiskDatasetSpec] riskDatasetSpec (required):
  Future<Response> riskCreateDatasetWithHttpInfo(RiskDatasetSpec riskDatasetSpec,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/datasets';

    // ignore: prefer_final_locals
    Object? postBody = riskDatasetSpec;

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

  /// Declare the next version of a dataset
  ///
  /// Declares the next version of a dataset from a bound query over this org's own feature surface.  It mints a VERSION and writes no rows: a version is declared, then materialised once, then never rewritten. Version numbers are monotone and never reused, so \"version 3 of signups\" means one thing forever — which is the whole reason a model can cite one.  The window is bounded by the source's retention, the horizon by a year, the rows by the plane's cap, and the number of datasets and versions per org by their own limits. Every refusal names which bound it hit.
  ///
  /// Parameters:
  ///
  /// * [RiskDatasetSpec] riskDatasetSpec (required):
  Future<RiskDataset?> riskCreateDataset(RiskDatasetSpec riskDatasetSpec,) async {
    final response = await riskCreateDatasetWithHttpInfo(riskDatasetSpec,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskDataset',) as RiskDataset;
    
    }
    return null;
  }

  /// Describe every version of one dataset
  ///
  /// Dataset describes every version of one dataset, newest first — the whole history, because the point of a version is that the older ones are still there and a model fitted last quarter cites one of them.  A name this org does not own answers 404, exactly as an unknown name does, so a probe learns nothing about another tenant's datasets.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the dataset, from the path.
  Future<Response> riskDatasetWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/datasets/{name}'
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

  /// Describe every version of one dataset
  ///
  /// Dataset describes every version of one dataset, newest first — the whole history, because the point of a version is that the older ones are still there and a model fitted last quarter cites one of them.  A name this org does not own answers 404, exactly as an unknown name does, so a probe learns nothing about another tenant's datasets.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the dataset, from the path.
  Future<RiskDatasetVersions?> riskDataset(String name,) async {
    final response = await riskDatasetWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskDatasetVersions',) as RiskDatasetVersions;
    
    }
    return null;
  }

  /// Show where a version's rows came from, and whether that can still be demonstrated
  ///
  /// Shows where a version's rows came from and whether that can still be demonstrated.  The answer is MEASURED, not recalled: the plane asks the source the same bounded question again and compares it to the fingerprint taken when the version was built. Anything but exact agreement is reported as drift — the source is fed by a rollup that runs behind the events, so \"it holds more now\" is the ordinary case and it means re-running the spec would not reproduce this version. An admitted gap is actionable; an unfalsifiable claim is not.  IT IS A PRICED, BOUNDED READ, because it is the same statement a materialisation is charged for: an exact distinct-count over up to 400 days of this org's feature surface. It takes the org's ONE source-scan slot, so a tenant looping it spends one scan and not a thousand; it counts against the plane's ceiling, so the fleet's warehouse is bounded too; and it runs under this plane's own deadline rather than the caller's patience.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the dataset, from the path.
  ///
  /// * [int] version:
  ///   Version is the version to trace. Zero takes the newest published one.
  Future<Response> riskDatasetLineageWithHttpInfo(String name, { int? version, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/datasets/{name}/lineage'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (version != null) {
      queryParams.addAll(_queryParams('', 'version', version));
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

  /// Show where a version's rows came from, and whether that can still be demonstrated
  ///
  /// Shows where a version's rows came from and whether that can still be demonstrated.  The answer is MEASURED, not recalled: the plane asks the source the same bounded question again and compares it to the fingerprint taken when the version was built. Anything but exact agreement is reported as drift — the source is fed by a rollup that runs behind the events, so \"it holds more now\" is the ordinary case and it means re-running the spec would not reproduce this version. An admitted gap is actionable; an unfalsifiable claim is not.  IT IS A PRICED, BOUNDED READ, because it is the same statement a materialisation is charged for: an exact distinct-count over up to 400 days of this org's feature surface. It takes the org's ONE source-scan slot, so a tenant looping it spends one scan and not a thousand; it counts against the plane's ceiling, so the fleet's warehouse is bounded too; and it runs under this plane's own deadline rather than the caller's patience.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the dataset, from the path.
  ///
  /// * [int] version:
  ///   Version is the version to trace. Zero takes the newest published one.
  Future<RiskLineage?> riskDatasetLineage(String name, { int? version, }) async {
    final response = await riskDatasetLineageWithHttpInfo(name,  version: version, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskLineage',) as RiskLineage;
    
    }
    return null;
  }

  /// List this org's datasets
  ///
  /// Datasets lists this org's datasets, each with its newest version. An org that has declared none gets an empty list; a store that cannot be reached gets a refusal, never an empty list, because the two read identically and only one of them is true.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> riskDatasetsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/datasets';

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

  /// List this org's datasets
  ///
  /// Datasets lists this org's datasets, each with its newest version. An org that has declared none gets an empty list; a store that cannot be reached gets a refusal, never an empty list, because the two read identically and only one of them is true.
  Future<RiskDatasetList?> riskDatasets() async {
    final response = await riskDatasetsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskDatasetList',) as RiskDatasetList;
    
    }
    return null;
  }

  /// Dispose of one dataset and every version of it
  ///
  /// Disposes of one dataset and every version of it: the rows are dropped and the register is marked with what went.  This is the ONLY expiry in this plane. Neither table carries a TTL, deliberately: a table TTL is a fleet-wide clock no tenant can hold longer or shorten, which is the opposite of a retention decision belonging to the tenant whose records they are. The drop is a partition drop on (org, dataset), so the tenant is the first component of the thing being dropped and a disposal cannot be spelled across one.  The BYTES are what goes. The register keeps one `disposed` row per version — the name, the number, the spec, the digest and who disposed of it when — for two reasons: a retention obligation is answered by a record of the deletion, not by silence; and version numbers must stay monotone, so that after `orders` is disposed of and declared again the next version is 4 and not 1. A number that could be reused would make every citation of `orders v3` ambiguous forever.  It is not reversible and there is no soft state in between. A version a model cited has no rows once this returns, and every read of it says so.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the dataset, from the path.
  Future<Response> riskDeleteDatasetWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/datasets/{name}'
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

  /// Dispose of one dataset and every version of it
  ///
  /// Disposes of one dataset and every version of it: the rows are dropped and the register is marked with what went.  This is the ONLY expiry in this plane. Neither table carries a TTL, deliberately: a table TTL is a fleet-wide clock no tenant can hold longer or shorten, which is the opposite of a retention decision belonging to the tenant whose records they are. The drop is a partition drop on (org, dataset), so the tenant is the first component of the thing being dropped and a disposal cannot be spelled across one.  The BYTES are what goes. The register keeps one `disposed` row per version — the name, the number, the spec, the digest and who disposed of it when — for two reasons: a retention obligation is answered by a record of the deletion, not by silence; and version numbers must stay monotone, so that after `orders` is disposed of and declared again the next version is 4 and not 1. A number that could be reused would make every citation of `orders v3` ambiguous forever.  It is not reversible and there is no soft state in between. A version a model cited has no rows once this returns, and every read of it says so.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the dataset, from the path.
  Future<RiskDatasetDisposal?> riskDeleteDataset(String name,) async {
    final response = await riskDeleteDatasetWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskDatasetDisposal',) as RiskDatasetDisposal;
    
    }
    return null;
  }

  /// Dispose of this tenant's expired assertions, whole records only
  ///
  /// Applies this tenant's retention, and only this tenant's.  It is bounded three ways, each a compliance property rather than a convenience. It refuses a boundary younger than the platform floor, because a label can be the input to an adverse action and five years is what the retention ledger holds such a record for. It never touches a record under litigation hold. And it disposes of whole records rather than redacting fields.  It removes the derived columnar copy BEFORE the record, and refuses the whole disposal if the warehouse cannot be reached. The other order would leave rows in the warehouse that nothing can identify any more, which is a disposal that did not happen and says it did.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RiskDisposeIn] riskDisposeIn (required):
  Future<Response> riskDisposeLabelsWithHttpInfo(RiskDisposeIn riskDisposeIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/labels/dispose';

    // ignore: prefer_final_locals
    Object? postBody = riskDisposeIn;

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

  /// Dispose of this tenant's expired assertions, whole records only
  ///
  /// Applies this tenant's retention, and only this tenant's.  It is bounded three ways, each a compliance property rather than a convenience. It refuses a boundary younger than the platform floor, because a label can be the input to an adverse action and five years is what the retention ledger holds such a record for. It never touches a record under litigation hold. And it disposes of whole records rather than redacting fields.  It removes the derived columnar copy BEFORE the record, and refuses the whole disposal if the warehouse cannot be reached. The other order would leave rows in the warehouse that nothing can identify any more, which is a disposal that did not happen and says it did.
  ///
  /// Parameters:
  ///
  /// * [RiskDisposeIn] riskDisposeIn (required):
  Future<RiskDisposeOut?> riskDisposeLabels(RiskDisposeIn riskDisposeIn,) async {
    final response = await riskDisposeLabelsWithHttpInfo(riskDisposeIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskDisposeOut',) as RiskDisposeOut;
    
    }
    return null;
  }

  /// Read a version's rows back, one page at a time
  ///
  /// Reads a published version's rows back, one bounded page at a time, in the version's own stable row order.  Only a published version can be exported. Rows written by an attempt that never completed are inert — no register row names them — and they are disposed of with the dataset.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the dataset, from the path.
  ///
  /// * [int] version:
  ///   Version is the version to read. Zero takes the newest published one.
  ///
  /// * [String] split:
  ///   Split narrows to train, val or test. Empty reads every split.
  ///
  /// * [int] offset:
  ///   Offset is where the page starts, in the version's own row order (by id, which is derived from the row and therefore stable forever).
  ///
  /// * [int] limit:
  ///   Limit is how many rows to return. Zero and anything above the plane's bound take the bound.
  Future<Response> riskExportDatasetWithHttpInfo(String name, { int? version, String? split, int? offset, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/datasets/{name}/export'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (version != null) {
      queryParams.addAll(_queryParams('', 'version', version));
    }
    if (split != null) {
      queryParams.addAll(_queryParams('', 'split', split));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
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

  /// Read a version's rows back, one page at a time
  ///
  /// Reads a published version's rows back, one bounded page at a time, in the version's own stable row order.  Only a published version can be exported. Rows written by an attempt that never completed are inert — no register row names them — and they are disposed of with the dataset.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the dataset, from the path.
  ///
  /// * [int] version:
  ///   Version is the version to read. Zero takes the newest published one.
  ///
  /// * [String] split:
  ///   Split narrows to train, val or test. Empty reads every split.
  ///
  /// * [int] offset:
  ///   Offset is where the page starts, in the version's own row order (by id, which is derived from the row and therefore stable forever).
  ///
  /// * [int] limit:
  ///   Limit is how many rows to return. Zero and anything above the plane's bound take the bound.
  Future<RiskDatasetRows?> riskExportDataset(String name, { int? version, String? split, int? offset, int? limit, }) async {
    final response = await riskExportDatasetWithHttpInfo(name,  version: version, split: split, offset: offset, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskDatasetRows',) as RiskDatasetRows;
    
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

  /// Place or release a litigation hold on named records
  ///
  /// Places or releases a litigation hold on named records.  A hold is a fact about the RECORD, not about the world: it says retention may not dispose of this row, and it asserts nothing about what happened. So it is not a field on an assertion and it is not folded into the content digest — carried there it was silently a no-op on any record that already existed, since re-filing the same assertion with a hold flag produced the same digest, the insert was ignored, and the caller was answered `duplicate` while the hold it asked for was never placed. This op is the one way a hold moves, in either direction, and the move is written to the audit log.  Every named id is this tenant's or is nothing. The statement runs against the tenant's own file, which holds no other tenant's rows and has no column that could name one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RiskHoldIn] riskHoldIn (required):
  Future<Response> riskHoldLabelsWithHttpInfo(RiskHoldIn riskHoldIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/labels/hold';

    // ignore: prefer_final_locals
    Object? postBody = riskHoldIn;

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

  /// Place or release a litigation hold on named records
  ///
  /// Places or releases a litigation hold on named records.  A hold is a fact about the RECORD, not about the world: it says retention may not dispose of this row, and it asserts nothing about what happened. So it is not a field on an assertion and it is not folded into the content digest — carried there it was silently a no-op on any record that already existed, since re-filing the same assertion with a hold flag produced the same digest, the insert was ignored, and the caller was answered `duplicate` while the hold it asked for was never placed. This op is the one way a hold moves, in either direction, and the move is written to the audit log.  Every named id is this tenant's or is nothing. The statement runs against the tenant's own file, which holds no other tenant's rows and has no column that could name one.
  ///
  /// Parameters:
  ///
  /// * [RiskHoldIn] riskHoldIn (required):
  Future<RiskHoldOut?> riskHoldLabels(RiskHoldIn riskHoldIn,) async {
    final response = await riskHoldLabelsWithHttpInfo(riskHoldIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskHoldOut',) as RiskHoldOut;
    
    }
    return null;
  }

  /// Assert ground truth about events
  ///
  /// Records a batch of ground truth against the entities it judges.  Each assertion carries TWO times — when the judged event happened, and when the assertion became knowable — and both are required. The second is what keeps a chargeback that landed in June out of a model that had to decide in February.  It is idempotent on the CONTENT of an assertion, so a webhook that redelivers is safe. It never overwrites: a source that corrects itself later files a NEW assertion, which wins from the moment it became knowable and leaves every earlier observation instant seeing exactly what it saw.  The asserter is stamped from the validated credential and is not a body field.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RiskLabelIn] riskLabelIn (required):
  Future<Response> riskLabelWithHttpInfo(RiskLabelIn riskLabelIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/labels';

    // ignore: prefer_final_locals
    Object? postBody = riskLabelIn;

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

  /// Assert ground truth about events
  ///
  /// Records a batch of ground truth against the entities it judges.  Each assertion carries TWO times — when the judged event happened, and when the assertion became knowable — and both are required. The second is what keeps a chargeback that landed in June out of a model that had to decide in February.  It is idempotent on the CONTENT of an assertion, so a webhook that redelivers is safe. It never overwrites: a source that corrects itself later files a NEW assertion, which wins from the moment it became knowable and leaves every earlier observation instant seeing exactly what it saw.  The asserter is stamped from the validated credential and is not a body field.
  ///
  /// Parameters:
  ///
  /// * [RiskLabelIn] riskLabelIn (required):
  Future<RiskLabelOut?> riskLabel(RiskLabelIn riskLabelIn,) async {
    final response = await riskLabelWithHttpInfo(riskLabelIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskLabelOut',) as RiskLabelOut;
    
    }
    return null;
  }

  /// How much of the window has matured, and how much of that is judged
  ///
  /// Reports how much of a window has matured and how much of that is judged, per source.  It is the gate on training. A supervised fit over a window whose judged count is near zero produces a number, and the number is meaningless; this op is what lets that be stated before the fit rather than discovered after it.  It reads the RECORD plane and folds every assertion at that event's OWN as-of, so the counts obey exactly the leakage rule a materialisation would. It counts only what was ASSERTED: what share of the whole event STREAM carries a label is a question about the feature plane's denominator and is not answerable here.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] from:
  ///   From and To bound the EVENT window, half-open, RFC 3339.  Unstated, the window is the 90 days ENDING where maturity begins — `to` is the horizon ago, not now. A default window running to now under a default horizon could not contain one matured event, so every count below it would be zero however much ground truth the tenant held.
  ///
  /// * [String] to:
  ///
  /// * [int] horizon:
  ///   Horizon is the maturity horizon in days the coverage is measured under. Unstated takes 120. It also moves the default window, which ends where maturity begins.
  Future<Response> riskLabelCoverageWithHttpInfo({ String? from, String? to, int? horizon, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/labels/coverage';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (from != null) {
      queryParams.addAll(_queryParams('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_queryParams('', 'to', to));
    }
    if (horizon != null) {
      queryParams.addAll(_queryParams('', 'horizon', horizon));
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

  /// How much of the window has matured, and how much of that is judged
  ///
  /// Reports how much of a window has matured and how much of that is judged, per source.  It is the gate on training. A supervised fit over a window whose judged count is near zero produces a number, and the number is meaningless; this op is what lets that be stated before the fit rather than discovered after it.  It reads the RECORD plane and folds every assertion at that event's OWN as-of, so the counts obey exactly the leakage rule a materialisation would. It counts only what was ASSERTED: what share of the whole event STREAM carries a label is a question about the feature plane's denominator and is not answerable here.
  ///
  /// Parameters:
  ///
  /// * [String] from:
  ///   From and To bound the EVENT window, half-open, RFC 3339.  Unstated, the window is the 90 days ENDING where maturity begins — `to` is the horizon ago, not now. A default window running to now under a default horizon could not contain one matured event, so every count below it would be zero however much ground truth the tenant held.
  ///
  /// * [String] to:
  ///
  /// * [int] horizon:
  ///   Horizon is the maturity horizon in days the coverage is measured under. Unstated takes 120. It also moves the default window, which ends where maturity begins.
  Future<RiskLabelCoverage?> riskLabelCoverage({ String? from, String? to, int? horizon, }) async {
    final response = await riskLabelCoverageWithHttpInfo( from: from, to: to, horizon: horizon, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskLabelCoverage',) as RiskLabelCoverage;
    
    }
    return null;
  }

  /// The closed vocabularies and the precedence rule that resolves a conflict
  ///
  /// Publishes the closed vocabularies and the precedence rule that resolves a conflict between two sources.  A precedence rule nobody can read is a rule nobody can audit or dispute, and the whole defensibility of a contested label rests on being able to say why one assertion beat another. The order returned here is derived from the same declaration the resolver reads — it is not a description of it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> riskLabelVocabularyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/labels/vocabulary';

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

  /// The closed vocabularies and the precedence rule that resolves a conflict
  ///
  /// Publishes the closed vocabularies and the precedence rule that resolves a conflict between two sources.  A precedence rule nobody can read is a rule nobody can audit or dispute, and the whole defensibility of a contested label rests on being able to say why one assertion beat another. The order returned here is derived from the same declaration the resolver reads — it is not a description of it.
  Future<RiskLabelVocabulary?> riskLabelVocabulary() async {
    final response = await riskLabelVocabularyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskLabelVocabulary',) as RiskLabelVocabulary;
    
    }
    return null;
  }

  /// Read the assertions this tenant has recorded
  ///
  /// Reads the assertions this tenant has recorded, newest event first.  It reads the RECORD — the tenant's own store — and not the columnar copy, so what it returns is what would be produced in an audit. Narrow it by entity, by asserter, or by event window.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] kind:
  ///   Kind and Subject narrow to one entity.
  ///
  /// * [String] subject:
  ///
  /// * [String] source_:
  ///   Source narrows to one asserter — the read that answers \"what has commerce told us\", separately from \"what has an analyst told us\".
  ///
  /// * [String] from:
  ///   From and To bound the EVENT time, half-open, RFC 3339.
  ///
  /// * [String] to:
  ///
  /// * [int] limit:
  ///   Limit caps the page. Out of range takes the plane's own bound.
  Future<Response> riskLabelsWithHttpInfo({ String? kind, String? subject, String? source_, String? from, String? to, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/labels';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (kind != null) {
      queryParams.addAll(_queryParams('', 'kind', kind));
    }
    if (subject != null) {
      queryParams.addAll(_queryParams('', 'subject', subject));
    }
    if (source_ != null) {
      queryParams.addAll(_queryParams('', 'source', source_));
    }
    if (from != null) {
      queryParams.addAll(_queryParams('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_queryParams('', 'to', to));
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

  /// Read the assertions this tenant has recorded
  ///
  /// Reads the assertions this tenant has recorded, newest event first.  It reads the RECORD — the tenant's own store — and not the columnar copy, so what it returns is what would be produced in an audit. Narrow it by entity, by asserter, or by event window.
  ///
  /// Parameters:
  ///
  /// * [String] kind:
  ///   Kind and Subject narrow to one entity.
  ///
  /// * [String] subject:
  ///
  /// * [String] source_:
  ///   Source narrows to one asserter — the read that answers \"what has commerce told us\", separately from \"what has an analyst told us\".
  ///
  /// * [String] from:
  ///   From and To bound the EVENT time, half-open, RFC 3339.
  ///
  /// * [String] to:
  ///
  /// * [int] limit:
  ///   Limit caps the page. Out of range takes the plane's own bound.
  Future<RiskLabelsOut?> riskLabels({ String? kind, String? subject, String? source_, String? from, String? to, int? limit, }) async {
    final response = await riskLabelsWithHttpInfo( kind: kind, subject: subject, source_: source_, from: from, to: to, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskLabelsOut',) as RiskLabelsOut;
    
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

  /// Materialise the declared version into immutable rows
  ///
  /// Builds the declared version into immutable rows and answers 202 as soon as the attempt is on record.  It never holds the request open for the work: a materialisation is a bounded warehouse scan, and letting an HTTP client's timeout be a data plane's timeout is how one tenant's retry loop becomes everyone's outage. ONE materialisation runs per org at a time; a second is refused rather than queued, because a queue admits the same work later and the honest answer to \"again\" while one is running is that one is running.  Only a DECLARED version is admitted. A published version is immutable, and a version whose earlier attempt did not complete is never re-attempted — that would union two runs' rows under one number and make the digest a lie. In both cases the answer is to declare a new version, which is what a second run over a moving source honestly is.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the dataset, from the path.
  Future<Response> riskMaterializeDatasetWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/datasets/{name}/materialize'
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

  /// Materialise the declared version into immutable rows
  ///
  /// Builds the declared version into immutable rows and answers 202 as soon as the attempt is on record.  It never holds the request open for the work: a materialisation is a bounded warehouse scan, and letting an HTTP client's timeout be a data plane's timeout is how one tenant's retry loop becomes everyone's outage. ONE materialisation runs per org at a time; a second is refused rather than queued, because a queue admits the same work later and the honest answer to \"again\" while one is running is that one is running.  Only a DECLARED version is admitted. A published version is immutable, and a version whose earlier attempt did not complete is never re-attempted — that would union two runs' rows under one number and make the digest a lie. In both cases the answer is to declare a new version, which is what a second run over a moving source honestly is.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the dataset, from the path.
  Future<RiskDataset?> riskMaterializeDataset(String name,) async {
    final response = await riskMaterializeDatasetWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskDataset',) as RiskDataset;
    
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

  /// Reference describes one set and lists your org's overrides in it.
  ///
  /// Reference describes one set and lists your org's overrides in it.  The set half is public data about a published list — its version, its publishers, their licences and how current each one is. The overrides half is yours alone: it is read from your organisation's own store, and no other organisation's entries can appear in it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] set_ (required):
  ///
  /// * [String] after:
  ///   After pages the override listing: the last key of the previous page.
  ///
  /// * [int] limit:
  ///   Limit caps the override listing: default 200, maximum 1000.
  Future<Response> riskReferenceWithHttpInfo(String set_, { String? after, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/reference/{set}'
      .replaceAll('{set}', set_);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (after != null) {
      queryParams.addAll(_queryParams('', 'after', after));
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

  /// Reference describes one set and lists your org's overrides in it.
  ///
  /// Reference describes one set and lists your org's overrides in it.  The set half is public data about a published list — its version, its publishers, their licences and how current each one is. The overrides half is yours alone: it is read from your organisation's own store, and no other organisation's entries can appear in it.
  ///
  /// Parameters:
  ///
  /// * [String] set_ (required):
  ///
  /// * [String] after:
  ///   After pages the override listing: the last key of the previous page.
  ///
  /// * [int] limit:
  ///   Limit caps the override listing: default 200, maximum 1000.
  Future<ReferenceOut?> riskReference(String set_, { String? after, int? limit, }) async {
    final response = await riskReferenceWithHttpInfo(set_,  after: after, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReferenceOut',) as ReferenceOut;
    
    }
    return null;
  }

  /// Lists every set this plane publishes, with its version and how fresh it is.
  ///
  /// Lists every set this plane publishes, with its version and how fresh it is.  Read the Stale and Refused lists first: they are the two ways this plane can be quietly wrong, and they are reported rather than inferred. A set in Refused answers nothing — it has never loaded, it is held by another component, or it names a source we hold no licence for.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> riskReferenceSetsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/reference';

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

  /// Lists every set this plane publishes, with its version and how fresh it is.
  ///
  /// Lists every set this plane publishes, with its version and how fresh it is.  Read the Stale and Refused lists first: they are the two ways this plane can be quietly wrong, and they are reported rather than inferred. A set in Refused answers nothing — it has never loaded, it is held by another component, or it names a source we hold no licence for.
  Future<ReferenceSetsOut?> riskReferenceSets() async {
    final response = await riskReferenceSetsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReferenceSetsOut',) as ReferenceSetsOut;
    
    }
    return null;
  }

  /// Takes a new version of one set.
  ///
  /// Takes a new version of one set. SuperAdmin only.  It is platform work, not tenant work: it writes the shared baseline every organisation reads, so it is gated to the platform's own identity. Nothing here can write an organisation's overrides, and nothing an organisation sends can reach this route.  Idempotent. A version is the content digest of what was taken, so refreshing an unchanged publisher writes no rows and reports unchanged. Resumable: a run that died half-way is continued from where it stopped rather than restarted.  A set whose source needs a licence we do not hold is refused with the reason, rather than being quietly skipped.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RefreshReferenceIn] refreshReferenceIn (required):
  Future<Response> riskRefreshReferenceWithHttpInfo(RefreshReferenceIn refreshReferenceIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/reference/refresh';

    // ignore: prefer_final_locals
    Object? postBody = refreshReferenceIn;

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

  /// Takes a new version of one set.
  ///
  /// Takes a new version of one set. SuperAdmin only.  It is platform work, not tenant work: it writes the shared baseline every organisation reads, so it is gated to the platform's own identity. Nothing here can write an organisation's overrides, and nothing an organisation sends can reach this route.  Idempotent. A version is the content digest of what was taken, so refreshing an unchanged publisher writes no rows and reports unchanged. Resumable: a run that died half-way is continued from where it stopped rather than restarted.  A set whose source needs a licence we do not hold is refused with the reason, rather than being quietly skipped.
  ///
  /// Parameters:
  ///
  /// * [RefreshReferenceIn] refreshReferenceIn (required):
  Future<RefreshReferenceOut?> riskRefreshReference(RefreshReferenceIn refreshReferenceIn,) async {
    final response = await riskRefreshReferenceWithHttpInfo(refreshReferenceIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RefreshReferenceOut',) as RefreshReferenceOut;
    
    }
    return null;
  }

  /// Resolve the label in force for named events, as of each event's own horizon
  ///
  /// Answers, for each named event, which assertion was in force AS OF that event's own horizon — and what disagreed with it.  This is the join surface: the dataset materialiser calls it to attach ground truth to training rows, and the evaluator calls it to score a past decision against what was knowable when the decision had to be made. One mechanism for both, so a model can never be trained under one leakage rule and scored under another.  Three answers are distinct and all three are honest: a resolved label, an event that has not matured, and a matured event nobody has judged. The last is never reported as unproductive.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RiskResolveIn] riskResolveIn (required):
  Future<Response> riskResolveLabelsWithHttpInfo(RiskResolveIn riskResolveIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/labels/resolve';

    // ignore: prefer_final_locals
    Object? postBody = riskResolveIn;

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

  /// Resolve the label in force for named events, as of each event's own horizon
  ///
  /// Answers, for each named event, which assertion was in force AS OF that event's own horizon — and what disagreed with it.  This is the join surface: the dataset materialiser calls it to attach ground truth to training rows, and the evaluator calls it to score a past decision against what was knowable when the decision had to be made. One mechanism for both, so a model can never be trained under one leakage rule and scored under another.  Three answers are distinct and all three are honest: a resolved label, an event that has not matured, and a matured event nobody has judged. The last is never reported as unproductive.
  ///
  /// Parameters:
  ///
  /// * [RiskResolveIn] riskResolveIn (required):
  Future<RiskResolveOut?> riskResolveLabels(RiskResolveIn riskResolveIn,) async {
    final response = await riskResolveLabelsWithHttpInfo(riskResolveIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskResolveOut',) as RiskResolveOut;
    
    }
    return null;
  }

  /// Looks keys up against the reference plane.
  ///
  /// Looks keys up against the reference plane.  Your organisation's own overrides are consulted FIRST and win outright; the shared baseline answers everything they do not cover. Every answer names the version that produced it, when that version was current and whether it is stale, so a decision can record exactly what it consulted.  Read Refusal before reading Hit. A set that has never loaded, one held by the component that screens against it, and one whose source needs a licence we do not hold all answer with a refusal — and a miss on a refusing set means nothing is known, not that the key is clean.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ResolveReferenceIn] resolveReferenceIn (required):
  Future<Response> riskResolveReferenceWithHttpInfo(ResolveReferenceIn resolveReferenceIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/reference/resolve';

    // ignore: prefer_final_locals
    Object? postBody = resolveReferenceIn;

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

  /// Looks keys up against the reference plane.
  ///
  /// Looks keys up against the reference plane.  Your organisation's own overrides are consulted FIRST and win outright; the shared baseline answers everything they do not cover. Every answer names the version that produced it, when that version was current and whether it is stale, so a decision can record exactly what it consulted.  Read Refusal before reading Hit. A set that has never loaded, one held by the component that screens against it, and one whose source needs a licence we do not hold all answer with a refusal — and a miss on a refusing set means nothing is known, not that the key is clean.
  ///
  /// Parameters:
  ///
  /// * [ResolveReferenceIn] resolveReferenceIn (required):
  Future<ResolveReferenceOut?> riskResolveReference(ResolveReferenceIn resolveReferenceIn,) async {
    final response = await riskResolveReferenceWithHttpInfo(resolveReferenceIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResolveReferenceOut',) as ResolveReferenceOut;
    
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

  /// Writes your organisation's own allow and deny entries over a set.
  ///
  /// Writes your organisation's own allow and deny entries over a set.  Idempotent on the key: writing the same entry twice is one entry, and writing it again replaces the verdict and the note. The whole batch is one transaction, so a batch that would cross the per-set bound writes nothing rather than half of itself — a half-applied deny list is worse than a refused one, because nobody can tell which half applied.  Your entries are held in your organisation's own store and are never visible to another organisation, and they never change what any other organisation sees. The shared baseline is not writable from here at all.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] set_ (required):
  ///
  /// * [SetReferenceIn] setReferenceIn (required):
  Future<Response> riskSetReferenceWithHttpInfo(String set_, SetReferenceIn setReferenceIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/risk/reference/{set}'
      .replaceAll('{set}', set_);

    // ignore: prefer_final_locals
    Object? postBody = setReferenceIn;

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

  /// Writes your organisation's own allow and deny entries over a set.
  ///
  /// Writes your organisation's own allow and deny entries over a set.  Idempotent on the key: writing the same entry twice is one entry, and writing it again replaces the verdict and the note. The whole batch is one transaction, so a batch that would cross the per-set bound writes nothing rather than half of itself — a half-applied deny list is worse than a refused one, because nobody can tell which half applied.  Your entries are held in your organisation's own store and are never visible to another organisation, and they never change what any other organisation sees. The shared baseline is not writable from here at all.
  ///
  /// Parameters:
  ///
  /// * [String] set_ (required):
  ///
  /// * [SetReferenceIn] setReferenceIn (required):
  Future<SetReferenceOut?> riskSetReference(String set_, SetReferenceIn setReferenceIn,) async {
    final response = await riskSetReferenceWithHttpInfo(set_, setReferenceIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SetReferenceOut',) as SetReferenceOut;
    
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
