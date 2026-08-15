//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class InstallPatchApi {
  InstallPatchApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Install an OS patch by patch ID (KB number or title) asynchronously
  ///
  /// Install an OS patch by patch ID (KB number or title) asynchronously
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postInstallPatchWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/install-patch';

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

  /// Install an OS patch by patch ID (KB number or title) asynchronously
  ///
  /// Install an OS patch by patch ID (KB number or title) asynchronously
  Future<void> postInstallPatch() async {
    final response = await postInstallPatchWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
