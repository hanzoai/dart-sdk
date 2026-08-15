//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class StoreApi {
  StoreApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete a storefront, keeping a recoverable copy
  ///
  /// Removes the addressed store and answers 204 with no body. Before the live row goes, the entity is written once more under a tombstone kind, so the deletion leaves a recoverable copy rather than destroying the record outright; the store's listing overrides live inside that row and go with it. The id is resolved inside the caller org's own namespace, so an unknown or foreign id is 404. Requires an admin or store-write token.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<Response> deleteStoreByStoreidWithHttpInfo(String storeid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}'
      .replaceAll('{storeid}', storeid);

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

  /// Delete a storefront, keeping a recoverable copy
  ///
  /// Removes the addressed store and answers 204 with no body. Before the live row goes, the entity is written once more under a tombstone kind, so the deletion leaves a recoverable copy rather than destroying the record outright; the store's listing overrides live inside that row and go with it. The id is resolved inside the caller org's own namespace, so an unknown or foreign id is 404. Requires an admin or store-write token.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<void> deleteStoreByStoreid(String storeid,) async {
    final response = await deleteStoreByStoreidWithHttpInfo(storeid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Remove a listing override
  ///
  /// Drops the key from the store's listing map and re-saves the store, answering 204 with no body. It UN-OVERRIDES rather than deletes: the product, variant or bundle itself is untouched and simply reverts to its catalog values on this storefront. A key that is not present is 404, and so is a store id outside the caller org's namespace. Admin-gated.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] key (required):
  Future<Response> deleteStoreByStoreidListingByKeyWithHttpInfo(String storeid, String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}/listing/{key}'
      .replaceAll('{storeid}', storeid)
      .replaceAll('{key}', key);

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

  /// Remove a listing override
  ///
  /// Drops the key from the store's listing map and re-saves the store, answering 204 with no body. It UN-OVERRIDES rather than deletes: the product, variant or bundle itself is untouched and simply reverts to its catalog values on this storefront. A key that is not present is 404, and so is a store id outside the caller org's namespace. Admin-gated.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] key (required):
  Future<void> deleteStoreByStoreidListingByKey(String storeid, String key,) async {
    final response = await deleteStoreByStoreidListingByKeyWithHttpInfo(storeid, key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List your org's storefronts as a page
  ///
  /// Answers a pagination envelope — page, display, the rows, and a total count — read from the caller org's OWN namespaced database, so one tenant can never list another's stores. Sorting defaults to the store slug and is overridable with sort; display is the page size and page applies only alongside it, and either one that is not a positive integer is refused rather than silently ignored. The limit query overrides the reported COUNT only and never the rows returned. A request that resolves no org namespace is served an empty page, never an unscoped scan. Readable with an admin token, a store-scoped token, or the anonymous published storefront key.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getStoreWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/';

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

  /// List your org's storefronts as a page
  ///
  /// Answers a pagination envelope — page, display, the rows, and a total count — read from the caller org's OWN namespaced database, so one tenant can never list another's stores. Sorting defaults to the store slug and is overridable with sort; display is the page size and page applies only alongside it, and either one that is not a positive integer is refused rather than silently ignored. The limit query overrides the reported COUNT only and never the rows returned. A request that resolves no org namespace is served an empty page, never an unscoped scan. Readable with an admin token, a store-scoped token, or the anonymous published storefront key.
  Future<void> getStore() async {
    final response = await getStoreWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Whether a store is entitled to trade, and why
  ///
  /// Answers allowed, the store id, and a status of trial, active, payment_required, store_required or unavailable — the entitlement check a merchant surface gates on. The rule that surprises people is that entitlement is PER STORE, not per org: the store needs its own current subscription on the entry plan, either trialing with a trial end still ahead or active with a period end still ahead, so an org-wide balance or a sibling store's plan unlocks nothing here. The store comes from the X-Store-Id header and otherwise falls back to the org's first store; neither resolving is store_required with allowed false, and a backing-store failure is 503 with status unavailable — a retry signal, not a denial.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getStoreAccessWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/access';

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

  /// Whether a store is entitled to trade, and why
  ///
  /// Answers allowed, the store id, and a status of trial, active, payment_required, store_required or unavailable — the entitlement check a merchant surface gates on. The rule that surprises people is that entitlement is PER STORE, not per org: the store needs its own current subscription on the entry plan, either trialing with a trial end still ahead or active with a period end still ahead, so an org-wide balance or a sibling store's plan unlocks nothing here. The store comes from the X-Store-Id header and otherwise falls back to the org's first store; neither resolving is store_required with allowed false, and a backing-store failure is 503 with status unavailable — a retry signal, not a denial.
  Future<void> getStoreAccess() async {
    final response = await getStoreAccessWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch one storefront
  ///
  /// Reads the addressed store from the caller org's own namespaced database, so an id belonging to another tenant is simply absent there and answers 404 rather than leaking its existence. The body is the stored entity including its embedded listing override map. Readable with an admin or store-read token and also with the anonymous published storefront key, which is what lets a logged-out storefront resolve the store it is rendering.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<Response> getStoreByStoreidWithHttpInfo(String storeid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}'
      .replaceAll('{storeid}', storeid);

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

  /// Fetch one storefront
  ///
  /// Reads the addressed store from the caller org's own namespaced database, so an id belonging to another tenant is simply absent there and answers 404 rather than leaking its existence. The body is the stored entity including its embedded listing override map. Readable with an admin or store-read token and also with the anonymous published storefront key, which is what lets a logged-out storefront resolve the store it is rendering.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<void> getStoreByStoreid(String storeid,) async {
    final response = await getStoreByStoreidWithHttpInfo(storeid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch a bundle as this storefront sells it
  ///
  /// Returns the stored bundle with the store's listing for it laid over the top — every non-empty listing field wins, and the currency is forced to the store's own — so the caller reads what this storefront actually sells rather than the catalog-wide record. The overlay is keyed by the item's ID: a listing filed only under a slug or SKU does not reach it, unlike the listing reads, which do fall back to those. An unknown store or key is 404. Readable with an admin token or the anonymous published storefront key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] key (required):
  Future<Response> getStoreByStoreidBundleByKeyWithHttpInfo(String storeid, String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}/bundle/{key}'
      .replaceAll('{storeid}', storeid)
      .replaceAll('{key}', key);

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

  /// Fetch a bundle as this storefront sells it
  ///
  /// Returns the stored bundle with the store's listing for it laid over the top — every non-empty listing field wins, and the currency is forced to the store's own — so the caller reads what this storefront actually sells rather than the catalog-wide record. The overlay is keyed by the item's ID: a listing filed only under a slug or SKU does not reach it, unlike the listing reads, which do fall back to those. An unknown store or key is 404. Readable with an admin token or the anonymous published storefront key.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] key (required):
  Future<void> getStoreByStoreidBundleByKey(String storeid, String key,) async {
    final response = await getStoreByStoreidBundleByKeyWithHttpInfo(storeid, key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The storefront's whole listing override map
  ///
  /// Returns every override this store applies to catalog items — name, price, list price, media, availability and the hidden flag — keyed by product or variant id, in one read. A listing is an OVERRIDE, not a product: the catalog item exists independently and this map only says how this storefront presents it. Read from the caller org's own namespaced database, so a store id belonging to another tenant is 404. Readable with an admin token or the anonymous published storefront key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<Response> getStoreByStoreidListingWithHttpInfo(String storeid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}/listing'
      .replaceAll('{storeid}', storeid);

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

  /// The storefront's whole listing override map
  ///
  /// Returns every override this store applies to catalog items — name, price, list price, media, availability and the hidden flag — keyed by product or variant id, in one read. A listing is an OVERRIDE, not a product: the catalog item exists independently and this map only says how this storefront presents it. Read from the caller org's own namespaced database, so a store id belonging to another tenant is 404. Readable with an admin token or the anonymous published storefront key.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<void> getStoreByStoreidListing(String storeid,) async {
    final response = await getStoreByStoreidListingWithHttpInfo(storeid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch one listing override, by item id or by its slug or SKU
  ///
  /// Looks the key up in the store's listing map first and, failing that, matches it against each listing's slug and then its SKU — so a storefront holding only a product's URL slug can still resolve the override. That fallback is unique to the listing reads; the item overlay routes match by id alone. A key matching none of the three is 404, as is a store id outside the caller org's namespace. Readable with an admin token or the anonymous published storefront key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] key (required):
  Future<Response> getStoreByStoreidListingByKeyWithHttpInfo(String storeid, String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}/listing/{key}'
      .replaceAll('{storeid}', storeid)
      .replaceAll('{key}', key);

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

  /// Fetch one listing override, by item id or by its slug or SKU
  ///
  /// Looks the key up in the store's listing map first and, failing that, matches it against each listing's slug and then its SKU — so a storefront holding only a product's URL slug can still resolve the override. That fallback is unique to the listing reads; the item overlay routes match by id alone. A key matching none of the three is 404, as is a store id outside the caller org's namespace. Readable with an admin token or the anonymous published storefront key.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] key (required):
  Future<void> getStoreByStoreidListingByKey(String storeid, String key,) async {
    final response = await getStoreByStoreidListingByKeyWithHttpInfo(storeid, key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch a product as this storefront sells it
  ///
  /// Returns the stored product with the store's listing for it laid over the top — non-empty listing fields replace the catalog values and the currency is forced to the store's own — which is what lets two storefronts sell the same catalog product at their own price, name and media. The overlay is keyed by the product's ID, so a listing filed only under a slug or SKU does not apply here. An unknown store or key is 404. Readable with an admin token or the anonymous published storefront key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] key (required):
  Future<Response> getStoreByStoreidProductByKeyWithHttpInfo(String storeid, String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}/product/{key}'
      .replaceAll('{storeid}', storeid)
      .replaceAll('{key}', key);

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

  /// Fetch a product as this storefront sells it
  ///
  /// Returns the stored product with the store's listing for it laid over the top — non-empty listing fields replace the catalog values and the currency is forced to the store's own — which is what lets two storefronts sell the same catalog product at their own price, name and media. The overlay is keyed by the product's ID, so a listing filed only under a slug or SKU does not apply here. An unknown store or key is 404. Readable with an admin token or the anonymous published storefront key.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] key (required):
  Future<void> getStoreByStoreidProductByKey(String storeid, String key,) async {
    final response = await getStoreByStoreidProductByKeyWithHttpInfo(storeid, key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch a variant as this storefront sells it
  ///
  /// Returns the stored variant with the store's listing for it overlaid — non-empty listing fields replace the catalog values and the currency is forced to the store's own — which is what makes per-storefront pricing of a shared variant possible. The overlay is keyed by the variant's ID, never by its slug or SKU. An unknown store or key is 404. Readable with an admin token or the anonymous published storefront key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] key (required):
  Future<Response> getStoreByStoreidVariantByKeyWithHttpInfo(String storeid, String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}/variant/{key}'
      .replaceAll('{storeid}', storeid)
      .replaceAll('{key}', key);

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

  /// Fetch a variant as this storefront sells it
  ///
  /// Returns the stored variant with the store's listing for it overlaid — non-empty listing fields replace the catalog values and the currency is forced to the store's own — which is what makes per-storefront pricing of a shared variant possible. The overlay is keyed by the variant's ID, never by its slug or SKU. An unknown store or key is 404. Readable with an admin token or the anonymous published storefront key.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] key (required):
  Future<void> getStoreByStoreidVariantByKey(String storeid, String key,) async {
    final response = await getStoreByStoreidVariantByKeyWithHttpInfo(storeid, key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Resolve your org's active storefront without naming an id
  ///
  /// Returns the caller org's store resolved FROM THE AUTHENTICATED ORG rather than from a path id — which is how an admin dashboard or a storefront edge learns the store id it should then read and write against. An X-Store-Id header selects a specific store, resolved only inside the caller's own namespace, so a foreign id cannot cross the tenant boundary and answers 404 instead. With no header the org's first store is returned, and an org that has none yet has its canonical default provisioned lazily and idempotently, carrying no payment credentials. Only when there is no org in context, or provisioning fails, does it fall back to a placeholder store literally named default, which a storefront edge should treat as unconfigured.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getStoreCurrentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/current';

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

  /// Resolve your org's active storefront without naming an id
  ///
  /// Returns the caller org's store resolved FROM THE AUTHENTICATED ORG rather than from a path id — which is how an admin dashboard or a storefront edge learns the store id it should then read and write against. An X-Store-Id header selects a specific store, resolved only inside the caller's own namespace, so a foreign id cannot cross the tenant boundary and answers 404 instead. With no header the org's first store is returned, and an org that has none yet has its canonical default provisioned lazily and idempotently, carrying no payment credentials. Only when there is no org in context, or provisioning fails, does it fall back to a placeholder store literally named default, which a storefront edge should treat as unconfigured.
  Future<void> getStoreCurrent() async {
    final response = await getStoreCurrentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Change part of a storefront
  ///
  /// Loads the stored store and decodes the body over it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged entity. The id is resolved inside the caller org's own namespace, so an unknown or foreign id is 404. Requires an admin token, or one holding both store read and store write.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<Response> patchStoreByStoreidWithHttpInfo(String storeid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}'
      .replaceAll('{storeid}', storeid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Change part of a storefront
  ///
  /// Loads the stored store and decodes the body over it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged entity. The id is resolved inside the caller org's own namespace, so an unknown or foreign id is 404. Requires an admin token, or one holding both store read and store write.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<void> patchStoreByStoreid(String storeid,) async {
    final response = await patchStoreByStoreidWithHttpInfo(storeid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Confirm a listing override exists and re-save the store
  ///
  /// Requires the key to already be present — an absent one is 404 — and answers the store's listing map at 200. Read the behaviour before relying on it: the decoded body is applied to a COPY taken out of the map and is never assigned back, so the stored listing is unchanged and the map returned is exactly the map that was already there. An actual edit to an existing listing has to go through the upsert, which does write its result back into the store. A body that fails to decode is still 400. Admin-gated and namespaced to the caller's org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] key (required):
  Future<Response> patchStoreByStoreidListingByKeyWithHttpInfo(String storeid, String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}/listing/{key}'
      .replaceAll('{storeid}', storeid)
      .replaceAll('{key}', key);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Confirm a listing override exists and re-save the store
  ///
  /// Requires the key to already be present — an absent one is 404 — and answers the store's listing map at 200. Read the behaviour before relying on it: the decoded body is applied to a COPY taken out of the map and is never assigned back, so the stored listing is unchanged and the map returned is exactly the map that was already there. An actual edit to an existing listing has to go through the upsert, which does write its result back into the store. A body that fails to decode is still 400. Admin-gated and namespaced to the caller's org.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] key (required):
  Future<void> patchStoreByStoreidListingByKey(String storeid, String key,) async {
    final response = await patchStoreByStoreidListingByKeyWithHttpInfo(storeid, key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a storefront
  ///
  /// Creates a store from the body inside the caller org's own namespaced database, so the row is physically isolated to that tenant from its first write, and answers it at 201 with a Location header naming its id. Requires an admin or store-write token: the anonymous published storefront key may READ stores but never create one. A body that fails to decode is 400.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postStoreWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/';

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

  /// Create a storefront
  ///
  /// Creates a store from the body inside the caller org's own namespaced database, so the row is physically isolated to that tenant from its first write, and answers it at 201 with a Location header naming its id. Requires an admin or store-write token: the anonymous published storefront key may READ stores but never create one. A body that fails to decode is 400.
  Future<void> postStore() async {
    final response = await postStoreWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Method-override tunnel for clients that cannot send PUT, PATCH or DELETE
  ///
  /// Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header, the header winning when both are present. Only PUT, PATCH and DELETE are accepted; anything else resolves to 405. The trap is the default: naming NO override at all is treated as a partial update, never as a create. Authorization is whatever the underlying operation requires, since the real handler runs.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<Response> postStoreByStoreidWithHttpInfo(String storeid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}'
      .replaceAll('{storeid}', storeid);

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

  /// Method-override tunnel for clients that cannot send PUT, PATCH or DELETE
  ///
  /// Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header, the header winning when both are present. Only PUT, PATCH and DELETE are accepted; anything else resolves to 405. The trap is the default: naming NO override at all is treated as a partial update, never as a create. Authorization is whatever the underlying operation requires, since the real handler runs.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<void> postStoreByStoreid(String storeid,) async {
    final response = await postStoreByStoreidWithHttpInfo(storeid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Authorize a new order against a storefront, holding the funds without settling them
  ///
  /// Tallies a new order for the addressed store from the user, payment and order body, reserves its items, runs the processor authorization and answers the saved order with a Location header pointing at it. The gate is a token carrying admin or published scope, so a published storefront key is enough; no token is 401 and a token with neither bit is 403. The store is loaded BEFORE any payment work and its currency OVERRIDES whatever the body asked for, so a store that will not load ends the call with 500 and nothing is charged. On any authorization failure the reservations are released and the order and payment are persisted as cancelled, so a failed attempt still leaves a durable record. Capture is a separate call.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<Response> postStoreByStoreidAuthorizeWithHttpInfo(String storeid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}/authorize'
      .replaceAll('{storeid}', storeid);

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

  /// Authorize a new order against a storefront, holding the funds without settling them
  ///
  /// Tallies a new order for the addressed store from the user, payment and order body, reserves its items, runs the processor authorization and answers the saved order with a Location header pointing at it. The gate is a token carrying admin or published scope, so a published storefront key is enough; no token is 401 and a token with neither bit is 403. The store is loaded BEFORE any payment work and its currency OVERRIDES whatever the body asked for, so a store that will not load ends the call with 500 and nothing is charged. On any authorization failure the reservations are released and the order and payment are persisted as cancelled, so a failed attempt still leaves a durable record. Capture is a separate call.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<void> postStoreByStoreidAuthorize(String storeid,) async {
    final response = await postStoreByStoreidAuthorizeWithHttpInfo(storeid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Authorize an order that already exists, holding the funds without settling them
  ///
  /// Continues the order named in the path rather than minting a new one, holding funds for it. The order is loaded from the caller org's own store, so an id belonging to another tenant is a 404. The rule most callers get wrong is that the body's order object is MERGED onto the loaded order before the tally — this is not a read-only reference, and a field sent here overwrites what is stored. The gate, the store resolution and the currency override behave exactly as on the bodiless-id sibling, and settling is still the capture call's job.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] orderid (required):
  Future<Response> postStoreByStoreidAuthorizeByOrderidWithHttpInfo(String storeid, String orderid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}/authorize/{orderid}'
      .replaceAll('{storeid}', storeid)
      .replaceAll('{orderid}', orderid);

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

  /// Authorize an order that already exists, holding the funds without settling them
  ///
  /// Continues the order named in the path rather than minting a new one, holding funds for it. The order is loaded from the caller org's own store, so an id belonging to another tenant is a 404. The rule most callers get wrong is that the body's order object is MERGED onto the loaded order before the tally — this is not a read-only reference, and a field sent here overwrites what is stored. The gate, the store resolution and the currency override behave exactly as on the bodiless-id sibling, and settling is still the capture call's job.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] orderid (required):
  Future<void> postStoreByStoreidAuthorizeByOrderid(String storeid, String orderid,) async {
    final response = await postStoreByStoreidAuthorizeByOrderidWithHttpInfo(storeid, orderid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Capture a previously authorized order and settle the payment
  ///
  /// Settles the order named in the path — the second half of the two-step flow — and answers the updated order with a Location header. Dispatch follows the order's STORED payment type, and a successful capture is the moment the rest of the system learns about the sale: order and payment rows are updated, coupon redemptions, referral, cart and stats are written, the confirmation email goes out, and the paid and completed events are emitted. A capture failure releases the order's inventory reservations and answers 400, so a failed settlement never leaves items held.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] orderid (required):
  Future<Response> postStoreByStoreidCaptureByOrderidWithHttpInfo(String storeid, String orderid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}/capture/{orderid}'
      .replaceAll('{storeid}', storeid)
      .replaceAll('{orderid}', orderid);

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

  /// Capture a previously authorized order and settle the payment
  ///
  /// Settles the order named in the path — the second half of the two-step flow — and answers the updated order with a Location header. Dispatch follows the order's STORED payment type, and a successful capture is the moment the rest of the system learns about the sale: order and payment rows are updated, coupon redemptions, referral, cart and stats are written, the confirmation email goes out, and the paid and completed events are emitted. A capture failure releases the order's inventory reservations and answers 400, so a failed settlement never leaves items held.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] orderid (required):
  Future<void> postStoreByStoreidCaptureByOrderid(String storeid, String orderid,) async {
    final response = await postStoreByStoreidCaptureByOrderidWithHttpInfo(storeid, orderid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Authorize and capture a new order in one call
  ///
  /// Runs authorization and capture back to back against a freshly created order — the one-step flow for callers with no reason to hold funds. It takes the authorize body and inherits every authorize rule: the store's currency wins over the body, the items are reserved before the processor is called, and the amount bounds the processor enforces still apply. There is no order id on this address, so it can never continue an existing order. Either half failing answers 400, and the capture side effects — confirmation email, redemptions, stats, the paid and completed events — run only when both halves succeed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<Response> postStoreByStoreidChargeWithHttpInfo(String storeid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}/charge'
      .replaceAll('{storeid}', storeid);

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

  /// Authorize and capture a new order in one call
  ///
  /// Runs authorization and capture back to back against a freshly created order — the one-step flow for callers with no reason to hold funds. It takes the authorize body and inherits every authorize rule: the store's currency wins over the body, the items are reserved before the processor is called, and the amount bounds the processor enforces still apply. There is no order id on this address, so it can never continue an existing order. Either half failing answers 400, and the capture side effects — confirmation email, redemptions, stats, the paid and completed events — run only when both halves succeed.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<void> postStoreByStoreidCharge(String storeid,) async {
    final response = await postStoreByStoreidChargeWithHttpInfo(storeid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Authorize a new order against a storefront, holding the funds — the checkout spelling
  ///
  /// Authorizes a new order for the addressed store and holds the funds, answering the saved order with a Location header. It binds the identical handler as the shorter authorize address, so the two are ONE operation at two spellings and not two behaviours; the checkout prefix is the newer one. Every rule carries over: admin or published scope on the token, the store loaded first with its currency overriding the body, items reserved before the processor call, and reservations released with the order persisted cancelled on failure. Nothing is settled here.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<Response> postStoreByStoreidCheckoutAuthorizeWithHttpInfo(String storeid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}/checkout/authorize'
      .replaceAll('{storeid}', storeid);

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

  /// Authorize a new order against a storefront, holding the funds — the checkout spelling
  ///
  /// Authorizes a new order for the addressed store and holds the funds, answering the saved order with a Location header. It binds the identical handler as the shorter authorize address, so the two are ONE operation at two spellings and not two behaviours; the checkout prefix is the newer one. Every rule carries over: admin or published scope on the token, the store loaded first with its currency overriding the body, items reserved before the processor call, and reservations released with the order persisted cancelled on failure. Nothing is settled here.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<void> postStoreByStoreidCheckoutAuthorize(String storeid,) async {
    final response = await postStoreByStoreidCheckoutAuthorizeWithHttpInfo(storeid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Authorize an existing order, holding the funds — the checkout spelling
  ///
  /// Continues the order named in the path rather than minting one, and shares its handler byte for byte with the unprefixed authorize-by-id address. The order is loaded from the caller org's own store, so another tenant's id is a 404, and the body's order object is merged onto the loaded row before the tally — a field sent here overwrites what is stored. Store resolution, the token gate and the currency override behave as on every other authorize address; settle with the capture address and the same order id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] orderid (required):
  Future<Response> postStoreByStoreidCheckoutAuthorizeByOrderidWithHttpInfo(String storeid, String orderid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}/checkout/authorize/{orderid}'
      .replaceAll('{storeid}', storeid)
      .replaceAll('{orderid}', orderid);

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

  /// Authorize an existing order, holding the funds — the checkout spelling
  ///
  /// Continues the order named in the path rather than minting one, and shares its handler byte for byte with the unprefixed authorize-by-id address. The order is loaded from the caller org's own store, so another tenant's id is a 404, and the body's order object is merged onto the loaded row before the tally — a field sent here overwrites what is stored. Store resolution, the token gate and the currency override behave as on every other authorize address; settle with the capture address and the same order id.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] orderid (required):
  Future<void> postStoreByStoreidCheckoutAuthorizeByOrderid(String storeid, String orderid,) async {
    final response = await postStoreByStoreidCheckoutAuthorizeByOrderidWithHttpInfo(storeid, orderid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Capture a previously authorized order and settle it — the checkout spelling
  ///
  /// Settles the authorized order named in the path and answers the updated order with a Location header, running the same handler as the unprefixed capture address. Dispatch follows the order's stored payment type. Success is what triggers the downstream work — order and payment updates, redemptions, referral, cart and stats, the confirmation email, and the paid and completed events — while a failure releases the order's inventory reservations and answers 400.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] orderid (required):
  Future<Response> postStoreByStoreidCheckoutCaptureByOrderidWithHttpInfo(String storeid, String orderid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}/checkout/capture/{orderid}'
      .replaceAll('{storeid}', storeid)
      .replaceAll('{orderid}', orderid);

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

  /// Capture a previously authorized order and settle it — the checkout spelling
  ///
  /// Settles the authorized order named in the path and answers the updated order with a Location header, running the same handler as the unprefixed capture address. Dispatch follows the order's stored payment type. Success is what triggers the downstream work — order and payment updates, redemptions, referral, cart and stats, the confirmation email, and the paid and completed events — while a failure releases the order's inventory reservations and answers 400.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] orderid (required):
  Future<void> postStoreByStoreidCheckoutCaptureByOrderid(String storeid, String orderid,) async {
    final response = await postStoreByStoreidCheckoutCaptureByOrderidWithHttpInfo(storeid, orderid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Authorize and capture a new order in one call — the checkout spelling
  ///
  /// Performs authorization and capture back to back against a newly created order for the addressed store, on the same handler as the unprefixed charge address. It takes the authorize body and inherits every authorize rule, including the store's currency winning over the body and the items being reserved before the processor is called. There is no order id on this address, so it can never continue an existing order. Either half failing answers 400, and the capture side effects run only when both succeed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<Response> postStoreByStoreidCheckoutChargeWithHttpInfo(String storeid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}/checkout/charge'
      .replaceAll('{storeid}', storeid);

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

  /// Authorize and capture a new order in one call — the checkout spelling
  ///
  /// Performs authorization and capture back to back against a newly created order for the addressed store, on the same handler as the unprefixed charge address. It takes the authorize body and inherits every authorize rule, including the store's currency winning over the body and the items being reserved before the processor is called. There is no order id on this address, so it can never continue an existing order. Either half failing answers 400, and the capture side effects run only when both succeed.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<void> postStoreByStoreidCheckoutCharge(String storeid,) async {
    final response = await postStoreByStoreidCheckoutChargeWithHttpInfo(storeid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// PayPal cancel by pay key — refuses, exactly as the unprefixed address does
  ///
  /// Meant to void the payments carrying the given pay key, stamp them cancelled and cancel the order, but the shared checkout handler resolves its order from an ORDER ID path parameter this route does not carry. The result is an untyped order and a cancel dispatch that refuses with 400 before the pay key lookup ever runs. Token gate, namespacing and store resolution happen first, so a missing token is still 401 and an unloadable store still 500. It is the same handler as the unprefixed cancel address, with the same outcome.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] payKey (required):
  Future<Response> postStoreByStoreidCheckoutPaypalCancelByPaykeyWithHttpInfo(String storeid, String payKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}/checkout/paypal/cancel/{payKey}'
      .replaceAll('{storeid}', storeid)
      .replaceAll('{payKey}', payKey);

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

  /// PayPal cancel by pay key — refuses, exactly as the unprefixed address does
  ///
  /// Meant to void the payments carrying the given pay key, stamp them cancelled and cancel the order, but the shared checkout handler resolves its order from an ORDER ID path parameter this route does not carry. The result is an untyped order and a cancel dispatch that refuses with 400 before the pay key lookup ever runs. Token gate, namespacing and store resolution happen first, so a missing token is still 401 and an unloadable store still 500. It is the same handler as the unprefixed cancel address, with the same outcome.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] payKey (required):
  Future<void> postStoreByStoreidCheckoutPaypalCancelByPaykey(String storeid, String payKey,) async {
    final response = await postStoreByStoreidCheckoutPaypalCancelByPaykeyWithHttpInfo(storeid, payKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// PayPal confirm by pay key — refuses, exactly as the unprefixed address does
  ///
  /// Meant to mark the payments carrying the given pay key as paid and set the order to paid, it cannot reach that work from this address: the shared checkout handler takes its order from an ORDER ID path parameter this route does not carry, so the order is always fresh and untyped and the confirm dispatch refuses with 400 before the pay key is queried. The token gate, the namespace middleware and the store lookup all run ahead of that, so authentication and store failures surface first. Behaviour is identical to the unprefixed confirm address; the checkout prefix changes nothing here.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] payKey (required):
  Future<Response> postStoreByStoreidCheckoutPaypalConfirmByPaykeyWithHttpInfo(String storeid, String payKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}/checkout/paypal/confirm/{payKey}'
      .replaceAll('{storeid}', storeid)
      .replaceAll('{payKey}', payKey);

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

  /// PayPal confirm by pay key — refuses, exactly as the unprefixed address does
  ///
  /// Meant to mark the payments carrying the given pay key as paid and set the order to paid, it cannot reach that work from this address: the shared checkout handler takes its order from an ORDER ID path parameter this route does not carry, so the order is always fresh and untyped and the confirm dispatch refuses with 400 before the pay key is queried. The token gate, the namespace middleware and the store lookup all run ahead of that, so authentication and store failures surface first. Behaviour is identical to the unprefixed confirm address; the checkout prefix changes nothing here.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] payKey (required):
  Future<void> postStoreByStoreidCheckoutPaypalConfirmByPaykey(String storeid, String payKey,) async {
    final response = await postStoreByStoreidCheckoutPaypalConfirmByPaykeyWithHttpInfo(storeid, payKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Start a PayPal authorization for a new order — the checkout spelling
  ///
  /// Begins a PayPal authorization by running the ordinary store authorize flow, since the route binds that exact handler — body, store resolution, tally, reservations and failure behaviour are the authorize address's, unchanged. The processor is chosen from the body's payment type, so this path reaches PayPal only when that type says so. A successful PayPal authorization stamps a pay key onto the payment, which is the key the confirm and cancel addresses filter on. Build against the plain authorize address instead.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<Response> postStoreByStoreidCheckoutPaypalPayWithHttpInfo(String storeid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}/checkout/paypal/pay'
      .replaceAll('{storeid}', storeid);

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

  /// Start a PayPal authorization for a new order — the checkout spelling
  ///
  /// Begins a PayPal authorization by running the ordinary store authorize flow, since the route binds that exact handler — body, store resolution, tally, reservations and failure behaviour are the authorize address's, unchanged. The processor is chosen from the body's payment type, so this path reaches PayPal only when that type says so. A successful PayPal authorization stamps a pay key onto the payment, which is the key the confirm and cancel addresses filter on. Build against the plain authorize address instead.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<void> postStoreByStoreidCheckoutPaypalPay(String storeid,) async {
    final response = await postStoreByStoreidCheckoutPaypalPayWithHttpInfo(storeid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Add a listing override under a new key
  ///
  /// Creates the override and answers the store's ENTIRE listing map at 201 with a Location header — not just the entry that was added. A key already present is refused 400: creation never silently overwrites, so changing an existing listing has to be an explicit replace. The stored listing has its currency stamped from the store's own, which the replace path does not do. The key is matched exactly here, with none of the slug or SKU fallback the read allows. Admin-gated and resolved inside the caller org's namespace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] key (required):
  Future<Response> postStoreByStoreidListingByKeyWithHttpInfo(String storeid, String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}/listing/{key}'
      .replaceAll('{storeid}', storeid)
      .replaceAll('{key}', key);

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

  /// Add a listing override under a new key
  ///
  /// Creates the override and answers the store's ENTIRE listing map at 201 with a Location header — not just the entry that was added. A key already present is refused 400: creation never silently overwrites, so changing an existing listing has to be an explicit replace. The stored listing has its currency stamped from the store's own, which the replace path does not do. The key is matched exactly here, with none of the slug or SKU fallback the read allows. Admin-gated and resolved inside the caller org's namespace.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] key (required):
  Future<void> postStoreByStoreidListingByKey(String storeid, String key,) async {
    final response = await postStoreByStoreidListingByKeyWithHttpInfo(storeid, key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// PayPal cancel by pay key — refuses, because a pay key alone does not identify the order
  ///
  /// Intended to void the payments carrying the given pay key, stamp them cancelled and cancel the order, it never reaches that work: the shared checkout handler reads its order from an ORDER ID path parameter this route does not carry, leaving an untyped order that the cancel dispatch refuses with 400 before the pay key lookup runs. Authentication, namespacing and store resolution happen ahead of the refusal, so a missing token is 401 and an unloadable store 500. Cancelling a real PayPal authorization needs an address that carries the order id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] payKey (required):
  Future<Response> postStoreByStoreidPaypalCancelByPaykeyWithHttpInfo(String storeid, String payKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}/paypal/cancel/{payKey}'
      .replaceAll('{storeid}', storeid)
      .replaceAll('{payKey}', payKey);

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

  /// PayPal cancel by pay key — refuses, because a pay key alone does not identify the order
  ///
  /// Intended to void the payments carrying the given pay key, stamp them cancelled and cancel the order, it never reaches that work: the shared checkout handler reads its order from an ORDER ID path parameter this route does not carry, leaving an untyped order that the cancel dispatch refuses with 400 before the pay key lookup runs. Authentication, namespacing and store resolution happen ahead of the refusal, so a missing token is 401 and an unloadable store 500. Cancelling a real PayPal authorization needs an address that carries the order id.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] payKey (required):
  Future<void> postStoreByStoreidPaypalCancelByPaykey(String storeid, String payKey,) async {
    final response = await postStoreByStoreidPaypalCancelByPaykeyWithHttpInfo(storeid, payKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// PayPal confirm by pay key — refuses, because a pay key alone does not identify the order
  ///
  /// Intended to mark every payment carrying the given pay key as paid and flip the order to paid, it cannot do that from this address and does not pretend to: the shared checkout handler resolves its order from an ORDER ID path parameter that this route does not carry, so it always works against a fresh untyped order and the confirm dispatch refuses it with 400 before the pay key is ever queried. The token gate, the namespace and the store lookup all run ahead of that, so a missing token is still 401 and an unloadable store still 500. Drive a PayPal return through an address that carries the order id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] payKey (required):
  Future<Response> postStoreByStoreidPaypalConfirmByPaykeyWithHttpInfo(String storeid, String payKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}/paypal/confirm/{payKey}'
      .replaceAll('{storeid}', storeid)
      .replaceAll('{payKey}', payKey);

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

  /// PayPal confirm by pay key — refuses, because a pay key alone does not identify the order
  ///
  /// Intended to mark every payment carrying the given pay key as paid and flip the order to paid, it cannot do that from this address and does not pretend to: the shared checkout handler resolves its order from an ORDER ID path parameter that this route does not carry, so it always works against a fresh untyped order and the confirm dispatch refuses it with 400 before the pay key is ever queried. The token gate, the namespace and the store lookup all run ahead of that, so a missing token is still 401 and an unloadable store still 500. Drive a PayPal return through an address that carries the order id.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] payKey (required):
  Future<void> postStoreByStoreidPaypalConfirmByPaykey(String storeid, String payKey,) async {
    final response = await postStoreByStoreidPaypalConfirmByPaykeyWithHttpInfo(storeid, payKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Start a PayPal authorization for a new order
  ///
  /// Runs the ordinary store authorize flow — the route binds that very handler, so the body, the store resolution, the tally, the reservations and the failure behaviour are the authorize address's, unchanged. It reaches PayPal only when the body's payment type says so; nothing about this path forces the processor, so a card-typed payment posted here authorizes on the card processor instead. A successful PayPal authorization stamps a pay key onto the payment, which is the key the confirm and cancel addresses filter on. It is the older entry point; the plain authorize address is the one to build against.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<Response> postStoreByStoreidPaypalPayWithHttpInfo(String storeid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}/paypal/pay'
      .replaceAll('{storeid}', storeid);

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

  /// Start a PayPal authorization for a new order
  ///
  /// Runs the ordinary store authorize flow — the route binds that very handler, so the body, the store resolution, the tally, the reservations and the failure behaviour are the authorize address's, unchanged. It reaches PayPal only when the body's payment type says so; nothing about this path forces the processor, so a card-typed payment posted here authorizes on the card processor instead. A successful PayPal authorization stamps a pay key onto the payment, which is the key the confirm and cancel addresses filter on. It is the older entry point; the plain authorize address is the one to build against.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<void> postStoreByStoreidPaypalPay(String storeid,) async {
    final response = await postStoreByStoreidPaypalPayWithHttpInfo(storeid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Start this store's no-card trial on the entry plan
  ///
  /// Creates a trialing subscription for the addressed store on the entry plan and grants that plan's trial credit, answering 201 when this call actually started one and 200 with a reason otherwise — not_new when the store already has billing history, trial_not_configured when no entry plan is wired. The window is always the SEVEN-DAY no-card trial, because this address never presents a card; the longer card-present window is reached only by adding a card afterwards. Entitlement is per store while the billing subject is the org, so every store an org owns takes its own trial. Admin-gated and namespaced to the caller's org: no resolvable store is 404 with store_required, and a backing-store failure is 503.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<Response> postStoreByStoreidTrialWithHttpInfo(String storeid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}/trial'
      .replaceAll('{storeid}', storeid);

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

  /// Start this store's no-card trial on the entry plan
  ///
  /// Creates a trialing subscription for the addressed store on the entry plan and grants that plan's trial credit, answering 201 when this call actually started one and 200 with a reason otherwise — not_new when the store already has billing history, trial_not_configured when no entry plan is wired. The window is always the SEVEN-DAY no-card trial, because this address never presents a card; the longer card-present window is reached only by adding a card afterwards. Entitlement is per store while the billing subject is the org, so every store an org owns takes its own trial. Admin-gated and namespaced to the caller's org: no resolvable store is 404 with store_required, and a backing-store failure is 503.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<void> postStoreByStoreidTrial(String storeid,) async {
    final response = await postStoreByStoreidTrialWithHttpInfo(storeid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Mint your org's least-privilege storefront read key
  ///
  /// Answers a freshly minted token carrying ONLY the published-read permission — enough for a logged-out shopper's storefront to read your published catalog and nothing more, with no write and no admin scope. It is org-bound, signed with the org's own secret and subject to the org id, so unlike a shared service token it can never act on another tenant. Minting ROTATES rather than accumulates: the previous storefront token is dropped first and is invalid immediately, so re-minting is how you revoke. Admin is enforced by the handler as well as the route, because the route's token gate does not apply on the identity path and a plain member must not be able to mint their org's key.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postStoreTokenWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/token';

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

  /// Mint your org's least-privilege storefront read key
  ///
  /// Answers a freshly minted token carrying ONLY the published-read permission — enough for a logged-out shopper's storefront to read your published catalog and nothing more, with no write and no admin scope. It is org-bound, signed with the org's own secret and subject to the org id, so unlike a shared service token it can never act on another tenant. Minting ROTATES rather than accumulates: the previous storefront token is dropped first and is invalid immediately, so re-minting is how you revoke. Admin is enforced by the handler as well as the route, because the route's token gate does not apply on the identity path and a plain member must not be able to mint their org's key.
  Future<void> postStoreToken() async {
    final response = await postStoreTokenWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a storefront outright
  ///
  /// This is a true REPLACEMENT, not a merge: the stored key is preserved but the body is decoded onto a fresh entity, so every field the body omits is written back as its zero value. Use the partial update when you mean to change part of a store. The id is resolved inside the caller org's own namespace, so an unknown or foreign id is a 404 before anything is written. Requires an admin token, or one holding both store read and store write.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<Response> putStoreByStoreidWithHttpInfo(String storeid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}'
      .replaceAll('{storeid}', storeid);

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

  /// Replace a storefront outright
  ///
  /// This is a true REPLACEMENT, not a merge: the stored key is preserved but the body is decoded onto a fresh entity, so every field the body omits is written back as its zero value. Use the partial update when you mean to change part of a store. The id is resolved inside the caller org's own namespace, so an unknown or foreign id is a 404 before anything is written. Requires an admin token, or one holding both store read and store write.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<void> putStoreByStoreid(String storeid,) async {
    final response = await putStoreByStoreidWithHttpInfo(storeid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Upsert a listing override
  ///
  /// Decodes the body over the existing listing when the key is present, so fields it omits keep their stored values, and builds the listing from the body alone when the key is new. Answers 200 when it replaced something and 201 with a Location header when it created it; either way the body is the store's entire listing map, not the single entry. Unlike creation, this path does NOT restamp the listing's currency from the store. Admin-gated, with the store resolved inside the caller org's namespace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] key (required):
  Future<Response> putStoreByStoreidListingByKeyWithHttpInfo(String storeid, String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store/{storeid}/listing/{key}'
      .replaceAll('{storeid}', storeid)
      .replaceAll('{key}', key);

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

  /// Upsert a listing override
  ///
  /// Decodes the body over the existing listing when the key is present, so fields it omits keep their stored values, and builds the listing from the body alone when the key is new. Answers 200 when it replaced something and 201 with a Location header when it created it; either way the body is the store's entire listing map, not the single entry. Unlike creation, this path does NOT restamp the listing's currency from the store. Admin-gated, with the store resolved inside the caller org's namespace.
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  ///
  /// * [String] key (required):
  Future<void> putStoreByStoreidListingByKey(String storeid, String key,) async {
    final response = await putStoreByStoreidListingByKeyWithHttpInfo(storeid, key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
