//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class CommandsApi {
  CommandsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Every operation this API answers, as a command
  ///
  /// The command projection of the OpenAPI document at /v1/openapi.json — each operation reduced to what running it by name needs: its service and command token, its method and path, the prose lifted from the handler, its path parameters as positional arguments and its remaining inputs as typed flags.  It is a separate address for one measured reason: the fleet document is megabytes and a command palette cannot load it, while this projection of the same operations is several times smaller because it carries no schemas, responses or components.  Unauthenticated by design, exactly as the document it derives from: a client has to be able to read the contract before it holds a credential, and a list of operation names grants nothing. The list is TOTAL and is never filtered by caller — what you may run is decided per request by the authorizer, on the decoded input, so a filtered list would be a second claim about permission that is free to be wrong.  Rendered once and served as bytes thereafter, under a strong ETag.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommandsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commands';

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

  /// Every operation this API answers, as a command
  ///
  /// The command projection of the OpenAPI document at /v1/openapi.json — each operation reduced to what running it by name needs: its service and command token, its method and path, the prose lifted from the handler, its path parameters as positional arguments and its remaining inputs as typed flags.  It is a separate address for one measured reason: the fleet document is megabytes and a command palette cannot load it, while this projection of the same operations is several times smaller because it carries no schemas, responses or components.  Unauthenticated by design, exactly as the document it derives from: a client has to be able to read the contract before it holds a credential, and a list of operation names grants nothing. The list is TOTAL and is never filtered by caller — what you may run is decided per request by the authorizer, on the decoded input, so a filtered list would be a second claim about permission that is free to be wrong.  Rendered once and served as bytes thereafter, under a strong ETag.
  Future<void> getCommands() async {
    final response = await getCommandsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
