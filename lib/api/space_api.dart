//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class SpaceApi {
  SpaceApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Removes an EMPTY drive and answers 204.
  ///
  /// Removes an EMPTY drive and answers 204.  A drive holding files is 409 rather than a cascade: deleting an org's files behind a single drive call is not a thing this surface will do silently. A drive or space the caller's org does not own is the same 404 an unknown name gives.  Billed per call: the balance is checked BEFORE anything is touched, so an unfunded org is refused with nothing deleted, and the debit lands only once the drive is gone.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] space (required):
  ///   Space is the space's name, from the path.
  ///
  /// * [String] drive (required):
  ///   Drive is the drive's name, from the path.
  Future<Response> deleteSpaceBySpaceDrivesByDriveWithHttpInfo(String space, String drive,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/space/{space}/drives/{drive}'
      .replaceAll('{space}', space)
      .replaceAll('{drive}', drive);

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

  /// Removes an EMPTY drive and answers 204.
  ///
  /// Removes an EMPTY drive and answers 204.  A drive holding files is 409 rather than a cascade: deleting an org's files behind a single drive call is not a thing this surface will do silently. A drive or space the caller's org does not own is the same 404 an unknown name gives.  Billed per call: the balance is checked BEFORE anything is touched, so an unfunded org is refused with nothing deleted, and the debit lands only once the drive is gone.
  ///
  /// Parameters:
  ///
  /// * [String] space (required):
  ///   Space is the space's name, from the path.
  ///
  /// * [String] drive (required):
  ///   Drive is the drive's name, from the path.
  Future<void> deleteSpaceBySpaceDrivesByDrive(String space, String drive,) async {
    final response = await deleteSpaceBySpaceDrivesByDriveWithHttpInfo(space, drive,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists a space's drives.
  ///
  /// Lists a space's drives.  Listing the drives IS listing the space's root folder, because a drive is the first segment of a key and nothing else — so the two can never disagree the way a drives table and the keys under it would. A space the caller's org does not own is the same 404 an unknown name gives.  Billed per call: the balance is checked BEFORE anything is touched, so an unfunded org is refused with nothing read, and the debit lands only once the listing has succeeded.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] space (required):
  ///   Space is the space's name, from the path.
  Future<Response> getSpaceBySpaceDrivesWithHttpInfo(String space,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/space/{space}/drives'
      .replaceAll('{space}', space);

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

  /// Lists a space's drives.
  ///
  /// Lists a space's drives.  Listing the drives IS listing the space's root folder, because a drive is the first segment of a key and nothing else — so the two can never disagree the way a drives table and the keys under it would. A space the caller's org does not own is the same 404 an unknown name gives.  Billed per call: the balance is checked BEFORE anything is touched, so an unfunded org is refused with nothing read, and the debit lands only once the listing has succeeded.
  ///
  /// Parameters:
  ///
  /// * [String] space (required):
  ///   Space is the space's name, from the path.
  Future<DriveList?> getSpaceBySpaceDrives(String space,) async {
    final response = await getSpaceBySpaceDrivesWithHttpInfo(space,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DriveList',) as DriveList;
    
    }
    return null;
  }

  /// Lists one folder level of a drive.
  ///
  /// Lists one folder level of a drive.  Folder-style by default: sub-folders come back as folder entries, which is the file-manager view. `?recursive=true` lists every file flat under the folder instead. Names are RELATIVE to `?folder=`, and the listing is bounded so a huge drive cannot exhaust memory — Total is what came back, not what the drive holds.  Billed per call: the balance is checked BEFORE anything is touched, so an unfunded org is refused with nothing read, and the debit lands only once the listing has succeeded.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] space (required):
  ///   Space is the space to list in, from the path.
  ///
  /// * [String] drive (required):
  ///   Drive is the drive to list, from the path.
  ///
  /// * [String] folder:
  ///
  /// * [String] recursive:
  Future<Response> getSpaceBySpaceDrivesByDriveFilesWithHttpInfo(String space, String drive, { String? folder, String? recursive, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/space/{space}/drives/{drive}/files'
      .replaceAll('{space}', space)
      .replaceAll('{drive}', drive);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (folder != null) {
      queryParams.addAll(_queryParams('', 'folder', folder));
    }
    if (recursive != null) {
      queryParams.addAll(_queryParams('', 'recursive', recursive));
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

  /// Lists one folder level of a drive.
  ///
  /// Lists one folder level of a drive.  Folder-style by default: sub-folders come back as folder entries, which is the file-manager view. `?recursive=true` lists every file flat under the folder instead. Names are RELATIVE to `?folder=`, and the listing is bounded so a huge drive cannot exhaust memory — Total is what came back, not what the drive holds.  Billed per call: the balance is checked BEFORE anything is touched, so an unfunded org is refused with nothing read, and the debit lands only once the listing has succeeded.
  ///
  /// Parameters:
  ///
  /// * [String] space (required):
  ///   Space is the space to list in, from the path.
  ///
  /// * [String] drive (required):
  ///   Drive is the drive to list, from the path.
  ///
  /// * [String] folder:
  ///
  /// * [String] recursive:
  Future<FileList?> getSpaceBySpaceDrivesByDriveFiles(String space, String drive, { String? folder, String? recursive, }) async {
    final response = await getSpaceBySpaceDrivesByDriveFilesWithHttpInfo(space, drive,  folder: folder, recursive: recursive, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FileList',) as FileList;
    
    }
    return null;
  }

  /// Health reports whether this deployment can serve spaces, drives and files.
  ///
  /// Health reports whether this deployment can serve spaces, drives and files.  It is a REAL probe rather than a constant: 200 when object-store credentials are present, so the store is reachable in principle, and 503 with the reason when they are not. It is deliberately NOT gated — liveness has to be probe-able without a token — so it is the one operation here that names no space and bills nothing.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSpaceHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/space/health';

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

  /// Health reports whether this deployment can serve spaces, drives and files.
  ///
  /// Health reports whether this deployment can serve spaces, drives and files.  It is a REAL probe rather than a constant: 200 when object-store credentials are present, so the store is reachable in principle, and 503 with the reason when they are not. It is deliberately NOT gated — liveness has to be probe-able without a token — so it is the one operation here that names no space and bills nothing.
  Future<SpaceHealth?> getSpaceHealth() async {
    final response = await getSpaceHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SpaceHealth',) as SpaceHealth;
    
    }
    return null;
  }

  /// Lists the caller org's own spaces.
  ///
  /// Lists the caller org's own spaces.  Only the caller's: every space is physically named under a per-org prefix and the listing strips that prefix, so another org's spaces are not in the answer at all. Another org's space is not refused but INVISIBLE, so this cannot be used to learn that a name is taken elsewhere.  Billed per call: the balance is checked BEFORE anything is touched, so an unfunded org is refused with nothing done, and the debit lands only once the work has succeeded.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSpaceSpacesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/space/spaces';

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

  /// Lists the caller org's own spaces.
  ///
  /// Lists the caller org's own spaces.  Only the caller's: every space is physically named under a per-org prefix and the listing strips that prefix, so another org's spaces are not in the answer at all. Another org's space is not refused but INVISIBLE, so this cannot be used to learn that a name is taken elsewhere.  Billed per call: the balance is checked BEFORE anything is touched, so an unfunded org is refused with nothing done, and the debit lands only once the work has succeeded.
  Future<SpaceList?> getSpaceSpaces() async {
    final response = await getSpaceSpacesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SpaceList',) as SpaceList;
    
    }
    return null;
  }

  /// Makes a new drive in a space and answers 201 with it.
  ///
  /// Makes a new drive in a space and answers 201 with it.  A drive is a PREFIX and not a bucket, so making one writes a zero-byte marker at \"<name>/\" — which is what makes an empty drive visible to a listing that has no other key to find. A name already taken in the space is 409.  Billed per call: the balance is checked BEFORE anything is touched, so an unfunded org is refused with nothing created, and the debit lands only once the drive exists.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] space (required):
  ///   Space is the space to create the drive in, from the path. It carries NO `url:\"-\"`, unlike the field below it, and the difference is the whole reason both tags are written out: zip's binder skips a field tagged \"-\" for EVERY URL source, path params included, so a path-borne value that carried it would arrive empty and the create would refuse a perfectly good address.
  ///
  /// * [DriveIn] driveIn (required):
  Future<Response> postSpaceBySpaceDrivesWithHttpInfo(String space, DriveIn driveIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/space/{space}/drives'
      .replaceAll('{space}', space);

    // ignore: prefer_final_locals
    Object? postBody = driveIn;

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

  /// Makes a new drive in a space and answers 201 with it.
  ///
  /// Makes a new drive in a space and answers 201 with it.  A drive is a PREFIX and not a bucket, so making one writes a zero-byte marker at \"<name>/\" — which is what makes an empty drive visible to a listing that has no other key to find. A name already taken in the space is 409.  Billed per call: the balance is checked BEFORE anything is touched, so an unfunded org is refused with nothing created, and the debit lands only once the drive exists.
  ///
  /// Parameters:
  ///
  /// * [String] space (required):
  ///   Space is the space to create the drive in, from the path. It carries NO `url:\"-\"`, unlike the field below it, and the difference is the whole reason both tags are written out: zip's binder skips a field tagged \"-\" for EVERY URL source, path params included, so a path-borne value that carried it would arrive empty and the create would refuse a perfectly good address.
  ///
  /// * [DriveIn] driveIn (required):
  Future<DriveItem?> postSpaceBySpaceDrives(String space, DriveIn driveIn,) async {
    final response = await postSpaceBySpaceDrivesWithHttpInfo(space, driveIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DriveItem',) as DriveItem;
    
    }
    return null;
  }

  /// Makes a new space for the caller's org and answers 201 with it.
  ///
  /// Makes a new space for the caller's org and answers 201 with it.  The one bucket a space's files live in is derived from the caller's VALIDATED org, so an org can only ever create inside its own namespace and no request field can redirect that. A name already taken in the org is 409.  Billed per call: the balance is checked BEFORE anything is touched, so an unfunded org is refused with nothing created, and the debit lands only once the space exists.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SpaceIn] spaceIn (required):
  Future<Response> postSpaceSpacesWithHttpInfo(SpaceIn spaceIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/space/spaces';

    // ignore: prefer_final_locals
    Object? postBody = spaceIn;

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

  /// Makes a new space for the caller's org and answers 201 with it.
  ///
  /// Makes a new space for the caller's org and answers 201 with it.  The one bucket a space's files live in is derived from the caller's VALIDATED org, so an org can only ever create inside its own namespace and no request field can redirect that. A name already taken in the org is 409.  Billed per call: the balance is checked BEFORE anything is touched, so an unfunded org is refused with nothing created, and the debit lands only once the space exists.
  ///
  /// Parameters:
  ///
  /// * [SpaceIn] spaceIn (required):
  Future<SpaceItem?> postSpaceSpaces(SpaceIn spaceIn,) async {
    final response = await postSpaceSpacesWithHttpInfo(spaceIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SpaceItem',) as SpaceItem;
    
    }
    return null;
  }
}
