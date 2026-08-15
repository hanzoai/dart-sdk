//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class EmbedApi {
  EmbedApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Reports whether one of this brand's shared embedded apps (cms, erp, help) may be framed by the caller and is actually running, so a console module can choose between the embed and the provision panel.
  ///
  /// Reports whether one of this brand's shared embedded apps (cms, erp, help) may be framed by the caller and is actually running, so a console module can choose between the embed and the provision panel.  It answers two questions the browser cannot answer for itself. ENTITLEMENT is server-authoritative: each app is a single shared per-BRAND instance, so only a member of the owning brand org — or a SuperAdmin — is given the embed URL; every other caller gets phase \"not-entitled\" and no URL. REACHABILITY is a probe of that origin, which a cross-origin page cannot read for itself.  The probed host is always <app>.<this deployment's own brand domain>: no part of it comes from the request, so this can never be steered into probing an arbitrary origin.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] app:
  ///   App is the embedded app to report on: cms (Content Studio), erp or help.
  Future<Response> getEmbedWithHttpInfo({ String? app, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/embed';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (app != null) {
      queryParams.addAll(_queryParams('', 'app', app));
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

  /// Reports whether one of this brand's shared embedded apps (cms, erp, help) may be framed by the caller and is actually running, so a console module can choose between the embed and the provision panel.
  ///
  /// Reports whether one of this brand's shared embedded apps (cms, erp, help) may be framed by the caller and is actually running, so a console module can choose between the embed and the provision panel.  It answers two questions the browser cannot answer for itself. ENTITLEMENT is server-authoritative: each app is a single shared per-BRAND instance, so only a member of the owning brand org — or a SuperAdmin — is given the embed URL; every other caller gets phase \"not-entitled\" and no URL. REACHABILITY is a probe of that origin, which a cross-origin page cannot read for itself.  The probed host is always <app>.<this deployment's own brand domain>: no part of it comes from the request, so this can never be steered into probing an arbitrary origin.
  ///
  /// Parameters:
  ///
  /// * [String] app:
  ///   App is the embedded app to report on: cms (Content Studio), erp or help.
  Future<EmbedStatusResp?> getEmbed({ String? app, }) async {
    final response = await getEmbedWithHttpInfo( app: app, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmbedStatusResp',) as EmbedStatusResp;
    
    }
    return null;
  }
}
