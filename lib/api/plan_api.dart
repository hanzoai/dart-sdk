//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class PlanApi {
  PlanApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns the Hanzo cloud plan catalog: every cloud tier with its price, included capacity, limits and feature list, scoped to the caller's catalog.
  ///
  /// Returns the Hanzo cloud plan catalog: every cloud tier with its price, included capacity, limits and feature list, scoped to the caller's catalog. A reseller org sees its own overrides in place of the canonical records it has replaced, and the canonical record for every tier it has not.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPlanWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plan';

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
  Future<PlanList?> getPlan() async {
    final response = await getPlanWithHttpInfo();
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
  Future<Response> getPlanBlockchainWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plan/blockchain';

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
  Future<PlanList?> getPlanBlockchain() async {
    final response = await getPlanBlockchainWithHttpInfo();
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
  Future<Response> getPlanDnsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plan/dns';

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
  Future<PlanList?> getPlanDns() async {
    final response = await getPlanDnsWithHttpInfo();
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
  ///   ID is the plan's catalog id or slug — \"dev\", \"max\", \"team\", \"rpc-growth\". Both are matched, so a slug resolves the plan it names. A withdrawn id still resolves for a renewal, which is why this takes an id rather than a ladder position.
  Future<Response> getPlanEntitlementsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plan/entitlements/{id}'
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
  ///   ID is the plan's catalog id or slug — \"dev\", \"max\", \"team\", \"rpc-growth\". Both are matched, so a slug resolves the plan it names. A withdrawn id still resolves for a renewal, which is why this takes an id rather than a ladder position.
  Future<PlanEntitlements?> getPlanEntitlementsById(String id,) async {
    final response = await getPlanEntitlementsByIdWithHttpInfo(id,);
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

  /// ListGPUTiers returns the rentable GPU configurations, each with its accelerator count and model, VRAM, vCPUs, host memory and hourly price.
  ///
  /// ListGPUTiers returns the rentable GPU configurations, each with its accelerator count and model, VRAM, vCPUs, host memory and hourly price.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPlanGpuWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plan/gpu';

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
  Future<PlanTierList?> getPlanGpu() async {
    final response = await getPlanGpuWithHttpInfo();
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
  Future<Response> getPlanHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plan/health';

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
  Future<PlanHealth?> getPlanHealth() async {
    final response = await getPlanHealthWithHttpInfo();
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
  Future<Response> getPlanPolicyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plan/policy';

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
  Future<Map<String, Object>?> getPlanPolicy() async {
    final response = await getPlanPolicyWithHttpInfo();
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
  Future<Response> getPlanRegionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plan/regions';

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
  Future<PlanRegionList?> getPlanRegions() async {
    final response = await getPlanRegionsWithHttpInfo();
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
  ///   ID is the plan's catalog id or slug — \"dev\", \"max\", \"team\", \"rpc-growth\". Both are matched, so a slug resolves the plan it names. A withdrawn id still resolves for a renewal, which is why this takes an id rather than a ladder position.
  Future<Response> getPlanResolveByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plan/resolve/{id}'
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
  ///   ID is the plan's catalog id or slug — \"dev\", \"max\", \"team\", \"rpc-growth\". Both are matched, so a slug resolves the plan it names. A withdrawn id still resolves for a renewal, which is why this takes an id rather than a ladder position.
  Future<PlanResolution?> getPlanResolveById(String id,) async {
    final response = await getPlanResolveByIdWithHttpInfo(id,);
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
  Future<Response> getPlanSchemaWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plan/schema';

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
  Future<PlanSchemas?> getPlanSchema() async {
    final response = await getPlanSchemaWithHttpInfo();
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
  Future<Response> getPlanStorageWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plan/storage';

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
  Future<Map<String, Object>?> getPlanStorage() async {
    final response = await getPlanStorageWithHttpInfo();
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
  Future<Response> getPlanSubscriptionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plan/subscriptions';

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
  Future<PlanList?> getPlanSubscriptions() async {
    final response = await getPlanSubscriptionsWithHttpInfo();
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
  Future<Response> getPlanToolsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plan/tools';

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
  Future<PlanToolList?> getPlanTools() async {
    final response = await getPlanToolsWithHttpInfo();
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
  Future<Response> getPlanVocabWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/plan/vocab';

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
  Future<PlanVocab?> getPlanVocab() async {
    final response = await getPlanVocabWithHttpInfo();
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
}
