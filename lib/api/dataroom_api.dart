//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class DataroomApi {
  DataroomApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Rolls up every share link pointing at one data room: session and page-view totals for the room, plus the per-page breakdown for each link beneath it.
  ///
  /// Rolls up every share link pointing at one data room: session and page-view totals for the room, plus the per-page breakdown for each link beneath it.  A room id outside the caller's own tenant store is not found. Only links that NAME the room are counted — a link created over a single document contributes nothing here, even when that document also sits in the room.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataroomId (required):
  ///   DataroomID is the room to report on. It is the path segment, resolved in the caller's own tenant store.
  Future<Response> getDataroomAnalyticsDataroomByDataroomidWithHttpInfo(String dataroomId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataroom/analytics/dataroom/{dataroomId}'
      .replaceAll('{dataroomId}', dataroomId);

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

  /// Rolls up every share link pointing at one data room: session and page-view totals for the room, plus the per-page breakdown for each link beneath it.
  ///
  /// Rolls up every share link pointing at one data room: session and page-view totals for the room, plus the per-page breakdown for each link beneath it.  A room id outside the caller's own tenant store is not found. Only links that NAME the room are counted — a link created over a single document contributes nothing here, even when that document also sits in the room.
  ///
  /// Parameters:
  ///
  /// * [String] dataroomId (required):
  ///   DataroomID is the room to report on. It is the path segment, resolved in the caller's own tenant store.
  Future<DataroomStats?> getDataroomAnalyticsDataroomByDataroomid(String dataroomId,) async {
    final response = await getDataroomAnalyticsDataroomByDataroomidWithHttpInfo(dataroomId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DataroomStats',) as DataroomStats;
    
    }
    return null;
  }

  /// Reports how one share link was actually read: total viewing sessions, total page views, and per page the view count, the summed dwell measure and its average.
  ///
  /// Reports how one share link was actually read: total viewing sessions, total page views, and per page the view count, the summed dwell measure and its average.  The link is resolved in the caller's OWN tenant store, so another org's link id is not found — knowing a link id is enough to OPEN the room it shares, and never enough to read who has been reading it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] linkId (required):
  ///   LinkID is the link to report on. It is the path segment, resolved in the caller's own tenant store.
  Future<Response> getDataroomAnalyticsLinkByLinkidWithHttpInfo(String linkId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataroom/analytics/link/{linkId}'
      .replaceAll('{linkId}', linkId);

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

  /// Reports how one share link was actually read: total viewing sessions, total page views, and per page the view count, the summed dwell measure and its average.
  ///
  /// Reports how one share link was actually read: total viewing sessions, total page views, and per page the view count, the summed dwell measure and its average.  The link is resolved in the caller's OWN tenant store, so another org's link id is not found — knowing a link id is enough to OPEN the room it shares, and never enough to read who has been reading it.
  ///
  /// Parameters:
  ///
  /// * [String] linkId (required):
  ///   LinkID is the link to report on. It is the path segment, resolved in the caller's own tenant store.
  Future<DataroomLinkStats?> getDataroomAnalyticsLinkByLinkid(String linkId,) async {
    final response = await getDataroomAnalyticsLinkByLinkidWithHttpInfo(linkId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DataroomLinkStats',) as DataroomLinkStats;
    
    }
    return null;
  }

  /// Returns every data room in the caller org's own store, newest first, with its short public id, name, description and timestamps.
  ///
  /// Returns every data room in the caller org's own store, newest first, with its short public id, name, description and timestamps.  Documents are not included — a room's contents come from reading the single room.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDataroomDataroomsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataroom/datarooms';

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

  /// Returns every data room in the caller org's own store, newest first, with its short public id, name, description and timestamps.
  ///
  /// Returns every data room in the caller org's own store, newest first, with its short public id, name, description and timestamps.  Documents are not included — a room's contents come from reading the single room.
  Future<DataroomRooms?> getDataroomDatarooms() async {
    final response = await getDataroomDataroomsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DataroomRooms',) as DataroomRooms;
    
    }
    return null;
  }

  /// Reads one of the caller org's data rooms together with every document in it, each carrying its membership id and order index.
  ///
  /// Reads one of the caller org's data rooms together with every document in it, each carrying its membership id and order index.  The documents are sorted by that index with unordered ones last and creation time breaking ties — the SAME order a link's visitor sees, so this is what the room looks like from the outside. A room id outside the caller's own tenant store is not found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the room to read. It is the path segment: the URL is the addressing authority, and the org it is resolved in comes from the caller's principal, so an id from another tenant is simply not found.
  Future<Response> getDataroomDataroomsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataroom/datarooms/{id}'
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

  /// Reads one of the caller org's data rooms together with every document in it, each carrying its membership id and order index.
  ///
  /// Reads one of the caller org's data rooms together with every document in it, each carrying its membership id and order index.  The documents are sorted by that index with unordered ones last and creation time breaking ties — the SAME order a link's visitor sees, so this is what the room looks like from the outside. A room id outside the caller's own tenant store is not found.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the room to read. It is the path segment: the URL is the addressing authority, and the org it is resolved in comes from the caller's principal, so an id from another tenant is simply not found.
  Future<DataroomRoomDetailOne?> getDataroomDataroomsById(String id,) async {
    final response = await getDataroomDataroomsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DataroomRoomDetailOne',) as DataroomRoomDetailOne;
    
    }
    return null;
  }

  /// Returns every document in the caller org's own store, newest first — name, opaque storage key, content type, page count, size and timestamps.
  ///
  /// Returns every document in the caller org's own store, newest first — name, opaque storage key, content type, page count, size and timestamps.  Tenant isolation is the per-org store itself: there is one SQLite file per org and the org is never a parameter, so no input the caller controls can address another tenant's documents. Metadata only — the bytes come from the file route.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDataroomDocumentsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataroom/documents';

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

  /// Returns every document in the caller org's own store, newest first — name, opaque storage key, content type, page count, size and timestamps.
  ///
  /// Returns every document in the caller org's own store, newest first — name, opaque storage key, content type, page count, size and timestamps.  Tenant isolation is the per-org store itself: there is one SQLite file per org and the org is never a parameter, so no input the caller controls can address another tenant's documents. Metadata only — the bytes come from the file route.
  Future<DataroomDocuments?> getDataroomDocuments() async {
    final response = await getDataroomDocumentsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DataroomDocuments',) as DataroomDocuments;
    
    }
    return null;
  }

  /// Reads one of the caller org's documents — its name, opaque storage key, content type, page count, size and timestamps.
  ///
  /// Reads one of the caller org's documents — its name, opaque storage key, content type, page count, size and timestamps.  The lookup runs in the caller's own tenant store, so an id belonging to another org is not found exactly like one that never existed. Metadata only: the bytes are a separate read.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the document to read. It is the path segment: the URL is the addressing authority, and the org it is resolved in comes from the caller's principal, so an id from another tenant is simply not found.
  Future<Response> getDataroomDocumentsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataroom/documents/{id}'
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

  /// Reads one of the caller org's documents — its name, opaque storage key, content type, page count, size and timestamps.
  ///
  /// Reads one of the caller org's documents — its name, opaque storage key, content type, page count, size and timestamps.  The lookup runs in the caller's own tenant store, so an id belonging to another org is not found exactly like one that never existed. Metadata only: the bytes are a separate read.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the document to read. It is the path segment: the URL is the addressing authority, and the org it is resolved in comes from the caller's principal, so an id from another tenant is simply not found.
  Future<DataroomDocumentOne?> getDataroomDocumentsById(String id,) async {
    final response = await getDataroomDocumentsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DataroomDocumentOne',) as DataroomDocumentOne;
    
    }
    return null;
  }

  /// Download a document's bytes as its owner
  ///
  /// Streams the stored file back under the type read from its BYTES — a raster image or a PDF renders in place, and anything else is served as application/octet-stream with an attachment disposition, so a stored file never executes as markup in this origin. Every response carries nosniff, which keeps the declared type binding.  Requires a validated principal; 403 without one, and the document is resolved in the caller's own tenant store, so another org's id is a 404. This is the OWNER's path and applies no link gate at all — the per-link password, email and download controls live on the viewer surface, not here. Bytes that cannot be fetched from object storage are 502, never a truncated or empty file.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getDataroomDocumentsByIdFileWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataroom/documents/{id}/file'
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

  /// Download a document's bytes as its owner
  ///
  /// Streams the stored file back under the type read from its BYTES — a raster image or a PDF renders in place, and anything else is served as application/octet-stream with an attachment disposition, so a stored file never executes as markup in this origin. Every response carries nosniff, which keeps the declared type binding.  Requires a validated principal; 403 without one, and the document is resolved in the caller's own tenant store, so another org's id is a 404. This is the OWNER's path and applies no link gate at all — the per-link password, email and download controls live on the viewer surface, not here. Bytes that cannot be fetched from object storage are 502, never a truncated or empty file.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> getDataroomDocumentsByIdFile(String id,) async {
    final response = await getDataroomDocumentsByIdFileWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Health reports that the data room subsystem is up.
  ///
  /// Health reports that the data room subsystem is up.  It answers before the bundle loads, holds no state and touches no store, so it stays true in exactly the situation an operator is probing for. It says nothing about whether a room can be OPENED — that is what the room operations answer — because a liveness probe that fails on a dependency takes a working process out of rotation.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDataroomHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataroom/health';

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

  /// Health reports that the data room subsystem is up.
  ///
  /// Health reports that the data room subsystem is up.  It answers before the bundle loads, holds no state and touches no store, so it stays true in exactly the situation an operator is probing for. It says nothing about whether a room can be OPENED — that is what the room operations answer — because a liveness probe that fails on a dependency takes a working process out of rotation.
  Future<DataroomLiveness?> getDataroomHealth() async {
    final response = await getDataroomHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DataroomLiveness',) as DataroomLiveness;
    
    }
    return null;
  }

  /// Returns every live share link in the caller org's own store, newest first, with the controls a visitor will meet: whether an address is required, whether a password is set, the allow and deny lists, whether download is permitted, and when the link expires.
  ///
  /// Returns every live share link in the caller org's own store, newest first, with the controls a visitor will meet: whether an address is required, whether a password is set, the allow and deny lists, whether download is permitted, and when the link expires.  Archived links are omitted entirely. A link reports only THAT a password is set — the stored form is a bcrypt hash and no route returns it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDataroomLinksWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataroom/links';

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

  /// Returns every live share link in the caller org's own store, newest first, with the controls a visitor will meet: whether an address is required, whether a password is set, the allow and deny lists, whether download is permitted, and when the link expires.
  ///
  /// Returns every live share link in the caller org's own store, newest first, with the controls a visitor will meet: whether an address is required, whether a password is set, the allow and deny lists, whether download is permitted, and when the link expires.  Archived links are omitted entirely. A link reports only THAT a password is set — the stored form is a bcrypt hash and no route returns it.
  Future<DataroomLinks?> getDataroomLinks() async {
    final response = await getDataroomLinksWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DataroomLinks',) as DataroomLinks;
    
    }
    return null;
  }

  /// Answers the caller org's OWN trust centre: its settings, every item it holds in both tiers, the requests waiting on it, and the grants it has made.
  ///
  /// Answers the caller org's OWN trust centre: its settings, every item it holds in both tiers, the requests waiting on it, and the grants it has made.  The org is the caller's, taken from the validated bearer and from nothing else, so this op cannot be pointed at another tenant — there is no field for one. An org that has never opened a centre reads back an empty one rather than an error, because having no trust centre is an ordinary state and this is the read that tells you so.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDataroomTrustWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataroom/trust';

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

  /// Answers the caller org's OWN trust centre: its settings, every item it holds in both tiers, the requests waiting on it, and the grants it has made.
  ///
  /// Answers the caller org's OWN trust centre: its settings, every item it holds in both tiers, the requests waiting on it, and the grants it has made.  The org is the caller's, taken from the validated bearer and from nothing else, so this op cannot be pointed at another tenant — there is no field for one. An org that has never opened a centre reads back an empty one rather than an error, because having no trust centre is an ordinary state and this is the read that tells you so.
  Future<TrustDesk?> getDataroomTrust() async {
    final response = await getDataroomTrustWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TrustDesk',) as TrustDesk;
    
    }
    return null;
  }

  /// Answers an org's public trust centre: its name, the text a party must accept to ask for a document, and every item it publishes.
  ///
  /// Answers an org's public trust centre: its name, the text a party must accept to ask for a document, and every item it publishes.  An item is either available NOW — the things the org states itself, its policies, its filled questionnaires, its subprocessor list, its knowledge base — or available ON REQUEST, which is everything an independent auditor put their name to. Both are listed by name and kind, so a reader can see WHAT exists before asking for it; only the second withholds the content.  No principal is involved and none is accepted: the org is resolved from the address, which answers only for a centre its owner has published. An address nobody publishes at is not found, the same answer an unpublished one gets.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the centre's public address. It resolves only for an org that has published; anything else is not found, so this cannot be used to learn which orgs exist.
  Future<Response> getDataroomTrustCenterBySlugWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataroom/trust/center/{slug}'
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

  /// Answers an org's public trust centre: its name, the text a party must accept to ask for a document, and every item it publishes.
  ///
  /// Answers an org's public trust centre: its name, the text a party must accept to ask for a document, and every item it publishes.  An item is either available NOW — the things the org states itself, its policies, its filled questionnaires, its subprocessor list, its knowledge base — or available ON REQUEST, which is everything an independent auditor put their name to. Both are listed by name and kind, so a reader can see WHAT exists before asking for it; only the second withholds the content.  No principal is involved and none is accepted: the org is resolved from the address, which answers only for a centre its owner has published. An address nobody publishes at is not found, the same answer an unpublished one gets.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the centre's public address. It resolves only for an org that has published; anything else is not found, so this cannot be used to learn which orgs exist.
  Future<TrustPage?> getDataroomTrustCenterBySlug(String slug,) async {
    final response = await getDataroomTrustCenterBySlugWithHttpInfo(slug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TrustPage',) as TrustPage;
    
    }
    return null;
  }

  /// Read a public trust-centre item's bytes
  ///
  /// Streams the file behind an item a trust centre publishes openly — a policy, a filled questionnaire, a knowledge-base attachment — under the type read from its bytes: a picture or a PDF renders in place, anything else downloads inert.  No principal and no link: these are the things an org states about itself, so they are served to anyone who asks. The narrowing is in the lookup rather than in a check: the item must be public, must not be retired, and must belong to a centre its owner has published, so an item released only on request is NOT FOUND here rather than refused — the same answer an id that never existed gets, which is what stops this reporting what the released-on-request tier holds.  Bytes that cannot be fetched from object storage are 502, never a truncated file.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [String] item (required):
  Future<Response> getDataroomTrustCenterBySlugFileByItemWithHttpInfo(String slug, String item,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataroom/trust/center/{slug}/file/{item}'
      .replaceAll('{slug}', slug)
      .replaceAll('{item}', item);

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

  /// Read a public trust-centre item's bytes
  ///
  /// Streams the file behind an item a trust centre publishes openly — a policy, a filled questionnaire, a knowledge-base attachment — under the type read from its bytes: a picture or a PDF renders in place, anything else downloads inert.  No principal and no link: these are the things an org states about itself, so they are served to anyone who asks. The narrowing is in the lookup rather than in a check: the item must be public, must not be retired, and must belong to a centre its owner has published, so an item released only on request is NOT FOUND here rather than refused — the same answer an id that never existed gets, which is what stops this reporting what the released-on-request tier holds.  Bytes that cannot be fetched from object storage are 502, never a truncated file.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [String] item (required):
  Future<void> getDataroomTrustCenterBySlugFileByItem(String slug, String item,) async {
    final response = await getDataroomTrustCenterBySlugFileByItemWithHttpInfo(slug, item,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// What a share link's visitor sees before authenticating
  ///
  /// Answers the pre-auth face of a link to anyone holding its id: name and type, which gates apply (whether an address is required, whether a password is set), whether download is permitted, whether it has expired, and the name and description of the room behind it — or, for a single-document link, that document's name and page count.  No principal is involved: the owning org is resolved from the link id through dataroom's one cross-tenant routing table, and an unknown or archived link is a 404.  It is metadata only — a room's document list and every file stay behind the authenticate step. An expired link is REPORTED as expired here rather than refused, so a visitor learns why the next step will fail; nothing about the password beyond its existence is disclosed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] linkId (required):
  Future<Response> getDataroomViewByLinkidWithHttpInfo(String linkId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataroom/view/{linkId}'
      .replaceAll('{linkId}', linkId);

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

  /// What a share link's visitor sees before authenticating
  ///
  /// Answers the pre-auth face of a link to anyone holding its id: name and type, which gates apply (whether an address is required, whether a password is set), whether download is permitted, whether it has expired, and the name and description of the room behind it — or, for a single-document link, that document's name and page count.  No principal is involved: the owning org is resolved from the link id through dataroom's one cross-tenant routing table, and an unknown or archived link is a 404.  It is metadata only — a room's document list and every file stay behind the authenticate step. An expired link is REPORTED as expired here rather than refused, so a visitor learns why the next step will fail; nothing about the password beyond its existence is disclosed.
  ///
  /// Parameters:
  ///
  /// * [String] linkId (required):
  Future<void> getDataroomViewByLinkid(String linkId,) async {
    final response = await getDataroomViewByLinkidWithHttpInfo(linkId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Read a document's bytes as an authorised link visitor
  ///
  /// Streams a document's bytes to a visitor holding an open viewing session, under the type read from those bytes: a picture or a PDF renders in place, anything else downloads inert.  No principal: `?viewId=` from the authenticate step is the authorisation and must belong to this link, or the call is 403 — holding the link id alone gets no bytes. The document must be reachable THROUGH this link (a member of the room the link opens, or the single document the link names), so a visitor cannot walk to an unrelated document by guessing an id; anything else is a 404, as is an unknown or archived link. Bytes that cannot be fetched from object storage are 502.  `?download=1` additionally requires the link's `allowDownload` and is 403 when the owner did not permit it. Read that flag precisely: it gates the DOWNLOAD intent, not access to the bytes — without the parameter an authorised visitor is served the file for in-place viewing whether or not downloads are allowed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] linkId (required):
  ///
  /// * [String] documentId (required):
  Future<Response> getDataroomViewByLinkidDocumentByDocumentidFileWithHttpInfo(String linkId, String documentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataroom/view/{linkId}/document/{documentId}/file'
      .replaceAll('{linkId}', linkId)
      .replaceAll('{documentId}', documentId);

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

  /// Read a document's bytes as an authorised link visitor
  ///
  /// Streams a document's bytes to a visitor holding an open viewing session, under the type read from those bytes: a picture or a PDF renders in place, anything else downloads inert.  No principal: `?viewId=` from the authenticate step is the authorisation and must belong to this link, or the call is 403 — holding the link id alone gets no bytes. The document must be reachable THROUGH this link (a member of the room the link opens, or the single document the link names), so a visitor cannot walk to an unrelated document by guessing an id; anything else is a 404, as is an unknown or archived link. Bytes that cannot be fetched from object storage are 502.  `?download=1` additionally requires the link's `allowDownload` and is 403 when the owner did not permit it. Read that flag precisely: it gates the DOWNLOAD intent, not access to the bytes — without the parameter an authorised visitor is served the file for in-place viewing whether or not downloads are allowed.
  ///
  /// Parameters:
  ///
  /// * [String] linkId (required):
  ///
  /// * [String] documentId (required):
  Future<void> getDataroomViewByLinkidDocumentByDocumentidFile(String linkId, String documentId,) async {
    final response = await getDataroomViewByLinkidDocumentByDocumentidFileWithHttpInfo(linkId, documentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Amend changes an item on the caller org's trust centre — replace its file with a newer edition, move it between public and gated, rewrite what it says, or retire it — and answers with the item as it now stands.
  ///
  /// Amend changes an item on the caller org's trust centre — replace its file with a newer edition, move it between public and gated, rewrite what it says, or retire it — and answers with the item as it now stands.  Retiring is the withdrawal: the item leaves the public centre immediately and can no longer be granted, while grants already made over it stand, because a release that happened is part of the record and un-happening it in the record would be a lie. Restoring is the same call with retired false.  Moving an item an independent auditor signed to the public tier is refused, and refused by the database rather than only here. Only an admin of the org may call it, and the item is resolved in that org's own store, so another org's id is not found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the item to change, taken from the path.
  ///
  /// * [TrustEdit] trustEdit (required):
  Future<Response> patchDataroomTrustArtifactsByIdWithHttpInfo(String id, TrustEdit trustEdit,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataroom/trust/artifacts/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = trustEdit;

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

  /// Amend changes an item on the caller org's trust centre — replace its file with a newer edition, move it between public and gated, rewrite what it says, or retire it — and answers with the item as it now stands.
  ///
  /// Amend changes an item on the caller org's trust centre — replace its file with a newer edition, move it between public and gated, rewrite what it says, or retire it — and answers with the item as it now stands.  Retiring is the withdrawal: the item leaves the public centre immediately and can no longer be granted, while grants already made over it stand, because a release that happened is part of the record and un-happening it in the record would be a lie. Restoring is the same call with retired false.  Moving an item an independent auditor signed to the public tier is refused, and refused by the database rather than only here. Only an admin of the org may call it, and the item is resolved in that org's own store, so another org's id is not found.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the item to change, taken from the path.
  ///
  /// * [TrustEdit] trustEdit (required):
  Future<TrustItemView?> patchDataroomTrustArtifactsById(String id, TrustEdit trustEdit,) async {
    final response = await patchDataroomTrustArtifactsByIdWithHttpInfo(id, trustEdit,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TrustItemView',) as TrustItemView;
    
    }
    return null;
  }

  /// Opens a new data room for the caller org and answers with it, including the short public id it is addressed by.
  ///
  /// Opens a new data room for the caller org and answers with it, including the short public id it is addressed by.  `name` is required; without it the call is refused and the tenant store is untouched, because a dispatch answering 4xx rolls its transaction back. A new room holds no documents and is reachable by NOBODY until a share link is created over it — opening a room and granting access are two separate acts, so a room cannot leak by existing.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DataroomCreate] dataroomCreate (required):
  Future<Response> postDataroomDataroomsWithHttpInfo(DataroomCreate dataroomCreate,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataroom/datarooms';

    // ignore: prefer_final_locals
    Object? postBody = dataroomCreate;

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

  /// Opens a new data room for the caller org and answers with it, including the short public id it is addressed by.
  ///
  /// Opens a new data room for the caller org and answers with it, including the short public id it is addressed by.  `name` is required; without it the call is refused and the tenant store is untouched, because a dispatch answering 4xx rolls its transaction back. A new room holds no documents and is reachable by NOBODY until a share link is created over it — opening a room and granting access are two separate acts, so a room cannot leak by existing.
  ///
  /// Parameters:
  ///
  /// * [DataroomCreate] dataroomCreate (required):
  Future<DataroomRoomOne?> postDataroomDatarooms(DataroomCreate dataroomCreate,) async {
    final response = await postDataroomDataroomsWithHttpInfo(dataroomCreate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DataroomRoomOne',) as DataroomRoomOne;
    
    }
    return null;
  }

  /// Puts an already-uploaded document into one of the caller org's data rooms and answers with the new membership id.
  ///
  /// Puts an already-uploaded document into one of the caller org's data rooms and answers with the new membership id.  It ATTACHES, it never uploads: the bytes must already be stored, so the usual order is upload the document, then add it to the room. Both the room and the document must exist in the caller's own store — either missing is not found — and a document already in the room is refused as a conflict rather than duplicated.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the room to add to. It is the path segment: the URL is the addressing authority, and the org it is resolved in comes from the caller's principal, so an id from another tenant is simply not found.
  ///
  /// * [DataroomAddDocument] dataroomAddDocument (required):
  Future<Response> postDataroomDataroomsByIdDocumentsWithHttpInfo(String id, DataroomAddDocument dataroomAddDocument,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataroom/datarooms/{id}/documents'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = dataroomAddDocument;

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

  /// Puts an already-uploaded document into one of the caller org's data rooms and answers with the new membership id.
  ///
  /// Puts an already-uploaded document into one of the caller org's data rooms and answers with the new membership id.  It ATTACHES, it never uploads: the bytes must already be stored, so the usual order is upload the document, then add it to the room. Both the room and the document must exist in the caller's own store — either missing is not found — and a document already in the room is refused as a conflict rather than duplicated.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the room to add to. It is the path segment: the URL is the addressing authority, and the org it is resolved in comes from the caller's principal, so an id from another tenant is simply not found.
  ///
  /// * [DataroomAddDocument] dataroomAddDocument (required):
  Future<DataroomMembership?> postDataroomDataroomsByIdDocuments(String id, DataroomAddDocument dataroomAddDocument,) async {
    final response = await postDataroomDataroomsByIdDocumentsWithHttpInfo(id, dataroomAddDocument,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DataroomMembership',) as DataroomMembership;
    
    }
    return null;
  }

  /// Upload a document's bytes and record it
  ///
  /// Takes the file ITSELF as the raw request body — not a JSON envelope, not multipart — stores it on the object-storage client, and records the metadata row, answering with the new document. `?name=` names it (default \"document\"), the request's Content-Type is recorded as the document's mime type, and `?numPages=` is optional. That recorded type is metadata the owner sees; what the file is later SERVED as is read from the bytes.  Requires a validated principal; 403 without one. An empty body is 400 and anything over 64 MiB is 413 — a data room holds decks and PDFs, not a media library.  The storage key is 128 random bits under the tenant's own key prefix, minted before the bytes are written: if the system's randomness is unavailable the upload fails 500 rather than fall back to a predictable key that could overwrite another document's bytes. A storage write that fails is 502 and no metadata row is recorded, so a document never exists without its file.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postDataroomDocumentsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataroom/documents';

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

  /// Upload a document's bytes and record it
  ///
  /// Takes the file ITSELF as the raw request body — not a JSON envelope, not multipart — stores it on the object-storage client, and records the metadata row, answering with the new document. `?name=` names it (default \"document\"), the request's Content-Type is recorded as the document's mime type, and `?numPages=` is optional. That recorded type is metadata the owner sees; what the file is later SERVED as is read from the bytes.  Requires a validated principal; 403 without one. An empty body is 400 and anything over 64 MiB is 413 — a data room holds decks and PDFs, not a media library.  The storage key is 128 random bits under the tenant's own key prefix, minted before the bytes are written: if the system's randomness is unavailable the upload fails 500 rather than fall back to a predictable key that could overwrite another document's bytes. A storage write that fails is 502 and no metadata row is recorded, so a document never exists without its file.
  Future<void> postDataroomDocuments() async {
    final response = await postDataroomDocumentsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Grants access: it mints a public share link over one data room (`dataroomId`) or one document (`documentId`) — one of the two is required — and answers with the link, whose `id` is the token a visitor opens it with.
  ///
  /// Grants access: it mints a public share link over one data room (`dataroomId`) or one document (`documentId`) — one of the two is required — and answers with the link, whose `id` is the token a visitor opens it with.  This is how a party is let in. The controls are declared HERE and enforced on the viewer surface: `password` is hashed with bcrypt before storage and is never readable back, `emailProtected` (on by default) makes a visitor state an address, `allowList`/`denyList` narrow which addresses pass, `allowDownload` (off by default) governs downloads, and `expiresAt` closes the link. The target room or document must exist in the caller's own store or it is not found.  Creating a link also writes dataroom's ONE cross-tenant row: the link id to owning org mapping an anonymous visitor is routed through. That write is part of the operation — if it fails the call is 500 — so a link that no visitor could open is never handed back as usable.  The address a visitor later states is recorded UNVERIFIED, so a link gated only by email is openable by anyone the link reaches. Use a password for a link that must not travel.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DataroomLinkCreate] dataroomLinkCreate (required):
  Future<Response> postDataroomLinksWithHttpInfo(DataroomLinkCreate dataroomLinkCreate,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataroom/links';

    // ignore: prefer_final_locals
    Object? postBody = dataroomLinkCreate;

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

  /// Grants access: it mints a public share link over one data room (`dataroomId`) or one document (`documentId`) — one of the two is required — and answers with the link, whose `id` is the token a visitor opens it with.
  ///
  /// Grants access: it mints a public share link over one data room (`dataroomId`) or one document (`documentId`) — one of the two is required — and answers with the link, whose `id` is the token a visitor opens it with.  This is how a party is let in. The controls are declared HERE and enforced on the viewer surface: `password` is hashed with bcrypt before storage and is never readable back, `emailProtected` (on by default) makes a visitor state an address, `allowList`/`denyList` narrow which addresses pass, `allowDownload` (off by default) governs downloads, and `expiresAt` closes the link. The target room or document must exist in the caller's own store or it is not found.  Creating a link also writes dataroom's ONE cross-tenant row: the link id to owning org mapping an anonymous visitor is routed through. That write is part of the operation — if it fails the call is 500 — so a link that no visitor could open is never handed back as usable.  The address a visitor later states is recorded UNVERIFIED, so a link gated only by email is openable by anyone the link reaches. Use a password for a link that must not travel.
  ///
  /// Parameters:
  ///
  /// * [DataroomLinkCreate] dataroomLinkCreate (required):
  Future<DataroomLinkOne?> postDataroomLinks(DataroomLinkCreate dataroomLinkCreate,) async {
    final response = await postDataroomLinksWithHttpInfo(dataroomLinkCreate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DataroomLinkOne',) as DataroomLinkOne;
    
    }
    return null;
  }

  /// Publish puts an item on the caller org's trust centre and answers with it.
  ///
  /// Publish puts an item on the caller org's trust centre and answers with it.  The item is GATED unless it says otherwise, so a kind nobody has thought of yet arrives private and someone has to release it deliberately — that default is what keeps an auditor's report from becoming readable because a field went unset. An item whose attester is \"auditor\" cannot be public at all: the database refuses the pair, so no path through this API can publish one.  A file is optional and is uploaded FIRST, through POST /v1/dataroom/documents, then named here — the data room is the one place bytes enter, so a trust centre document is an ordinary data-room document and inherits its storage, its grants and its page-by-page access record. A gated item that has a file is added to the org's release room, which is what lets a party be granted the whole gated tier in one link.  Only an admin of the org may call it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TrustPublish] trustPublish (required):
  Future<Response> postDataroomTrustArtifactsWithHttpInfo(TrustPublish trustPublish,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataroom/trust/artifacts';

    // ignore: prefer_final_locals
    Object? postBody = trustPublish;

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

  /// Publish puts an item on the caller org's trust centre and answers with it.
  ///
  /// Publish puts an item on the caller org's trust centre and answers with it.  The item is GATED unless it says otherwise, so a kind nobody has thought of yet arrives private and someone has to release it deliberately — that default is what keeps an auditor's report from becoming readable because a field went unset. An item whose attester is \"auditor\" cannot be public at all: the database refuses the pair, so no path through this API can publish one.  A file is optional and is uploaded FIRST, through POST /v1/dataroom/documents, then named here — the data room is the one place bytes enter, so a trust centre document is an ordinary data-room document and inherits its storage, its grants and its page-by-page access record. A gated item that has a file is added to the org's release room, which is what lets a party be granted the whole gated tier in one link.  Only an admin of the org may call it.
  ///
  /// Parameters:
  ///
  /// * [TrustPublish] trustPublish (required):
  Future<TrustItemView?> postDataroomTrustArtifacts(TrustPublish trustPublish,) async {
    final response = await postDataroomTrustArtifactsWithHttpInfo(trustPublish,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TrustItemView',) as TrustItemView;
    
    }
    return null;
  }

  /// Records a request to read what an independent auditor signed, and answers with its id.
  ///
  /// Records a request to read what an independent auditor signed, and answers with its id.  The org that owns the centre decides. Nothing is released here and no link is minted: this writes the ask down, which is the whole promise the form makes. The write is the answer — a request that could not be stored is an error, never a receipt, so a form can never appear to have been sent and be gone.  `email` is required and is the ONLY address the eventual grant will admit, so an address the asker cannot read is an ask that cannot be answered. Where the centre states an NDA, `accept` must be true and the text in force is recorded verbatim against the request.  Asking twice for the same thing from the same address is the SAME ask: the second answers with the first's id rather than opening a second row, which is also what keeps an anonymous endpoint from filling a tenant's store.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the centre's public address, taken from the path.
  ///
  /// * [TrustAsk] trustAsk (required):
  Future<Response> postDataroomTrustCenterBySlugRequestsWithHttpInfo(String slug, TrustAsk trustAsk,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataroom/trust/center/{slug}/requests'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = trustAsk;

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

  /// Records a request to read what an independent auditor signed, and answers with its id.
  ///
  /// Records a request to read what an independent auditor signed, and answers with its id.  The org that owns the centre decides. Nothing is released here and no link is minted: this writes the ask down, which is the whole promise the form makes. The write is the answer — a request that could not be stored is an error, never a receipt, so a form can never appear to have been sent and be gone.  `email` is required and is the ONLY address the eventual grant will admit, so an address the asker cannot read is an ask that cannot be answered. Where the centre states an NDA, `accept` must be true and the text in force is recorded verbatim against the request.  Asking twice for the same thing from the same address is the SAME ask: the second answers with the first's id rather than opening a second row, which is also what keeps an anonymous endpoint from filling a tenant's store.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Slug is the centre's public address, taken from the path.
  ///
  /// * [TrustAsk] trustAsk (required):
  Future<TrustAsked?> postDataroomTrustCenterBySlugRequests(String slug, TrustAsk trustAsk,) async {
    final response = await postDataroomTrustCenterBySlugRequestsWithHttpInfo(slug, trustAsk,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TrustAsked',) as TrustAsked;
    
    }
    return null;
  }

  /// Grant answers a request by opening access: it mints a share link over what was asked for, addressed to the address that asked and closing at expiry, records the decision, and mails the asker.
  ///
  /// Grant answers a request by opening access: it mints a share link over what was asked for, addressed to the address that asked and closing at expiry, records the decision, and mails the asker.  The link is NEVER a public URL. It carries the asker's address on its allow list, so forwarding it to somebody else does not open it, and it expires. What the party then does with it — which document, which page, for how long — is recorded by the data room's own view tracking, which is where the access record for this release lives; there is no second log.  A request that was already answered is refused rather than answered twice, so a second click cannot mint a second link. Only an admin of the org may call it, and the request is resolved in that org's own store, so another org's request id is not found — which is also what stops one org deciding another's queue.  Mail is best effort and the grant does not depend on it: a deployment that sends no mail still records the grant and says so in `delivery`, so the approver knows to pass the address on themselves.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the request to answer, taken from the path.
  ///
  /// * [TrustDecision] trustDecision (required):
  Future<Response> postDataroomTrustRequestsByIdGrantWithHttpInfo(String id, TrustDecision trustDecision,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataroom/trust/requests/{id}/grant'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = trustDecision;

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

  /// Grant answers a request by opening access: it mints a share link over what was asked for, addressed to the address that asked and closing at expiry, records the decision, and mails the asker.
  ///
  /// Grant answers a request by opening access: it mints a share link over what was asked for, addressed to the address that asked and closing at expiry, records the decision, and mails the asker.  The link is NEVER a public URL. It carries the asker's address on its allow list, so forwarding it to somebody else does not open it, and it expires. What the party then does with it — which document, which page, for how long — is recorded by the data room's own view tracking, which is where the access record for this release lives; there is no second log.  A request that was already answered is refused rather than answered twice, so a second click cannot mint a second link. Only an admin of the org may call it, and the request is resolved in that org's own store, so another org's request id is not found — which is also what stops one org deciding another's queue.  Mail is best effort and the grant does not depend on it: a deployment that sends no mail still records the grant and says so in `delivery`, so the approver knows to pass the address on themselves.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the request to answer, taken from the path.
  ///
  /// * [TrustDecision] trustDecision (required):
  Future<TrustGranted?> postDataroomTrustRequestsByIdGrant(String id, TrustDecision trustDecision,) async {
    final response = await postDataroomTrustRequestsByIdGrantWithHttpInfo(id, trustDecision,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TrustGranted',) as TrustGranted;
    
    }
    return null;
  }

  /// Refuse answers a request by declining it, recording who declined and why.
  ///
  /// Refuse answers a request by declining it, recording who declined and why.  Nothing is released and no link is minted. The refusal STAYS on the record beside the ask — a request that was turned down is part of the access record exactly as one that was granted is, and deleting it would leave a queue that only ever shows the decisions somebody liked.  A request that was already answered is refused rather than answered twice. Only an admin of the org may call it, and the request is resolved in that org's own store, so another org's request id is not found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the request to answer, taken from the path.
  ///
  /// * [TrustDecision] trustDecision (required):
  Future<Response> postDataroomTrustRequestsByIdRefuseWithHttpInfo(String id, TrustDecision trustDecision,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataroom/trust/requests/{id}/refuse'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = trustDecision;

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

  /// Refuse answers a request by declining it, recording who declined and why.
  ///
  /// Refuse answers a request by declining it, recording who declined and why.  Nothing is released and no link is minted. The refusal STAYS on the record beside the ask — a request that was turned down is part of the access record exactly as one that was granted is, and deleting it would leave a queue that only ever shows the decisions somebody liked.  A request that was already answered is refused rather than answered twice. Only an admin of the org may call it, and the request is resolved in that org's own store, so another org's request id is not found.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the request to answer, taken from the path.
  ///
  /// * [TrustDecision] trustDecision (required):
  Future<TrustRefused?> postDataroomTrustRequestsByIdRefuse(String id, TrustDecision trustDecision,) async {
    final response = await postDataroomTrustRequestsByIdRefuseWithHttpInfo(id, trustDecision,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TrustRefused',) as TrustRefused;
    
    }
    return null;
  }

  /// Pass a share link's gates and open a viewing session
  ///
  /// Clears the link's access controls and answers with the viewing session — a `viewId`, whether download is permitted, and the documents behind the link — which every later viewer call is authorised by.  No principal: the visitor is whoever holds the link id, and the org is resolved from it. The gates run in a fixed order and each is a flat refusal, never a hint. An archived or unknown link is 404 and an expired one 403. A missing address on an email-protected link is 401. An address on the deny list is 403, checked BEFORE the allow list so deny always wins. An address the allow list does not admit is 403 — an EMPTY allow list admits everyone, so a link with no list enforces the email gate alone. A wrong or absent password is 401, decided against the stored bcrypt hash.  The address is taken as stated and recorded UNVERIFIED: it names a viewer for analytics and repeat visits from it reuse one viewer record, but it proves nothing about who is on the other end. A link gated only by email is openable by anyone the link reaches.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] linkId (required):
  Future<Response> postDataroomViewByLinkidAuthenticateWithHttpInfo(String linkId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataroom/view/{linkId}/authenticate'
      .replaceAll('{linkId}', linkId);

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

  /// Pass a share link's gates and open a viewing session
  ///
  /// Clears the link's access controls and answers with the viewing session — a `viewId`, whether download is permitted, and the documents behind the link — which every later viewer call is authorised by.  No principal: the visitor is whoever holds the link id, and the org is resolved from it. The gates run in a fixed order and each is a flat refusal, never a hint. An archived or unknown link is 404 and an expired one 403. A missing address on an email-protected link is 401. An address on the deny list is 403, checked BEFORE the allow list so deny always wins. An address the allow list does not admit is 403 — an EMPTY allow list admits everyone, so a link with no list enforces the email gate alone. A wrong or absent password is 401, decided against the stored bcrypt hash.  The address is taken as stated and recorded UNVERIFIED: it names a viewer for analytics and repeat visits from it reuse one viewer record, but it proves nothing about who is on the other end. A link gated only by email is openable by anyone the link reaches.
  ///
  /// Parameters:
  ///
  /// * [String] linkId (required):
  Future<void> postDataroomViewByLinkidAuthenticate(String linkId,) async {
    final response = await postDataroomViewByLinkidAuthenticateWithHttpInfo(linkId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Record one page-view against an open viewing session
  ///
  /// Appends a single per-page analytics event — {viewId, pageNumber, documentId, versionNumber, duration} — and answers with its id. These events are what the owner's analytics count.  No principal: the `viewId` from the authenticate step IS the authorisation, and it must belong to THIS link or the call is 404, so a session opened on one link cannot write events onto another. `pageNumber` is required (400 without it); `documentId` falls back to the document the session was opened on, and `duration` is the caller's own dwell measure, summed per page by analytics.  Events are additive: the same page reported twice is two views, which is the metric's whole point.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] linkId (required):
  Future<Response> postDataroomViewByLinkidPageviewWithHttpInfo(String linkId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataroom/view/{linkId}/pageview'
      .replaceAll('{linkId}', linkId);

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

  /// Record one page-view against an open viewing session
  ///
  /// Appends a single per-page analytics event — {viewId, pageNumber, documentId, versionNumber, duration} — and answers with its id. These events are what the owner's analytics count.  No principal: the `viewId` from the authenticate step IS the authorisation, and it must belong to THIS link or the call is 404, so a session opened on one link cannot write events onto another. `pageNumber` is required (400 without it); `documentId` falls back to the document the session was opened on, and `duration` is the caller's own dwell measure, summed per page by analytics.  Events are additive: the same page reported twice is two views, which is the metric's whole point.
  ///
  /// Parameters:
  ///
  /// * [String] linkId (required):
  Future<void> postDataroomViewByLinkidPageview(String linkId,) async {
    final response = await postDataroomViewByLinkidPageviewWithHttpInfo(linkId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// SetCenter opens, publishes or withdraws the caller org's trust centre and answers with the centre as it now stands.
  ///
  /// SetCenter opens, publishes or withdraws the caller org's trust centre and answers with the centre as it now stands.  Publishing requires a name and an address, and the address must be free: another org already answering there is a conflict, never a takeover. Withdrawing closes the public endpoint only — items, grants and the access record are untouched, so an org can go quiet and come back without losing anything.  Only an admin of the org may call it. The org is the caller's own, so there is no field naming one and no way to point this at another tenant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TrustSettings] trustSettings (required):
  Future<Response> putDataroomTrustWithHttpInfo(TrustSettings trustSettings,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataroom/trust';

    // ignore: prefer_final_locals
    Object? postBody = trustSettings;

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

  /// SetCenter opens, publishes or withdraws the caller org's trust centre and answers with the centre as it now stands.
  ///
  /// SetCenter opens, publishes or withdraws the caller org's trust centre and answers with the centre as it now stands.  Publishing requires a name and an address, and the address must be free: another org already answering there is a conflict, never a takeover. Withdrawing closes the public endpoint only — items, grants and the access record are untouched, so an org can go quiet and come back without losing anything.  Only an admin of the org may call it. The org is the caller's own, so there is no field naming one and no way to point this at another tenant.
  ///
  /// Parameters:
  ///
  /// * [TrustSettings] trustSettings (required):
  Future<TrustDesk?> putDataroomTrust(TrustSettings trustSettings,) async {
    final response = await putDataroomTrustWithHttpInfo(trustSettings,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TrustDesk',) as TrustDesk;
    
    }
    return null;
  }
}
