//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class UploadApi {
  UploadApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Upload a file into an execution session
  ///
  /// Takes a multipart upload and writes the file into the session's sandbox, so a later run can read it. Answers the session id and the identifier the file is addressed by; `session_id` in the form joins an existing session instead of opening one.  The body is multipart/form-data, which is why this is not a typed operation: every non-empty typed body is decoded as JSON.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postUploadWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/upload';

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

  /// Upload a file into an execution session
  ///
  /// Takes a multipart upload and writes the file into the session's sandbox, so a later run can read it. Answers the session id and the identifier the file is addressed by; `session_id` in the form joins an existing session instead of opening one.  The body is multipart/form-data, which is why this is not a typed operation: every non-empty typed body is decoded as JSON.
  Future<void> postUpload() async {
    final response = await postUploadWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
