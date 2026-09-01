//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class FrameworkApi {
  FrameworkApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Removes one document, after its on_trash hooks agree.
  ///
  /// Removes one document, after its on_trash hooks agree. A SUBMITTED document cannot be deleted — cancel it first. Answers 204.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] doctype (required):
  ///   DocType is the document's DocType, by ADDRESS — \"module.name\", from the path.
  ///
  /// * [String] name (required):
  ///   Name is the document's name — its key within the DocType — from the path. A name containing a space arrives percent-encoded and is decoded before it is matched against the stored one.
  Future<Response> deleteFrameworkByDoctypeByNameWithHttpInfo(String doctype, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/framework/{doctype}/{name}'
      .replaceAll('{doctype}', doctype)
      .replaceAll('{name}', name);

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

  /// Removes one document, after its on_trash hooks agree.
  ///
  /// Removes one document, after its on_trash hooks agree. A SUBMITTED document cannot be deleted — cancel it first. Answers 204.
  ///
  /// Parameters:
  ///
  /// * [String] doctype (required):
  ///   DocType is the document's DocType, by ADDRESS — \"module.name\", from the path.
  ///
  /// * [String] name (required):
  ///   Name is the document's name — its key within the DocType — from the path. A name containing a space arrives percent-encoded and is decoded before it is matched against the stored one.
  Future<void> deleteFrameworkByDoctypeByName(String doctype, String name,) async {
    final response = await deleteFrameworkByDoctypeByNameWithHttpInfo(doctype, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes a DocType and every document stored under it.
  ///
  /// Removes a DocType and every document stored under it. The definition and its data go together — a document with no schema can be neither validated nor read back — so there is no undo. Manager-only. Answers 204.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the DocType's ADDRESS — \"module.name\", e.g. \"kb.page\". A name containing a space (\"erp.Sales Invoice\") arrives percent-encoded and is decoded before it is matched against the stored one.
  Future<Response> deleteFrameworkDoctypesByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/framework/doctypes/{name}'
      .replaceAll('{name}', name);

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

  /// Removes a DocType and every document stored under it.
  ///
  /// Removes a DocType and every document stored under it. The definition and its data go together — a document with no schema can be neither validated nor read back — so there is no undo. Manager-only. Answers 204.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the DocType's ADDRESS — \"module.name\", e.g. \"kb.page\". A name containing a space (\"erp.Sales Invoice\") arrives percent-encoded and is decoded before it is matched against the stored one.
  Future<void> deleteFrameworkDoctypesByName(String name,) async {
    final response = await deleteFrameworkDoctypesByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the caller org's documents of one DocType, filtered, ordered and projected by the query.
  ///
  /// Returns the caller org's documents of one DocType, filtered, ordered and projected by the query. The DocType is resolved FIRST — through the same permission gate the list itself uses — because the query is validated against its schema: a filter, sort or field name the DocType does not declare is refused rather than reaching the store.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] doctype (required):
  ///   DocType is the DocType to list, by ADDRESS — \"module.name\", from the path.
  ///
  /// * [String] filters:
  ///   Filters is a JSON object of equality matches, e.g. {\"priority\":\"High\"}. Every key must be a field the DocType declares (or the managed name / docstatus); an undeclared one is refused rather than silently ignored.
  ///
  /// * [String] fields:
  ///   Fields projects the response to a subset — a JSON array [\"a\",\"b\"] or a comma list \"a,b\". The envelope keys are always returned.
  ///
  /// * [String] orderBy:
  ///   OrderBy is \"<field> [asc|desc]\". Empty means most-recently-updated first.
  ///
  /// * [String] limit:
  ///   Limit caps the rows returned. Anything that is not a positive integer leaves the engine's default in place.
  Future<Response> getFrameworkByDoctypeWithHttpInfo(String doctype, { String? filters, String? fields, String? orderBy, String? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/framework/{doctype}'
      .replaceAll('{doctype}', doctype);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }
    if (fields != null) {
      queryParams.addAll(_queryParams('', 'fields', fields));
    }
    if (orderBy != null) {
      queryParams.addAll(_queryParams('', 'order_by', orderBy));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// Returns the caller org's documents of one DocType, filtered, ordered and projected by the query.
  ///
  /// Returns the caller org's documents of one DocType, filtered, ordered and projected by the query. The DocType is resolved FIRST — through the same permission gate the list itself uses — because the query is validated against its schema: a filter, sort or field name the DocType does not declare is refused rather than reaching the store.
  ///
  /// Parameters:
  ///
  /// * [String] doctype (required):
  ///   DocType is the DocType to list, by ADDRESS — \"module.name\", from the path.
  ///
  /// * [String] filters:
  ///   Filters is a JSON object of equality matches, e.g. {\"priority\":\"High\"}. Every key must be a field the DocType declares (or the managed name / docstatus); an undeclared one is refused rather than silently ignored.
  ///
  /// * [String] fields:
  ///   Fields projects the response to a subset — a JSON array [\"a\",\"b\"] or a comma list \"a,b\". The envelope keys are always returned.
  ///
  /// * [String] orderBy:
  ///   OrderBy is \"<field> [asc|desc]\". Empty means most-recently-updated first.
  ///
  /// * [String] limit:
  ///   Limit caps the rows returned. Anything that is not a positive integer leaves the engine's default in place.
  Future<DocumentList?> getFrameworkByDoctype(String doctype, { String? filters, String? fields, String? orderBy, String? limit, }) async {
    final response = await getFrameworkByDoctypeWithHttpInfo(doctype,  filters: filters, fields: fields, orderBy: orderBy, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocumentList',) as DocumentList;
    
    }
    return null;
  }

  /// Returns one document by name, with Password fields redacted.
  ///
  /// Returns one document by name, with Password fields redacted.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] doctype (required):
  ///   DocType is the document's DocType, by ADDRESS — \"module.name\", from the path.
  ///
  /// * [String] name (required):
  ///   Name is the document's name — its key within the DocType — from the path. A name containing a space arrives percent-encoded and is decoded before it is matched against the stored one.
  Future<Response> getFrameworkByDoctypeByNameWithHttpInfo(String doctype, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/framework/{doctype}/{name}'
      .replaceAll('{doctype}', doctype)
      .replaceAll('{name}', name);

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

  /// Returns one document by name, with Password fields redacted.
  ///
  /// Returns one document by name, with Password fields redacted.
  ///
  /// Parameters:
  ///
  /// * [String] doctype (required):
  ///   DocType is the document's DocType, by ADDRESS — \"module.name\", from the path.
  ///
  /// * [String] name (required):
  ///   Name is the document's name — its key within the DocType — from the path. A name containing a space arrives percent-encoded and is decoded before it is matched against the stored one.
  Future<Map<String, Object>?> getFrameworkByDoctypeByName(String doctype, String name,) async {
    final response = await getFrameworkByDoctypeByNameWithHttpInfo(doctype, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Returns every DocType defined in the caller's org.
  ///
  /// Returns every DocType defined in the caller's org. Another tenant's definitions are never included: the org is part of the store key.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getFrameworkDoctypesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/framework/doctypes';

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

  /// Returns every DocType defined in the caller's org.
  ///
  /// Returns every DocType defined in the caller's org. Another tenant's definitions are never included: the org is part of the store key.
  Future<DocTypeList?> getFrameworkDoctypes() async {
    final response = await getFrameworkDoctypesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocTypeList',) as DocTypeList;
    
    }
    return null;
  }

  /// Returns one DocType definition — its fields, naming rule, permissions and lifecycle flags.
  ///
  /// Returns one DocType definition — its fields, naming rule, permissions and lifecycle flags. Scoped to the caller's org, so another tenant's DocType of the same name is simply not found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the DocType's ADDRESS — \"module.name\", e.g. \"kb.page\". A name containing a space (\"erp.Sales Invoice\") arrives percent-encoded and is decoded before it is matched against the stored one.
  Future<Response> getFrameworkDoctypesByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/framework/doctypes/{name}'
      .replaceAll('{name}', name);

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

  /// Returns one DocType definition — its fields, naming rule, permissions and lifecycle flags.
  ///
  /// Returns one DocType definition — its fields, naming rule, permissions and lifecycle flags. Scoped to the caller's org, so another tenant's DocType of the same name is simply not found.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the DocType's ADDRESS — \"module.name\", e.g. \"kb.page\". A name containing a space (\"erp.Sales Invoice\") arrives percent-encoded and is decoded before it is matched against the stored one.
  Future<DocType?> getFrameworkDoctypesByName(String name,) async {
    final response = await getFrameworkDoctypesByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocType',) as DocType;
    
    }
    return null;
  }

  /// Returns every app lane compiled into this deployment and the DocTypes each one installs.
  ///
  /// Returns every app lane compiled into this deployment and the DocTypes each one installs. It describes the BINARY, not the org: what a given org has actually installed is the per-module state below.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getFrameworkModulesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/framework/modules';

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

  /// Returns every app lane compiled into this deployment and the DocTypes each one installs.
  ///
  /// Returns every app lane compiled into this deployment and the DocTypes each one installs. It describes the BINARY, not the org: what a given org has actually installed is the per-module state below.
  Future<ModuleList?> getFrameworkModules() async {
    final response = await getFrameworkModulesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModuleList',) as ModuleList;
    
    }
    return null;
  }

  /// Returns one app lane's install state for the caller's org: the DocTypes the lane declares, and which of them already exist in the org.
  ///
  /// Returns one app lane's install state for the caller's org: the DocTypes the lane declares, and which of them already exist in the org. That is the honest \"set up\" versus \"installed\" answer a console renders.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] module (required):
  ///   Module is the lane's registered name (\"cms\", \"erp\"), from the path.
  Future<Response> getFrameworkModulesByModuleWithHttpInfo(String module,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/framework/modules/{module}'
      .replaceAll('{module}', module);

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

  /// Returns one app lane's install state for the caller's org: the DocTypes the lane declares, and which of them already exist in the org.
  ///
  /// Returns one app lane's install state for the caller's org: the DocTypes the lane declares, and which of them already exist in the org. That is the honest \"set up\" versus \"installed\" answer a console renders.
  ///
  /// Parameters:
  ///
  /// * [String] module (required):
  ///   Module is the lane's registered name (\"cms\", \"erp\"), from the path.
  Future<ModuleState?> getFrameworkModulesByModule(String module,) async {
    final response = await getFrameworkModulesByModuleWithHttpInfo(module,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModuleState',) as ModuleState;
    
    }
    return null;
  }

  /// Reports how much of the DocType surface the caller's org uses: how many DocTypes it has defined, and how many documents exist across them.
  ///
  /// Reports how much of the DocType surface the caller's org uses: how many DocTypes it has defined, and how many documents exist across them.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getFrameworkSummaryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/framework/summary';

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

  /// Reports how much of the DocType surface the caller's org uses: how many DocTypes it has defined, and how many documents exist across them.
  ///
  /// Reports how much of the DocType surface the caller's org uses: how many DocTypes it has defined, and how many documents exist across them.
  Future<SummaryView?> getFrameworkSummary() async {
    final response = await getFrameworkSummaryWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SummaryView',) as SummaryView;
    
    }
    return null;
  }

  /// Create one document of a DocType, from that DocType's own fields.
  ///
  /// The body is the DOCUMENT'S field data: a flat JSON object whose properties are the fieldnames the DocType declares, not a fixed envelope. That is why this operation publishes no request schema — the shape is metadata the DocType defines at run time, and no Go struct both accepts it verbatim and describes it, so nothing is asserted rather than something false.  The engine validates and coerces every field against the DocType, runs the before_insert and before_save hooks (either may reject the write), stores the document, then runs the after hooks. It answers 201 with the stored document: the field data plus the managed envelope — `name`, `doctype`, `docstatus`, `createdAt`, `updatedAt`. A Password field comes back as a fixed redaction marker and is dropped when empty; its stored value is never returned by this or any other read on this surface.  `name` in the body is the REQUESTED DOCUMENT NAME, not a data field. A DocType with an autoname rule names the document itself and ignores it; a prompt-named DocType takes it. This collision is also why the two path segments cannot be folded into the body, and so why the route stays untyped.  Scoped to the org of the validated principal, and the engine's own permission calculus decides the rest: the caller needs create rights on this DocType through a role it holds, or a platform admin bit. A caller with no validated principal reaches the engine as the zero Caller and is refused before any store is opened — a forged org header alone buys nothing.  A DocType declared Single has exactly ONE document per org, so this writes that one instance instead of adding a row. The body is size-bounded by the engine, the same bound on every host.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] doctype (required):
  Future<Response> postFrameworkByDoctypeWithHttpInfo(String doctype,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/framework/{doctype}'
      .replaceAll('{doctype}', doctype);

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

  /// Create one document of a DocType, from that DocType's own fields.
  ///
  /// The body is the DOCUMENT'S field data: a flat JSON object whose properties are the fieldnames the DocType declares, not a fixed envelope. That is why this operation publishes no request schema — the shape is metadata the DocType defines at run time, and no Go struct both accepts it verbatim and describes it, so nothing is asserted rather than something false.  The engine validates and coerces every field against the DocType, runs the before_insert and before_save hooks (either may reject the write), stores the document, then runs the after hooks. It answers 201 with the stored document: the field data plus the managed envelope — `name`, `doctype`, `docstatus`, `createdAt`, `updatedAt`. A Password field comes back as a fixed redaction marker and is dropped when empty; its stored value is never returned by this or any other read on this surface.  `name` in the body is the REQUESTED DOCUMENT NAME, not a data field. A DocType with an autoname rule names the document itself and ignores it; a prompt-named DocType takes it. This collision is also why the two path segments cannot be folded into the body, and so why the route stays untyped.  Scoped to the org of the validated principal, and the engine's own permission calculus decides the rest: the caller needs create rights on this DocType through a role it holds, or a platform admin bit. A caller with no validated principal reaches the engine as the zero Caller and is refused before any store is opened — a forged org header alone buys nothing.  A DocType declared Single has exactly ONE document per org, so this writes that one instance instead of adding a row. The body is size-bounded by the engine, the same bound on every host.
  ///
  /// Parameters:
  ///
  /// * [String] doctype (required):
  Future<void> postFrameworkByDoctype(String doctype,) async {
    final response = await postFrameworkByDoctypeWithHttpInfo(doctype,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Moves a submitted document to cancelled (docstatus 1 → 2) after its on_cancel hooks agree.
  ///
  /// Moves a submitted document to cancelled (docstatus 1 → 2) after its on_cancel hooks agree. Cancelling is terminal — a cancelled document cannot be re-submitted — but it CAN then be deleted.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] doctype (required):
  ///   DocType is the document's DocType, by ADDRESS — \"module.name\", from the path.
  ///
  /// * [String] name (required):
  ///   Name is the document's name — its key within the DocType — from the path. A name containing a space arrives percent-encoded and is decoded before it is matched against the stored one.
  Future<Response> postFrameworkByDoctypeByNameCancelWithHttpInfo(String doctype, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/framework/{doctype}/{name}/cancel'
      .replaceAll('{doctype}', doctype)
      .replaceAll('{name}', name);

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

  /// Moves a submitted document to cancelled (docstatus 1 → 2) after its on_cancel hooks agree.
  ///
  /// Moves a submitted document to cancelled (docstatus 1 → 2) after its on_cancel hooks agree. Cancelling is terminal — a cancelled document cannot be re-submitted — but it CAN then be deleted.
  ///
  /// Parameters:
  ///
  /// * [String] doctype (required):
  ///   DocType is the document's DocType, by ADDRESS — \"module.name\", from the path.
  ///
  /// * [String] name (required):
  ///   Name is the document's name — its key within the DocType — from the path. A name containing a space arrives percent-encoded and is decoded before it is matched against the stored one.
  Future<Map<String, Object>?> postFrameworkByDoctypeByNameCancel(String doctype, String name,) async {
    final response = await postFrameworkByDoctypeByNameCancelWithHttpInfo(doctype, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Moves a draft to submitted (docstatus 0 → 1) after its on_submit hooks agree.
  ///
  /// Moves a draft to submitted (docstatus 0 → 1) after its on_submit hooks agree. A submitted document is IMMUTABLE: further writes and deletes are refused until it is cancelled. Only a submittable DocType has this lifecycle; any other docstatus is an illegal transition.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] doctype (required):
  ///   DocType is the document's DocType, by ADDRESS — \"module.name\", from the path.
  ///
  /// * [String] name (required):
  ///   Name is the document's name — its key within the DocType — from the path. A name containing a space arrives percent-encoded and is decoded before it is matched against the stored one.
  Future<Response> postFrameworkByDoctypeByNameSubmitWithHttpInfo(String doctype, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/framework/{doctype}/{name}/submit'
      .replaceAll('{doctype}', doctype)
      .replaceAll('{name}', name);

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

  /// Moves a draft to submitted (docstatus 0 → 1) after its on_submit hooks agree.
  ///
  /// Moves a draft to submitted (docstatus 0 → 1) after its on_submit hooks agree. A submitted document is IMMUTABLE: further writes and deletes are refused until it is cancelled. Only a submittable DocType has this lifecycle; any other docstatus is an illegal transition.
  ///
  /// Parameters:
  ///
  /// * [String] doctype (required):
  ///   DocType is the document's DocType, by ADDRESS — \"module.name\", from the path.
  ///
  /// * [String] name (required):
  ///   Name is the document's name — its key within the DocType — from the path. A name containing a space arrives percent-encoded and is decoded before it is matched against the stored one.
  Future<Map<String, Object>?> postFrameworkByDoctypeByNameSubmit(String doctype, String name,) async {
    final response = await postFrameworkByDoctypeByNameSubmitWithHttpInfo(doctype, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Defines a DocType in the caller's org: the metadata that gives a document surface its fields, its naming rule, whether it has a submit/cancel lifecycle, and which role may do what to it.
  ///
  /// Defines a DocType in the caller's org: the metadata that gives a document surface its fields, its naming rule, whether it has a submit/cancel lifecycle, and which role may do what to it. Manager-only — on a fresh org the first caller to administer it is seeded as its System Manager, after which only a System Manager (or a platform admin) may define. Answers 201.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DocType] docType (required):
  Future<Response> postFrameworkDoctypesWithHttpInfo(DocType docType,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/framework/doctypes';

    // ignore: prefer_final_locals
    Object? postBody = docType;

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

  /// Defines a DocType in the caller's org: the metadata that gives a document surface its fields, its naming rule, whether it has a submit/cancel lifecycle, and which role may do what to it.
  ///
  /// Defines a DocType in the caller's org: the metadata that gives a document surface its fields, its naming rule, whether it has a submit/cancel lifecycle, and which role may do what to it. Manager-only — on a fresh org the first caller to administer it is seeded as its System Manager, after which only a System Manager (or a platform admin) may define. Answers 201.
  ///
  /// Parameters:
  ///
  /// * [DocType] docType (required):
  Future<DocType?> postFrameworkDoctypes(DocType docType,) async {
    final response = await postFrameworkDoctypesWithHttpInfo(docType,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocType',) as DocType;
    
    }
    return null;
  }

  /// Creates an app lane's DocTypes in the caller's org.
  ///
  /// Creates an app lane's DocTypes in the caller's org. Idempotent and create-if-absent: a DocType the org already has is reported as existing and never replaced, so re-installing cannot clobber a definition the org has since edited. Manager-only.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] module (required):
  ///   Module is the lane's registered name (\"cms\", \"erp\"), from the path.
  Future<Response> postFrameworkModulesByModuleInstallWithHttpInfo(String module,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/framework/modules/{module}/install'
      .replaceAll('{module}', module);

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

  /// Creates an app lane's DocTypes in the caller's org.
  ///
  /// Creates an app lane's DocTypes in the caller's org. Idempotent and create-if-absent: a DocType the org already has is reported as existing and never replaced, so re-installing cannot clobber a definition the org has since edited. Manager-only.
  ///
  /// Parameters:
  ///
  /// * [String] module (required):
  ///   Module is the lane's registered name (\"cms\", \"erp\"), from the path.
  Future<Install?> postFrameworkModulesByModuleInstall(String module,) async {
    final response = await postFrameworkModulesByModuleInstallWithHttpInfo(module,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Install',) as Install;
    
    }
    return null;
  }

  /// Replace a draft document's field data wholesale.
  ///
  /// PUT semantics: the stored field data BECOMES the body, so a field the body omits is not left at its previous value. The body is the document's own field data — the same metadata-defined open object the create takes, and the same reason this operation publishes no request schema.  Only a DRAFT can be edited. A document that has been submitted or cancelled is immutable and the write is refused as a conflict, so the submit lifecycle cannot be bypassed by a plain update — cancel it first, and note that a cancelled document can be deleted but never re-submitted or re-edited. The engine validates the new data against the DocType, runs before_save (which may reject), writes, then runs the after hooks, and answers 200 with the stored document plus its managed envelope, Password fields redacted.  The document name in the path is percent-decoded before it is matched, so a name containing a space is addressed as it is stored. An unknown DocType or document is not found, and the same answer covers a document that exists in another tenant: the org comes from the validated principal and is part of the store key, so a caller cannot learn that another org's document exists. Write rights on the DocType are required, decided by the engine's permission calculus.  For a Single DocType the path name is ignored — there is one instance per org and this writes it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] doctype (required):
  ///
  /// * [String] name (required):
  Future<Response> putFrameworkByDoctypeByNameWithHttpInfo(String doctype, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/framework/{doctype}/{name}'
      .replaceAll('{doctype}', doctype)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Replace a draft document's field data wholesale.
  ///
  /// PUT semantics: the stored field data BECOMES the body, so a field the body omits is not left at its previous value. The body is the document's own field data — the same metadata-defined open object the create takes, and the same reason this operation publishes no request schema.  Only a DRAFT can be edited. A document that has been submitted or cancelled is immutable and the write is refused as a conflict, so the submit lifecycle cannot be bypassed by a plain update — cancel it first, and note that a cancelled document can be deleted but never re-submitted or re-edited. The engine validates the new data against the DocType, runs before_save (which may reject), writes, then runs the after hooks, and answers 200 with the stored document plus its managed envelope, Password fields redacted.  The document name in the path is percent-decoded before it is matched, so a name containing a space is addressed as it is stored. An unknown DocType or document is not found, and the same answer covers a document that exists in another tenant: the org comes from the validated principal and is part of the store key, so a caller cannot learn that another org's document exists. Write rights on the DocType are required, decided by the engine's permission calculus.  For a Single DocType the path name is ignored — there is one instance per org and this writes it.
  ///
  /// Parameters:
  ///
  /// * [String] doctype (required):
  ///
  /// * [String] name (required):
  Future<void> putFrameworkByDoctypeByName(String doctype, String name,) async {
    final response = await putFrameworkByDoctypeByNameWithHttpInfo(doctype, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replaces a DocType definition wholesale (PUT semantics): the stored definition becomes the body.
  ///
  /// Replaces a DocType definition wholesale (PUT semantics): the stored definition becomes the body. The name in the URL is authoritative over the body's, and documents already stored under the DocType are left intact. Manager-only.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///
  /// * [DocType] docType (required):
  Future<Response> putFrameworkDoctypesByNameWithHttpInfo(String name, DocType docType,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/framework/doctypes/{name}'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = docType;

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

  /// Replaces a DocType definition wholesale (PUT semantics): the stored definition becomes the body.
  ///
  /// Replaces a DocType definition wholesale (PUT semantics): the stored definition becomes the body. The name in the URL is authoritative over the body's, and documents already stored under the DocType are left intact. Manager-only.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///
  /// * [DocType] docType (required):
  Future<DocType?> putFrameworkDoctypesByName(String name, DocType docType,) async {
    final response = await putFrameworkDoctypesByNameWithHttpInfo(name, docType,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocType',) as DocType;
    
    }
    return null;
  }
}
