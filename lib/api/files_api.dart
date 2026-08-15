//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class FilesApi {
  FilesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List the files in an execution session
  ///
  /// Lists what a session's sandbox holds — the uploads a run can read and the artifacts it produced — each then fetched from /v1/download.  It answers a BARE JSON ARRAY of {name, lastModified}, where `name` is the same {session_id}/{fileId} identifier download takes, because that is what the client matches on. An object wrapper would be a wire change, which is why this is not a typed operation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sid (required):
  Future<Response> getFilesBySidWithHttpInfo(String sid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/files/{sid}'
      .replaceAll('{sid}', sid);

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

  /// List the files in an execution session
  ///
  /// Lists what a session's sandbox holds — the uploads a run can read and the artifacts it produced — each then fetched from /v1/download.  It answers a BARE JSON ARRAY of {name, lastModified}, where `name` is the same {session_id}/{fileId} identifier download takes, because that is what the client matches on. An object wrapper would be a wire change, which is why this is not a typed operation.
  ///
  /// Parameters:
  ///
  /// * [String] sid (required):
  Future<void> getFilesBySid(String sid,) async {
    final response = await getFilesBySidWithHttpInfo(sid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
