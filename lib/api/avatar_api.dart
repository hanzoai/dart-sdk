//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class AvatarApi {
  AvatarApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Fetch a profile photo
  ///
  /// Streams a profile photo's raw BYTES. This is the address stored on the user's IAM record and rendered directly by an `<img>`, so it takes no credentials — the 64-hex content digest in the path is the capability, and it can only be produced by someone who already has the image.  The Content-Type is derived from the stored bytes and the response carries nosniff, so only a real raster image is ever served and only under its true type. Anything else — a miss, a malformed path, an object that is not an image — is one 404, and a hit caches for a year because the address is the content.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] user (required):
  ///
  /// * [String] digest (required):
  Future<Response> getAvatarByOrgByUserByDigestWithHttpInfo(String org, String user, String digest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/avatar/{org}/{user}/{digest}'
      .replaceAll('{org}', org)
      .replaceAll('{user}', user)
      .replaceAll('{digest}', digest);

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

  /// Fetch a profile photo
  ///
  /// Streams a profile photo's raw BYTES. This is the address stored on the user's IAM record and rendered directly by an `<img>`, so it takes no credentials — the 64-hex content digest in the path is the capability, and it can only be produced by someone who already has the image.  The Content-Type is derived from the stored bytes and the response carries nosniff, so only a real raster image is ever served and only under its true type. Anything else — a miss, a malformed path, an object that is not an image — is one 404, and a hit caches for a year because the address is the content.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] user (required):
  ///
  /// * [String] digest (required):
  Future<void> getAvatarByOrgByUserByDigest(String org, String user, String digest,) async {
    final response = await getAvatarByOrgByUserByDigestWithHttpInfo(org, user, digest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Set your profile photo
  ///
  /// Stores one image as the signed-in user's profile photo and answers the URL it is served from, which is also written to the user's IAM record — so every surface that already renders `avatar` picks it up with no further call.  The body is a multipart form with a `file` part. The format is decided by the BYTES, never the filename or the part's Content-Type: png, jpeg, gif and webp are accepted and everything else is refused with 415, so an SVG cannot be stored as a picture and later served as a program. Over 8 MiB is 413; empty is 400.  The photo is addressed by the sha256 of its bytes, so setting a new one yields a new URL rather than a stale cache of the old face. The caller is taken from the validated identity ONLY — there is no way to name a different subject — so this always sets your own photo, and a caller with no organization yet is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postAvatarWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/avatar';

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

  /// Set your profile photo
  ///
  /// Stores one image as the signed-in user's profile photo and answers the URL it is served from, which is also written to the user's IAM record — so every surface that already renders `avatar` picks it up with no further call.  The body is a multipart form with a `file` part. The format is decided by the BYTES, never the filename or the part's Content-Type: png, jpeg, gif and webp are accepted and everything else is refused with 415, so an SVG cannot be stored as a picture and later served as a program. Over 8 MiB is 413; empty is 400.  The photo is addressed by the sha256 of its bytes, so setting a new one yields a new URL rather than a stale cache of the old face. The caller is taken from the validated identity ONLY — there is no way to name a different subject — so this always sets your own photo, and a caller with no organization yet is refused.
  Future<void> postAvatar() async {
    final response = await postAvatarWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
