//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class IngressApi {
  IngressApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Removes one of the caller org's edge transforms and hot-applies the change.
  ///
  /// Removes one of the caller org's edge transforms and hot-applies the change. Routes still naming it stop being served (they compile as skipped) until they name a transform that exists. Answers 204; an id this org does not hold is 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the object to act on, from the path.
  Future<Response> deleteIngressMiddlewaresByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ingress/middlewares/{id}'
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

  /// Removes one of the caller org's edge transforms and hot-applies the change.
  ///
  /// Removes one of the caller org's edge transforms and hot-applies the change. Routes still naming it stop being served (they compile as skipped) until they name a transform that exists. Answers 204; an id this org does not hold is 404.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the object to act on, from the path.
  Future<void> deleteIngressMiddlewaresById(String id,) async {
    final response = await deleteIngressMiddlewaresByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes one of the caller org's routing rules and hot-applies the shrunken table, freeing its host for another claim.
  ///
  /// Removes one of the caller org's routing rules and hot-applies the shrunken table, freeing its host for another claim. Answers 204; an id this org does not hold is 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the object to act on, from the path.
  Future<Response> deleteIngressRoutesByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ingress/routes/{id}'
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

  /// Removes one of the caller org's routing rules and hot-applies the shrunken table, freeing its host for another claim.
  ///
  /// Removes one of the caller org's routing rules and hot-applies the shrunken table, freeing its host for another claim. Answers 204; an id this org does not hold is 404.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the object to act on, from the path.
  Future<void> deleteIngressRoutesById(String id,) async {
    final response = await deleteIngressRoutesByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes one of the caller org's backend pools and hot-applies the change.
  ///
  /// Removes one of the caller org's backend pools and hot-applies the change. Routes still pointing at it stop being served (they compile as skipped) until they name a pool that exists. Answers 204; an id this org does not hold is 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the object to act on, from the path.
  Future<Response> deleteIngressServicesByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ingress/services/{id}'
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

  /// Removes one of the caller org's backend pools and hot-applies the change.
  ///
  /// Removes one of the caller org's backend pools and hot-applies the change. Routes still pointing at it stop being served (they compile as skipped) until they name a pool that exists. Answers 204; an id this org does not hold is 404.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the object to act on, from the path.
  Future<void> deleteIngressServicesById(String id,) async {
    final response = await deleteIngressServicesByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns every edge transform the caller's org has configured, ordered by id.
  ///
  /// Returns every edge transform the caller's org has configured, ordered by id. A route names the ones it wants, in order.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIngressMiddlewaresWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ingress/middlewares';

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

  /// Returns every edge transform the caller's org has configured, ordered by id.
  ///
  /// Returns every edge transform the caller's org has configured, ordered by id. A route names the ones it wants, in order.
  Future<IngressMiddlewares?> getIngressMiddlewares() async {
    final response = await getIngressMiddlewaresWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IngressMiddlewares',) as IngressMiddlewares;
    
    }
    return null;
  }

  /// Returns one of the caller org's edge transforms by id.
  ///
  /// Returns one of the caller org's edge transforms by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the object to act on, from the path.
  Future<Response> getIngressMiddlewaresByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ingress/middlewares/{id}'
      .replaceAll('{id}', id);

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

  /// Returns one of the caller org's edge transforms by id.
  ///
  /// Returns one of the caller org's edge transforms by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the object to act on, from the path.
  Future<Middleware?> getIngressMiddlewaresById(String id,) async {
    final response = await getIngressMiddlewaresByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Middleware',) as Middleware;
    
    }
    return null;
  }

  /// Returns every routing rule the caller's org has configured, ordered by id.
  ///
  /// Returns every routing rule the caller's org has configured, ordered by id. A route maps an exact Host (and optional path prefix) to a service.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIngressRoutesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ingress/routes';

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

  /// Returns every routing rule the caller's org has configured, ordered by id.
  ///
  /// Returns every routing rule the caller's org has configured, ordered by id. A route maps an exact Host (and optional path prefix) to a service.
  Future<IngressRoutes?> getIngressRoutes() async {
    final response = await getIngressRoutesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IngressRoutes',) as IngressRoutes;
    
    }
    return null;
  }

  /// Returns one of the caller org's routing rules by id.
  ///
  /// Returns one of the caller org's routing rules by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the object to act on, from the path.
  Future<Response> getIngressRoutesByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ingress/routes/{id}'
      .replaceAll('{id}', id);

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

  /// Returns one of the caller org's routing rules by id.
  ///
  /// Returns one of the caller org's routing rules by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the object to act on, from the path.
  Future<Route?> getIngressRoutesById(String id,) async {
    final response = await getIngressRoutesByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Route',) as Route;
    
    }
    return null;
  }

  /// Returns every backend pool the caller's org has configured, ordered by id.
  ///
  /// Returns every backend pool the caller's org has configured, ordered by id. A service is the weighted round-robin target a route dispatches to.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIngressServicesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ingress/services';

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

  /// Returns every backend pool the caller's org has configured, ordered by id.
  ///
  /// Returns every backend pool the caller's org has configured, ordered by id. A service is the weighted round-robin target a route dispatches to.
  Future<IngressServices?> getIngressServices() async {
    final response = await getIngressServicesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IngressServices',) as IngressServices;
    
    }
    return null;
  }

  /// Returns one of the caller org's backend pools by id.
  ///
  /// Returns one of the caller org's backend pools by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the object to act on, from the path.
  Future<Response> getIngressServicesByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ingress/services/{id}'
      .replaceAll('{id}', id);

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

  /// Returns one of the caller org's backend pools by id.
  ///
  /// Returns one of the caller org's backend pools by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the object to act on, from the path.
  Future<Upstream?> getIngressServicesById(String id,) async {
    final response = await getIngressServicesByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Upstream',) as Upstream;
    
    }
    return null;
  }

  /// Status reports the ingress edge's live posture: the role this instance runs in (app or edge), whether its listeners are bound and on which addresses, the ACME posture (staging flag and certificate cache directory), how many hosts the compiled route table currently serves, and how many the ACME HostPolicy will issue a certificate for.
  ///
  /// Status reports the ingress edge's live posture: the role this instance runs in (app or edge), whether its listeners are bound and on which addresses, the ACME posture (staging flag and certificate cache directory), how many hosts the compiled route table currently serves, and how many the ACME HostPolicy will issue a certificate for.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIngressStatusWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ingress/status';

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

  /// Status reports the ingress edge's live posture: the role this instance runs in (app or edge), whether its listeners are bound and on which addresses, the ACME posture (staging flag and certificate cache directory), how many hosts the compiled route table currently serves, and how many the ACME HostPolicy will issue a certificate for.
  ///
  /// Status reports the ingress edge's live posture: the role this instance runs in (app or edge), whether its listeners are bound and on which addresses, the ACME posture (staging flag and certificate cache directory), how many hosts the compiled route table currently serves, and how many the ACME HostPolicy will issue a certificate for.
  Future<IngressStatus?> getIngressStatus() async {
    final response = await getIngressStatusWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IngressStatus',) as IngressStatus;
    
    }
    return null;
  }

  /// GetTLS returns the caller org's ACME intent together with the edge-wide TLS facts it lands in: which role this instance runs in, whether its listeners are bound, every host the ACME HostPolicy will issue a certificate for (the union across ALL orgs of TLS-marked routes and configured extraHosts, because one process holds one certificate cache), and the ACME directory and account email the process was started with.
  ///
  /// GetTLS returns the caller org's ACME intent together with the edge-wide TLS facts it lands in: which role this instance runs in, whether its listeners are bound, every host the ACME HostPolicy will issue a certificate for (the union across ALL orgs of TLS-marked routes and configured extraHosts, because one process holds one certificate cache), and the ACME directory and account email the process was started with.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIngressTlsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ingress/tls';

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

  /// GetTLS returns the caller org's ACME intent together with the edge-wide TLS facts it lands in: which role this instance runs in, whether its listeners are bound, every host the ACME HostPolicy will issue a certificate for (the union across ALL orgs of TLS-marked routes and configured extraHosts, because one process holds one certificate cache), and the ACME directory and account email the process was started with.
  ///
  /// GetTLS returns the caller org's ACME intent together with the edge-wide TLS facts it lands in: which role this instance runs in, whether its listeners are bound, every host the ACME HostPolicy will issue a certificate for (the union across ALL orgs of TLS-marked routes and configured extraHosts, because one process holds one certificate cache), and the ACME directory and account email the process was started with.
  Future<IngressTLS?> getIngressTls() async {
    final response = await getIngressTlsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IngressTLS',) as IngressTLS;
    
    }
    return null;
  }

  /// Creates or replaces one edge transform and hot-applies it.
  ///
  /// Creates or replaces one edge transform and hot-applies it. POST mints an id when the body omits one; PUT takes the id from the URL, which wins over any id in the body. type must be one of redirectScheme, stripPrefix, addPrefix or headers, and stripPrefix/addPrefix each require their config key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Middleware] middleware (required):
  Future<Response> postIngressMiddlewaresWithHttpInfo(Middleware middleware,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ingress/middlewares';

    // ignore: prefer_final_locals
    Object? postBody = middleware;

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

  /// Creates or replaces one edge transform and hot-applies it.
  ///
  /// Creates or replaces one edge transform and hot-applies it. POST mints an id when the body omits one; PUT takes the id from the URL, which wins over any id in the body. type must be one of redirectScheme, stripPrefix, addPrefix or headers, and stripPrefix/addPrefix each require their config key.
  ///
  /// Parameters:
  ///
  /// * [Middleware] middleware (required):
  Future<Middleware?> postIngressMiddlewares(Middleware middleware,) async {
    final response = await postIngressMiddlewaresWithHttpInfo(middleware,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Middleware',) as Middleware;
    
    }
    return null;
  }

  /// Creates or replaces one routing rule and hot-applies the new table — there is no config file and no restart.
  ///
  /// Creates or replaces one routing rule and hot-applies the new table — there is no config file and no restart. POST mints an id when the body omits one; PUT takes the id from the URL, which wins over any id in the body. A route's host is a GLOBALLY unique DNS claim: a host another org's route already holds is refused 409, so no tenant can hijack another's hostname.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Route] route (required):
  Future<Response> postIngressRoutesWithHttpInfo(Route route,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ingress/routes';

    // ignore: prefer_final_locals
    Object? postBody = route;

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

  /// Creates or replaces one routing rule and hot-applies the new table — there is no config file and no restart.
  ///
  /// Creates or replaces one routing rule and hot-applies the new table — there is no config file and no restart. POST mints an id when the body omits one; PUT takes the id from the URL, which wins over any id in the body. A route's host is a GLOBALLY unique DNS claim: a host another org's route already holds is refused 409, so no tenant can hijack another's hostname.
  ///
  /// Parameters:
  ///
  /// * [Route] route (required):
  Future<Route?> postIngressRoutes(Route route,) async {
    final response = await postIngressRoutesWithHttpInfo(route,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Route',) as Route;
    
    }
    return null;
  }

  /// Creates or replaces one backend pool and hot-applies it.
  ///
  /// Creates or replaces one backend pool and hot-applies it. POST mints an id when the body omits one; PUT takes the id from the URL, which wins over any id in the body. A pool needs at least one backend and every backend URL must be http(s)://host[:port].
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Upstream] upstream (required):
  Future<Response> postIngressServicesWithHttpInfo(Upstream upstream,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ingress/services';

    // ignore: prefer_final_locals
    Object? postBody = upstream;

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

  /// Creates or replaces one backend pool and hot-applies it.
  ///
  /// Creates or replaces one backend pool and hot-applies it. POST mints an id when the body omits one; PUT takes the id from the URL, which wins over any id in the body. A pool needs at least one backend and every backend URL must be http(s)://host[:port].
  ///
  /// Parameters:
  ///
  /// * [Upstream] upstream (required):
  Future<Upstream?> postIngressServices(Upstream upstream,) async {
    final response = await postIngressServicesWithHttpInfo(upstream,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Upstream',) as Upstream;
    
    }
    return null;
  }

  /// Creates or replaces one edge transform and hot-applies it.
  ///
  /// Creates or replaces one edge transform and hot-applies it. POST mints an id when the body omits one; PUT takes the id from the URL, which wins over any id in the body. type must be one of redirectScheme, stripPrefix, addPrefix or headers, and stripPrefix/addPrefix each require their config key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID identifies the transform within the org: [A-Za-z0-9-_.], at most 128 chars. A create that omits it gets a generated one. Routes reference it by this id.
  ///
  /// * [Middleware] middleware (required):
  Future<Response> putIngressMiddlewaresByIdWithHttpInfo(String id, Middleware middleware,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ingress/middlewares/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = middleware;

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

  /// Creates or replaces one edge transform and hot-applies it.
  ///
  /// Creates or replaces one edge transform and hot-applies it. POST mints an id when the body omits one; PUT takes the id from the URL, which wins over any id in the body. type must be one of redirectScheme, stripPrefix, addPrefix or headers, and stripPrefix/addPrefix each require their config key.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID identifies the transform within the org: [A-Za-z0-9-_.], at most 128 chars. A create that omits it gets a generated one. Routes reference it by this id.
  ///
  /// * [Middleware] middleware (required):
  Future<Middleware?> putIngressMiddlewaresById(String id, Middleware middleware,) async {
    final response = await putIngressMiddlewaresByIdWithHttpInfo(id, middleware,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Middleware',) as Middleware;
    
    }
    return null;
  }

  /// Creates or replaces one routing rule and hot-applies the new table — there is no config file and no restart.
  ///
  /// Creates or replaces one routing rule and hot-applies the new table — there is no config file and no restart. POST mints an id when the body omits one; PUT takes the id from the URL, which wins over any id in the body. A route's host is a GLOBALLY unique DNS claim: a host another org's route already holds is refused 409, so no tenant can hijack another's hostname.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID identifies the route within the org: [A-Za-z0-9-_.], at most 128 chars. A create that omits it gets a generated one.
  ///
  /// * [Route] route (required):
  Future<Response> putIngressRoutesByIdWithHttpInfo(String id, Route route,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ingress/routes/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = route;

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

  /// Creates or replaces one routing rule and hot-applies the new table — there is no config file and no restart.
  ///
  /// Creates or replaces one routing rule and hot-applies the new table — there is no config file and no restart. POST mints an id when the body omits one; PUT takes the id from the URL, which wins over any id in the body. A route's host is a GLOBALLY unique DNS claim: a host another org's route already holds is refused 409, so no tenant can hijack another's hostname.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID identifies the route within the org: [A-Za-z0-9-_.], at most 128 chars. A create that omits it gets a generated one.
  ///
  /// * [Route] route (required):
  Future<Route?> putIngressRoutesById(String id, Route route,) async {
    final response = await putIngressRoutesByIdWithHttpInfo(id, route,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Route',) as Route;
    
    }
    return null;
  }

  /// Creates or replaces one backend pool and hot-applies it.
  ///
  /// Creates or replaces one backend pool and hot-applies it. POST mints an id when the body omits one; PUT takes the id from the URL, which wins over any id in the body. A pool needs at least one backend and every backend URL must be http(s)://host[:port].
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID identifies the pool within the org: [A-Za-z0-9-_.], at most 128 chars. A create that omits it gets a generated one. Routes reference it by this id.
  ///
  /// * [Upstream] upstream (required):
  Future<Response> putIngressServicesByIdWithHttpInfo(String id, Upstream upstream,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ingress/services/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = upstream;

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

  /// Creates or replaces one backend pool and hot-applies it.
  ///
  /// Creates or replaces one backend pool and hot-applies it. POST mints an id when the body omits one; PUT takes the id from the URL, which wins over any id in the body. A pool needs at least one backend and every backend URL must be http(s)://host[:port].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID identifies the pool within the org: [A-Za-z0-9-_.], at most 128 chars. A create that omits it gets a generated one. Routes reference it by this id.
  ///
  /// * [Upstream] upstream (required):
  Future<Upstream?> putIngressServicesById(String id, Upstream upstream,) async {
    final response = await putIngressServicesByIdWithHttpInfo(id, upstream,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Upstream',) as Upstream;
    
    }
    return null;
  }

  /// PutTLS replaces the caller org's ACME intent and hot-applies what can be hot-applied.
  ///
  /// PutTLS replaces the caller org's ACME intent and hot-applies what can be hot-applied. extraHosts are normalized and validated, then feed the ACME HostPolicy on the reload this op performs, alongside the per-route tls flags. acmeEmail and staging bind an ACME account for the lifetime of an edge process, so they only take effect when the edge (re)starts — the returned note says so.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TLSConfig] tLSConfig (required):
  Future<Response> putIngressTlsWithHttpInfo(TLSConfig tLSConfig,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ingress/tls';

    // ignore: prefer_final_locals
    Object? postBody = tLSConfig;

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

  /// PutTLS replaces the caller org's ACME intent and hot-applies what can be hot-applied.
  ///
  /// PutTLS replaces the caller org's ACME intent and hot-applies what can be hot-applied. extraHosts are normalized and validated, then feed the ACME HostPolicy on the reload this op performs, alongside the per-route tls flags. acmeEmail and staging bind an ACME account for the lifetime of an edge process, so they only take effect when the edge (re)starts — the returned note says so.
  ///
  /// Parameters:
  ///
  /// * [TLSConfig] tLSConfig (required):
  Future<TLSConfig?> putIngressTls(TLSConfig tLSConfig,) async {
    final response = await putIngressTlsWithHttpInfo(tLSConfig,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TLSConfig',) as TLSConfig;
    
    }
    return null;
  }
}
