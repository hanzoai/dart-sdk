//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class SyncApi {
  SyncApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete removes one sync and tears down the outbound mirror it derived, answering 204.
  ///
  /// Delete removes one sync and tears down the outbound mirror it derived, answering 204. The teardown is the point: without it an unsynced repository would keep force-pushing to the upstream it is no longer linked to. Org-scoped, so another tenant's id is the same 404 an unknown id gives.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sync to act on, from the path.
  Future<Response> deleteSyncByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sync/{id}'
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

  /// Delete removes one sync and tears down the outbound mirror it derived, answering 204.
  ///
  /// Delete removes one sync and tears down the outbound mirror it derived, answering 204. The teardown is the point: without it an unsynced repository would keep force-pushing to the upstream it is no longer linked to. Org-scoped, so another tenant's id is the same 404 an unknown id gives.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sync to act on, from the path.
  Future<void> deleteSyncById(String id,) async {
    final response = await deleteSyncByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List returns every sync link the caller's org has, each with its two endpoints, its direction and trigger policy, and the time it last reconciled.
  ///
  /// List returns every sync link the caller's org has, each with its two endpoints, its direction and trigger policy, and the time it last reconciled. Scoped to the caller's own org — another tenant's links are structurally unreachable.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSyncWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sync';

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

  /// List returns every sync link the caller's org has, each with its two endpoints, its direction and trigger policy, and the time it last reconciled.
  ///
  /// List returns every sync link the caller's org has, each with its two endpoints, its direction and trigger policy, and the time it last reconciled. Scoped to the caller's own org — another tenant's links are structurally unreachable.
  Future<SyncList?> getSync() async {
    final response = await getSyncWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SyncList',) as SyncList;
    
    }
    return null;
  }

  /// Get returns one sync by id.
  ///
  /// Get returns one sync by id. It is org-scoped: an id belonging to another tenant is the same 404 an unknown id gives, so a probe learns nothing about what exists.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sync to act on, from the path.
  Future<Response> getSyncByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sync/{id}'
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

  /// Get returns one sync by id.
  ///
  /// Get returns one sync by id. It is org-scoped: an id belonging to another tenant is the same 404 an unknown id gives, so a probe learns nothing about what exists.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sync to act on, from the path.
  Future<SyncView?> getSyncById(String id,) async {
    final response = await getSyncByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SyncView',) as SyncView;
    
    }
    return null;
  }

  /// Patch updates one sync's mutable policy — direction, trigger and actor — in place.
  ///
  /// Patch updates one sync's mutable policy — direction, trigger and actor — in place. The endpoints and the kind are immutable: re-pointing a sync is a delete and a create, so a link can never silently start syncing somewhere else. A field the request omits is left as it was. Changing the direction immediately reconciles the derived outbound mirror, so turning push off stops the upstream being written to rather than merely recording the intent.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sync to update, from the path.
  ///
  /// * [PatchSyncIn] patchSyncIn (required):
  Future<Response> patchSyncByIdWithHttpInfo(String id, PatchSyncIn patchSyncIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sync/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = patchSyncIn;

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

  /// Patch updates one sync's mutable policy — direction, trigger and actor — in place.
  ///
  /// Patch updates one sync's mutable policy — direction, trigger and actor — in place. The endpoints and the kind are immutable: re-pointing a sync is a delete and a create, so a link can never silently start syncing somewhere else. A field the request omits is left as it was. Changing the direction immediately reconciles the derived outbound mirror, so turning push off stops the upstream being written to rather than merely recording the intent.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sync to update, from the path.
  ///
  /// * [PatchSyncIn] patchSyncIn (required):
  Future<SyncView?> patchSyncById(String id, PatchSyncIn patchSyncIn,) async {
    final response = await patchSyncByIdWithHttpInfo(id, patchSyncIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SyncView',) as SyncView;
    
    }
    return null;
  }

  /// Create declares a sync between two endpoints and returns it.
  ///
  /// Create declares a sync between two endpoints and returns it. It is an UPSERT: re-declaring the same source and target updates that link rather than piling up duplicates, so a console that re-submits is safe. The org comes from the validated principal, never from the request, so a sync can only ever bind endpoints inside the caller's own org. A git source must be an https clone URL on the provider's own host with no embedded credentials; a target left empty is derived as a native repository named after the source. With run=true the first reconcile is queued in the background, so a large initial import never blocks this response.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SyncReq] syncReq (required):
  Future<Response> postSyncWithHttpInfo(SyncReq syncReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sync';

    // ignore: prefer_final_locals
    Object? postBody = syncReq;

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

  /// Create declares a sync between two endpoints and returns it.
  ///
  /// Create declares a sync between two endpoints and returns it. It is an UPSERT: re-declaring the same source and target updates that link rather than piling up duplicates, so a console that re-submits is safe. The org comes from the validated principal, never from the request, so a sync can only ever bind endpoints inside the caller's own org. A git source must be an https clone URL on the provider's own host with no embedded credentials; a target left empty is derived as a native repository named after the source. With run=true the first reconcile is queued in the background, so a large initial import never blocks this response.
  ///
  /// Parameters:
  ///
  /// * [SyncReq] syncReq (required):
  Future<SyncView?> postSync(SyncReq syncReq,) async {
    final response = await postSyncWithHttpInfo(syncReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SyncView',) as SyncView;
    
    }
    return null;
  }

  /// Run reconciles one sync now — the manual re-sync, and the initial import for a link created without run=true.
  ///
  /// Run reconciles one sync now — the manual re-sync, and the initial import for a link created without run=true. The work is handed to a bounded background worker and the call answers 202 immediately, so a large mirror-in never holds the request open; queued=true means accepted, not finished.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sync to act on, from the path.
  Future<Response> postSyncByIdRunWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sync/{id}/run'
      .replaceAll('{id}', id);

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

  /// Run reconciles one sync now — the manual re-sync, and the initial import for a link created without run=true.
  ///
  /// Run reconciles one sync now — the manual re-sync, and the initial import for a link created without run=true. The work is handed to a bounded background worker and the call answers 202 immediately, so a large mirror-in never holds the request open; queued=true means accepted, not finished.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the sync to act on, from the path.
  Future<SyncQueued?> postSyncByIdRun(String id,) async {
    final response = await postSyncByIdRunWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SyncQueued',) as SyncQueued;
    
    }
    return null;
  }
}
