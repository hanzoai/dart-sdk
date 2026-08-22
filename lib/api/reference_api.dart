//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class ReferenceApi {
  ReferenceApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Removes one of your organisation's overrides.
  ///
  /// Removes one of your organisation's overrides.  It removes an entry your organisation wrote, never a baseline member: the published set is not writable from here, so a removal can only ever restore the baseline's own answer.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] set_ (required):
  ///
  /// * [String] key:
  Future<Response> riskClearReferenceWithHttpInfo(String set_, { String? key, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/reference/{set}'
      .replaceAll('{set}', set_);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (key != null) {
      queryParams.addAll(_queryParams('', 'key', key));
    }

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

  /// Removes one of your organisation's overrides.
  ///
  /// Removes one of your organisation's overrides.  It removes an entry your organisation wrote, never a baseline member: the published set is not writable from here, so a removal can only ever restore the baseline's own answer.
  ///
  /// Parameters:
  ///
  /// * [String] set_ (required):
  ///
  /// * [String] key:
  Future<ClearReferenceOut?> riskClearReference(String set_, { String? key, }) async {
    final response = await riskClearReferenceWithHttpInfo(set_,  key: key, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClearReferenceOut',) as ClearReferenceOut;
    
    }
    return null;
  }

  /// Reference describes one set and lists your org's overrides in it.
  ///
  /// Reference describes one set and lists your org's overrides in it.  The set half is public data about a published list — its version, its publishers, their licences and how current each one is. The overrides half is yours alone: it is read from your organisation's own store, and no other organisation's entries can appear in it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] set_ (required):
  ///
  /// * [String] after:
  ///   After pages the override listing: the last key of the previous page.
  ///
  /// * [int] limit:
  ///   Limit caps the override listing: default 200, maximum 1000.
  Future<Response> riskReferenceWithHttpInfo(String set_, { String? after, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/reference/{set}'
      .replaceAll('{set}', set_);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (after != null) {
      queryParams.addAll(_queryParams('', 'after', after));
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

  /// Reference describes one set and lists your org's overrides in it.
  ///
  /// Reference describes one set and lists your org's overrides in it.  The set half is public data about a published list — its version, its publishers, their licences and how current each one is. The overrides half is yours alone: it is read from your organisation's own store, and no other organisation's entries can appear in it.
  ///
  /// Parameters:
  ///
  /// * [String] set_ (required):
  ///
  /// * [String] after:
  ///   After pages the override listing: the last key of the previous page.
  ///
  /// * [int] limit:
  ///   Limit caps the override listing: default 200, maximum 1000.
  Future<ReferenceOut?> riskReference(String set_, { String? after, int? limit, }) async {
    final response = await riskReferenceWithHttpInfo(set_,  after: after, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReferenceOut',) as ReferenceOut;
    
    }
    return null;
  }

  /// Lists every set this plane publishes, with its version and how fresh it is.
  ///
  /// Lists every set this plane publishes, with its version and how fresh it is.  Read the Stale and Refused lists first: they are the two ways this plane can be quietly wrong, and they are reported rather than inferred. A set in Refused answers nothing — it has never loaded, it is held by another component, or it names a source we hold no licence for.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> riskReferenceSetsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/reference';

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

  /// Lists every set this plane publishes, with its version and how fresh it is.
  ///
  /// Lists every set this plane publishes, with its version and how fresh it is.  Read the Stale and Refused lists first: they are the two ways this plane can be quietly wrong, and they are reported rather than inferred. A set in Refused answers nothing — it has never loaded, it is held by another component, or it names a source we hold no licence for.
  Future<ReferenceSetsOut?> riskReferenceSets() async {
    final response = await riskReferenceSetsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReferenceSetsOut',) as ReferenceSetsOut;
    
    }
    return null;
  }

  /// Takes a new version of one set.
  ///
  /// Takes a new version of one set. SuperAdmin only.  It is platform work, not tenant work: it writes the shared baseline every organisation reads, so it is gated to the platform's own identity. Nothing here can write an organisation's overrides, and nothing an organisation sends can reach this route.  Idempotent. A version is the content digest of what was taken, so refreshing an unchanged publisher writes no rows and reports unchanged. Resumable: a run that died half-way is continued from where it stopped rather than restarted.  A set whose source needs a licence we do not hold is refused with the reason, rather than being quietly skipped.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RefreshReferenceIn] refreshReferenceIn (required):
  Future<Response> riskRefreshReferenceWithHttpInfo(RefreshReferenceIn refreshReferenceIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/reference/refresh';

    // ignore: prefer_final_locals
    Object? postBody = refreshReferenceIn;

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

  /// Takes a new version of one set.
  ///
  /// Takes a new version of one set. SuperAdmin only.  It is platform work, not tenant work: it writes the shared baseline every organisation reads, so it is gated to the platform's own identity. Nothing here can write an organisation's overrides, and nothing an organisation sends can reach this route.  Idempotent. A version is the content digest of what was taken, so refreshing an unchanged publisher writes no rows and reports unchanged. Resumable: a run that died half-way is continued from where it stopped rather than restarted.  A set whose source needs a licence we do not hold is refused with the reason, rather than being quietly skipped.
  ///
  /// Parameters:
  ///
  /// * [RefreshReferenceIn] refreshReferenceIn (required):
  Future<RefreshReferenceOut?> riskRefreshReference(RefreshReferenceIn refreshReferenceIn,) async {
    final response = await riskRefreshReferenceWithHttpInfo(refreshReferenceIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RefreshReferenceOut',) as RefreshReferenceOut;
    
    }
    return null;
  }

  /// Looks keys up against the reference plane.
  ///
  /// Looks keys up against the reference plane.  Your organisation's own overrides are consulted FIRST and win outright; the shared baseline answers everything they do not cover. Every answer names the version that produced it, when that version was current and whether it is stale, so a decision can record exactly what it consulted.  Read Refusal before reading Hit. A set that has never loaded, one held by the component that screens against it, and one whose source needs a licence we do not hold all answer with a refusal — and a miss on a refusing set means nothing is known, not that the key is clean.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ResolveReferenceIn] resolveReferenceIn (required):
  Future<Response> riskResolveReferenceWithHttpInfo(ResolveReferenceIn resolveReferenceIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/reference/resolve';

    // ignore: prefer_final_locals
    Object? postBody = resolveReferenceIn;

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

  /// Looks keys up against the reference plane.
  ///
  /// Looks keys up against the reference plane.  Your organisation's own overrides are consulted FIRST and win outright; the shared baseline answers everything they do not cover. Every answer names the version that produced it, when that version was current and whether it is stale, so a decision can record exactly what it consulted.  Read Refusal before reading Hit. A set that has never loaded, one held by the component that screens against it, and one whose source needs a licence we do not hold all answer with a refusal — and a miss on a refusing set means nothing is known, not that the key is clean.
  ///
  /// Parameters:
  ///
  /// * [ResolveReferenceIn] resolveReferenceIn (required):
  Future<ResolveReferenceOut?> riskResolveReference(ResolveReferenceIn resolveReferenceIn,) async {
    final response = await riskResolveReferenceWithHttpInfo(resolveReferenceIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResolveReferenceOut',) as ResolveReferenceOut;
    
    }
    return null;
  }

  /// Writes your organisation's own allow and deny entries over a set.
  ///
  /// Writes your organisation's own allow and deny entries over a set.  Idempotent on the key: writing the same entry twice is one entry, and writing it again replaces the verdict and the note. The whole batch is one transaction, so a batch that would cross the per-set bound writes nothing rather than half of itself — a half-applied deny list is worse than a refused one, because nobody can tell which half applied.  Your entries are held in your organisation's own store and are never visible to another organisation, and they never change what any other organisation sees. The shared baseline is not writable from here at all.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] set_ (required):
  ///
  /// * [SetReferenceIn] setReferenceIn (required):
  Future<Response> riskSetReferenceWithHttpInfo(String set_, SetReferenceIn setReferenceIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/reference/{set}'
      .replaceAll('{set}', set_);

    // ignore: prefer_final_locals
    Object? postBody = setReferenceIn;

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

  /// Writes your organisation's own allow and deny entries over a set.
  ///
  /// Writes your organisation's own allow and deny entries over a set.  Idempotent on the key: writing the same entry twice is one entry, and writing it again replaces the verdict and the note. The whole batch is one transaction, so a batch that would cross the per-set bound writes nothing rather than half of itself — a half-applied deny list is worse than a refused one, because nobody can tell which half applied.  Your entries are held in your organisation's own store and are never visible to another organisation, and they never change what any other organisation sees. The shared baseline is not writable from here at all.
  ///
  /// Parameters:
  ///
  /// * [String] set_ (required):
  ///
  /// * [SetReferenceIn] setReferenceIn (required):
  Future<SetReferenceOut?> riskSetReference(String set_, SetReferenceIn setReferenceIn,) async {
    final response = await riskSetReferenceWithHttpInfo(set_, setReferenceIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SetReferenceOut',) as SetReferenceOut;
    
    }
    return null;
  }
}
