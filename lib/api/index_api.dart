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

  /// Delete an index and everything in it
  ///
  /// Drops one index in the caller's org together with all of its documents. This is the only way to retire an index; without it a mistaken uid would be permanent. It is idempotent — dropping an index that is not there still succeeds. The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and every query filters on it, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying Meilisearch's `invalid_api_key` body. Errors use Meilisearch's {message, code, type, link} shape rather than cloud's, because that `code` is a wire contract a Meilisearch client branches on.  The 202 and its `enqueued` task are DIALECT COMPATIBILITY, not a promise of later work: the write is already applied when this answers, and the task it names is already complete. A client that polls waitForTask resolves immediately rather than waiting, and a client that does not poll has still had its write committed.
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

  /// Delete an index and everything in it
  ///
  /// Drops one index in the caller's org together with all of its documents. This is the only way to retire an index; without it a mistaken uid would be permanent. It is idempotent — dropping an index that is not there still succeeds. The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and every query filters on it, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying Meilisearch's `invalid_api_key` body. Errors use Meilisearch's {message, code, type, link} shape rather than cloud's, because that `code` is a wire contract a Meilisearch client branches on.  The 202 and its `enqueued` task are DIALECT COMPATIBILITY, not a promise of later work: the write is already applied when this answers, and the task it names is already complete. A client that polls waitForTask resolves immediately rather than waiting, and a client that does not poll has still had its write committed.
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  Future<void> deleteIndexIndexesByUid(String uid,) async {
    final response = await deleteIndexIndexesByUidWithHttpInfo(uid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete one document by its primary key
  ///
  /// Removes one document from an index. It is IDEMPOTENT: deleting a key that is not there succeeds rather than 404, so a retry after a lost response is safe. The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and every query filters on it, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying Meilisearch's `invalid_api_key` body. Errors use Meilisearch's {message, code, type, link} shape rather than cloud's, because that `code` is a wire contract a Meilisearch client branches on.  The 202 and its `enqueued` task are DIALECT COMPATIBILITY, not a promise of later work: the write is already applied when this answers, and the task it names is already complete. A client that polls waitForTask resolves immediately rather than waiting, and a client that does not poll has still had its write committed.
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

  /// Delete one document by its primary key
  ///
  /// Removes one document from an index. It is IDEMPOTENT: deleting a key that is not there succeeds rather than 404, so a retry after a lost response is safe. The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and every query filters on it, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying Meilisearch's `invalid_api_key` body. Errors use Meilisearch's {message, code, type, link} shape rather than cloud's, because that `code` is a wire contract a Meilisearch client branches on.  The 202 and its `enqueued` task are DIALECT COMPATIBILITY, not a promise of later work: the write is already applied when this answers, and the task it names is already complete. A client that polls waitForTask resolves immediately rather than waiting, and a client that does not poll has still had its write committed.
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  ///
  /// * [String] id (required):
  Future<void> deleteIndexIndexesByUidDocumentsById(String uid, String id,) async {
    final response = await deleteIndexIndexesByUidDocumentsByIdWithHttpInfo(uid, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Report whether the search plane can serve
  ///
  /// Answers Meilisearch's `{\"status\":\"available\"}` when the index store is readable. It FAILS CLOSED — an unreadable store answers 503 and `unavailable` — so a replica whose volume has gone bad stops taking traffic instead of answering every search with nothing found. It touches no tenant data and needs no credential.
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

  /// Report whether the search plane can serve
  ///
  /// Answers Meilisearch's `{\"status\":\"available\"}` when the index store is readable. It FAILS CLOSED — an unreadable store answers 503 and `unavailable` — so a replica whose volume has gone bad stops taking traffic instead of answering every search with nothing found. It touches no tenant data and needs no credential.
  Future<void> getIndexHealth() async {
    final response = await getIndexHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List the indexes your org holds
  ///
  /// Answers every index in the caller's org with its primary key and timestamps. It is the only way to enumerate what an org holds — without it an index whose uid a caller has forgotten is unreachable. The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and every query filters on it, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying Meilisearch's `invalid_api_key` body. Errors use Meilisearch's {message, code, type, link} shape rather than cloud's, because that `code` is a wire contract a Meilisearch client branches on.
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

  /// List the indexes your org holds
  ///
  /// Answers every index in the caller's org with its primary key and timestamps. It is the only way to enumerate what an org holds — without it an index whose uid a caller has forgotten is unreachable. The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and every query filters on it, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying Meilisearch's `invalid_api_key` body. Errors use Meilisearch's {message, code, type, link} shape rather than cloud's, because that `code` is a wire contract a Meilisearch client branches on.
  Future<void> getIndexIndexes() async {
    final response = await getIndexIndexesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Read one index's definition
  ///
  /// Answers a single index's uid, primary key and timestamps. An index the caller's org does not hold is 404 `index_not_found` — which is the same answer another org's index gives, since the org is a bound predicate on the read. The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and every query filters on it, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying Meilisearch's `invalid_api_key` body. Errors use Meilisearch's {message, code, type, link} shape rather than cloud's, because that `code` is a wire contract a Meilisearch client branches on.
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

  /// Read one index's definition
  ///
  /// Answers a single index's uid, primary key and timestamps. An index the caller's org does not hold is 404 `index_not_found` — which is the same answer another org's index gives, since the org is a bound predicate on the read. The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and every query filters on it, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying Meilisearch's `invalid_api_key` body. Errors use Meilisearch's {message, code, type, link} shape rather than cloud's, because that `code` is a wire contract a Meilisearch client branches on.
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  Future<void> getIndexIndexesByUid(String uid,) async {
    final response = await getIndexIndexesByUidWithHttpInfo(uid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Page through the documents in an index
  ///
  /// Answers the documents in one index with a total count. `limit` defaults to 20 and is capped at 1000, `offset` pages, and the response echoes both back so a pager knows what it actually got. An index the caller's org does not hold is 404 `index_not_found`. The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and every query filters on it, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying Meilisearch's `invalid_api_key` body. Errors use Meilisearch's {message, code, type, link} shape rather than cloud's, because that `code` is a wire contract a Meilisearch client branches on.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  Future<Response> getIndexIndexesByUidDocumentsWithHttpInfo(String uid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/index/indexes/{uid}/documents'
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

  /// Page through the documents in an index
  ///
  /// Answers the documents in one index with a total count. `limit` defaults to 20 and is capped at 1000, `offset` pages, and the response echoes both back so a pager knows what it actually got. An index the caller's org does not hold is 404 `index_not_found`. The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and every query filters on it, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying Meilisearch's `invalid_api_key` body. Errors use Meilisearch's {message, code, type, link} shape rather than cloud's, because that `code` is a wire contract a Meilisearch client branches on.
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  Future<void> getIndexIndexesByUidDocuments(String uid,) async {
    final response = await getIndexIndexesByUidDocumentsWithHttpInfo(uid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Read one document by its primary key
  ///
  /// Answers the stored document whose primary key matches, exactly as it was written. A missing document is 404 `document_not_found` and a missing index is 404 `index_not_found` — two different codes, because a client that branches on them treats the cases differently. The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and every query filters on it, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying Meilisearch's `invalid_api_key` body. Errors use Meilisearch's {message, code, type, link} shape rather than cloud's, because that `code` is a wire contract a Meilisearch client branches on.
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

  /// Read one document by its primary key
  ///
  /// Answers the stored document whose primary key matches, exactly as it was written. A missing document is 404 `document_not_found` and a missing index is 404 `index_not_found` — two different codes, because a client that branches on them treats the cases differently. The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and every query filters on it, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying Meilisearch's `invalid_api_key` body. Errors use Meilisearch's {message, code, type, link} shape rather than cloud's, because that `code` is a wire contract a Meilisearch client branches on.
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  ///
  /// * [String] id (required):
  Future<void> getIndexIndexesByUidDocumentsById(String uid, String id,) async {
    final response = await getIndexIndexesByUidDocumentsByIdWithHttpInfo(uid, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Read an index's filterable attributes
  ///
  /// Answers the attributes an index allows filtering on. This dialect implements the filterable-attributes setting and no other, so that is the whole of what comes back. An index the caller's org does not hold is 404 `index_not_found`. The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and every query filters on it, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying Meilisearch's `invalid_api_key` body. Errors use Meilisearch's {message, code, type, link} shape rather than cloud's, because that `code` is a wire contract a Meilisearch client branches on.
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

  /// Read an index's filterable attributes
  ///
  /// Answers the attributes an index allows filtering on. This dialect implements the filterable-attributes setting and no other, so that is the whole of what comes back. An index the caller's org does not hold is 404 `index_not_found`. The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and every query filters on it, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying Meilisearch's `invalid_api_key` body. Errors use Meilisearch's {message, code, type, link} shape rather than cloud's, because that `code` is a wire contract a Meilisearch client branches on.
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  Future<void> getIndexIndexesByUidSettings(String uid,) async {
    final response = await getIndexIndexesByUidSettingsWithHttpInfo(uid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Count the documents in each of your indexes
  ///
  /// Answers a document count per index for the caller's org, plus their sum. `isIndexing` is always false, which is the honest answer here rather than a stub: writes are applied before their response, so there is never a backlog in progress to report. The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and every query filters on it, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying Meilisearch's `invalid_api_key` body. Errors use Meilisearch's {message, code, type, link} shape rather than cloud's, because that `code` is a wire contract a Meilisearch client branches on.
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

  /// Count the documents in each of your indexes
  ///
  /// Answers a document count per index for the caller's org, plus their sum. `isIndexing` is always false, which is the honest answer here rather than a stub: writes are applied before their response, so there is never a backlog in progress to report. The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and every query filters on it, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying Meilisearch's `invalid_api_key` body. Errors use Meilisearch's {message, code, type, link} shape rather than cloud's, because that `code` is a wire contract a Meilisearch client branches on.
  Future<void> getIndexStats() async {
    final response = await getIndexStatsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Check a write task, which has already finished
  ///
  /// Answers `succeeded` for the task id given. It ALWAYS answers succeeded, and that is honest rather than a stub: writes on this surface are applied before their response returns, so by the time any task id exists to ask about, its work is done. It exists so a Meilisearch client's waitForTask resolves at once instead of polling forever for a queue that was never there. It requires a validated principal but reads no tenant data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  Future<Response> getIndexTasksByUidWithHttpInfo(String uid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/index/tasks/{uid}'
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

  /// Check a write task, which has already finished
  ///
  /// Answers `succeeded` for the task id given. It ALWAYS answers succeeded, and that is honest rather than a stub: writes on this surface are applied before their response returns, so by the time any task id exists to ask about, its work is done. It exists so a Meilisearch client's waitForTask resolves at once instead of polling forever for a queue that was never there. It requires a validated principal but reads no tenant data.
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  Future<void> getIndexTasksByUid(String uid,) async {
    final response = await getIndexTasksByUidWithHttpInfo(uid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Identify the search implementation answering
  ///
  /// Answers the version shape a Meilisearch client expects. It names THIS implementation rather than a Meilisearch release — the commit field reads `hanzo-cloud` — so a client that logs it records which server actually answered instead of implying a Meilisearch build. Needs no credential.
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

  /// Identify the search implementation answering
  ///
  /// Answers the version shape a Meilisearch client expects. It names THIS implementation rather than a Meilisearch release — the commit field reads `hanzo-cloud` — so a client that logs it records which server actually answered instead of implying a Meilisearch build. Needs no credential.
  Future<void> getIndexVersion() async {
    final response = await getIndexVersionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Set which attributes an index can be filtered on
  ///
  /// Replaces an index's filterable attributes with the list in `filterableAttributes`; omitting the field leaves them as they are. The index is CREATED ON DEMAND rather than 404'd, because a client that configures an index it has just asked for should not have to create it first — this is the one read-shaped path on the surface that writes. The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and every query filters on it, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying Meilisearch's `invalid_api_key` body. Errors use Meilisearch's {message, code, type, link} shape rather than cloud's, because that `code` is a wire contract a Meilisearch client branches on.  The 202 and its `enqueued` task are DIALECT COMPATIBILITY, not a promise of later work: the write is already applied when this answers, and the task it names is already complete. A client that polls waitForTask resolves immediately rather than waiting, and a client that does not poll has still had its write committed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  Future<Response> patchIndexIndexesByUidSettingsWithHttpInfo(String uid,) async {
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
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Set which attributes an index can be filtered on
  ///
  /// Replaces an index's filterable attributes with the list in `filterableAttributes`; omitting the field leaves them as they are. The index is CREATED ON DEMAND rather than 404'd, because a client that configures an index it has just asked for should not have to create it first — this is the one read-shaped path on the surface that writes. The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and every query filters on it, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying Meilisearch's `invalid_api_key` body. Errors use Meilisearch's {message, code, type, link} shape rather than cloud's, because that `code` is a wire contract a Meilisearch client branches on.  The 202 and its `enqueued` task are DIALECT COMPATIBILITY, not a promise of later work: the write is already applied when this answers, and the task it names is already complete. A client that polls waitForTask resolves immediately rather than waiting, and a client that does not poll has still had its write committed.
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  Future<void> patchIndexIndexesByUidSettings(String uid,) async {
    final response = await patchIndexIndexesByUidSettingsWithHttpInfo(uid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create an index
  ///
  /// Creates an index named by `uid` in the caller's org. `primaryKey` names the document field that identifies a document and defaults to `id`. Creating an index that already exists is not an error — it settles on the existing one, primary key included — so a client that creates before every write is safe to run repeatedly. A missing or over-long uid is 400 `invalid_index_uid`. A new index starts with `user` filterable, which is what lets a multi-user app narrow searches to one end user without configuring anything. The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and every query filters on it, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying Meilisearch's `invalid_api_key` body. Errors use Meilisearch's {message, code, type, link} shape rather than cloud's, because that `code` is a wire contract a Meilisearch client branches on.  The 202 and its `enqueued` task are DIALECT COMPATIBILITY, not a promise of later work: the write is already applied when this answers, and the task it names is already complete. A client that polls waitForTask resolves immediately rather than waiting, and a client that does not poll has still had its write committed.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIndexIndexesWithHttpInfo() async {
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create an index
  ///
  /// Creates an index named by `uid` in the caller's org. `primaryKey` names the document field that identifies a document and defaults to `id`. Creating an index that already exists is not an error — it settles on the existing one, primary key included — so a client that creates before every write is safe to run repeatedly. A missing or over-long uid is 400 `invalid_index_uid`. A new index starts with `user` filterable, which is what lets a multi-user app narrow searches to one end user without configuring anything. The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and every query filters on it, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying Meilisearch's `invalid_api_key` body. Errors use Meilisearch's {message, code, type, link} shape rather than cloud's, because that `code` is a wire contract a Meilisearch client branches on.  The 202 and its `enqueued` task are DIALECT COMPATIBILITY, not a promise of later work: the write is already applied when this answers, and the task it names is already complete. A client that polls waitForTask resolves immediately rather than waiting, and a client that does not poll has still had its write committed.
  Future<void> postIndexIndexes() async {
    final response = await postIndexIndexesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Add or replace documents in an index
  ///
  /// Upserts documents into one index, keyed by the index's primary key: a document whose key is already present is REPLACED, one that is not is added, and it becomes searchable immediately. Send an array, or a single object — a hand-rolled caller sending one document is accepted rather than 400'd. The index is created on demand, so a first write needs no create call.  This and the PUT on the same path are the SAME operation: both are a whole document upsert, which is what a Meilisearch client's addDocuments and updateDocuments both reduce to here. A body that is neither an array nor an object is 400. The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and every query filters on it, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying Meilisearch's `invalid_api_key` body. Errors use Meilisearch's {message, code, type, link} shape rather than cloud's, because that `code` is a wire contract a Meilisearch client branches on.  The 202 and its `enqueued` task are DIALECT COMPATIBILITY, not a promise of later work: the write is already applied when this answers, and the task it names is already complete. A client that polls waitForTask resolves immediately rather than waiting, and a client that does not poll has still had its write committed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  Future<Response> postIndexIndexesByUidDocumentsWithHttpInfo(String uid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/index/indexes/{uid}/documents'
      .replaceAll('{uid}', uid);

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

  /// Add or replace documents in an index
  ///
  /// Upserts documents into one index, keyed by the index's primary key: a document whose key is already present is REPLACED, one that is not is added, and it becomes searchable immediately. Send an array, or a single object — a hand-rolled caller sending one document is accepted rather than 400'd. The index is created on demand, so a first write needs no create call.  This and the PUT on the same path are the SAME operation: both are a whole document upsert, which is what a Meilisearch client's addDocuments and updateDocuments both reduce to here. A body that is neither an array nor an object is 400. The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and every query filters on it, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying Meilisearch's `invalid_api_key` body. Errors use Meilisearch's {message, code, type, link} shape rather than cloud's, because that `code` is a wire contract a Meilisearch client branches on.  The 202 and its `enqueued` task are DIALECT COMPATIBILITY, not a promise of later work: the write is already applied when this answers, and the task it names is already complete. A client that polls waitForTask resolves immediately rather than waiting, and a client that does not poll has still had its write committed.
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  Future<void> postIndexIndexesByUidDocuments(String uid,) async {
    final response = await postIndexIndexesByUidDocumentsWithHttpInfo(uid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete many documents by primary key in one call
  ///
  /// Removes every document named by an array of primary keys. Keys may be sent as strings or numbers — a number keeps its exact decimal form, so an integer key round-trips as `42` and never as scientific notation. Keys that are absent from the index are skipped rather than failing the batch, so this is idempotent. A body that is not an array is 400. The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and every query filters on it, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying Meilisearch's `invalid_api_key` body. Errors use Meilisearch's {message, code, type, link} shape rather than cloud's, because that `code` is a wire contract a Meilisearch client branches on.  The 202 and its `enqueued` task are DIALECT COMPATIBILITY, not a promise of later work: the write is already applied when this answers, and the task it names is already complete. A client that polls waitForTask resolves immediately rather than waiting, and a client that does not poll has still had its write committed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  Future<Response> postIndexIndexesByUidDocumentsDeleteBatchWithHttpInfo(String uid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/index/indexes/{uid}/documents/delete-batch'
      .replaceAll('{uid}', uid);

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

  /// Delete many documents by primary key in one call
  ///
  /// Removes every document named by an array of primary keys. Keys may be sent as strings or numbers — a number keeps its exact decimal form, so an integer key round-trips as `42` and never as scientific notation. Keys that are absent from the index are skipped rather than failing the batch, so this is idempotent. A body that is not an array is 400. The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and every query filters on it, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying Meilisearch's `invalid_api_key` body. Errors use Meilisearch's {message, code, type, link} shape rather than cloud's, because that `code` is a wire contract a Meilisearch client branches on.  The 202 and its `enqueued` task are DIALECT COMPATIBILITY, not a promise of later work: the write is already applied when this answers, and the task it names is already complete. A client that polls waitForTask resolves immediately rather than waiting, and a client that does not poll has still had its write committed.
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  Future<void> postIndexIndexesByUidDocumentsDeleteBatch(String uid,) async {
    final response = await postIndexIndexesByUidDocumentsDeleteBatchWithHttpInfo(uid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Search an index, forgiving typos
  ///
  /// Answers the documents in one index matching `q`, ranked by how many of the query's terms they match, with prefix matching so a partial word still finds its document. `limit` defaults to 20 and is capped at 1000, `offset` pages; a negative value falls back to the default rather than erroring.  `filter` takes a Meilisearch filter expression, or an array of them, and the `user = \"…\"` and `user IN […]` forms are honoured — that is how an app with many end users narrows results to one of them WITHIN the org. `estimatedTotalHits` is exact for the page returned, not an estimate, because every hit is materialised. An index the caller's org does not hold is 404 `index_not_found`. The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and every query filters on it, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying Meilisearch's `invalid_api_key` body. Errors use Meilisearch's {message, code, type, link} shape rather than cloud's, because that `code` is a wire contract a Meilisearch client branches on.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  Future<Response> postIndexIndexesByUidSearchWithHttpInfo(String uid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/index/indexes/{uid}/search'
      .replaceAll('{uid}', uid);

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

  /// Search an index, forgiving typos
  ///
  /// Answers the documents in one index matching `q`, ranked by how many of the query's terms they match, with prefix matching so a partial word still finds its document. `limit` defaults to 20 and is capped at 1000, `offset` pages; a negative value falls back to the default rather than erroring.  `filter` takes a Meilisearch filter expression, or an array of them, and the `user = \"…\"` and `user IN […]` forms are honoured — that is how an app with many end users narrows results to one of them WITHIN the org. `estimatedTotalHits` is exact for the page returned, not an estimate, because every hit is materialised. An index the caller's org does not hold is 404 `index_not_found`. The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and every query filters on it, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying Meilisearch's `invalid_api_key` body. Errors use Meilisearch's {message, code, type, link} shape rather than cloud's, because that `code` is a wire contract a Meilisearch client branches on.
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  Future<void> postIndexIndexesByUidSearch(String uid,) async {
    final response = await postIndexIndexesByUidSearchWithHttpInfo(uid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Add or update documents in an index
  ///
  /// Upserts documents into one index, keyed by the index's primary key: a document whose key is already present is REPLACED, one that is not is added, and it becomes searchable immediately. Send an array, or a single object — a hand-rolled caller sending one document is accepted rather than 400'd. The index is created on demand, so a first write needs no create call.  This and the POST on the same path are the SAME operation, served by one handler. Both exist because the Meilisearch dialect has both verbs; there is no partial-update semantics on this one — a document is replaced whole either way. The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and every query filters on it, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying Meilisearch's `invalid_api_key` body. Errors use Meilisearch's {message, code, type, link} shape rather than cloud's, because that `code` is a wire contract a Meilisearch client branches on.  The 202 and its `enqueued` task are DIALECT COMPATIBILITY, not a promise of later work: the write is already applied when this answers, and the task it names is already complete. A client that polls waitForTask resolves immediately rather than waiting, and a client that does not poll has still had its write committed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  Future<Response> putIndexIndexesByUidDocumentsWithHttpInfo(String uid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/index/indexes/{uid}/documents'
      .replaceAll('{uid}', uid);

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

  /// Add or update documents in an index
  ///
  /// Upserts documents into one index, keyed by the index's primary key: a document whose key is already present is REPLACED, one that is not is added, and it becomes searchable immediately. Send an array, or a single object — a hand-rolled caller sending one document is accepted rather than 400'd. The index is created on demand, so a first write needs no create call.  This and the POST on the same path are the SAME operation, served by one handler. Both exist because the Meilisearch dialect has both verbs; there is no partial-update semantics on this one — a document is replaced whole either way. The tenant is the org minted from the VALIDATED bearer's owner claim, never a client-supplied header, and every query filters on it, so two orgs may both hold an index named \"messages\" and neither can see the other's documents. Without a validated principal the answer is 403 carrying Meilisearch's `invalid_api_key` body. Errors use Meilisearch's {message, code, type, link} shape rather than cloud's, because that `code` is a wire contract a Meilisearch client branches on.  The 202 and its `enqueued` task are DIALECT COMPATIBILITY, not a promise of later work: the write is already applied when this answers, and the task it names is already complete. A client that polls waitForTask resolves immediately rather than waiting, and a client that does not poll has still had its write committed.
  ///
  /// Parameters:
  ///
  /// * [String] uid (required):
  Future<void> putIndexIndexesByUidDocuments(String uid,) async {
    final response = await putIndexIndexesByUidDocumentsWithHttpInfo(uid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
