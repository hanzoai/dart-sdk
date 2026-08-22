//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class LeaderboardApi {
  LeaderboardApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Leaderboard ranks AI usage over a window, either the users of the caller's own org or organizations against each other, and always reports the caller's own standing even when it falls outside the returned page.
  ///
  /// Leaderboard ranks AI usage over a window, either the users of the caller's own org or organizations against each other, and always reports the caller's own standing even when it falls outside the returned page. Identities are private by default: a caller sees themselves, plus the peers or orgs that opted into public listing, and only an admin sees their own org's members named. Cross-org spend is restricted to platform admins. When the warehouse is not connected the board answers empty with available=false rather than a fabricated rank.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] scope:
  ///   Scope picks the board: \"personal\" (default) ranks the caller among their own org's users, \"org\" is that same org board named for an admin, \"global\" ranks organizations against each other.
  ///
  /// * [String] metric:
  ///   Metric is the value ranked: tokens (default), requests, or cost.
  ///
  /// * [String] period:
  ///   Period is the window ranked: day, week, month (default) or all.
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned, clamped to 100. Defaults to 10, which is also what a non-positive or unparseable value takes.
  Future<Response> getLeaderboardWithHttpInfo({ String? scope, String? metric, String? period, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/leaderboard';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (scope != null) {
      queryParams.addAll(_queryParams('', 'scope', scope));
    }
    if (metric != null) {
      queryParams.addAll(_queryParams('', 'metric', metric));
    }
    if (period != null) {
      queryParams.addAll(_queryParams('', 'period', period));
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

  /// Leaderboard ranks AI usage over a window, either the users of the caller's own org or organizations against each other, and always reports the caller's own standing even when it falls outside the returned page.
  ///
  /// Leaderboard ranks AI usage over a window, either the users of the caller's own org or organizations against each other, and always reports the caller's own standing even when it falls outside the returned page. Identities are private by default: a caller sees themselves, plus the peers or orgs that opted into public listing, and only an admin sees their own org's members named. Cross-org spend is restricted to platform admins. When the warehouse is not connected the board answers empty with available=false rather than a fabricated rank.
  ///
  /// Parameters:
  ///
  /// * [String] scope:
  ///   Scope picks the board: \"personal\" (default) ranks the caller among their own org's users, \"org\" is that same org board named for an admin, \"global\" ranks organizations against each other.
  ///
  /// * [String] metric:
  ///   Metric is the value ranked: tokens (default), requests, or cost.
  ///
  /// * [String] period:
  ///   Period is the window ranked: day, week, month (default) or all.
  ///
  /// * [int] limit:
  ///   Limit caps the rows returned, clamped to 100. Defaults to 10, which is also what a non-positive or unparseable value takes.
  Future<LeaderboardView?> getLeaderboard({ String? scope, String? metric, String? period, int? limit, }) async {
    final response = await getLeaderboardWithHttpInfo( scope: scope, metric: metric, period: period, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LeaderboardView',) as LeaderboardView;
    
    }
    return null;
  }

  /// Activity returns the per-day usage series for ONE authorized subject — the points a contribution heatmap and a timeline are drawn from, gap-filled so every day in the range is present.
  ///
  /// Activity returns the per-day usage series for ONE authorized subject — the points a contribution heatmap and a timeline are drawn from, gap-filled so every day in the range is present. Authorization is resolved server-side from the validated principal, so a caller can never widen the subject past what they are entitled to: a non-admin reads only themselves and their own org. subject=project answers empty with a note, because the usage ledger records no project column yet. When the warehouse is not connected the series answers empty with available=false rather than fabricated days.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] subject:
  ///   Subject is what the series is about: \"user\" (default), \"org\" or \"project\".
  ///
  /// * [String] id:
  ///   ID names the subject within what the caller is entitled to see. Omitted (or \"me\") it is the caller themselves, or their own org. Another user requires org admin and must belong to the caller's org; another org requires a SuperAdmin.
  ///
  /// * [String] from:
  ///   From is the first day of the range, \"2006-01-02\". Defaults to 90 days back.
  ///
  /// * [String] to:
  ///   To is the last day of the range, \"2006-01-02\". Defaults to today; the span is clamped to 366 days.
  Future<Response> getLeaderboardActivityWithHttpInfo({ String? subject, String? id, String? from, String? to, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/leaderboard/activity';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (subject != null) {
      queryParams.addAll(_queryParams('', 'subject', subject));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (from != null) {
      queryParams.addAll(_queryParams('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_queryParams('', 'to', to));
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

  /// Activity returns the per-day usage series for ONE authorized subject — the points a contribution heatmap and a timeline are drawn from, gap-filled so every day in the range is present.
  ///
  /// Activity returns the per-day usage series for ONE authorized subject — the points a contribution heatmap and a timeline are drawn from, gap-filled so every day in the range is present. Authorization is resolved server-side from the validated principal, so a caller can never widen the subject past what they are entitled to: a non-admin reads only themselves and their own org. subject=project answers empty with a note, because the usage ledger records no project column yet. When the warehouse is not connected the series answers empty with available=false rather than fabricated days.
  ///
  /// Parameters:
  ///
  /// * [String] subject:
  ///   Subject is what the series is about: \"user\" (default), \"org\" or \"project\".
  ///
  /// * [String] id:
  ///   ID names the subject within what the caller is entitled to see. Omitted (or \"me\") it is the caller themselves, or their own org. Another user requires org admin and must belong to the caller's org; another org requires a SuperAdmin.
  ///
  /// * [String] from:
  ///   From is the first day of the range, \"2006-01-02\". Defaults to 90 days back.
  ///
  /// * [String] to:
  ///   To is the last day of the range, \"2006-01-02\". Defaults to today; the span is clamped to 366 days.
  Future<ActivityView?> getLeaderboardActivity({ String? subject, String? id, String? from, String? to, }) async {
    final response = await getLeaderboardActivityWithHttpInfo( subject: subject, id: id, from: from, to: to, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ActivityView',) as ActivityView;
    
    }
    return null;
  }

  /// Returns the caller's own public-listing preference and their org's, each with whether the caller may change it.
  ///
  /// Returns the caller's own public-listing preference and their org's, each with whether the caller may change it. Public listing is opt-in and private by default, so a fresh caller reads listed=false for both.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getLeaderboardOptinWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/leaderboard/optin';

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

  /// Returns the caller's own public-listing preference and their org's, each with whether the caller may change it.
  ///
  /// Returns the caller's own public-listing preference and their org's, each with whether the caller may change it. Public listing is opt-in and private by default, so a fresh caller reads listed=false for both.
  Future<OptinView?> getLeaderboardOptin() async {
    final response = await getLeaderboardOptinWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OptinView',) as OptinView;
    
    }
    return null;
  }

  /// Sets the CALLER's own public-listing preference on the leaderboard.
  ///
  /// Sets the CALLER's own public-listing preference on the leaderboard. Self only: the row written is keyed by the caller's validated ledger identity, so this can never edit another member's visibility whatever the request says. A caller opting in with no handle is given their username, so a listed row never renders as \"Anonymous\" to its own owner.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserOptinReq] userOptinReq (required):
  Future<Response> putLeaderboardOptinWithHttpInfo(UserOptinReq userOptinReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/leaderboard/optin';

    // ignore: prefer_final_locals
    Object? postBody = userOptinReq;

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

  /// Sets the CALLER's own public-listing preference on the leaderboard.
  ///
  /// Sets the CALLER's own public-listing preference on the leaderboard. Self only: the row written is keyed by the caller's validated ledger identity, so this can never edit another member's visibility whatever the request says. A caller opting in with no handle is given their username, so a listed row never renders as \"Anonymous\" to its own owner.
  ///
  /// Parameters:
  ///
  /// * [UserOptinReq] userOptinReq (required):
  Future<UserOptinView?> putLeaderboardOptin(UserOptinReq userOptinReq,) async {
    final response = await putLeaderboardOptinWithHttpInfo(userOptinReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserOptinView',) as UserOptinView;
    
    }
    return null;
  }

  /// Sets the ORG's listing on the cross-org global board.
  ///
  /// Sets the ORG's listing on the cross-org global board. Only an admin of the caller's own org — an org admin or a platform SuperAdmin — may change it, and the org written is the caller's validated tenant, never a value from the request. Listing consents to publishing the org's usage VOLUME; cross-org spend stays restricted to platform admins regardless.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [OrgOptinReq] orgOptinReq (required):
  Future<Response> putLeaderboardOptinOrgWithHttpInfo(OrgOptinReq orgOptinReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/leaderboard/optin/org';

    // ignore: prefer_final_locals
    Object? postBody = orgOptinReq;

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

  /// Sets the ORG's listing on the cross-org global board.
  ///
  /// Sets the ORG's listing on the cross-org global board. Only an admin of the caller's own org — an org admin or a platform SuperAdmin — may change it, and the org written is the caller's validated tenant, never a value from the request. Listing consents to publishing the org's usage VOLUME; cross-org spend stays restricted to platform admins regardless.
  ///
  /// Parameters:
  ///
  /// * [OrgOptinReq] orgOptinReq (required):
  Future<OrgOptinView?> putLeaderboardOptinOrg(OrgOptinReq orgOptinReq,) async {
    final response = await putLeaderboardOptinOrgWithHttpInfo(orgOptinReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrgOptinView',) as OrgOptinView;
    
    }
    return null;
  }
}
