//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class AppearanceApi {
  AppearanceApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns the signed-in caller's own appearance preference — text size, density and accent — read from their IAM account so it is the same on every device and every Hanzo surface.
  ///
  /// Returns the signed-in caller's own appearance preference — text size, density and accent — read from their IAM account so it is the same on every device and every Hanzo surface. An unset preference is an empty object.  A transient IAM read failure reports the empty preference rather than a 5xx, so a surface applies its published default and never error-toasts on load — the same fail-soft the key read uses.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAppearanceWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/appearance';

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

  /// Returns the signed-in caller's own appearance preference — text size, density and accent — read from their IAM account so it is the same on every device and every Hanzo surface.
  ///
  /// Returns the signed-in caller's own appearance preference — text size, density and accent — read from their IAM account so it is the same on every device and every Hanzo surface. An unset preference is an empty object.  A transient IAM read failure reports the empty preference rather than a 5xx, so a surface applies its published default and never error-toasts on load — the same fail-soft the key read uses.
  Future<Appearance?> getAppearance() async {
    final response = await getAppearanceWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Appearance',) as Appearance;
    
    }
    return null;
  }

  /// Stores the caller's appearance preference on their IAM account, preserving every other field of the row.
  ///
  /// Stores the caller's appearance preference on their IAM account, preserving every other field of the row. The accent is validated as a real colour token before it is stored; an unset or invalid axis is dropped rather than stored.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Appearance] appearance (required):
  Future<Response> postAppearanceWithHttpInfo(Appearance appearance,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/appearance';

    // ignore: prefer_final_locals
    Object? postBody = appearance;

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

  /// Stores the caller's appearance preference on their IAM account, preserving every other field of the row.
  ///
  /// Stores the caller's appearance preference on their IAM account, preserving every other field of the row. The accent is validated as a real colour token before it is stored; an unset or invalid axis is dropped rather than stored.
  ///
  /// Parameters:
  ///
  /// * [Appearance] appearance (required):
  Future<Appearance?> postAppearance(Appearance appearance,) async {
    final response = await postAppearanceWithHttpInfo(appearance,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Appearance',) as Appearance;
    
    }
    return null;
  }
}
