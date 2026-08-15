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
  /// Streams the stored file back under its recorded content type, falling back to application/octet-stream when none was recorded.  Requires a validated principal; 403 without one, and the document is resolved in the caller's own tenant store, so another org's id is a 404. This is the OWNER's path and applies no link gate at all — the per-link password, email and download controls live on the viewer surface, not here. Bytes that cannot be fetched from object storage are 502, never a truncated or empty file.
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
  /// Streams the stored file back under its recorded content type, falling back to application/octet-stream when none was recorded.  Requires a validated principal; 403 without one, and the document is resolved in the caller's own tenant store, so another org's id is a 404. This is the OWNER's path and applies no link gate at all — the per-link password, email and download controls live on the viewer surface, not here. Bytes that cannot be fetched from object storage are 502, never a truncated or empty file.
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

  /// Liveness of the dataroom subsystem
  ///
  /// Answers {service, status} unconditionally — no principal, no tenant. It is registered BEFORE the bundle, the link index and the object-storage seam are wired, so it keeps answering when any of those fail and the subsystem degrades to health-only. That is the point, and the limit: a 200 here says the process is alive, never that a data room can be read or written.
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

  /// Liveness of the dataroom subsystem
  ///
  /// Answers {service, status} unconditionally — no principal, no tenant. It is registered BEFORE the bundle, the link index and the object-storage seam are wired, so it keeps answering when any of those fail and the subsystem degrades to health-only. That is the point, and the limit: a 200 here says the process is alive, never that a data room can be read or written.
  Future<void> getDataroomHealth() async {
    final response = await getDataroomHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
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
  /// Streams a document's bytes under its recorded content type to a visitor holding an open viewing session.  No principal: `?viewId=` from the authenticate step is the authorisation and must belong to this link, or the call is 403 — holding the link id alone gets no bytes. The document must be reachable THROUGH this link (a member of the room the link opens, or the single document the link names), so a visitor cannot walk to an unrelated document by guessing an id; anything else is a 404, as is an unknown or archived link. Bytes that cannot be fetched from object storage are 502.  `?download=1` additionally requires the link's `allowDownload` and is 403 when the owner did not permit it. Read that flag precisely: it gates the DOWNLOAD intent, not access to the bytes — without the parameter an authorised visitor is served the file for in-place viewing whether or not downloads are allowed.
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
  /// Streams a document's bytes under its recorded content type to a visitor holding an open viewing session.  No principal: `?viewId=` from the authenticate step is the authorisation and must belong to this link, or the call is 403 — holding the link id alone gets no bytes. The document must be reachable THROUGH this link (a member of the room the link opens, or the single document the link names), so a visitor cannot walk to an unrelated document by guessing an id; anything else is a 404, as is an unknown or archived link. Bytes that cannot be fetched from object storage are 502.  `?download=1` additionally requires the link's `allowDownload` and is 403 when the owner did not permit it. Read that flag precisely: it gates the DOWNLOAD intent, not access to the bytes — without the parameter an authorised visitor is served the file for in-place viewing whether or not downloads are allowed.
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
  /// Takes the file ITSELF as the raw request body — not a JSON envelope, not multipart — stores it on the object-storage seam, and records the metadata row, answering with the new document. `?name=` names it (default \"document\"), the request's Content-Type becomes the recorded mime type, and `?numPages=` is optional.  Requires a validated principal; 403 without one. An empty body is 400 and anything over 64 MiB is 413 — a data room holds decks and PDFs, not a media library.  The storage key is 128 random bits under the tenant's own key prefix, minted before the bytes are written: if the system's randomness is unavailable the upload fails 500 rather than fall back to a predictable key that could overwrite another document's bytes. A storage write that fails is 502 and no metadata row is recorded, so a document never exists without its file.
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
  /// Takes the file ITSELF as the raw request body — not a JSON envelope, not multipart — stores it on the object-storage seam, and records the metadata row, answering with the new document. `?name=` names it (default \"document\"), the request's Content-Type becomes the recorded mime type, and `?numPages=` is optional.  Requires a validated principal; 403 without one. An empty body is 400 and anything over 64 MiB is 413 — a data room holds decks and PDFs, not a media library.  The storage key is 128 random bits under the tenant's own key prefix, minted before the bytes are written: if the system's randomness is unavailable the upload fails 500 rather than fall back to a predictable key that could overwrite another document's bytes. A storage write that fails is 502 and no metadata row is recorded, so a document never exists without its file.
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
}
