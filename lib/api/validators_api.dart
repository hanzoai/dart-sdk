//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class ValidatorsApi {
  ValidatorsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns the validator slots the caller's org has claimed.
  ///
  /// Returns the validator slots the caller's org has claimed.  One entry per claimed slot with its node identity, its live-ish node status and the owner-gated registration queued for it, if any. Slots are org-scoped by the validated identity, so a caller can only ever see their own — a slot claimed by another org is not merely hidden from this list, it is unreachable through the whole surface.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] limit:
  ///   Limit is how many slots to return, as a decimal string in the `?limit=` query. Absent, unparseable or non-positive means 200; over 1000 is clamped to 1000. It is a string rather than a number because the parse that has always served this route trims surrounding whitespace, and one parse rule is better than two.
  Future<Response> getValidatorsWithHttpInfo({ String? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/validators';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Returns the validator slots the caller's org has claimed.
  ///
  /// Returns the validator slots the caller's org has claimed.  One entry per claimed slot with its node identity, its live-ish node status and the owner-gated registration queued for it, if any. Slots are org-scoped by the validated identity, so a caller can only ever see their own — a slot claimed by another org is not merely hidden from this list, it is unreachable through the whole surface.
  ///
  /// Parameters:
  ///
  /// * [String] limit:
  ///   Limit is how many slots to return, as a decimal string in the `?limit=` query. Absent, unparseable or non-positive means 200; over 1000 is clamped to 1000. It is a string rather than a number because the parse that has always served this route trims surrounding whitespace, and one parse rule is better than two.
  Future<ValidatorList?> getValidators({ String? limit, }) async {
    final response = await getValidatorsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ValidatorList',) as ValidatorList;
    
    }
    return null;
  }

  /// Returns one claimed validator slot, scoped to the caller's org.
  ///
  /// Returns one claimed validator slot, scoped to the caller's org.  A slot another org holds, and a slot nobody holds, are both 404 — never a different status, so this route cannot be used to probe which slots are taken.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tokenId (required):
  ///   TokenID is the slot's GenesisNFT token id, from the path, as a decimal string. A value that is not a positive integer is 400. It is a string rather than a number because the parse that has always served this route trims surrounding whitespace, and one parse rule is better than two.
  Future<Response> getValidatorsByTokenidWithHttpInfo(String tokenId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/validators/{tokenId}'
      .replaceAll('{tokenId}', tokenId);

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

  /// Returns one claimed validator slot, scoped to the caller's org.
  ///
  /// Returns one claimed validator slot, scoped to the caller's org.  A slot another org holds, and a slot nobody holds, are both 404 — never a different status, so this route cannot be used to probe which slots are taken.
  ///
  /// Parameters:
  ///
  /// * [String] tokenId (required):
  ///   TokenID is the slot's GenesisNFT token id, from the path, as a decimal string. A value that is not a positive integer is 400. It is a string rather than a number because the parse that has always served this route trims surrounding whitespace, and one parse rule is better than two.
  Future<SlotView?> getValidatorsByTokenid(String tokenId,) async {
    final response = await getValidatorsByTokenidWithHttpInfo(tokenId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SlotView',) as SlotView;
    
    }
    return null;
  }

  /// Issues the single-use nonce and the exact message a wallet must sign to claim a validator slot.
  ///
  /// Issues the single-use nonce and the exact message a wallet must sign to claim a validator slot.  The nonce is bound to (validated org, slot) and stored server-side, so a signature obtained for one org or one slot can never be replayed for another, and the message POST /v1/validators verifies is rebuilt from those same server facts rather than trusted from the caller. Redeem it with POST /v1/validators before it expires; it can be redeemed once.  A tokenId outside the Validator tier is refused here rather than after signing.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tokenId:
  ///   TokenID is the Validator-tier GenesisNFT token id, as a decimal string in the `?tokenId=` query. A value that is not a positive integer is 400. It is a string rather than a number because the parse that has always served this route trims surrounding whitespace, and one parse rule is better than two.
  Future<Response> getValidatorsChallengeWithHttpInfo({ String? tokenId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/validators/challenge';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (tokenId != null) {
      queryParams.addAll(_queryParams('', 'tokenId', tokenId));
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

  /// Issues the single-use nonce and the exact message a wallet must sign to claim a validator slot.
  ///
  /// Issues the single-use nonce and the exact message a wallet must sign to claim a validator slot.  The nonce is bound to (validated org, slot) and stored server-side, so a signature obtained for one org or one slot can never be replayed for another, and the message POST /v1/validators verifies is rebuilt from those same server facts rather than trusted from the caller. Redeem it with POST /v1/validators before it expires; it can be redeemed once.  A tokenId outside the Validator tier is refused here rather than after signing.
  ///
  /// Parameters:
  ///
  /// * [String] tokenId:
  ///   TokenID is the Validator-tier GenesisNFT token id, as a decimal string in the `?tokenId=` query. A value that is not a positive integer is 400. It is a string rather than a number because the parse that has always served this route trims surrounding whitespace, and one parse rule is better than two.
  Future<ChallengeView?> getValidatorsChallenge({ String? tokenId, }) async {
    final response = await getValidatorsChallengeWithHttpInfo( tokenId: tokenId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ChallengeView',) as ChallengeView;
    
    }
    return null;
  }

  /// Claims a validator slot and provisions its node, after proving the caller's wallet owns the slot's NFT.
  ///
  /// Claims a validator slot and provisions its node, after proving the caller's wallet owns the slot's NFT.  The pipeline, all server-enforced: burn the single-use challenge (so a replayed or forged nonce dies before any chain read), recover the signer from the message this server rebuilds, require that wallet to hold Validator-tier GenesisNFT #tokenId on Ethereum mainnet, generate a fresh luxd staking identity and seal it into KMS, write a LuxNetwork CR for a NEW node, and ENQUEUE an owner-gated registration. The registration is never auto-submitted to any P-Chain — the owner co-signs it out of band — and the stake weight is set at co-sign time, never derived from the NFT.  It fails CLOSED at every gate: a bad signature, a non-owner, a non-tier slot or an unavailable KMS all leave no claim persisted and no key material exposed. Re-claiming a slot this org already holds re-applies the node CR and returns 200 with the existing identity (keys and NodeID are stable); a slot held by another org is 409. A cluster-less deployment still claims the slot, seals the keys and queues the registration, reporting the node as \"node_pending\".
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ValidatorClaim] validatorClaim (required):
  Future<Response> postValidatorsWithHttpInfo(ValidatorClaim validatorClaim,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/validators';

    // ignore: prefer_final_locals
    Object? postBody = validatorClaim;

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

  /// Claims a validator slot and provisions its node, after proving the caller's wallet owns the slot's NFT.
  ///
  /// Claims a validator slot and provisions its node, after proving the caller's wallet owns the slot's NFT.  The pipeline, all server-enforced: burn the single-use challenge (so a replayed or forged nonce dies before any chain read), recover the signer from the message this server rebuilds, require that wallet to hold Validator-tier GenesisNFT #tokenId on Ethereum mainnet, generate a fresh luxd staking identity and seal it into KMS, write a LuxNetwork CR for a NEW node, and ENQUEUE an owner-gated registration. The registration is never auto-submitted to any P-Chain — the owner co-signs it out of band — and the stake weight is set at co-sign time, never derived from the NFT.  It fails CLOSED at every gate: a bad signature, a non-owner, a non-tier slot or an unavailable KMS all leave no claim persisted and no key material exposed. Re-claiming a slot this org already holds re-applies the node CR and returns 200 with the existing identity (keys and NodeID are stable); a slot held by another org is 409. A cluster-less deployment still claims the slot, seals the keys and queues the registration, reporting the node as \"node_pending\".
  ///
  /// Parameters:
  ///
  /// * [ValidatorClaim] validatorClaim (required):
  Future<SlotView?> postValidators(ValidatorClaim validatorClaim,) async {
    final response = await postValidatorsWithHttpInfo(validatorClaim,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SlotView',) as SlotView;
    
    }
    return null;
  }
}
