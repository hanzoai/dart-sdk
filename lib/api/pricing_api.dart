//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class PricingApi {
  PricingApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns the whole pricing catalog in one document: Zen and third-party models, providers, model families, the free-model list, plan and infrastructure pricing.
  ///
  /// Returns the whole pricing catalog in one document: Zen and third-party models, providers, model families, the free-model list, plan and infrastructure pricing. Every model and provider it names is filtered to what the caller's org may see — the same gate the leaf routes apply, so this can never be an un-gated second source for what they hide.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPricingWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pricing';

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

  /// Returns the whole pricing catalog in one document: Zen and third-party models, providers, model families, the free-model list, plan and infrastructure pricing.
  ///
  /// Returns the whole pricing catalog in one document: Zen and third-party models, providers, model families, the free-model list, plan and infrastructure pricing. Every model and provider it names is filtered to what the caller's org may see — the same gate the leaf routes apply, so this can never be an un-gated second source for what they hide.
  Future<Map<String, Object>?> getPricing() async {
    final response = await getPricingWithHttpInfo();
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

  /// Returns the Hanzo Base plans — the managed-instance tiers, each with its monthly and annual price, storage and request allowances and feature list.
  ///
  /// Returns the Hanzo Base plans — the managed-instance tiers, each with its monthly and annual price, storage and request allowances and feature list.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPricingBaseWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pricing/base';

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

  /// Returns the Hanzo Base plans — the managed-instance tiers, each with its monthly and annual price, storage and request allowances and feature list.
  ///
  /// Returns the Hanzo Base plans — the managed-instance tiers, each with its monthly and annual price, storage and request allowances and feature list.
  Future<PricingPlanList?> getPricingBase() async {
    final response = await getPricingBaseWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PricingPlanList',) as PricingPlanList;
    
    }
    return null;
  }

  /// Returns the blockchain access plans — the RPC and node tiers, each with its monthly price, compute-unit allowance and feature list.
  ///
  /// Returns the blockchain access plans — the RPC and node tiers, each with its monthly price, compute-unit allowance and feature list.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPricingBlockchainWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pricing/blockchain';

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

  /// Returns the blockchain access plans — the RPC and node tiers, each with its monthly price, compute-unit allowance and feature list.
  ///
  /// Returns the blockchain access plans — the RPC and node tiers, each with its monthly price, compute-unit allowance and feature list.
  Future<PricingPlanList?> getPricingBlockchain() async {
    final response = await getPricingBlockchainWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PricingPlanList',) as PricingPlanList;
    
    }
    return null;
  }

  /// Returns the public cloud section of the catalog in one document: its instance plans, its regions and its block-storage prices.
  ///
  /// Returns the public cloud section of the catalog in one document: its instance plans, its regions and its block-storage prices. The section's internal half — the provider costs Hanzo pays and the plan-to- provider routing table — is stripped before it is served, so this is what a customer may see and nothing more.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPricingCloudWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pricing/cloud';

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

  /// Returns the public cloud section of the catalog in one document: its instance plans, its regions and its block-storage prices.
  ///
  /// Returns the public cloud section of the catalog in one document: its instance plans, its regions and its block-storage prices. The section's internal half — the provider costs Hanzo pays and the plan-to- provider routing table — is stripped before it is served, so this is what a customer may see and nothing more.
  Future<Map<String, Object>?> getPricingCloud() async {
    final response = await getPricingCloudWithHttpInfo();
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

  /// Returns just the cloud instance plans — each with its vCPU, memory, disk, CPU type, VM allowance, feature list and monthly and hourly price.
  ///
  /// Returns just the cloud instance plans — each with its vCPU, memory, disk, CPU type, VM allowance, feature list and monthly and hourly price. It is the plans of the cloud section on their own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPricingCloudPlansWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pricing/cloud/plans';

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

  /// Returns just the cloud instance plans — each with its vCPU, memory, disk, CPU type, VM allowance, feature list and monthly and hourly price.
  ///
  /// Returns just the cloud instance plans — each with its vCPU, memory, disk, CPU type, VM allowance, feature list and monthly and hourly price. It is the plans of the cloud section on their own.
  Future<PricingPlanList?> getPricingCloudPlans() async {
    final response = await getPricingCloudPlansWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PricingPlanList',) as PricingPlanList;
    
    }
    return null;
  }

  /// Returns the regions a cloud instance can be placed in, each with its id, display name and physical location.
  ///
  /// Returns the regions a cloud instance can be placed in, each with its id, display name and physical location. It is the regions of the cloud section on their own.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPricingCloudRegionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pricing/cloud/regions';

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

  /// Returns the regions a cloud instance can be placed in, each with its id, display name and physical location.
  ///
  /// Returns the regions a cloud instance can be placed in, each with its id, display name and physical location. It is the regions of the cloud section on their own.
  Future<PricingRegionList?> getPricingCloudRegions() async {
    final response = await getPricingCloudRegionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PricingRegionList',) as PricingRegionList;
    
    }
    return null;
  }

  /// Returns the block-storage prices of the cloud section: the per-GB monthly rate and the volume size bounds a caller may ask for.
  ///
  /// Returns the block-storage prices of the cloud section: the per-GB monthly rate and the volume size bounds a caller may ask for.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPricingCloudStorageWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pricing/cloud/storage';

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

  /// Returns the block-storage prices of the cloud section: the per-GB monthly rate and the volume size bounds a caller may ask for.
  ///
  /// Returns the block-storage prices of the cloud section: the per-GB monthly rate and the volume size bounds a caller may ask for.
  Future<Map<String, Object>?> getPricingCloudStorage() async {
    final response = await getPricingCloudStorageWithHttpInfo();
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

  /// Returns the compute section of the catalog: the cloud provider and region the prices are quoted for, the monthly markup applied to them, the full instance-size tier list and the named presets.
  ///
  /// Returns the compute section of the catalog: the cloud provider and region the prices are quoted for, the monthly markup applied to them, the full instance-size tier list and the named presets. It is the whole section as the pricing source records it, un-gated — no model or provider identity appears in it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPricingComputeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pricing/compute';

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

  /// Returns the compute section of the catalog: the cloud provider and region the prices are quoted for, the monthly markup applied to them, the full instance-size tier list and the named presets.
  ///
  /// Returns the compute section of the catalog: the cloud provider and region the prices are quoted for, the monthly markup applied to them, the full instance-size tier list and the named presets. It is the whole section as the pricing source records it, un-gated — no model or provider identity appears in it.
  Future<Map<String, Object>?> getPricingCompute() async {
    final response = await getPricingComputeWithHttpInfo();
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

  /// Returns just the named compute sizes — the short, human-labelled list (\"Starter\", \"Pro\") a size picker renders, each carrying its provider slug, vCPU, memory, disk and price.
  ///
  /// Returns just the named compute sizes — the short, human-labelled list (\"Starter\", \"Pro\") a size picker renders, each carrying its provider slug, vCPU, memory, disk and price. It is the presets of the compute section on their own, for a caller that does not need the full tier table.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPricingComputePresetsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pricing/compute/presets';

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

  /// Returns just the named compute sizes — the short, human-labelled list (\"Starter\", \"Pro\") a size picker renders, each carrying its provider slug, vCPU, memory, disk and price.
  ///
  /// Returns just the named compute sizes — the short, human-labelled list (\"Starter\", \"Pro\") a size picker renders, each carrying its provider slug, vCPU, memory, disk and price. It is the presets of the compute section on their own, for a caller that does not need the full tier table.
  Future<PricingPresetList?> getPricingComputePresets() async {
    final response = await getPricingComputePresetsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PricingPresetList',) as PricingPresetList;
    
    }
    return null;
  }

  /// Returns the Hanzo Datastore rate card: the tier list, the per-GB storage and egress usage rates, the annual discount and the trial.
  ///
  /// Returns the Hanzo Datastore rate card: the tier list, the per-GB storage and egress usage rates, the annual discount and the trial. It is the section as authored, un-gated — no provider identity appears in it.  The route was missing while the data existed, so this 404d and every visitor to hanzo.ai's Infrastructure tab was told pricing was \"temporarily unavailable\".
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPricingDatastoreWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pricing/datastore';

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

  /// Returns the Hanzo Datastore rate card: the tier list, the per-GB storage and egress usage rates, the annual discount and the trial.
  ///
  /// Returns the Hanzo Datastore rate card: the tier list, the per-GB storage and egress usage rates, the annual discount and the trial. It is the section as authored, un-gated — no provider identity appears in it.  The route was missing while the data existed, so this 404d and every visitor to hanzo.ai's Infrastructure tab was told pricing was \"temporarily unavailable\".
  Future<Map<String, Object>?> getPricingDatastore() async {
    final response = await getPricingDatastoreWithHttpInfo();
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

  /// Returns the models the catalog highlights, filtered to what the caller's org may see.
  ///
  /// Returns the models the catalog highlights, filtered to what the caller's org may see. It is the same catalog as ListModels narrowed to entries the pricing source marks featured.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPricingFeaturedWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pricing/featured';

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

  /// Returns the models the catalog highlights, filtered to what the caller's org may see.
  ///
  /// Returns the models the catalog highlights, filtered to what the caller's org may see. It is the same catalog as ListModels narrowed to entries the pricing source marks featured.
  Future<PricingModelList?> getPricingFeatured() async {
    final response = await getPricingFeaturedWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PricingModelList',) as PricingModelList;
    
    }
    return null;
  }

  /// Returns the models that cost nothing to call, filtered to what the caller's org may see.
  ///
  /// Returns the models that cost nothing to call, filtered to what the caller's org may see. It is the same catalog as ListModels narrowed to entries the pricing source marks free.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPricingFreeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pricing/free';

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

  /// Returns the models that cost nothing to call, filtered to what the caller's org may see.
  ///
  /// Returns the models that cost nothing to call, filtered to what the caller's org may see. It is the same catalog as ListModels narrowed to entries the pricing source marks free.
  Future<PricingModelList?> getPricingFree() async {
    final response = await getPricingFreeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PricingModelList',) as PricingModelList;
    
    }
    return null;
  }

  /// ListGPUTiers returns the rentable GPU configurations, each with its accelerator count and model, VRAM, vCPU, host memory and hourly price.
  ///
  /// ListGPUTiers returns the rentable GPU configurations, each with its accelerator count and model, VRAM, vCPU, host memory and hourly price.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPricingGpuWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pricing/gpu';

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

  /// ListGPUTiers returns the rentable GPU configurations, each with its accelerator count and model, VRAM, vCPU, host memory and hourly price.
  ///
  /// ListGPUTiers returns the rentable GPU configurations, each with its accelerator count and model, VRAM, vCPU, host memory and hourly price.
  Future<PricingTierList?> getPricingGpu() async {
    final response = await getPricingGpuWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PricingTierList',) as PricingTierList;
    
    }
    return null;
  }

  /// Health reports that the pricing subsystem is mounted and serving.
  ///
  /// Health reports that the pricing subsystem is mounted and serving. It answers from the process itself and consults neither the catalog bundle nor the enablement store, so it stays \"ok\" while either is degraded.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPricingHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pricing/health';

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

  /// Health reports that the pricing subsystem is mounted and serving.
  ///
  /// Health reports that the pricing subsystem is mounted and serving. It answers from the process itself and consults neither the catalog bundle nor the enablement store, so it stays \"ok\" while either is degraded.
  Future<PricingHealth?> getPricingHealth() async {
    final response = await getPricingHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PricingHealth',) as PricingHealth;
    
    }
    return null;
  }

  /// ListIAMPlans returns the identity plans — the Hanzo IAM tiers, each with its monthly and annual price, monthly-active-user allowance and feature list.
  ///
  /// ListIAMPlans returns the identity plans — the Hanzo IAM tiers, each with its monthly and annual price, monthly-active-user allowance and feature list.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPricingIamWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pricing/iam';

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

  /// ListIAMPlans returns the identity plans — the Hanzo IAM tiers, each with its monthly and annual price, monthly-active-user allowance and feature list.
  ///
  /// ListIAMPlans returns the identity plans — the Hanzo IAM tiers, each with its monthly and annual price, monthly-active-user allowance and feature list.
  Future<PricingPlanList?> getPricingIam() async {
    final response = await getPricingIamWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PricingPlanList',) as PricingPlanList;
    
    }
    return null;
  }

  /// Returns one model's catalog entry — its pricing, context window and capabilities as the pricing source records them.
  ///
  /// Returns one model's catalog entry — its pricing, context window and capabilities as the pricing source records them. A model hidden for the caller's org answers the same 404 an unknown name does, so a disabled model gets no existence oracle.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the model's name or its slugged id (\"zen4\", \"acme/some-model-1\"), matched case-insensitively. It comes from the path: the URL is the addressing authority.
  Future<Response> getPricingModelByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pricing/model/{name}'
      .replaceAll('{name}', name);

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

  /// Returns one model's catalog entry — its pricing, context window and capabilities as the pricing source records them.
  ///
  /// Returns one model's catalog entry — its pricing, context window and capabilities as the pricing source records them. A model hidden for the caller's org answers the same 404 an unknown name does, so a disabled model gets no existence oracle.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the model's name or its slugged id (\"zen4\", \"acme/some-model-1\"), matched case-insensitively. It comes from the path: the URL is the addressing authority.
  Future<Map<String, Object>?> getPricingModelByName(String name,) async {
    final response = await getPricingModelByNameWithHttpInfo(name,);
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

  /// Returns the whole model catalog — every model the gateway serves, Zen and third-party alike — filtered to what the caller's org may see.
  ///
  /// Returns the whole model catalog — every model the gateway serves, Zen and third-party alike — filtered to what the caller's org may see. A model an admin has disabled is absent; one in beta appears only for an org granted it. A SuperAdmin sees every model, each annotated with its enablement state.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPricingModelsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pricing/models';

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

  /// Returns the whole model catalog — every model the gateway serves, Zen and third-party alike — filtered to what the caller's org may see.
  ///
  /// Returns the whole model catalog — every model the gateway serves, Zen and third-party alike — filtered to what the caller's org may see. A model an admin has disabled is absent; one in beta appears only for an org granted it. A SuperAdmin sees every model, each annotated with its enablement state.
  Future<PricingModelList?> getPricingModels() async {
    final response = await getPricingModelsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PricingModelList',) as PricingModelList;
    
    }
    return null;
  }

  /// ListPaaSPlans returns the application-hosting plans — the deploy-and-host tiers, each with its monthly and annual price, app and memory allowances and feature list.
  ///
  /// ListPaaSPlans returns the application-hosting plans — the deploy-and-host tiers, each with its monthly and annual price, app and memory allowances and feature list.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPricingPaasWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pricing/paas';

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

  /// ListPaaSPlans returns the application-hosting plans — the deploy-and-host tiers, each with its monthly and annual price, app and memory allowances and feature list.
  ///
  /// ListPaaSPlans returns the application-hosting plans — the deploy-and-host tiers, each with its monthly and annual price, app and memory allowances and feature list.
  Future<PricingPlanList?> getPricingPaas() async {
    final response = await getPricingPaasWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PricingPlanList',) as PricingPlanList;
    
    }
    return null;
  }

  /// Returns the pricing policy document: the revenue-sharing terms (the idle-resale share and the open-source share, each with its percentage and who is eligible) and the commitments Hanzo makes about how it bills — no hidden fees, no egress charges, no surprise bills.
  ///
  /// Returns the pricing policy document: the revenue-sharing terms (the idle-resale share and the open-source share, each with its percentage and who is eligible) and the commitments Hanzo makes about how it bills — no hidden fees, no egress charges, no surprise bills.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPricingPolicyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pricing/policy';

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

  /// Returns the pricing policy document: the revenue-sharing terms (the idle-resale share and the open-source share, each with its percentage and who is eligible) and the commitments Hanzo makes about how it bills — no hidden fees, no egress charges, no surprise bills.
  ///
  /// Returns the pricing policy document: the revenue-sharing terms (the idle-resale share and the open-source share, each with its percentage and who is eligible) and the commitments Hanzo makes about how it bills — no hidden fees, no egress charges, no surprise bills.
  Future<Map<String, Object>?> getPricingPolicy() async {
    final response = await getPricingPolicyWithHttpInfo();
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

  /// Returns the model providers the catalog knows, each with its info object, filtered to what the caller's org may see.
  ///
  /// Returns the model providers the catalog knows, each with its info object, filtered to what the caller's org may see. A provider an admin has disabled is absent — and so are its models everywhere else on this surface, because a provider's state cascades to what it serves.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPricingProvidersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pricing/providers';

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

  /// Returns the model providers the catalog knows, each with its info object, filtered to what the caller's org may see.
  ///
  /// Returns the model providers the catalog knows, each with its info object, filtered to what the caller's org may see. A provider an admin has disabled is absent — and so are its models everywhere else on this surface, because a provider's state cascades to what it serves.
  Future<PricingProviderList?> getPricingProviders() async {
    final response = await getPricingProvidersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PricingProviderList',) as PricingProviderList;
    
    }
    return null;
  }

  /// Returns the managed-service rate cards — Search, Crawl, Vector, Console and Managed Services — each with its own tiers, and some with usage rates or a comparison table.
  ///
  /// Returns the managed-service rate cards — Search, Crawl, Vector, Console and Managed Services — each with its own tiers, and some with usage rates or a comparison table. It is the section as authored, un-gated.  These are DISPLAY rate cards: what a product costs, not what a plan grants. No entitlement or limit fields ride here, so nothing can bill off them.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPricingServicesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pricing/services';

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

  /// Returns the managed-service rate cards — Search, Crawl, Vector, Console and Managed Services — each with its own tiers, and some with usage rates or a comparison table.
  ///
  /// Returns the managed-service rate cards — Search, Crawl, Vector, Console and Managed Services — each with its own tiers, and some with usage rates or a comparison table. It is the section as authored, un-gated.  These are DISPLAY rate cards: what a product costs, not what a plan grants. No entitlement or limit fields ride here, so nothing can bill off them.
  Future<Map<String, Object>?> getPricingServices() async {
    final response = await getPricingServicesWithHttpInfo();
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

  /// Returns the API subscription plans — the account-level tiers a customer subscribes to, each with its monthly and annual price, included credit, rate limits and feature list.
  ///
  /// Returns the API subscription plans — the account-level tiers a customer subscribes to, each with its monthly and annual price, included credit, rate limits and feature list.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPricingSubscriptionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pricing/subscriptions';

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

  /// Returns the API subscription plans — the account-level tiers a customer subscribes to, each with its monthly and annual price, included credit, rate limits and feature list.
  ///
  /// Returns the API subscription plans — the account-level tiers a customer subscribes to, each with its monthly and annual price, included credit, rate limits and feature list.
  Future<PricingPlanList?> getPricingSubscriptions() async {
    final response = await getPricingSubscriptionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PricingPlanList',) as PricingPlanList;
    
    }
    return null;
  }

  /// Returns the catalog's headline statistics — model counts by family and the provider directory.
  ///
  /// Returns the catalog's headline statistics — model counts by family and the provider directory. The provider sub-object is filtered to what the caller's org may see, so a disabled provider's name never leaks; the aggregate counts are the catalog's own, over everything it holds.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPricingSummaryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pricing/summary';

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

  /// Returns the catalog's headline statistics — model counts by family and the provider directory.
  ///
  /// Returns the catalog's headline statistics — model counts by family and the provider directory. The provider sub-object is filtered to what the caller's org may see, so a disabled provider's name never leaks; the aggregate counts are the catalog's own, over everything it holds.
  Future<Map<String, Object>?> getPricingSummary() async {
    final response = await getPricingSummaryWithHttpInfo();
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

  /// Returns the per-use tool prices — web search, code interpreter, file storage, image generation, speech-to-text and text-to-speech — each with the unit it is billed by and its price in that unit.
  ///
  /// Returns the per-use tool prices — web search, code interpreter, file storage, image generation, speech-to-text and text-to-speech — each with the unit it is billed by and its price in that unit.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPricingToolsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pricing/tools';

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

  /// Returns the per-use tool prices — web search, code interpreter, file storage, image generation, speech-to-text and text-to-speech — each with the unit it is billed by and its price in that unit.
  ///
  /// Returns the per-use tool prices — web search, code interpreter, file storage, image generation, speech-to-text and text-to-speech — each with the unit it is billed by and its price in that unit.
  Future<PricingToolList?> getPricingTools() async {
    final response = await getPricingToolsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PricingToolList',) as PricingToolList;
    
    }
    return null;
  }

  /// Refreshes the third-party section of the catalog from its upstream listings and returns the time the refreshed catalog was stamped with.
  ///
  /// Refreshes the third-party section of the catalog from its upstream listings and returns the time the refreshed catalog was stamped with. The fetch runs in Go and the markup transform in the pricing bundle. SuperAdmin only; every other caller is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postPricingSyncWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pricing/sync';

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

  /// Refreshes the third-party section of the catalog from its upstream listings and returns the time the refreshed catalog was stamped with.
  ///
  /// Refreshes the third-party section of the catalog from its upstream listings and returns the time the refreshed catalog was stamped with. The fetch runs in Go and the markup transform in the pricing bundle. SuperAdmin only; every other caller is refused.
  Future<PricingSyncOut?> postPricingSync() async {
    final response = await postPricingSyncWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PricingSyncOut',) as PricingSyncOut;
    
    }
    return null;
  }
}
