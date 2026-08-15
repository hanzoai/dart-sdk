//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class PluginsApi {
  PluginsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Removes one of the caller org's built plugins, so the runtime can no longer load it.
  ///
  /// Removes one of the caller org's built plugins, so the runtime can no longer load it. Scoped to the caller's org, so an id belonging to another tenant answers 404 and is not deleted.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the plugin to remove, from the path.
  Future<Response> deletePluginsAuthoredByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plugins/authored/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Removes one of the caller org's built plugins, so the runtime can no longer load it.
  ///
  /// Removes one of the caller org's built plugins, so the runtime can no longer load it. Scoped to the caller's org, so an id belonging to another tenant answers 404 and is not deleted.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the plugin to remove, from the path.
  Future<PluginDeleted?> deletePluginsAuthoredById(String id,) async {
    final response = await deletePluginsAuthoredByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PluginDeleted',) as PluginDeleted;
    
    }
    return null;
  }

  /// Reports what this deployment actually mounted: every subsystem the composition root declared and whether it is switched on.
  ///
  /// Reports what this deployment actually mounted: every subsystem the composition root declared and whether it is switched on. A plugin here is MOUNTED CODE that extends the deployment's own surface — not a tool an agent calls — so this is an inventory and not a tool source. It is read off the same boot snapshot every traced request resolves its subsystem label against, so it cannot drift from what is serving. Enabled-only by default, because a caller asking what this deployment can do wants what is running; ?all=true adds the configured-but-off ones.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] all:
  ///   All includes the configured-but-disabled subsystems too, but only when it is exactly the string \"true\". Otherwise only the running ones are reported.
  Future<Response> getPluginsWithHttpInfo({ String? all, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plugins';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (all != null) {
      queryParams.addAll(_queryParams('', 'all', all));
    }

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

  /// Reports what this deployment actually mounted: every subsystem the composition root declared and whether it is switched on.
  ///
  /// Reports what this deployment actually mounted: every subsystem the composition root declared and whether it is switched on. A plugin here is MOUNTED CODE that extends the deployment's own surface — not a tool an agent calls — so this is an inventory and not a tool source. It is read off the same boot snapshot every traced request resolves its subsystem label against, so it cannot drift from what is serving. Enabled-only by default, because a caller asking what this deployment can do wants what is running; ?all=true adds the configured-but-off ones.
  ///
  /// Parameters:
  ///
  /// * [String] all:
  ///   All includes the configured-but-disabled subsystems too, but only when it is exactly the string \"true\". Otherwise only the running ones are reported.
  Future<PluginMountList?> getPlugins({ String? all, }) async {
    final response = await getPluginsWithHttpInfo( all: all, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PluginMountList',) as PluginMountList;
    
    }
    return null;
  }

  /// Lists the plugins the caller's org BUILT, newest first, each with the TypeScript as authored.
  ///
  /// Lists the plugins the caller's org BUILT, newest first, each with the TypeScript as authored. That is a different set with a different lifecycle from GET /v1/plugins, which reports the subsystems this deployment mounted. The bundled CommonJS the runtime executes is never included, and neither is any credential — a plugin names the connectors provider it needs and reads the credential from ctx.auth at run time.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPluginsAuthoredWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plugins/authored';

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

  /// Lists the plugins the caller's org BUILT, newest first, each with the TypeScript as authored.
  ///
  /// Lists the plugins the caller's org BUILT, newest first, each with the TypeScript as authored. That is a different set with a different lifecycle from GET /v1/plugins, which reports the subsystems this deployment mounted. The bundled CommonJS the runtime executes is never included, and neither is any credential — a plugin names the connectors provider it needs and reads the credential from ctx.auth at run time.
  Future<AuthoredPluginList?> getPluginsAuthored() async {
    final response = await getPluginsAuthoredWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthoredPluginList',) as AuthoredPluginList;
    
    }
    return null;
  }

  /// Build a plugin for your org from TypeScript, or from an API spec a model writes it from
  ///
  /// Builds one plugin for the caller's org and answers 201 with the bundle's size, whether a model wrote the source, and the plugin as stored. Post `source` to build TypeScript as-is, or `spec` — an OpenAPI document or plain prose describing the endpoints — to have one generated; the generated source comes back in the answer, so a caller reads what will run before it runs. Exactly one of the two, and `name` must be one lowercase path segment; both or neither is 400.  COMPILING IS THE GATE. The source goes through the same pipeline the committed connectors do — esbuild to one CommonJS program, then compiled in the goja runtime that will actually execute it — and anything that fails is rejected and NEVER stored. So a plugin in the store is one this deployment has already loaded once, not one a model claimed was fine. A failed build answers 422 carrying the diagnostics a caller needs to fix it: the bundler's error, the source that failed, and whether the model wrote it — a body outside the declared success shape.  CREDENTIALS ARE NOT PART OF A PLUGIN. A plugin names the connectors `provider` it needs and reads that credential from `ctx.auth` at run time, under KMS custody. Source that contains something shaped like a key is REFUSED rather than silently scrubbed, so a caller who pasted one finds out instead of shipping it — register it as a connector instead.  Requires a validated principal; 403 without one. The plugin is stored under that principal's org and is what `/v1/plugins/authored` lists — never `/v1/plugins`, which is this deployment's mounted-subsystem inventory. Source over 512 KiB or a spec over 256 KiB is refused. Posting a `spec` to a deployment with no AI client configured is 503, and a generation that fails upstream is 502.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BuildRequest] buildRequest:
  Future<Response> postPluginsBuildWithHttpInfo({ BuildRequest? buildRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plugins/build';

    // ignore: prefer_final_locals
    Object? postBody = buildRequest;

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

  /// Build a plugin for your org from TypeScript, or from an API spec a model writes it from
  ///
  /// Builds one plugin for the caller's org and answers 201 with the bundle's size, whether a model wrote the source, and the plugin as stored. Post `source` to build TypeScript as-is, or `spec` — an OpenAPI document or plain prose describing the endpoints — to have one generated; the generated source comes back in the answer, so a caller reads what will run before it runs. Exactly one of the two, and `name` must be one lowercase path segment; both or neither is 400.  COMPILING IS THE GATE. The source goes through the same pipeline the committed connectors do — esbuild to one CommonJS program, then compiled in the goja runtime that will actually execute it — and anything that fails is rejected and NEVER stored. So a plugin in the store is one this deployment has already loaded once, not one a model claimed was fine. A failed build answers 422 carrying the diagnostics a caller needs to fix it: the bundler's error, the source that failed, and whether the model wrote it — a body outside the declared success shape.  CREDENTIALS ARE NOT PART OF A PLUGIN. A plugin names the connectors `provider` it needs and reads that credential from `ctx.auth` at run time, under KMS custody. Source that contains something shaped like a key is REFUSED rather than silently scrubbed, so a caller who pasted one finds out instead of shipping it — register it as a connector instead.  Requires a validated principal; 403 without one. The plugin is stored under that principal's org and is what `/v1/plugins/authored` lists — never `/v1/plugins`, which is this deployment's mounted-subsystem inventory. Source over 512 KiB or a spec over 256 KiB is refused. Posting a `spec` to a deployment with no AI client configured is 503, and a generation that fails upstream is 502.
  ///
  /// Parameters:
  ///
  /// * [BuildRequest] buildRequest:
  Future<BuildOut?> postPluginsBuild({ BuildRequest? buildRequest, }) async {
    final response = await postPluginsBuildWithHttpInfo( buildRequest: buildRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BuildOut',) as BuildOut;
    
    }
    return null;
  }
}
