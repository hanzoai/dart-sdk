//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class SettingsApi {
  SettingsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Reads the caller org's configuration for one product, with every secret field MASKED — only the names of the set secrets come back, never their values, which live in KMS.
  ///
  /// Reads the caller org's configuration for one product, with every secret field MASKED — only the names of the set secrets come back, never their values, which live in KMS. A product the org has never configured is not a 404: it answers 200 with an empty config object, so the console's Settings tab always renders and merges its own display defaults on top.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] product (required):
  ///   Product is the catalog slug, from the path. Must match ^[a-z0-9][a-z0-9._-]{0,62}$.
  Future<Response> getSettingsByProductWithHttpInfo(String product,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/settings/{product}'
      .replaceAll('{product}', product);

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

  /// Reads the caller org's configuration for one product, with every secret field MASKED — only the names of the set secrets come back, never their values, which live in KMS.
  ///
  /// Reads the caller org's configuration for one product, with every secret field MASKED — only the names of the set secrets come back, never their values, which live in KMS. A product the org has never configured is not a 404: it answers 200 with an empty config object, so the console's Settings tab always renders and merges its own display defaults on top.
  ///
  /// Parameters:
  ///
  /// * [String] product (required):
  ///   Product is the catalog slug, from the path. Must match ^[a-z0-9][a-z0-9._-]{0,62}$.
  Future<SettingsView?> getSettingsByProduct(String product,) async {
    final response = await getSettingsByProductWithHttpInfo(product,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SettingsView',) as SettingsView;
    
    }
    return null;
  }

  /// Writes the caller org's configuration for one product and answers the stored result, secrets masked.
  ///
  /// Writes the caller org's configuration for one product and answers the stored result, secrets masked. Secret VALUES are sealed into KMS under orgs/{org}/settings/{product}/{key} and never touch this deployment's database; with no KMS configured a write that carries any secret is refused whole (503) rather than dropping it or persisting it in the clear. A secret the body omits keeps its stored value, so a partial write never silently clears one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] product (required):
  ///   Product is the catalog slug, from the PATH. zip binds the path last, so the URL names the product being written whatever a body field claims.
  ///
  /// * [SettingsReq] settingsReq (required):
  Future<Response> putSettingsByProductWithHttpInfo(String product, SettingsReq settingsReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/settings/{product}'
      .replaceAll('{product}', product);

    // ignore: prefer_final_locals
    Object? postBody = settingsReq;

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

  /// Writes the caller org's configuration for one product and answers the stored result, secrets masked.
  ///
  /// Writes the caller org's configuration for one product and answers the stored result, secrets masked. Secret VALUES are sealed into KMS under orgs/{org}/settings/{product}/{key} and never touch this deployment's database; with no KMS configured a write that carries any secret is refused whole (503) rather than dropping it or persisting it in the clear. A secret the body omits keeps its stored value, so a partial write never silently clears one.
  ///
  /// Parameters:
  ///
  /// * [String] product (required):
  ///   Product is the catalog slug, from the PATH. zip binds the path last, so the URL names the product being written whatever a body field claims.
  ///
  /// * [SettingsReq] settingsReq (required):
  Future<SettingsView?> putSettingsByProduct(String product, SettingsReq settingsReq,) async {
    final response = await putSettingsByProductWithHttpInfo(product, settingsReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SettingsView',) as SettingsView;
    
    }
    return null;
  }
}
