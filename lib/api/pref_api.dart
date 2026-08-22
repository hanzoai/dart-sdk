//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class PrefApi {
  PrefApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns the signed-in caller's OWN preference document — the theme, density and pinned nav that follow them across every Hanzo surface.
  ///
  /// Returns the signed-in caller's OWN preference document — the theme, density and pinned nav that follow them across every Hanzo surface. There is no path to another user's preferences: not for an org admin, not for a platform SuperAdmin, because the subject is built from the validated credential and is the mandatory predicate on the read. A caller who has never saved anything gets an empty document at 200, never a 404, so the user menu always renders.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPrefWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pref';

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

  /// Returns the signed-in caller's OWN preference document — the theme, density and pinned nav that follow them across every Hanzo surface.
  ///
  /// Returns the signed-in caller's OWN preference document — the theme, density and pinned nav that follow them across every Hanzo surface. There is no path to another user's preferences: not for an org admin, not for a platform SuperAdmin, because the subject is built from the validated credential and is the mandatory predicate on the read. A caller who has never saved anything gets an empty document at 200, never a 404, so the user menu always renders.
  Future<PrefsView?> getPref() async {
    final response = await getPrefWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PrefsView',) as PrefsView;
    
    }
    return null;
  }

  /// Save the preference keys your surface owns, leaving every other key alone
  ///
  /// Merges a JSON object key-wise into the signed-in caller's OWN preference document and answers with the whole document after the merge, so a surface saves `theme` without having to send back the `density` another surface owns. The merge is SHALLOW and the key space is open: an unnamed key is left untouched, a named key is replaced whole, and a key sent with a `null` value is DELETED. The subject is the `<owner>/<name>` identity built from the validated credential and is the mandatory predicate on the write, so there is no path to another user's preferences — not for an org admin, not for a platform SuperAdmin. Fails closed: no validated principal is 403; an empty body or a literal `null` is 400; and a patch or a resulting document over 16 KiB or 128 keys is 413.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> patchPrefWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pref';

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

  /// Save the preference keys your surface owns, leaving every other key alone
  ///
  /// Merges a JSON object key-wise into the signed-in caller's OWN preference document and answers with the whole document after the merge, so a surface saves `theme` without having to send back the `density` another surface owns. The merge is SHALLOW and the key space is open: an unnamed key is left untouched, a named key is replaced whole, and a key sent with a `null` value is DELETED. The subject is the `<owner>/<name>` identity built from the validated credential and is the mandatory predicate on the write, so there is no path to another user's preferences — not for an org admin, not for a platform SuperAdmin. Fails closed: no validated principal is 403; an empty body or a literal `null` is 400; and a patch or a resulting document over 16 KiB or 128 keys is 413.
  Future<void> patchPref() async {
    final response = await patchPrefWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
