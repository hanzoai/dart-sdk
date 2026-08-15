//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class RegistryApi {
  RegistryApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Images lists the org's container repositories, read live from the OCI catalog and filtered server-side to the org's namespace — the page can only ever hold the caller's own images.
  ///
  /// Images lists the org's container repositories, read live from the OCI catalog and filtered server-side to the org's namespace — the page can only ever hold the caller's own images.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getRegistryImagesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/registry/images';

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

  /// Images lists the org's container repositories, read live from the OCI catalog and filtered server-side to the org's namespace — the page can only ever hold the caller's own images.
  ///
  /// Images lists the org's container repositories, read live from the OCI catalog and filtered server-side to the org's namespace — the page can only ever hold the caller's own images.
  Future<RegistryImageList?> getRegistryImages() async {
    final response = await getRegistryImagesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RegistryImageList',) as RegistryImageList;
    
    }
    return null;
  }

  /// Packages lists the org's npm packages — `<org>` and `@<org>/…` — from the npm registry's search index, optionally narrowed by a query within that scope.
  ///
  /// Packages lists the org's npm packages — `<org>` and `@<org>/…` — from the npm registry's search index, optionally narrowed by a query within that scope. The org boundary is applied server-side after the search, so a query can never widen it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query:
  ///   Query narrows the listing within the org's scope when present; the org boundary itself is never widened by it. It rides the query string.
  Future<Response> getRegistryPackagesWithHttpInfo({ String? query, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/registry/packages';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
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

  /// Packages lists the org's npm packages — `<org>` and `@<org>/…` — from the npm registry's search index, optionally narrowed by a query within that scope.
  ///
  /// Packages lists the org's npm packages — `<org>` and `@<org>/…` — from the npm registry's search index, optionally narrowed by a query within that scope. The org boundary is applied server-side after the search, so a query can never widen it.
  ///
  /// Parameters:
  ///
  /// * [String] query:
  ///   Query narrows the listing within the org's scope when present; the org boundary itself is never widened by it. It rides the query string.
  Future<RegistryPackageList?> getRegistryPackages({ String? query, }) async {
    final response = await getRegistryPackagesWithHttpInfo( query: query, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RegistryPackageList',) as RegistryPackageList;
    
    }
    return null;
  }

  /// Projects lists the namespaces the caller can see with what each holds: the org's slug, its repository count on the OCI catalog, and its package count on the npm registry.
  ///
  /// Projects lists the namespaces the caller can see with what each holds: the org's slug, its repository count on the OCI catalog, and its package count on the npm registry. Today that is exactly one row — the caller's org.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getRegistryProjectsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/registry/projects';

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

  /// Projects lists the namespaces the caller can see with what each holds: the org's slug, its repository count on the OCI catalog, and its package count on the npm registry.
  ///
  /// Projects lists the namespaces the caller can see with what each holds: the org's slug, its repository count on the OCI catalog, and its package count on the npm registry. Today that is exactly one row — the caller's org.
  Future<RegistryProjectList?> getRegistryProjects() async {
    final response = await getRegistryProjectsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RegistryProjectList',) as RegistryProjectList;
    
    }
    return null;
  }

  /// Status reports whether the OCI and npm registries are reachable and, when the OCI half is auth-gated, which token realm its challenge advertises — an honest lens for \"is the registry plane up\", never a fabricated ok.
  ///
  /// Status reports whether the OCI and npm registries are reachable and, when the OCI half is auth-gated, which token realm its challenge advertises — an honest lens for \"is the registry plane up\", never a fabricated ok.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getRegistryStatusWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/registry/status';

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

  /// Status reports whether the OCI and npm registries are reachable and, when the OCI half is auth-gated, which token realm its challenge advertises — an honest lens for \"is the registry plane up\", never a fabricated ok.
  ///
  /// Status reports whether the OCI and npm registries are reachable and, when the OCI half is auth-gated, which token realm its challenge advertises — an honest lens for \"is the registry plane up\", never a fabricated ok.
  Future<RegistryStatus?> getRegistryStatus() async {
    final response = await getRegistryStatusWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RegistryStatus',) as RegistryStatus;
    
    }
    return null;
  }

  /// Tags lists one org-owned repository's tags, read live from the OCI registry.
  ///
  /// Tags lists one org-owned repository's tags, read live from the OCI registry. The repository is addressed inside the org's namespace — a name outside it cannot be expressed, and an unknown one answers 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] image:
  ///   Image is the repository name inside the org's namespace, as returned by the images op. It rides the query string.
  Future<Response> getRegistryTagsWithHttpInfo({ String? image, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/registry/tags';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (image != null) {
      queryParams.addAll(_queryParams('', 'image', image));
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

  /// Tags lists one org-owned repository's tags, read live from the OCI registry.
  ///
  /// Tags lists one org-owned repository's tags, read live from the OCI registry. The repository is addressed inside the org's namespace — a name outside it cannot be expressed, and an unknown one answers 404.
  ///
  /// Parameters:
  ///
  /// * [String] image:
  ///   Image is the repository name inside the org's namespace, as returned by the images op. It rides the query string.
  Future<RegistryTagList?> getRegistryTags({ String? image, }) async {
    final response = await getRegistryTagsWithHttpInfo( image: image, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RegistryTagList',) as RegistryTagList;
    
    }
    return null;
  }

  /// Token mints a short-lived, pull-only registry token for exactly one of the org's images, through the same IAM realm the docker CLI authenticates against.
  ///
  /// Token mints a short-lived, pull-only registry token for exactly one of the org's images, through the same IAM realm the docker CLI authenticates against. The scope is pinned server-side to `<org>/<image>` with the `pull` action — no field exists to name another org's image or ask for push. Use it as `Authorization: Bearer …` on the OCI wire; it expires in minutes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RegistryMint] registryMint (required):
  Future<Response> postRegistryTokenWithHttpInfo(RegistryMint registryMint,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/registry/token';

    // ignore: prefer_final_locals
    Object? postBody = registryMint;

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

  /// Token mints a short-lived, pull-only registry token for exactly one of the org's images, through the same IAM realm the docker CLI authenticates against.
  ///
  /// Token mints a short-lived, pull-only registry token for exactly one of the org's images, through the same IAM realm the docker CLI authenticates against. The scope is pinned server-side to `<org>/<image>` with the `pull` action — no field exists to name another org's image or ask for push. Use it as `Authorization: Bearer …` on the OCI wire; it expires in minutes.
  ///
  /// Parameters:
  ///
  /// * [RegistryMint] registryMint (required):
  Future<RegistryToken?> postRegistryToken(RegistryMint registryMint,) async {
    final response = await postRegistryTokenWithHttpInfo(registryMint,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RegistryToken',) as RegistryToken;
    
    }
    return null;
  }
}
