//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class LabelApi {
  LabelApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

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
    final path = r'/v1/label/dispose';

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
    final path = r'/v1/label/hold';

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
    final path = r'/v1/label';

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
    final path = r'/v1/label/coverage';

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
    final path = r'/v1/label/vocabulary';

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
    final path = r'/v1/label';

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
    final path = r'/v1/label/resolve';

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
}
