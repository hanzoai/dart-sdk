//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class ExecApi {
  ExecApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Files lists what a session holds.
  ///
  /// Files lists what a session holds.  One recursive `find`, the same traversal the artifact sweep makes. It used to be `ls -1A` — top level only — while the sweep collected with `find`, so a run that wrote a nested artifact reported it in its reply and then omitted it here, and the client's prefix match read the file as expired. Two traversals of one directory is two answers about what a session holds; there is one now.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sid (required):
  ///   SID is the session identifier — the sandbox this listing is of. The URL is the addressing authority: a path segment binds after the body and after the query, so the address decides which session is read whatever else is sent.
  Future<Response> getExecFilesBySidWithHttpInfo(String sid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/exec/files/{sid}'
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

  /// Files lists what a session holds.
  ///
  /// Files lists what a session holds.  One recursive `find`, the same traversal the artifact sweep makes. It used to be `ls -1A` — top level only — while the sweep collected with `find`, so a run that wrote a nested artifact reported it in its reply and then omitted it here, and the client's prefix match read the file as expired. Two traversals of one directory is two answers about what a session holds; there is one now.
  ///
  /// Parameters:
  ///
  /// * [String] sid (required):
  ///   SID is the session identifier — the sandbox this listing is of. The URL is the addressing authority: a path segment binds after the body and after the query, so the address decides which session is read whatever else is sent.
  Future<List<Listing>?> getExecFilesBySid(String sid,) async {
    final response = await getExecFilesBySidWithHttpInfo(sid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Listing>') as List)
        .cast<Listing>()
        .toList(growable: false);

    }
    return null;
  }

  /// Run a code snippet in a sandboxed interpreter
  ///
  /// Executes a program in a throwaway sandbox and answers with what it printed and what it left behind.  `lang` names one of the thirteen the sandbox image carries — py, js, ts, bash, r, php, go, rs, c, cpp, java, d, f90 — and `code` is the whole program, not a fragment: a compiled language is compiled and then run, an interpreted one is interpreted, and `args` becomes the program's own argv either way. Nothing is installed for you; the image is the environment.  A PROGRAM THAT FAILS IS A SUCCESSFUL CALL. A non-zero exit answers 200 with the diagnostics on `stderr`, because \"the code threw\" and \"the interpreter is down\" are different facts a caller renders differently. Only the second is an error status.  Runs are stateful through `session_id`. Omit it and the run gets a fresh sandbox whose id comes back on the answer; pass that id again and the next run sees the same filesystem, so a program can write a file one call and read it the next. `files` names bytes already uploaded to a session (POST /v1/exec/upload), copied in before the program starts. `files` on the ANSWER is what the program created or changed, by comparison against a marker taken at start — so it is the run's real output, not a listing of the directory — and each is fetched from GET /v1/exec/download/{session}/{name}.  The tenant is the caller's, never the body's, at every door. A typed op is also an MCP tool and an op-plane op; MCP's tools/call invokes it directly, with no route and therefore no middleware, so nothing there could have checked a credential. tenantOf refuses a context carrying neither a validated principal nor exec's own admission marker, so those doors fail closed without a second gate to keep in step.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CodeRun] codeRun (required):
  Future<Response> postExecWithHttpInfo(CodeRun codeRun,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/exec';

    // ignore: prefer_final_locals
    Object? postBody = codeRun;

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

  /// Run a code snippet in a sandboxed interpreter
  ///
  /// Executes a program in a throwaway sandbox and answers with what it printed and what it left behind.  `lang` names one of the thirteen the sandbox image carries — py, js, ts, bash, r, php, go, rs, c, cpp, java, d, f90 — and `code` is the whole program, not a fragment: a compiled language is compiled and then run, an interpreted one is interpreted, and `args` becomes the program's own argv either way. Nothing is installed for you; the image is the environment.  A PROGRAM THAT FAILS IS A SUCCESSFUL CALL. A non-zero exit answers 200 with the diagnostics on `stderr`, because \"the code threw\" and \"the interpreter is down\" are different facts a caller renders differently. Only the second is an error status.  Runs are stateful through `session_id`. Omit it and the run gets a fresh sandbox whose id comes back on the answer; pass that id again and the next run sees the same filesystem, so a program can write a file one call and read it the next. `files` names bytes already uploaded to a session (POST /v1/exec/upload), copied in before the program starts. `files` on the ANSWER is what the program created or changed, by comparison against a marker taken at start — so it is the run's real output, not a listing of the directory — and each is fetched from GET /v1/exec/download/{session}/{name}.  The tenant is the caller's, never the body's, at every door. A typed op is also an MCP tool and an op-plane op; MCP's tools/call invokes it directly, with no route and therefore no middleware, so nothing there could have checked a credential. tenantOf refuses a context carrying neither a validated principal nor exec's own admission marker, so those doors fail closed without a second gate to keep in step.
  ///
  /// Parameters:
  ///
  /// * [CodeRun] codeRun (required):
  Future<CodeResult?> postExec(CodeRun codeRun,) async {
    final response = await postExecWithHttpInfo(codeRun,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CodeResult',) as CodeResult;
    
    }
    return null;
  }

  /// Programmatic tool calling (not served here)
  ///
  /// Answers 501. This address belongs to a DIFFERENT protocol from /v1/exec: the server suspends a program on each tool call, returns the pending calls with a continuation token, and resumes when the client posts results back. Serving it means implementing suspension and resumption, so it refuses in the open rather than answering with a shape the caller's parser cannot read.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postExecProgrammaticWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/exec/programmatic';

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

  /// Programmatic tool calling (not served here)
  ///
  /// Answers 501. This address belongs to a DIFFERENT protocol from /v1/exec: the server suspends a program on each tool call, returns the pending calls with a continuation token, and resumes when the client posts results back. Serving it means implementing suspension and resumption, so it refuses in the open rather than answering with a shape the caller's parser cannot read.
  Future<void> postExecProgrammatic() async {
    final response = await postExecProgrammaticWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Upload a file into an execution session
  ///
  /// Takes a multipart upload and writes the file into the session's sandbox, so a later run can read it. Answers the session id and the identifier the file is addressed by; `session_id` in the form joins an existing session instead of opening one.  The body is multipart/form-data, which is why this is not a typed operation: every non-empty typed body is decoded as JSON.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postExecUploadWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/exec/upload';

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
  Future<void> postExecUpload() async {
    final response = await postExecUploadWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
