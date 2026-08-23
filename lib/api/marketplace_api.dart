//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class MarketplaceApi {
  MarketplaceApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Unpublish withdraws one of the caller org's listings from the marketplace and answers 204.
  ///
  /// Unpublish withdraws one of the caller org's listings from the marketplace and answers 204. Only the publishing org can remove its own listing; an id that is unknown, or belongs to another org, is the same 404, so a probe learns nothing about what exists. Removing a listing removes its price from per-call enforcement; it does not uninstall the tool for anyone who already installed it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the listing to unpublish, from the path.
  Future<Response> deleteMarketplaceListingsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketplace/listings/{id}'
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

  /// Unpublish withdraws one of the caller org's listings from the marketplace and answers 204.
  ///
  /// Unpublish withdraws one of the caller org's listings from the marketplace and answers 204. Only the publishing org can remove its own listing; an id that is unknown, or belongs to another org, is the same 404, so a probe learns nothing about what exists. Removing a listing removes its price from per-call enforcement; it does not uninstall the tool for anyone who already installed it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the listing to unpublish, from the path.
  Future<void> deleteMarketplaceListingsById(String id,) async {
    final response = await deleteMarketplaceListingsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Discover lists every tool and agent the caller can reach in their own org and project, enriched with any public listing's title, category and price, and with installed=true on the ones already activated for that scope.
  ///
  /// Discover lists every tool and agent the caller can reach in their own org and project, enriched with any public listing's title, category and price, and with installed=true on the ones already activated for that scope. It is the shop window: one read that answers what exists, what it costs and what is already on.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMarketplaceWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketplace';

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

  /// Discover lists every tool and agent the caller can reach in their own org and project, enriched with any public listing's title, category and price, and with installed=true on the ones already activated for that scope.
  ///
  /// Discover lists every tool and agent the caller can reach in their own org and project, enriched with any public listing's title, category and price, and with installed=true on the ones already activated for that scope. It is the shop window: one read that answers what exists, what it costs and what is already on.
  Future<MarketCatalog?> getMarketplace() async {
    final response = await getMarketplaceWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MarketCatalog',) as MarketCatalog;
    
    }
    return null;
  }

  /// Returns the listings the caller's own org has published — what this org is offering, not what it can buy.
  ///
  /// Returns the listings the caller's own org has published — what this org is offering, not what it can buy. A publisher only ever sees its own rows.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMarketplaceListingsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketplace/listings';

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

  /// Returns the listings the caller's own org has published — what this org is offering, not what it can buy.
  ///
  /// Returns the listings the caller's own org has published — what this org is offering, not what it can buy. A publisher only ever sees its own rows.
  Future<ListingPage?> getMarketplaceListings() async {
    final response = await getMarketplaceListingsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListingPage',) as ListingPage;
    
    }
    return null;
  }

  /// Install activates one tool for the caller's own org and project.
  ///
  /// Install activates one tool for the caller's own org and project. A marketplace install IS the tool plane's activation write — one store, one truth — so an installed capability is immediately dispatchable and a monetized one is priced from its listing at every call. The tool must resolve in the caller's scope, so installing something that does not exist is refused rather than recorded.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [InstallReq] installReq (required):
  Future<Response> postMarketplaceInstallWithHttpInfo(InstallReq installReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketplace/install';

    // ignore: prefer_final_locals
    Object? postBody = installReq;

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

  /// Install activates one tool for the caller's own org and project.
  ///
  /// Install activates one tool for the caller's own org and project. A marketplace install IS the tool plane's activation write — one store, one truth — so an installed capability is immediately dispatchable and a monetized one is priced from its listing at every call. The tool must resolve in the caller's scope, so installing something that does not exist is refused rather than recorded.
  ///
  /// Parameters:
  ///
  /// * [InstallReq] installReq (required):
  Future<InstallState?> postMarketplaceInstall(InstallReq installReq,) async {
    final response = await postMarketplaceInstallWithHttpInfo(installReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InstallState',) as InstallState;
    
    }
    return null;
  }

  /// Publish offers one tool on the marketplace, optionally monetized.
  ///
  /// Publish offers one tool on the marketplace, optionally monetized. The tool must already resolve in the publisher's own scope, so a listing can never advertise a capability that does not exist; a listing with a price must name the payout wallet the x402 client settles to, so a monetized offer is never unpayable. The price is exact to 18 decimal places, so a per-call price below a cent is a real price and not a rounded-away zero. The listing is owned by the publishing org, paid into a wallet of that same org, and answers 201 with the created row.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PublishReq] publishReq (required):
  Future<Response> postMarketplaceListingsWithHttpInfo(PublishReq publishReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketplace/listings';

    // ignore: prefer_final_locals
    Object? postBody = publishReq;

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

  /// Publish offers one tool on the marketplace, optionally monetized.
  ///
  /// Publish offers one tool on the marketplace, optionally monetized. The tool must already resolve in the publisher's own scope, so a listing can never advertise a capability that does not exist; a listing with a price must name the payout wallet the x402 client settles to, so a monetized offer is never unpayable. The price is exact to 18 decimal places, so a per-call price below a cent is a real price and not a rounded-away zero. The listing is owned by the publishing org, paid into a wallet of that same org, and answers 201 with the created row.
  ///
  /// Parameters:
  ///
  /// * [PublishReq] publishReq (required):
  Future<Listing?> postMarketplaceListings(PublishReq publishReq,) async {
    final response = await postMarketplaceListingsWithHttpInfo(publishReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Listing',) as Listing;
    
    }
    return null;
  }

  /// Uninstall deactivates one tool for the caller's own org and project, so it stops being dispatchable there.
  ///
  /// Uninstall deactivates one tool for the caller's own org and project, so it stops being dispatchable there. It is the exact inverse of install and touches the same activation record; deactivating something that was never active is not an error. The listing itself is untouched — this withdraws the caller's use of a capability, not anyone's offer of it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [InstallReq] installReq (required):
  Future<Response> postMarketplaceUninstallWithHttpInfo(InstallReq installReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/marketplace/uninstall';

    // ignore: prefer_final_locals
    Object? postBody = installReq;

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

  /// Uninstall deactivates one tool for the caller's own org and project, so it stops being dispatchable there.
  ///
  /// Uninstall deactivates one tool for the caller's own org and project, so it stops being dispatchable there. It is the exact inverse of install and touches the same activation record; deactivating something that was never active is not an error. The listing itself is untouched — this withdraws the caller's use of a capability, not anyone's offer of it.
  ///
  /// Parameters:
  ///
  /// * [InstallReq] installReq (required):
  Future<InstallState?> postMarketplaceUninstall(InstallReq installReq,) async {
    final response = await postMarketplaceUninstallWithHttpInfo(installReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InstallState',) as InstallState;
    
    }
    return null;
  }
}
