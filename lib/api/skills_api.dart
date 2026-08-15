//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class SkillsApi {
  SkillsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Removes one of the caller org's authored skills.
  ///
  /// Removes one of the caller org's authored skills. Scoped to the caller's org, so an id belonging to another tenant is never reached. Removing what is not there is not an error — the caller's intent is \"gone\", and it is.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the skill to remove, from the path. It is the skill's name.
  Future<Response> deleteSkillsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/skills/{id}'
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

  /// Removes one of the caller org's authored skills.
  ///
  /// Removes one of the caller org's authored skills. Scoped to the caller's org, so an id belonging to another tenant is never reached. Removing what is not there is not an error — the caller's intent is \"gone\", and it is.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the skill to remove, from the path. It is the skill's name.
  Future<SkillDeleted?> deleteSkillsById(String id,) async {
    final response = await deleteSkillsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SkillDeleted',) as SkillDeleted;
    
    }
    return null;
  }

  /// Lists the skills the caller's org can reach — the brand's embedded catalogue plus the org's own authored ones — with each one's activation flag.
  ///
  /// Lists the skills the caller's org can reach — the brand's embedded catalogue plus the org's own authored ones — with each one's activation flag. A skill is discovery and activation metadata attached to an agent, never called directly, so every entry here is non-dispatchable. It is GET /v1/tools narrowed to one source, not a second store: a name a caller sees here is the same entry, with the same activation state, that discovery reports.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] activated:
  ///   Activated keeps only the tools activated for the caller's org and project, and only when it is exactly the string \"true\".
  Future<Response> getSkillsWithHttpInfo({ String? activated, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/skills';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (activated != null) {
      queryParams.addAll(_queryParams('', 'activated', activated));
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

  /// Lists the skills the caller's org can reach — the brand's embedded catalogue plus the org's own authored ones — with each one's activation flag.
  ///
  /// Lists the skills the caller's org can reach — the brand's embedded catalogue plus the org's own authored ones — with each one's activation flag. A skill is discovery and activation metadata attached to an agent, never called directly, so every entry here is non-dispatchable. It is GET /v1/tools narrowed to one source, not a second store: a name a caller sees here is the same entry, with the same activation state, that discovery reports.
  ///
  /// Parameters:
  ///
  /// * [String] activated:
  ///   Activated keeps only the tools activated for the caller's org and project, and only when it is exactly the string \"true\".
  Future<SourceToolList?> getSkills({ String? activated, }) async {
    final response = await getSkillsWithHttpInfo( activated: activated, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SourceToolList',) as SourceToolList;
    
    }
    return null;
  }

  /// Lists the caller org's OWN skills with their SKILL.md bodies.
  ///
  /// Lists the caller org's OWN skills with their SKILL.md bodies. GET /v1/skills is the registry view — the brand's catalogue plus this org's, with activation flags and no bodies; this is the EDITABLE set, so it carries the content that view omits and nothing the org did not write.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSkillsAuthoredWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/skills/authored';

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

  /// Lists the caller org's OWN skills with their SKILL.md bodies.
  ///
  /// Lists the caller org's OWN skills with their SKILL.md bodies. GET /v1/skills is the registry view — the brand's catalogue plus this org's, with activation flags and no bodies; this is the EDITABLE set, so it carries the content that view omits and nothing the org did not write.
  Future<AuthoredSkillList?> getSkillsAuthored() async {
    final response = await getSkillsAuthoredWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthoredSkillList',) as AuthoredSkillList;
    
    }
    return null;
  }

  /// Adds or revises one of the caller org's own skills, and answers 201 with the stored record.
  ///
  /// Adds or revises one of the caller org's own skills, and answers 201 with the stored record. The id is derived from the name, so writing the same name again REVISES that skill rather than accumulating near-duplicates that would then collide in the registry. An org's skills are private to it by construction — they live in a different store from the brand's embedded catalogue and have no path into the public gallery — and a brand skill always wins a name collision against an org's.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SkillIn] skillIn (required):
  Future<Response> postSkillsWithHttpInfo(SkillIn skillIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/skills';

    // ignore: prefer_final_locals
    Object? postBody = skillIn;

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

  /// Adds or revises one of the caller org's own skills, and answers 201 with the stored record.
  ///
  /// Adds or revises one of the caller org's own skills, and answers 201 with the stored record. The id is derived from the name, so writing the same name again REVISES that skill rather than accumulating near-duplicates that would then collide in the registry. An org's skills are private to it by construction — they live in a different store from the brand's embedded catalogue and have no path into the public gallery — and a brand skill always wins a name collision against an org's.
  ///
  /// Parameters:
  ///
  /// * [SkillIn] skillIn (required):
  Future<SkillWritten?> postSkills(SkillIn skillIn,) async {
    final response = await postSkillsWithHttpInfo(skillIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SkillWritten',) as SkillWritten;
    
    }
    return null;
  }
}
