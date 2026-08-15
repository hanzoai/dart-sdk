//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class GitWebhookApi {
  GitWebhookApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Receive a push from the forge and trigger its build
  ///
  /// The forge's push-to-deploy door. git.hanzo.ai runs as a separate server, so its pushes never reach this fleet's own receive-pack; without this a push to the host we call canonical builds nothing. A verified push is handed to the SAME two seams a native push travels — the single-registrant deploy trigger, and the many-subscriber lifecycle stream that notifies and indexes — and the build decision itself stays downstream in the one place that knows what a push means.  PUBLIC at the JWT layer, because the forge carries no Hanzo session: AUTHENTICATION IS THE SIGNATURE. The HMAC covers the raw bytes and is verified BEFORE the payload is parsed, so an unauthenticated body is never decoded. The secret is read from KMS; a deployment that cannot read it answers 503 and processes nothing, rather than trusting a delivery it could not check. The body is read UNCOMPRESSED — a request declaring a Content-Encoding is refused 415 before it is touched, because decoding one is unbounded work bought with a few bytes and no credential. A bad signature is 401, a payload over 8 MiB is 413, and a malformed one 400.  A verified push that reaches both seams answers 200 with fired true and the NUMBER OF BUILDS it launched — zero is ordinary, since most pushes track no application, and it is the answer 'fired' cannot give. A push that could not be dispatched answers 500: the delivery page shows it red, and the Replay that prompts reaches a fresh attempt rather than being declined as already landed.  The deliveries deliberately ignored answer 200 with a reason and nothing else: a payload that is not a push, a ref DELETE (a zero `after` has no commit to build), a BOT-authored push (release automation pushes as the forge's own Actions user, and a release must never rebuild itself), a push from a forge namespace that maps to no org, and a redelivery of a push already fired. Branches and tags both reach the build trigger, because releases are cut by tag and filtering here would silently stop publishing.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Push] push:
  Future<Response> postGitWebhookWithHttpInfo({ Push? push, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/git-webhook';

    // ignore: prefer_final_locals
    Object? postBody = push;

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

  /// Receive a push from the forge and trigger its build
  ///
  /// The forge's push-to-deploy door. git.hanzo.ai runs as a separate server, so its pushes never reach this fleet's own receive-pack; without this a push to the host we call canonical builds nothing. A verified push is handed to the SAME two seams a native push travels — the single-registrant deploy trigger, and the many-subscriber lifecycle stream that notifies and indexes — and the build decision itself stays downstream in the one place that knows what a push means.  PUBLIC at the JWT layer, because the forge carries no Hanzo session: AUTHENTICATION IS THE SIGNATURE. The HMAC covers the raw bytes and is verified BEFORE the payload is parsed, so an unauthenticated body is never decoded. The secret is read from KMS; a deployment that cannot read it answers 503 and processes nothing, rather than trusting a delivery it could not check. The body is read UNCOMPRESSED — a request declaring a Content-Encoding is refused 415 before it is touched, because decoding one is unbounded work bought with a few bytes and no credential. A bad signature is 401, a payload over 8 MiB is 413, and a malformed one 400.  A verified push that reaches both seams answers 200 with fired true and the NUMBER OF BUILDS it launched — zero is ordinary, since most pushes track no application, and it is the answer 'fired' cannot give. A push that could not be dispatched answers 500: the delivery page shows it red, and the Replay that prompts reaches a fresh attempt rather than being declined as already landed.  The deliveries deliberately ignored answer 200 with a reason and nothing else: a payload that is not a push, a ref DELETE (a zero `after` has no commit to build), a BOT-authored push (release automation pushes as the forge's own Actions user, and a release must never rebuild itself), a push from a forge namespace that maps to no org, and a redelivery of a push already fired. Branches and tags both reach the build trigger, because releases are cut by tag and filtering here would silently stop publishing.
  ///
  /// Parameters:
  ///
  /// * [Push] push:
  Future<Verdict?> postGitWebhook({ Push? push, }) async {
    final response = await postGitWebhookWithHttpInfo( push: push, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Verdict',) as Verdict;
    
    }
    return null;
  }
}
