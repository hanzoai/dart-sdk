//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class TemplatesApi {
  TemplatesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Deletes the caller org's OWN starter kit.
  ///
  /// Deletes the caller org's OWN starter kit. A slug they do not own is a 404, never a delete: the DELETE binds org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the starter kit to act on, from the path.
  Future<Response> deleteTemplatesBySlugWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/templates/{slug}'
      .replaceAll('{slug}', slug);

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

  /// Deletes the caller org's OWN starter kit.
  ///
  /// Deletes the caller org's OWN starter kit. A slug they do not own is a 404, never a delete: the DELETE binds org.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the starter kit to act on, from the path.
  Future<void> deleteTemplatesBySlug(String slug,) async {
    final response = await deleteTemplatesBySlugWithHttpInfo(slug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists the public starter-kit catalog plus, for a validated caller, that org's own private kits.
  ///
  /// Lists the public starter-kit catalog plus, for a validated caller, that org's own private kits. No request field can widen the scope: the org comes from the validated principal, so an anonymous or cross-org caller structurally sees the public catalog only.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTemplatesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/templates';

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

  /// Lists the public starter-kit catalog plus, for a validated caller, that org's own private kits.
  ///
  /// Lists the public starter-kit catalog plus, for a validated caller, that org's own private kits. No request field can widen the scope: the org comes from the validated principal, so an anonymous or cross-org caller structurally sees the public catalog only.
  Future<KitList?> getTemplates() async {
    final response = await getTemplatesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KitList',) as KitList;
    
    }
    return null;
  }

  /// Returns one starter kit: the caller org's own by that slug, else the public catalog's.
  ///
  /// Returns one starter kit: the caller org's own by that slug, else the public catalog's. A slug another org owns reads as not found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the starter kit to act on, from the path.
  Future<Response> getTemplatesBySlugWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/templates/{slug}'
      .replaceAll('{slug}', slug);

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

  /// Returns one starter kit: the caller org's own by that slug, else the public catalog's.
  ///
  /// Returns one starter kit: the caller org's own by that slug, else the public catalog's. A slug another org owns reads as not found.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the starter kit to act on, from the path.
  Future<StarterKit?> getTemplatesBySlug(String slug,) async {
    final response = await getTemplatesBySlugWithHttpInfo(slug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StarterKit',) as StarterKit;
    
    }
    return null;
  }

  /// Creates a starter kit PRIVATE to the caller's org and answers 201 with the stored kit.
  ///
  /// Creates a starter kit PRIVATE to the caller's org and answers 201 with the stored kit. The owner is stamped by the server, so a body \"org\" is never trusted; publishing over a public-catalog slug is 409, so a slug still names exactly one kit.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PublishKitIn] publishKitIn (required):
  Future<Response> postTemplatesWithHttpInfo(PublishKitIn publishKitIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/templates';

    // ignore: prefer_final_locals
    Object? postBody = publishKitIn;

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

  /// Creates a starter kit PRIVATE to the caller's org and answers 201 with the stored kit.
  ///
  /// Creates a starter kit PRIVATE to the caller's org and answers 201 with the stored kit. The owner is stamped by the server, so a body \"org\" is never trusted; publishing over a public-catalog slug is 409, so a slug still names exactly one kit.
  ///
  /// Parameters:
  ///
  /// * [PublishKitIn] publishKitIn (required):
  Future<StarterKit?> postTemplates(PublishKitIn publishKitIn,) async {
    final response = await postTemplatesWithHttpInfo(publishKitIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StarterKit',) as StarterKit;
    
    }
    return null;
  }

  /// Overwrites the caller org's OWN starter kit at the path slug, answering the stored kit.
  ///
  /// Overwrites the caller org's OWN starter kit at the path slug, answering the stored kit. A slug they do not own is 404, never a create: the UPDATE binds org, so a PUT can never reach another org's kit.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the kit to replace, from the path.
  ///
  /// * [ReplaceKitIn] replaceKitIn (required):
  Future<Response> putTemplatesBySlugWithHttpInfo(String slug, ReplaceKitIn replaceKitIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/templates/{slug}'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = replaceKitIn;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Overwrites the caller org's OWN starter kit at the path slug, answering the stored kit.
  ///
  /// Overwrites the caller org's OWN starter kit at the path slug, answering the stored kit. A slug they do not own is 404, never a create: the UPDATE binds org, so a PUT can never reach another org's kit.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the kit to replace, from the path.
  ///
  /// * [ReplaceKitIn] replaceKitIn (required):
  Future<StarterKit?> putTemplatesBySlug(String slug, ReplaceKitIn replaceKitIn,) async {
    final response = await putTemplatesBySlugWithHttpInfo(slug, replaceKitIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StarterKit',) as StarterKit;
    
    }
    return null;
  }
}
