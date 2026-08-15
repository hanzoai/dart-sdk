//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class DownloadApi {
  DownloadApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Download a file from a session
  ///
  /// Fetches one file's BYTES from a session, addressed as {session_id}/{fileId} — a plot, a generated CSV, whatever a run wrote. The content type is derived from the name and defaults to application/octet-stream.  This is the one address whose success body is not JSON, which is why it is not a typed operation: a typed operation always marshals a Go value.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<Response> getDownloadByWildcard1WithHttpInfo(String wildcard1,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/download/{wildcard1}'
      .replaceAll('{wildcard1}', wildcard1);

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

  /// Download a file from a session
  ///
  /// Fetches one file's BYTES from a session, addressed as {session_id}/{fileId} — a plot, a generated CSV, whatever a run wrote. The content type is derived from the name and defaults to application/octet-stream.  This is the one address whose success body is not JSON, which is why it is not a typed operation: a typed operation always marshals a Go value.
  ///
  /// Parameters:
  ///
  /// * [String] wildcard1 (required):
  Future<void> getDownloadByWildcard1(String wildcard1,) async {
    final response = await getDownloadByWildcard1WithHttpInfo(wildcard1,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
