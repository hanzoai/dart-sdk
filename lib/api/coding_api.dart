//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class CodingApi {
  CodingApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Start one autonomous coding run against a repo in the caller's org
  ///
  /// Runs a coding task on a repository: clones it into a sandbox, lets a model read and edit the code, run the tests, and push the work to a branch. Say the thing you want done — \"fix the failing auth test in hanzoai/cloud\" — and the run infers the repo, the branch and the plan. No prefix, no ceremony.  It answers 202 with the run's handle the moment the run is ADMITTED — not when it finishes. A coding run takes minutes; holding a request open for one would tie a connection to a model loop and give the caller nothing it cannot get better from the session stream.  The handle is a session id, and that is deliberate: the session is already the run's durable record and its live stream (/v1/agents/sessions/{id}/stream), so this door does not grow a progress endpoint, a status endpoint or a cancel endpoint of its own. One way to watch a run, whoever started it.  It is also how work CONTINUES. Pass an earlier run's session as `after` and this one starts from where that one stopped, so \"now add tests for it\" builds on the branch already pushed instead of a fresh clone. The follow-up still gets its own branch and its own session — one run, one branch, always reviewable on its own.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CodingStartIn] codingStartIn (required):
  Future<Response> postCodingWithHttpInfo(CodingStartIn codingStartIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/coding';

    // ignore: prefer_final_locals
    Object? postBody = codingStartIn;

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

  /// Start one autonomous coding run against a repo in the caller's org
  ///
  /// Runs a coding task on a repository: clones it into a sandbox, lets a model read and edit the code, run the tests, and push the work to a branch. Say the thing you want done — \"fix the failing auth test in hanzoai/cloud\" — and the run infers the repo, the branch and the plan. No prefix, no ceremony.  It answers 202 with the run's handle the moment the run is ADMITTED — not when it finishes. A coding run takes minutes; holding a request open for one would tie a connection to a model loop and give the caller nothing it cannot get better from the session stream.  The handle is a session id, and that is deliberate: the session is already the run's durable record and its live stream (/v1/agents/sessions/{id}/stream), so this door does not grow a progress endpoint, a status endpoint or a cancel endpoint of its own. One way to watch a run, whoever started it.  It is also how work CONTINUES. Pass an earlier run's session as `after` and this one starts from where that one stopped, so \"now add tests for it\" builds on the branch already pushed instead of a fresh clone. The follow-up still gets its own branch and its own session — one run, one branch, always reviewable on its own.
  ///
  /// Parameters:
  ///
  /// * [CodingStartIn] codingStartIn (required):
  Future<CodingStarted?> postCoding(CodingStartIn codingStartIn,) async {
    final response = await postCodingWithHttpInfo(codingStartIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CodingStarted',) as CodingStarted;
    
    }
    return null;
  }
}
