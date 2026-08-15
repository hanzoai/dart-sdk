//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class EngineApi {
  EngineApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Read one model's load state on the serving runtime
  ///
  /// Model reads one model's load state — loaded, unloading, or not_found, as the engine itself reports it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] model:
  ///   Model is the model id to inspect, exactly as the model list reports it.
  Future<Response> engineModelWithHttpInfo({ String? model, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/engine/model';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (model != null) {
      queryParams.addAll(_queryParams('', 'model', model));
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

  /// Read one model's load state on the serving runtime
  ///
  /// Model reads one model's load state — loaded, unloading, or not_found, as the engine itself reports it.
  ///
  /// Parameters:
  ///
  /// * [String] model:
  ///   Model is the model id to inspect, exactly as the model list reports it.
  Future<Object?> engineModel({ String? model, }) async {
    final response = await engineModelWithHttpInfo( model: model, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// List the models the serving runtime holds, with each one's load state
  ///
  /// Models lists the models the engine serves, each with its load state — the server's own model table (its standard list envelope, load status included), relayed verbatim.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> engineModelsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/engine/models';

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

  /// List the models the serving runtime holds, with each one's load state
  ///
  /// Models lists the models the engine serves, each with its load state — the server's own model table (its standard list envelope, load status included), relayed verbatim.
  Future<Object?> engineModels() async {
    final response = await engineModelsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Whether the serving runtime is reachable, and which build it runs
  ///
  /// Status reports whether the engine deployment is reachable and which build revision it runs — an honest lens for \"is the serving runtime up\", never a fabricated ok.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> engineStatusWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/engine/status';

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

  /// Whether the serving runtime is reachable, and which build it runs
  ///
  /// Status reports whether the engine deployment is reachable and which build revision it runs — an honest lens for \"is the serving runtime up\", never a fabricated ok.
  Future<EngineStatus?> engineStatus() async {
    final response = await engineStatusWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EngineStatus',) as EngineStatus;
    
    }
    return null;
  }

  /// The serving host's own inventory: devices, memory and build capabilities
  ///
  /// System reads the engine host's inventory: OS, CPU, memory, every accelerator device with its VRAM and compute capability, and the build's capabilities (CUDA/Metal/flash-attention) — the real hardware under the serving runtime, relayed verbatim.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> engineSystemWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/engine/system';

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

  /// The serving host's own inventory: devices, memory and build capabilities
  ///
  /// System reads the engine host's inventory: OS, CPU, memory, every accelerator device with its VRAM and compute capability, and the build's capabilities (CUDA/Metal/flash-attention) — the real hardware under the serving runtime, relayed verbatim.
  Future<Object?> engineSystem() async {
    final response = await engineSystemWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }
}
