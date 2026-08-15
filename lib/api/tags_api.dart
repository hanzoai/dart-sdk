//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class TagsApi {
  TagsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// The site's browser tag set for the hosted tag — which pixels to inject, by publishable key
  ///
  /// Returns the client-side pixels the SITE has connected (GA/Meta/TikTok/X) with their NON-SECRET ids, so the hosted tag injects them first-party and stamps each browser event with the same event_id the server-side Conversions API uses — deduping the two. Resolved per site: by the publishable key on ?key= when it names a project, else by the request host, so hanzo.ai and hanzo.chat carry different tags under one org. WITHOUT a resolvable site it answers an empty set at 200 — a page never breaks on its tag config.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTagsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tags';

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

  /// The site's browser tag set for the hosted tag — which pixels to inject, by publishable key
  ///
  /// Returns the client-side pixels the SITE has connected (GA/Meta/TikTok/X) with their NON-SECRET ids, so the hosted tag injects them first-party and stamps each browser event with the same event_id the server-side Conversions API uses — deduping the two. Resolved per site: by the publishable key on ?key= when it names a project, else by the request host, so hanzo.ai and hanzo.chat carry different tags under one org. WITHOUT a resolvable site it answers an empty set at 200 — a page never breaks on its tag config.
  Future<TagConfig?> getTags() async {
    final response = await getTagsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TagConfig',) as TagConfig;
    
    }
    return null;
  }
}
