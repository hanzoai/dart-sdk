//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class GpusApi {
  GpusApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Is an HONEST empty surface: Visor exposes no GPU alert inventory, so this returns [] rather than fabricating alerts.
  ///
  /// Is an HONEST empty surface: Visor exposes no GPU alert inventory, so this returns [] rather than fabricating alerts. It stays a real, tenant-gated route so the console's alerts fetch resolves (200 [], not a 404) — an honest \"no alerts\", the same discipline the rest of the surface follows.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listGpuAlertsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/gpus/alerts';

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

  /// Is an HONEST empty surface: Visor exposes no GPU alert inventory, so this returns [] rather than fabricating alerts.
  ///
  /// Is an HONEST empty surface: Visor exposes no GPU alert inventory, so this returns [] rather than fabricating alerts. It stays a real, tenant-gated route so the console's alerts fetch resolves (200 [], not a 404) — an honest \"no alerts\", the same discipline the rest of the surface follows.
  Future<GpuAlertList?> listGpuAlerts() async {
    final response = await listGpuAlertsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GpuAlertList',) as GpuAlertList;
    
    }
    return null;
  }

  /// Returns one row per physical accelerator the caller's org has, derived from its real GPU machines (the size slug says how many cards a node holds) and from the accelerators BYO workers report through nvidia-smi.
  ///
  /// Returns one row per physical accelerator the caller's org has, derived from its real GPU machines (the size slug says how many cards a node holds) and from the accelerators BYO workers report through nvidia-smi.  Live telemetry is absent on Visor rows because Visor's machine object carries none — an honest omission the console renders as \"—\", never a fabricated 0.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listGpusWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/gpus';

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

  /// Returns one row per physical accelerator the caller's org has, derived from its real GPU machines (the size slug says how many cards a node holds) and from the accelerators BYO workers report through nvidia-smi.
  ///
  /// Returns one row per physical accelerator the caller's org has, derived from its real GPU machines (the size slug says how many cards a node holds) and from the accelerators BYO workers report through nvidia-smi.  Live telemetry is absent on Visor rows because Visor's machine object carries none — an honest omission the console renders as \"—\", never a fabricated 0.
  Future<GpuList?> listGpus() async {
    final response = await listGpusWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GpuList',) as GpuList;
    
    }
    return null;
  }
}
