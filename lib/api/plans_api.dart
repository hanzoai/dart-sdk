//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class PlansApi {
  PlansApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Remove a plan from the authority
  ///
  /// Deletes the addressed plan and answers 204. It removes the plan from the catalog buyers choose from; it does not touch subscriptions already sold against it, which keep their stored plan id. PLATFORM admin only — an org-level admin is refused 403 — and an unknown slug is 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  Future<Response> deletePlansEntriesBySlugWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plans/entries/{slug}'
      .replaceAll('{slug}', slug);

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

  /// Remove a plan from the authority
  ///
  /// Deletes the addressed plan and answers 204. It removes the plan from the catalog buyers choose from; it does not touch subscriptions already sold against it, which keep their stored plan id. PLATFORM admin only — an org-level admin is refused 403 — and an unknown slug is 404.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  Future<void> deletePlansEntriesBySlug(String slug,) async {
    final response = await deletePlansEntriesBySlugWithHttpInfo(slug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the Hanzo cloud plan catalog: every cloud tier with its price, included capacity, limits and feature list, scoped to the caller's catalog.
  ///
  /// Returns the Hanzo cloud plan catalog: every cloud tier with its price, included capacity, limits and feature list, scoped to the caller's catalog. A reseller org sees its own overrides in place of the canonical records it has replaced, and the canonical record for every tier it has not.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPlansWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plans';

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

  /// Returns the Hanzo cloud plan catalog: every cloud tier with its price, included capacity, limits and feature list, scoped to the caller's catalog.
  ///
  /// Returns the Hanzo cloud plan catalog: every cloud tier with its price, included capacity, limits and feature list, scoped to the caller's catalog. A reseller org sees its own overrides in place of the canonical records it has replaced, and the canonical record for every tier it has not.
  Future<PlanList?> getPlans() async {
    final response = await getPlansWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlanList',) as PlanList;
    
    }
    return null;
  }

  /// Returns the blockchain RPC plan catalog: the tiers metered in monthly compute units, with their prices, limits and overage terms.
  ///
  /// Returns the blockchain RPC plan catalog: the tiers metered in monthly compute units, with their prices, limits and overage terms. It is the canonical catalog for every caller — these plans carry no reseller overrides.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPlansBlockchainWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plans/blockchain';

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

  /// Returns the blockchain RPC plan catalog: the tiers metered in monthly compute units, with their prices, limits and overage terms.
  ///
  /// Returns the blockchain RPC plan catalog: the tiers metered in monthly compute units, with their prices, limits and overage terms. It is the canonical catalog for every caller — these plans carry no reseller overrides.
  Future<PlanList?> getPlansBlockchain() async {
    final response = await getPlansBlockchainWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlanList',) as PlanList;
    
    }
    return null;
  }

  /// Returns the cloud plan catalog.
  ///
  /// Returns the cloud plan catalog. It is the same section ListCloudPlans answers and a separate operation because it is a separate address, and an address is what every projection keys on.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPlansCloudWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plans/cloud';

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

  /// Returns the cloud plan catalog.
  ///
  /// Returns the cloud plan catalog. It is the same section ListCloudPlans answers and a separate operation because it is a separate address, and an address is what every projection keys on.
  Future<PlanList?> getPlansCloud() async {
    final response = await getPlansCloudWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlanList',) as PlanList;
    
    }
    return null;
  }

  /// ListDNSPlans returns the DNS plan catalog: the tiers priced on zones, records per zone and queries per day.
  ///
  /// ListDNSPlans returns the DNS plan catalog: the tiers priced on zones, records per zone and queries per day. It is the canonical catalog for every caller — these plans carry no reseller overrides.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPlansDnsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plans/dns';

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

  /// ListDNSPlans returns the DNS plan catalog: the tiers priced on zones, records per zone and queries per day.
  ///
  /// ListDNSPlans returns the DNS plan catalog: the tiers priced on zones, records per zone and queries per day. It is the canonical catalog for every caller — these plans carry no reseller overrides.
  Future<PlanList?> getPlansDns() async {
    final response = await getPlansDnsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlanList',) as PlanList;
    
    }
    return null;
  }

  /// Returns what one plan GRANTS and not what it costs: the canonical namespaced entitlement block and the flat license-feature list derived from it.
  ///
  /// Returns what one plan GRANTS and not what it costs: the canonical namespaced entitlement block and the flat license-feature list derived from it. It is the entitlement half of ResolvePlan, over the same catalog and the same 404 for an id no catalog holds — the read a licensing or quota gate makes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the plan's catalog id or slug — \"pro\", \"team\", \"world-enterprise\", \"rpc-growth\". Both are matched, so a slug resolves the plan it names.
  Future<Response> getPlansEntitlementsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plans/entitlements/{id}'
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

  /// Returns what one plan GRANTS and not what it costs: the canonical namespaced entitlement block and the flat license-feature list derived from it.
  ///
  /// Returns what one plan GRANTS and not what it costs: the canonical namespaced entitlement block and the flat license-feature list derived from it. It is the entitlement half of ResolvePlan, over the same catalog and the same 404 for an id no catalog holds — the read a licensing or quota gate makes.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the plan's catalog id or slug — \"pro\", \"team\", \"world-enterprise\", \"rpc-growth\". Both are matched, so a slug resolves the plan it names.
  Future<PlanEntitlements?> getPlansEntitlementsById(String id,) async {
    final response = await getPlansEntitlementsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlanEntitlements',) as PlanEntitlements;
    
    }
    return null;
  }

  /// The raw plan authority rows
  ///
  /// Returns every plan row as stored — the administrative view behind the public plan catalog. The plan authority is cross-tenant pricing data, so the gate is a PLATFORM admin enforced by the handler itself: an org-level admin is refused 403 no matter what they may do inside their own org.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPlansEntriesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plans/entries';

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

  /// The raw plan authority rows
  ///
  /// Returns every plan row as stored — the administrative view behind the public plan catalog. The plan authority is cross-tenant pricing data, so the gate is a PLATFORM admin enforced by the handler itself: an org-level admin is refused 403 no matter what they may do inside their own org.
  Future<void> getPlansEntries() async {
    final response = await getPlansEntriesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// ListGPUTiers returns the rentable GPU configurations, each with its accelerator count and model, VRAM, vCPUs, host memory and hourly price.
  ///
  /// ListGPUTiers returns the rentable GPU configurations, each with its accelerator count and model, VRAM, vCPUs, host memory and hourly price.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPlansGpuWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plans/gpu';

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

  /// ListGPUTiers returns the rentable GPU configurations, each with its accelerator count and model, VRAM, vCPUs, host memory and hourly price.
  ///
  /// ListGPUTiers returns the rentable GPU configurations, each with its accelerator count and model, VRAM, vCPUs, host memory and hourly price.
  Future<PlanTierList?> getPlansGpu() async {
    final response = await getPlansGpuWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlanTierList',) as PlanTierList;
    
    }
    return null;
  }

  /// Health reports that the plans subsystem is mounted and serving.
  ///
  /// Health reports that the plans subsystem is mounted and serving. It answers from the process itself and consults neither the catalog bundle nor the goja host, so it stays \"ok\" while either is degraded.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPlansHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plans/health';

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

  /// Health reports that the plans subsystem is mounted and serving.
  ///
  /// Health reports that the plans subsystem is mounted and serving. It answers from the process itself and consults neither the catalog bundle nor the goja host, so it stays \"ok\" while either is degraded.
  Future<PlanHealth?> getPlansHealth() async {
    final response = await getPlansHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlanHealth',) as PlanHealth;
    
    }
    return null;
  }

  /// Returns the published pricing policy: whether pricing is transparent, the revenue-sharing terms (idle compute resale and the open-source share) and the principles the catalog is priced by.
  ///
  /// Returns the published pricing policy: whether pricing is transparent, the revenue-sharing terms (idle compute resale and the open-source share) and the principles the catalog is priced by.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPlansPolicyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plans/policy';

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

  /// Returns the published pricing policy: whether pricing is transparent, the revenue-sharing terms (idle compute resale and the open-source share) and the principles the catalog is priced by.
  ///
  /// Returns the published pricing policy: whether pricing is transparent, the revenue-sharing terms (idle compute resale and the open-source share) and the principles the catalog is priced by.
  Future<Map<String, Object>?> getPlansPolicy() async {
    final response = await getPlansPolicyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Returns the regions cloud capacity is offered in, each with its display name and physical location.
  ///
  /// Returns the regions cloud capacity is offered in, each with its display name and physical location.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPlansRegionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plans/regions';

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

  /// Returns the regions cloud capacity is offered in, each with its display name and physical location.
  ///
  /// Returns the regions cloud capacity is offered in, each with its display name and physical location.
  Future<PlanRegionList?> getPlansRegions() async {
    final response = await getPlansRegionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlanRegionList',) as PlanRegionList;
    
    }
    return null;
  }

  /// Resolves one plan to everything a consumer of the catalog needs at once: its canonical entitlement block, the flat license-feature list a signed license carries, its billing reference, and the catalog it came from.
  ///
  /// Resolves one plan to everything a consumer of the catalog needs at once: its canonical entitlement block, the flat license-feature list a signed license carries, its billing reference, and the catalog it came from. The id may be the plan's id or its slug, and it is resolved against the caller's catalog, so a reseller's override wins over the canonical record. An id no catalog holds answers 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the plan's catalog id or slug — \"pro\", \"team\", \"world-enterprise\", \"rpc-growth\". Both are matched, so a slug resolves the plan it names.
  Future<Response> getPlansResolveByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plans/resolve/{id}'
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

  /// Resolves one plan to everything a consumer of the catalog needs at once: its canonical entitlement block, the flat license-feature list a signed license carries, its billing reference, and the catalog it came from.
  ///
  /// Resolves one plan to everything a consumer of the catalog needs at once: its canonical entitlement block, the flat license-feature list a signed license carries, its billing reference, and the catalog it came from. The id may be the plan's id or its slug, and it is resolved against the caller's catalog, so a reseller's override wins over the canonical record. An id no catalog holds answers 404.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the plan's catalog id or slug — \"pro\", \"team\", \"world-enterprise\", \"rpc-growth\". Both are matched, so a slug resolves the plan it names.
  Future<PlanResolution?> getPlansResolveById(String id,) async {
    final response = await getPlansResolveByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlanResolution',) as PlanResolution;
    
    }
    return null;
  }

  /// Returns the two JSON Schema documents this surface speaks: entitlements.schema.json, which declares every entitlement key with its type, unit and enum, and plan.schema.json, which a catalog plan record conforms to.
  ///
  /// Returns the two JSON Schema documents this surface speaks: entitlements.schema.json, which declares every entitlement key with its type, unit and enum, and plan.schema.json, which a catalog plan record conforms to.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPlansSchemaWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plans/schema';

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

  /// Returns the two JSON Schema documents this surface speaks: entitlements.schema.json, which declares every entitlement key with its type, unit and enum, and plan.schema.json, which a catalog plan record conforms to.
  ///
  /// Returns the two JSON Schema documents this surface speaks: entitlements.schema.json, which declares every entitlement key with its type, unit and enum, and plan.schema.json, which a catalog plan record conforms to.
  Future<PlanSchemas?> getPlansSchema() async {
    final response = await getPlansSchemaWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlanSchemas',) as PlanSchemas;
    
    }
    return null;
  }

  /// Returns the block-storage price block: the price per GB per month and the volume size bounds a cloud plan may attach.
  ///
  /// Returns the block-storage price block: the price per GB per month and the volume size bounds a cloud plan may attach.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPlansStorageWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plans/storage';

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

  /// Returns the block-storage price block: the price per GB per month and the volume size bounds a cloud plan may attach.
  ///
  /// Returns the block-storage price block: the price per GB per month and the volume size bounds a cloud plan may attach.
  Future<Map<String, Object>?> getPlansStorage() async {
    final response = await getPlansStorageWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Returns the subscription ladder — the personal and team tiers a customer buys to use the cloud, each with its monthly and annual price, seat rules, limits and billing reference.
  ///
  /// Returns the subscription ladder — the personal and team tiers a customer buys to use the cloud, each with its monthly and annual price, seat rules, limits and billing reference. Scoped to the caller's catalog.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPlansSubscriptionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plans/subscriptions';

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

  /// Returns the subscription ladder — the personal and team tiers a customer buys to use the cloud, each with its monthly and annual price, seat rules, limits and billing reference.
  ///
  /// Returns the subscription ladder — the personal and team tiers a customer buys to use the cloud, each with its monthly and annual price, seat rules, limits and billing reference. Scoped to the caller's catalog.
  Future<PlanList?> getPlansSubscriptions() async {
    final response = await getPlansSubscriptionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlanList',) as PlanList;
    
    }
    return null;
  }

  /// Returns the per-use price of every metered tool — web search, code interpreter, image generation, speech — each with the unit it is billed in.
  ///
  /// Returns the per-use price of every metered tool — web search, code interpreter, image generation, speech — each with the unit it is billed in.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPlansToolsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plans/tools';

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

  /// Returns the per-use price of every metered tool — web search, code interpreter, image generation, speech — each with the unit it is billed in.
  ///
  /// Returns the per-use price of every metered tool — web search, code interpreter, image generation, speech — each with the unit it is billed in.
  Future<PlanToolList?> getPlansTools() async {
    final response = await getPlansToolsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlanToolList',) as PlanToolList;
    
    }
    return null;
  }

  /// Returns the entitlement key vocabulary: every key with its namespace, JSON type, nullability, unit, enum and title, the list of namespaces, and the engine features a license can grant.
  ///
  /// Returns the entitlement key vocabulary: every key with its namespace, JSON type, nullability, unit, enum and title, the list of namespaces, and the engine features a license can grant. It is derived from entitlements.schema.json on every call, so it cannot fall behind the schema.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPlansVocabWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plans/vocab';

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

  /// Returns the entitlement key vocabulary: every key with its namespace, JSON type, nullability, unit, enum and title, the list of namespaces, and the engine features a license can grant.
  ///
  /// Returns the entitlement key vocabulary: every key with its namespace, JSON type, nullability, unit, enum and title, the list of namespaces, and the engine features a license can grant. It is derived from entitlements.schema.json on every call, so it cannot fall behind the schema.
  Future<PlanVocab?> getPlansVocab() async {
    final response = await getPlansVocabWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlanVocab',) as PlanVocab;
    
    }
    return null;
  }

  /// Add a subscription plan
  ///
  /// Creates a plan from the body and answers it at 201. The slug is required and globally unique — a duplicate is 409 — and the row is marked authoritative on creation, so the corrective seed will leave it alone. Price, annual price and the contact-sales flag are stored exactly as sent, never coerced, so the difference between a free plan and a quote-only plan survives. PLATFORM admin only.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postPlansEntriesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plans/entries';

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

  /// Add a subscription plan
  ///
  /// Creates a plan from the body and answers it at 201. The slug is required and globally unique — a duplicate is 409 — and the row is marked authoritative on creation, so the corrective seed will leave it alone. Price, annual price and the contact-sales flag are stored exactly as sent, never coerced, so the difference between a free plan and a quote-only plan survives. PLATFORM admin only.
  Future<void> postPlansEntries() async {
    final response = await postPlansEntriesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Seed the embedded plan catalog, without overwriting administrative edits
  ///
  /// Upserts the shipped plan rows and answers how many were created and how many corrected. It is idempotent and non-destructive — a row an administrator authored or edited is left as it stands — so it is safe against a live authority and fills only what is missing or has drifted. PLATFORM admin only, and a deployment with no seed source wired answers 500 rather than quietly seeding nothing.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postPlansSeedWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plans/seed';

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

  /// Seed the embedded plan catalog, without overwriting administrative edits
  ///
  /// Upserts the shipped plan rows and answers how many were created and how many corrected. It is idempotent and non-destructive — a row an administrator authored or edited is left as it stands — so it is safe against a live authority and fills only what is missing or has drifted. PLATFORM admin only, and a deployment with no seed source wired answers 500 rather than quietly seeding nothing.
  Future<void> postPlansSeed() async {
    final response = await postPlansSeedWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Edit a plan, leaving the fields you omit alone
  ///
  /// Loads the addressed plan, applies the body over it and answers the stored result, so a partial edit never silently zeroes a price or the contact-sales flag. The slug is IMMUTABLE: a body naming a different slug is rejected outright before anything is written, because a rename would orphan every subscription that stored the old id — deprecate and create instead. An admin edit marks the row authoritative so the seed stops correcting it. PLATFORM admin only; an unknown slug is 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  Future<Response> putPlansEntriesBySlugWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plans/entries/{slug}'
      .replaceAll('{slug}', slug);

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

  /// Edit a plan, leaving the fields you omit alone
  ///
  /// Loads the addressed plan, applies the body over it and answers the stored result, so a partial edit never silently zeroes a price or the contact-sales flag. The slug is IMMUTABLE: a body naming a different slug is rejected outright before anything is written, because a rename would orphan every subscription that stored the old id — deprecate and create instead. An admin edit marks the row authoritative so the seed stops correcting it. PLATFORM admin only; an unknown slug is 404.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  Future<void> putPlansEntriesBySlug(String slug,) async {
    final response = await putPlansEntriesBySlugWithHttpInfo(slug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
