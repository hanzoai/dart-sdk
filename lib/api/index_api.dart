//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class IndexApi {
  IndexApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Deletes an index and everything in it.
  ///
  /// Deletes an index and everything in it.  Drops the index and every document in it from the caller's own org, and answers the dialect's EnqueuedTask. This is the only way to retire an index; without it a mistaken uid is permanent. Deleting an index that is not there succeeds, so a cleanup pass is safe to re-run.  The 202 and its `enqueued` task are DIALECT COMPATIBILITY, not a promise of later work: the documents are already gone when this answers.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  Future<Response> deleteIndexIndexesByUidWithHttpInfo(String uid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/index/indexes/{uid}'
      .replaceAll('{uid}', uid);

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

  /// Deletes an index and everything in it.
  ///
  /// Deletes an index and everything in it.  Drops the index and every document in it from the caller's own org, and answers the dialect's EnqueuedTask. This is the only way to retire an index; without it a mistaken uid is permanent. Deleting an index that is not there succeeds, so a cleanup pass is safe to re-run.  The 202 and its `enqueued` task are DIALECT COMPATIBILITY, not a promise of later work: the documents are already gone when this answers.
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  Future<IndexEnqueued?> deleteIndexIndexesByUid(String uid,) async {
    final response = await deleteIndexIndexesByUidWithHttpInfo(uid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IndexEnqueued',) as IndexEnqueued;
    
    }
    return null;
  }

  /// Deletes one document by its primary key.
  ///
  /// Deletes one document by its primary key.  Removes the document from the caller's own org and answers the dialect's EnqueuedTask. Deleting a key that is not there succeeds, so a client reconciling its own corpus can delete without checking first.  The 202 and its `enqueued` task are DIALECT COMPATIBILITY, not a promise of later work: the document is already gone when this answers.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  ///
  /// * [String] id (required):
  Future<Response> deleteIndexIndexesByUidDocumentsByIdWithHttpInfo(String uid, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/index/indexes/{uid}/documents/{id}'
      .replaceAll('{uid}', uid)
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

  /// Deletes one document by its primary key.
  ///
  /// Deletes one document by its primary key.  Removes the document from the caller's own org and answers the dialect's EnqueuedTask. Deleting a key that is not there succeeds, so a client reconciling its own corpus can delete without checking first.  The 202 and its `enqueued` task are DIALECT COMPATIBILITY, not a promise of later work: the document is already gone when this answers.
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  ///
  /// * [String] id (required):
  Future<IndexEnqueued?> deleteIndexIndexesByUidDocumentsById(String uid, String id,) async {
    final response = await deleteIndexIndexesByUidDocumentsByIdWithHttpInfo(uid, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IndexEnqueued',) as IndexEnqueued;
    
    }
    return null;
  }

  /// Reports whether the search plane can serve.
  ///
  /// Reports whether the search plane can serve.  Answers the dialect's `{\"status\":\"available\"}` when the index store is readable. It FAILS CLOSED — an unreadable store answers 503 with `{\"status\":\"unavailable\"}` rather than an empty result set, because a Meilisearch client probes this before it will use a server at all and a cheerful 200 over a broken volume turns \"search is down\" into \"nothing matched\". It requires no principal and reads no tenant data.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIndexHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/index/health';

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

  /// Reports whether the search plane can serve.
  ///
  /// Reports whether the search plane can serve.  Answers the dialect's `{\"status\":\"available\"}` when the index store is readable. It FAILS CLOSED — an unreadable store answers 503 with `{\"status\":\"unavailable\"}` rather than an empty result set, because a Meilisearch client probes this before it will use a server at all and a cheerful 200 over a broken volume turns \"search is down\" into \"nothing matched\". It requires no principal and reads no tenant data.
  Future<IndexHealth?> getIndexHealth() async {
    final response = await getIndexHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IndexHealth',) as IndexHealth;
    
    }
    return null;
  }

  /// Lists the indexes your org holds.
  ///
  /// Lists the indexes your org holds.  Answers every index in the caller's own org with its primary key and timestamps. Without it an index whose uid a caller has forgotten is unreachable — there is no other way to enumerate what an org holds. The page is the whole set: an org's index count is small by construction, so `limit` and `total` both report it.  The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and two orgs may both hold an index named \"messages\" without either seeing the other. Without a validated principal the answer is 403 carrying the dialect's `invalid_api_key` body.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIndexIndexesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/index/indexes';

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

  /// Lists the indexes your org holds.
  ///
  /// Lists the indexes your org holds.  Answers every index in the caller's own org with its primary key and timestamps. Without it an index whose uid a caller has forgotten is unreachable — there is no other way to enumerate what an org holds. The page is the whole set: an org's index count is small by construction, so `limit` and `total` both report it.  The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and two orgs may both hold an index named \"messages\" without either seeing the other. Without a validated principal the answer is 403 carrying the dialect's `invalid_api_key` body.
  Future<IndexList?> getIndexIndexes() async {
    final response = await getIndexIndexesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IndexList',) as IndexList;
    
    }
    return null;
  }

  /// Reads one index's definition.
  ///
  /// Reads one index's definition.  Answers the index's uid, primary key and timestamps. An index this org does not hold answers 404 carrying the dialect's `index_not_found` — the code a Meilisearch client reads as permission to create it, which is why this is a refusal rather than an empty object.  The uid is scoped to the caller's own org, so another tenant's index is indistinguishable from one that never existed: this surface is not an existence oracle.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  Future<Response> getIndexIndexesByUidWithHttpInfo(String uid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/index/indexes/{uid}'
      .replaceAll('{uid}', uid);

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

  /// Reads one index's definition.
  ///
  /// Reads one index's definition.  Answers the index's uid, primary key and timestamps. An index this org does not hold answers 404 carrying the dialect's `index_not_found` — the code a Meilisearch client reads as permission to create it, which is why this is a refusal rather than an empty object.  The uid is scoped to the caller's own org, so another tenant's index is indistinguishable from one that never existed: this surface is not an existence oracle.
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  Future<IndexView?> getIndexIndexesByUid(String uid,) async {
    final response = await getIndexIndexesByUidWithHttpInfo(uid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IndexView',) as IndexView;
    
    }
    return null;
  }

  /// Pages through the documents in an index.
  ///
  /// Pages through the documents in an index.  Answers the org's stored documents in insertion order, whole, with the page's bounds and the index's total. It is the enumeration surface — search ranks by relevance and cannot walk a corpus — so a caller reconciling what it has written reads it here.  An index this org does not hold answers 404 carrying the dialect's `index_not_found`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  ///
  /// * [String] limit:
  ///
  /// * [String] offset:
  Future<Response> getIndexIndexesByUidDocumentsWithHttpInfo(String uid, { String? limit, String? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/index/indexes/{uid}/documents'
      .replaceAll('{uid}', uid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
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

  /// Pages through the documents in an index.
  ///
  /// Pages through the documents in an index.  Answers the org's stored documents in insertion order, whole, with the page's bounds and the index's total. It is the enumeration surface — search ranks by relevance and cannot walk a corpus — so a caller reconciling what it has written reads it here.  An index this org does not hold answers 404 carrying the dialect's `index_not_found`.
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  ///
  /// * [String] limit:
  ///
  /// * [String] offset:
  Future<IndexDocuments?> getIndexIndexesByUidDocuments(String uid, { String? limit, String? offset, }) async {
    final response = await getIndexIndexesByUidDocumentsWithHttpInfo(uid,  limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IndexDocuments',) as IndexDocuments;
    
    }
    return null;
  }

  /// Reads one document by its primary key.
  ///
  /// Reads one document by its primary key.  Answers the stored document exactly as it was written — this surface keeps documents whole rather than projecting them, so what comes back is what went in. A primary key this index does not hold answers 404 carrying the dialect's `document_not_found`; an index this org does not hold answers `index_not_found`, and the two are different facts a client acts on differently.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  ///
  /// * [String] id (required):
  Future<Response> getIndexIndexesByUidDocumentsByIdWithHttpInfo(String uid, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/index/indexes/{uid}/documents/{id}'
      .replaceAll('{uid}', uid)
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

  /// Reads one document by its primary key.
  ///
  /// Reads one document by its primary key.  Answers the stored document exactly as it was written — this surface keeps documents whole rather than projecting them, so what comes back is what went in. A primary key this index does not hold answers 404 carrying the dialect's `document_not_found`; an index this org does not hold answers `index_not_found`, and the two are different facts a client acts on differently.
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  ///
  /// * [String] id (required):
  Future<Object?> getIndexIndexesByUidDocumentsById(String uid, String id,) async {
    final response = await getIndexIndexesByUidDocumentsByIdWithHttpInfo(uid, id,);
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

  /// Reads an index's filterable attributes.
  ///
  /// Reads an index's filterable attributes.  Answers the settings subset this surface implements: the attributes a search `filter` may constrain. An index this org does not hold answers 404 carrying the dialect's `index_not_found`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  Future<Response> getIndexIndexesByUidSettingsWithHttpInfo(String uid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/index/indexes/{uid}/settings'
      .replaceAll('{uid}', uid);

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

  /// Reads an index's filterable attributes.
  ///
  /// Reads an index's filterable attributes.  Answers the settings subset this surface implements: the attributes a search `filter` may constrain. An index this org does not hold answers 404 carrying the dialect's `index_not_found`.
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  Future<IndexSettings?> getIndexIndexesByUidSettings(String uid,) async {
    final response = await getIndexIndexesByUidSettingsWithHttpInfo(uid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IndexSettings',) as IndexSettings;
    
    }
    return null;
  }

  /// Counts the documents in each of your indexes.
  ///
  /// Counts the documents in each of your indexes.  Reports every index the caller's own org holds with its document count, plus the org's total. `isIndexing` is always false because writes here are applied before their response — there is never a background pass to wait on.  The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, so this counts the caller's own documents and no other tenant's. Without a validated principal the answer is 403 carrying the dialect's `invalid_api_key` body.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIndexStatsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/index/stats';

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

  /// Counts the documents in each of your indexes.
  ///
  /// Counts the documents in each of your indexes.  Reports every index the caller's own org holds with its document count, plus the org's total. `isIndexing` is always false because writes here are applied before their response — there is never a background pass to wait on.  The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, so this counts the caller's own documents and no other tenant's. Without a validated principal the answer is 403 carrying the dialect's `invalid_api_key` body.
  Future<IndexStats?> getIndexStats() async {
    final response = await getIndexStatsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IndexStats',) as IndexStats;
    
    }
    return null;
  }

  /// Checks a write task, which has already finished.
  ///
  /// Checks a write task, which has already finished.  Always reports `succeeded`. Writes here are applied to SQLite before their EnqueuedTask is returned, so a client polling waitForTask resolves on its first call rather than waiting for a queue that was never there. The three timestamps are the same instant for the same reason.  It requires a validated principal but reads no tenant data: the task id it echoes was minted by this process and names nothing about any org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] uid (required):
  Future<Response> getIndexTasksByUidWithHttpInfo(int uid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/index/tasks/{uid}'
      .replaceAll('{uid}', uid.toString());

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

  /// Checks a write task, which has already finished.
  ///
  /// Checks a write task, which has already finished.  Always reports `succeeded`. Writes here are applied to SQLite before their EnqueuedTask is returned, so a client polling waitForTask resolves on its first call rather than waiting for a queue that was never there. The three timestamps are the same instant for the same reason.  It requires a validated principal but reads no tenant data: the task id it echoes was minted by this process and names nothing about any org.
  ///
  /// Parameters:
  ///
  /// * [int] uid (required):
  Future<IndexTask?> getIndexTasksByUid(int uid,) async {
    final response = await getIndexTasksByUidWithHttpInfo(uid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IndexTask',) as IndexTask;
    
    }
    return null;
  }

  /// Identifies the search implementation answering.
  ///
  /// Identifies the search implementation answering.  Reports the dialect's version shape with `commitSha` naming this implementation rather than a Meilisearch build, so a client that logs the version records which server answered instead of implying a release of software this is not. It requires no principal and reads no tenant data.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIndexVersionWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/index/version';

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

  /// Identifies the search implementation answering.
  ///
  /// Identifies the search implementation answering.  Reports the dialect's version shape with `commitSha` naming this implementation rather than a Meilisearch build, so a client that logs the version records which server answered instead of implying a release of software this is not. It requires no principal and reads no tenant data.
  Future<IndexVersion?> getIndexVersion() async {
    final response = await getIndexVersionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IndexVersion',) as IndexVersion;
    
    }
    return null;
  }

  /// Sets which attributes an index can be filtered on.
  ///
  /// Sets which attributes an index can be filtered on.  Replaces the whole filterable set. An attribute not listed here cannot be used in a search `filter`, so this is what makes a per-user or per-tag narrowing possible at all.  It CREATES the index when it is missing rather than answering 404, because a Meilisearch client configures settings on an index it has just asked for and a refusal there leaves the client with no index at all.  The 202 and its `enqueued` task are DIALECT COMPATIBILITY, not a promise of later work: the setting is already applied when this answers.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  ///
  /// * [IndexFilter] indexFilter (required):
  Future<Response> patchIndexIndexesByUidSettingsWithHttpInfo(String uid, IndexFilter indexFilter,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/index/indexes/{uid}/settings'
      .replaceAll('{uid}', uid);

    // ignore: prefer_final_locals
    Object? postBody = indexFilter;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Sets which attributes an index can be filtered on.
  ///
  /// Sets which attributes an index can be filtered on.  Replaces the whole filterable set. An attribute not listed here cannot be used in a search `filter`, so this is what makes a per-user or per-tag narrowing possible at all.  It CREATES the index when it is missing rather than answering 404, because a Meilisearch client configures settings on an index it has just asked for and a refusal there leaves the client with no index at all.  The 202 and its `enqueued` task are DIALECT COMPATIBILITY, not a promise of later work: the setting is already applied when this answers.
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  ///
  /// * [IndexFilter] indexFilter (required):
  Future<IndexEnqueued?> patchIndexIndexesByUidSettings(String uid, IndexFilter indexFilter,) async {
    final response = await patchIndexIndexesByUidSettingsWithHttpInfo(uid, indexFilter,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IndexEnqueued',) as IndexEnqueued;
    
    }
    return null;
  }

  /// Creates an index.
  ///
  /// Creates an index.  Registers a named index in the caller's own org and answers the dialect's EnqueuedTask. It is idempotent: creating an index that already exists returns the same receipt and changes nothing, which is what lets a client create on startup without checking first.  `primaryKey` is optional — the first write establishes one when it is omitted. An index is a ROW here rather than a table, so an unusual uid is stored verbatim instead of being sanitised into a schema name.  The 202 and its `enqueued` task are DIALECT COMPATIBILITY, not a promise of later work: the write is already applied when this answers. A client that polls waitForTask resolves immediately.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IndexNew] indexNew (required):
  Future<Response> postIndexIndexesWithHttpInfo(IndexNew indexNew,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/index/indexes';

    // ignore: prefer_final_locals
    Object? postBody = indexNew;

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

  /// Creates an index.
  ///
  /// Creates an index.  Registers a named index in the caller's own org and answers the dialect's EnqueuedTask. It is idempotent: creating an index that already exists returns the same receipt and changes nothing, which is what lets a client create on startup without checking first.  `primaryKey` is optional — the first write establishes one when it is omitted. An index is a ROW here rather than a table, so an unusual uid is stored verbatim instead of being sanitised into a schema name.  The 202 and its `enqueued` task are DIALECT COMPATIBILITY, not a promise of later work: the write is already applied when this answers. A client that polls waitForTask resolves immediately.
  ///
  /// Parameters:
  ///
  /// * [IndexNew] indexNew (required):
  Future<IndexEnqueued?> postIndexIndexes(IndexNew indexNew,) async {
    final response = await postIndexIndexesWithHttpInfo(indexNew,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IndexEnqueued',) as IndexEnqueued;
    
    }
    return null;
  }

  /// Add or replace documents in an index
  ///
  /// Writes documents into the caller's own index, keyed by the index's primary key: a document whose key is already present is REPLACED whole. The body is the dialect's own — an array of documents, or a single document — and each is stored verbatim, so a read gives back exactly what was written.  The index is CREATED when it is missing rather than refused, because a Meilisearch client writes before it configures.  The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying the dialect's `invalid_api_key` body.  The 202 and its `enqueued` task are DIALECT COMPATIBILITY, not a promise of later work: the documents are searchable when this answers, and a client that polls waitForTask resolves immediately.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  ///
  /// * [List<Object>] requestBody:
  Future<Response> postIndexIndexesByUidDocumentsWithHttpInfo(String uid, { List<Object>? requestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/index/indexes/{uid}/documents'
      .replaceAll('{uid}', uid);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Add or replace documents in an index
  ///
  /// Writes documents into the caller's own index, keyed by the index's primary key: a document whose key is already present is REPLACED whole. The body is the dialect's own — an array of documents, or a single document — and each is stored verbatim, so a read gives back exactly what was written.  The index is CREATED when it is missing rather than refused, because a Meilisearch client writes before it configures.  The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying the dialect's `invalid_api_key` body.  The 202 and its `enqueued` task are DIALECT COMPATIBILITY, not a promise of later work: the documents are searchable when this answers, and a client that polls waitForTask resolves immediately.
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  ///
  /// * [List<Object>] requestBody:
  Future<IndexEnqueued?> postIndexIndexesByUidDocuments(String uid, { List<Object>? requestBody, }) async {
    final response = await postIndexIndexesByUidDocumentsWithHttpInfo(uid,  requestBody: requestBody, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IndexEnqueued',) as IndexEnqueued;
    
    }
    return null;
  }

  /// Delete many documents by primary key in one call
  ///
  /// Removes every named document from the caller's own index. The body is the dialect's own: a bare array of primary keys, which may be strings or numbers. A key that is not there is not an error, so a client reconciling its own corpus can send one list rather than checking each key first.  The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header. Without a validated principal the answer is 403 carrying the dialect's `invalid_api_key` body.  The 202 and its `enqueued` task are DIALECT COMPATIBILITY, not a promise of later work: the documents are already gone when this answers.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  ///
  /// * [PostIndexIndexesByUidDocumentsDeleteBatchRequest] postIndexIndexesByUidDocumentsDeleteBatchRequest:
  Future<Response> postIndexIndexesByUidDocumentsDeleteBatchWithHttpInfo(String uid, { PostIndexIndexesByUidDocumentsDeleteBatchRequest? postIndexIndexesByUidDocumentsDeleteBatchRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/index/indexes/{uid}/documents/delete-batch'
      .replaceAll('{uid}', uid);

    // ignore: prefer_final_locals
    Object? postBody = postIndexIndexesByUidDocumentsDeleteBatchRequest;

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

  /// Delete many documents by primary key in one call
  ///
  /// Removes every named document from the caller's own index. The body is the dialect's own: a bare array of primary keys, which may be strings or numbers. A key that is not there is not an error, so a client reconciling its own corpus can send one list rather than checking each key first.  The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header. Without a validated principal the answer is 403 carrying the dialect's `invalid_api_key` body.  The 202 and its `enqueued` task are DIALECT COMPATIBILITY, not a promise of later work: the documents are already gone when this answers.
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  ///
  /// * [PostIndexIndexesByUidDocumentsDeleteBatchRequest] postIndexIndexesByUidDocumentsDeleteBatchRequest:
  Future<IndexEnqueued?> postIndexIndexesByUidDocumentsDeleteBatch(String uid, { PostIndexIndexesByUidDocumentsDeleteBatchRequest? postIndexIndexesByUidDocumentsDeleteBatchRequest, }) async {
    final response = await postIndexIndexesByUidDocumentsDeleteBatchWithHttpInfo(uid,  postIndexIndexesByUidDocumentsDeleteBatchRequest: postIndexIndexesByUidDocumentsDeleteBatchRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IndexEnqueued',) as IndexEnqueued;
    
    }
    return null;
  }

  /// Searches an index, forgiving typos.
  ///
  /// Searches an index, forgiving typos.  Ranks the org's documents in one index against `q` and answers the matching documents whole, most relevant first. A prefix matches, so a partial word finds the documents containing it, and `filter` narrows the result to documents whose filterable attributes match — which is how a caller scopes results to one end user within its own org.  `estimatedTotalHits` is the dialect's name for the count; every hit is materialised here, so for this page it is exact. An index this org does not hold answers 404 carrying the dialect's `index_not_found`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  ///
  /// * [IndexQuery] indexQuery (required):
  Future<Response> postIndexIndexesByUidSearchWithHttpInfo(String uid, IndexQuery indexQuery,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/index/indexes/{uid}/search'
      .replaceAll('{uid}', uid);

    // ignore: prefer_final_locals
    Object? postBody = indexQuery;

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

  /// Searches an index, forgiving typos.
  ///
  /// Searches an index, forgiving typos.  Ranks the org's documents in one index against `q` and answers the matching documents whole, most relevant first. A prefix matches, so a partial word finds the documents containing it, and `filter` narrows the result to documents whose filterable attributes match — which is how a caller scopes results to one end user within its own org.  `estimatedTotalHits` is the dialect's name for the count; every hit is materialised here, so for this page it is exact. An index this org does not hold answers 404 carrying the dialect's `index_not_found`.
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  ///
  /// * [IndexQuery] indexQuery (required):
  Future<IndexHits?> postIndexIndexesByUidSearch(String uid, IndexQuery indexQuery,) async {
    final response = await postIndexIndexesByUidSearchWithHttpInfo(uid, indexQuery,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IndexHits',) as IndexHits;
    
    }
    return null;
  }

  /// Add or update documents in an index
  ///
  /// The dialect's update spelling of the write above, and the same act: an upsert keyed by the index's primary key. The JS client's addDocuments and updateDocuments both reduce to this for whole documents, so both spellings are served and both behave identically.  The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header. Without a validated principal the answer is 403 carrying the dialect's `invalid_api_key` body.  The 202 and its `enqueued` task are DIALECT COMPATIBILITY, not a promise of later work: the write is already applied when this answers.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  ///
  /// * [List<Object>] requestBody:
  Future<Response> putIndexIndexesByUidDocumentsWithHttpInfo(String uid, { List<Object>? requestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/index/indexes/{uid}/documents'
      .replaceAll('{uid}', uid);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Add or update documents in an index
  ///
  /// The dialect's update spelling of the write above, and the same act: an upsert keyed by the index's primary key. The JS client's addDocuments and updateDocuments both reduce to this for whole documents, so both spellings are served and both behave identically.  The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header. Without a validated principal the answer is 403 carrying the dialect's `invalid_api_key` body.  The 202 and its `enqueued` task are DIALECT COMPATIBILITY, not a promise of later work: the write is already applied when this answers.
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  ///
  /// * [List<Object>] requestBody:
  Future<IndexEnqueued?> putIndexIndexesByUidDocuments(String uid, { List<Object>? requestBody, }) async {
    final response = await putIndexIndexesByUidDocumentsWithHttpInfo(uid,  requestBody: requestBody, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IndexEnqueued',) as IndexEnqueued;
    
    }
    return null;
  }
}
