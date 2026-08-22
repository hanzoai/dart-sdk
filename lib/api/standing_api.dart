//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class StandingApi {
  StandingApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Reports what keeping this entity costs every year, itemised.
  ///
  /// Reports what keeping this entity costs every year, itemised.  This is the figure that decides where to incorporate, and the one a formation price cannot show: Delaware is cheaper to form than Wyoming for a corporation and dearer to keep, so a founder shown only the formation fee is shown the half that reverses. Each state line carries the authority that publishes it and the date it was checked, and a franchise tax that scales is marked a minimum rather than quoted as final.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UpkeepIn] upkeepIn (required):
  Future<Response> postStandingUpkeepWithHttpInfo(UpkeepIn upkeepIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/standing/upkeep';

    // ignore: prefer_final_locals
    Object? postBody = upkeepIn;

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

  /// Reports what keeping this entity costs every year, itemised.
  ///
  /// Reports what keeping this entity costs every year, itemised.  This is the figure that decides where to incorporate, and the one a formation price cannot show: Delaware is cheaper to form than Wyoming for a corporation and dearer to keep, so a founder shown only the formation fee is shown the half that reverses. Each state line carries the authority that publishes it and the date it was checked, and a franchise tax that scales is marked a minimum rather than quoted as final.
  ///
  /// Parameters:
  ///
  /// * [UpkeepIn] upkeepIn (required):
  Future<Upkeep?> postStandingUpkeep(UpkeepIn upkeepIn,) async {
    final response = await postStandingUpkeepWithHttpInfo(upkeepIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Upkeep',) as Upkeep;
    
    }
    return null;
  }
}
