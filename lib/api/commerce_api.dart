//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class CommerceApi {
  CommerceApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete a collection, keeping a recoverable copy
  ///
  /// A collection is a merchandising group a storefront renders — a slug and name, copy and media, flat lists of the product and variant ids it holds, published, preorder and out-of-stock flags, and an availability window. Membership lives on the collection as those id lists rather than as a join, so putting a product into a collection is a write here and not on the product. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin or WriteCollection.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionid (required):
  Future<Response> deleteCommerceCollectionByCollectionidWithHttpInfo(String collectionid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/collection/{collectionid}'
      .replaceAll('{collectionid}', collectionid);

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

  /// Delete a collection, keeping a recoverable copy
  ///
  /// A collection is a merchandising group a storefront renders — a slug and name, copy and media, flat lists of the product and variant ids it holds, published, preorder and out-of-stock flags, and an availability window. Membership lives on the collection as those id lists rather than as a join, so putting a product into a collection is a write here and not on the product. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin or WriteCollection.
  ///
  /// Parameters:
  ///
  /// * [String] collectionid (required):
  Future<void> deleteCommerceCollectionByCollectionid(String collectionid,) async {
    final response = await deleteCommerceCollectionByCollectionidWithHttpInfo(collectionid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a disclosure, keeping a recoverable copy
  ///
  /// A disclosure is a published-document record — a publication body, a content hash, a type and a named receiver. The hash LOOKS like a field you set and is in fact derived, but only on update: a freshly created disclosure keeps whatever hash the caller sent until the first replace or patch recomputes it, so a new row's hash attests to nothing. This kind lives in commerce's demo tree — a live writable resource in your tenant's real store that nothing else in commerce reads. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. Any valid access token reaches it. The per-kind permission table has no entry for disclosure, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] disclosureid (required):
  Future<Response> deleteCommerceDisclosureByDisclosureidWithHttpInfo(String disclosureid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/disclosure/{disclosureid}'
      .replaceAll('{disclosureid}', disclosureid);

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

  /// Delete a disclosure, keeping a recoverable copy
  ///
  /// A disclosure is a published-document record — a publication body, a content hash, a type and a named receiver. The hash LOOKS like a field you set and is in fact derived, but only on update: a freshly created disclosure keeps whatever hash the caller sent until the first replace or patch recomputes it, so a new row's hash attests to nothing. This kind lives in commerce's demo tree — a live writable resource in your tenant's real store that nothing else in commerce reads. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. Any valid access token reaches it. The per-kind permission table has no entry for disclosure, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] disclosureid (required):
  Future<void> deleteCommerceDisclosureByDisclosureid(String disclosureid,) async {
    final response = await deleteCommerceDisclosureByDisclosureidWithHttpInfo(disclosureid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a discount, keeping a recoverable copy
  ///
  /// A discount is a price rule: a type (flat, percent, free-shipping, free-item or bulk), a window, a scope naming the store, collection, product or variant it applies to, a target, and rules pairing a trigger — a price or quantity threshold — with an action, an amount off or a percentage. It is ENABLED BY DEFAULT, so a bare create makes a live discount rather than a draft. The rule engine caches per replica for about thirty seconds, so a discount switched off here can keep applying briefly on other replicas. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for discount, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] discountid (required):
  Future<Response> deleteCommerceDiscountByDiscountidWithHttpInfo(String discountid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/discount/{discountid}'
      .replaceAll('{discountid}', discountid);

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

  /// Delete a discount, keeping a recoverable copy
  ///
  /// A discount is a price rule: a type (flat, percent, free-shipping, free-item or bulk), a window, a scope naming the store, collection, product or variant it applies to, a target, and rules pairing a trigger — a price or quantity threshold — with an action, an amount off or a percentage. It is ENABLED BY DEFAULT, so a bare create makes a live discount rather than a draft. The rule engine caches per replica for about thirty seconds, so a discount switched off here can keep applying briefly on other replicas. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for discount, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] discountid (required):
  Future<void> deleteCommerceDiscountByDiscountid(String discountid,) async {
    final response = await deleteCommerceDiscountByDiscountidWithHttpInfo(discountid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a movie, keeping a recoverable copy
  ///
  /// A movie is a film catalog record — a slug plus EIDR and IMDB ids, all three required, with title and synopsis copy, artwork, screenshots, trailers, cast and crew, and available and hidden flags. It carries NO price: the money for a film lives on the product that sells it. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. Any valid access token reaches it. The per-kind permission table has no entry for movie, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] movieid (required):
  Future<Response> deleteCommerceMovieByMovieidWithHttpInfo(String movieid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/movie/{movieid}'
      .replaceAll('{movieid}', movieid);

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

  /// Delete a movie, keeping a recoverable copy
  ///
  /// A movie is a film catalog record — a slug plus EIDR and IMDB ids, all three required, with title and synopsis copy, artwork, screenshots, trailers, cast and crew, and available and hidden flags. It carries NO price: the money for a film lives on the product that sells it. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. Any valid access token reaches it. The per-kind permission table has no entry for movie, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] movieid (required):
  Future<void> deleteCommerceMovieByMovieid(String movieid,) async {
    final response = await deleteCommerceMovieByMovieidWithHttpInfo(movieid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a note, keeping a recoverable copy
  ///
  /// A note is a timestamped free-text log line — a caller-supplied time, a source, a message and an enabled flag. That time is the caller's own field and is distinct from the row's creation stamp; the note search filters on it, so a note written without one is a zero-time note the ops log will never surface. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. Any valid access token reaches it. The per-kind permission table has no entry for note, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] noteid (required):
  Future<Response> deleteCommerceNoteByNoteidWithHttpInfo(String noteid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/note/{noteid}'
      .replaceAll('{noteid}', noteid);

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

  /// Delete a note, keeping a recoverable copy
  ///
  /// A note is a timestamped free-text log line — a caller-supplied time, a source, a message and an enabled flag. That time is the caller's own field and is distinct from the row's creation stamp; the note search filters on it, so a note written without one is a zero-time note the ops log will never surface. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. Any valid access token reaches it. The per-kind permission table has no entry for note, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] noteid (required):
  Future<void> deleteCommerceNoteByNoteid(String noteid,) async {
    final response = await deleteCommerceNoteByNoteidWithHttpInfo(noteid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a product, keeping a recoverable copy
  ///
  /// A product is a sellable catalog item: slug, SKU and UPC, name and copy, media, availability and preorder flags, a reservation block, and its money — currency, price, MSRP, list price and inventory cost in minor units, inventory count, taxability, and the subscription interval when it is subscribeable. Its variants and options are carried as a denormalized JSON snapshot inside the product, separate from the standalone variant rows, and nothing keeps the two in step for you. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin or WriteProduct.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] productid (required):
  Future<Response> deleteCommerceProductByProductidWithHttpInfo(String productid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/product/{productid}'
      .replaceAll('{productid}', productid);

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

  /// Delete a product, keeping a recoverable copy
  ///
  /// A product is a sellable catalog item: slug, SKU and UPC, name and copy, media, availability and preorder flags, a reservation block, and its money — currency, price, MSRP, list price and inventory cost in minor units, inventory count, taxability, and the subscription interval when it is subscribeable. Its variants and options are carried as a denormalized JSON snapshot inside the product, separate from the standalone variant rows, and nothing keeps the two in step for you. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin or WriteProduct.
  ///
  /// Parameters:
  ///
  /// * [String] productid (required):
  Future<void> deleteCommerceProductByProductid(String productid,) async {
    final response = await deleteCommerceProductByProductidWithHttpInfo(productid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a return, keeping a recoverable copy
  ///
  /// A return is an RMA — the store, user and order it belongs to, the line items coming back, a fulfillment block carrying its own type, status and pricing, a summary, and eight lifecycle timestamps from submitted through delivered and processed. Its status is a FREE STRING with no enumeration behind it, and there is no refund amount on the return itself: the money sits inside the line items and the fulfillment pricing. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. Any valid access token reaches it. The token must also carry Admin or WriteReturn.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] returnid (required):
  Future<Response> deleteCommerceReturnByReturnidWithHttpInfo(String returnid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/return/{returnid}'
      .replaceAll('{returnid}', returnid);

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

  /// Delete a return, keeping a recoverable copy
  ///
  /// A return is an RMA — the store, user and order it belongs to, the line items coming back, a fulfillment block carrying its own type, status and pricing, a summary, and eight lifecycle timestamps from submitted through delivered and processed. Its status is a FREE STRING with no enumeration behind it, and there is no refund amount on the return itself: the money sits inside the line items and the fulfillment pricing. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. Any valid access token reaches it. The token must also carry Admin or WriteReturn.
  ///
  /// Parameters:
  ///
  /// * [String] returnid (required):
  Future<void> deleteCommerceReturnByReturnid(String returnid,) async {
    final response = await deleteCommerceReturnByReturnidWithHttpInfo(returnid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a sales channel, keeping a recoverable copy
  ///
  /// A sales channel is a named selling surface — a name, a description, a disabled flag and metadata. The flag is NEGATIVE, so a channel created from an empty body is enabled. Nothing on this row links products, prices or stock to the channel; here it is a label other surfaces scope themselves by. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for saleschannel, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] saleschannelid (required):
  Future<Response> deleteCommerceSaleschannelBySaleschannelidWithHttpInfo(String saleschannelid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/saleschannel/{saleschannelid}'
      .replaceAll('{saleschannelid}', saleschannelid);

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

  /// Delete a sales channel, keeping a recoverable copy
  ///
  /// A sales channel is a named selling surface — a name, a description, a disabled flag and metadata. The flag is NEGATIVE, so a channel created from an empty body is enabled. Nothing on this row links products, prices or stock to the channel; here it is a label other surfaces scope themselves by. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for saleschannel, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] saleschannelid (required):
  Future<void> deleteCommerceSaleschannelBySaleschannelid(String saleschannelid,) async {
    final response = await deleteCommerceSaleschannelBySaleschannelidWithHttpInfo(saleschannelid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a stock location, keeping a recoverable copy
  ///
  /// A stock location is a physical address inventory can be held at — a name, street lines, city, province, country, postal code and a phone. None of it is validated, there are no coordinates, and the row carries no enabled flag and no inventory link, so deleting it is the only way to retire one. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for stocklocation, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] stocklocationid (required):
  Future<Response> deleteCommerceStocklocationByStocklocationidWithHttpInfo(String stocklocationid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/stocklocation/{stocklocationid}'
      .replaceAll('{stocklocationid}', stocklocationid);

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

  /// Delete a stock location, keeping a recoverable copy
  ///
  /// A stock location is a physical address inventory can be held at — a name, street lines, city, province, country, postal code and a phone. None of it is validated, there are no coordinates, and the row carries no enabled flag and no inventory link, so deleting it is the only way to retire one. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for stocklocation, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] stocklocationid (required):
  Future<void> deleteCommerceStocklocationByStocklocationid(String stocklocationid,) async {
    final response = await deleteCommerceStocklocationByStocklocationidWithHttpInfo(stocklocationid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a submission, keeping a recoverable copy
  ///
  /// A submission is one filled-in form from a site visitor — an email, an optional user id, the client details the server observed (user agent, referer, geography) and the form's own fields as free metadata. It carries no form id, so the link back to the form that produced it is not stored on the row. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. Any valid access token reaches it. The per-kind permission table has no entry for submission, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] submissionid (required):
  Future<Response> deleteCommerceSubmissionBySubmissionidWithHttpInfo(String submissionid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/submission/{submissionid}'
      .replaceAll('{submissionid}', submissionid);

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

  /// Delete a submission, keeping a recoverable copy
  ///
  /// A submission is one filled-in form from a site visitor — an email, an optional user id, the client details the server observed (user agent, referer, geography) and the form's own fields as free metadata. It carries no form id, so the link back to the form that produced it is not stored on the row. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. Any valid access token reaches it. The per-kind permission table has no entry for submission, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] submissionid (required):
  Future<void> deleteCommerceSubmissionBySubmissionid(String submissionid,) async {
    final response = await deleteCommerceSubmissionBySubmissionidWithHttpInfo(submissionid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a subscriber, keeping a recoverable copy
  ///
  /// A subscriber is a mailing-list member — name, email, the form id that captured them, unsubscribed state and date, client details, tags and metadata. Writing one FIRES A WEBHOOK: subscriber.created on create and subscriber.updated on replace or patch, emitted BEFORE the write is known to have succeeded and carrying the row as sent, so the payload holds the raw email rather than the normalized one that gets stored. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. Any valid access token reaches it. The token must also carry Admin or WriteSubscriber.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] subscriberid (required):
  Future<Response> deleteCommerceSubscriberBySubscriberidWithHttpInfo(String subscriberid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/subscriber/{subscriberid}'
      .replaceAll('{subscriberid}', subscriberid);

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

  /// Delete a subscriber, keeping a recoverable copy
  ///
  /// A subscriber is a mailing-list member — name, email, the form id that captured them, unsubscribed state and date, client details, tags and metadata. Writing one FIRES A WEBHOOK: subscriber.created on create and subscriber.updated on replace or patch, emitted BEFORE the write is known to have succeeded and carrying the row as sent, so the payload holds the raw email rather than the normalized one that gets stored. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. Any valid access token reaches it. The token must also carry Admin or WriteSubscriber.
  ///
  /// Parameters:
  ///
  /// * [String] subscriberid (required):
  Future<void> deleteCommerceSubscriberBySubscriberid(String subscriberid,) async {
    final response = await deleteCommerceSubscriberBySubscriberidWithHttpInfo(subscriberid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a token transaction, keeping a recoverable copy
  ///
  /// A token transaction records a transfer between two identified parties — amount and fees, a timestamp, sending and receiving addresses, names, user ids, states and countries, a flag per side, a protocol name and a transaction hash. Nothing here touches a chain: the hash is an unvalidated string and the flags are plain writable booleans with no screening behind them. Amounts are floating-point rather than the exact minor units every real money field in commerce uses, and there is no currency field at all — this kind lives in commerce's demo tree, so it is a live writable resource in your tenant's store that nothing else in commerce reads, and it must never carry real money. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. Any valid access token reaches it. The per-kind permission table has no entry for tokentransaction, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tokentransactionid (required):
  Future<Response> deleteCommerceTokentransactionByTokentransactionidWithHttpInfo(String tokentransactionid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/tokentransaction/{tokentransactionid}'
      .replaceAll('{tokentransactionid}', tokentransactionid);

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

  /// Delete a token transaction, keeping a recoverable copy
  ///
  /// A token transaction records a transfer between two identified parties — amount and fees, a timestamp, sending and receiving addresses, names, user ids, states and countries, a flag per side, a protocol name and a transaction hash. Nothing here touches a chain: the hash is an unvalidated string and the flags are plain writable booleans with no screening behind them. Amounts are floating-point rather than the exact minor units every real money field in commerce uses, and there is no currency field at all — this kind lives in commerce's demo tree, so it is a live writable resource in your tenant's store that nothing else in commerce reads, and it must never carry real money. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. Any valid access token reaches it. The per-kind permission table has no entry for tokentransaction, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] tokentransactionid (required):
  Future<void> deleteCommerceTokentransactionByTokentransactionid(String tokentransactionid,) async {
    final response = await deleteCommerceTokentransactionByTokentransactionidWithHttpInfo(tokentransactionid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a transfer, keeping a recoverable copy
  ///
  /// A transfer records that a payable WAS PAID — the annotation a human writes after paying out of band. Commerce executes no payout: creating one moves no money, and it marks the referenced payable settled. It carries the payable and payee ids, the amount it settles and the amount actually sent (which may be a different asset), a type of eth, wire or other, the transaction hash or wire reference, when it was paid and who recorded it; amounts are exact decimal strings with an asset, not cents. It is admin-gated because writing one settles money we owe, and nothing enforces uniqueness on the reference — so posting the same transfer twice settles the payable twice. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for transfer, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] transferid (required):
  Future<Response> deleteCommerceTransferByTransferidWithHttpInfo(String transferid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/transfer/{transferid}'
      .replaceAll('{transferid}', transferid);

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

  /// Delete a transfer, keeping a recoverable copy
  ///
  /// A transfer records that a payable WAS PAID — the annotation a human writes after paying out of band. Commerce executes no payout: creating one moves no money, and it marks the referenced payable settled. It carries the payable and payee ids, the amount it settles and the amount actually sent (which may be a different asset), a type of eth, wire or other, the transaction hash or wire reference, when it was paid and who recorded it; amounts are exact decimal strings with an asset, not cents. It is admin-gated because writing one settles money we owe, and nothing enforces uniqueness on the reference — so posting the same transfer twice settles the payable twice. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for transfer, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] transferid (required):
  Future<void> deleteCommerceTransferByTransferid(String transferid,) async {
    final response = await deleteCommerceTransferByTransferidWithHttpInfo(transferid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a variant, keeping a recoverable copy
  ///
  /// A variant is one purchasable SKU of a product — its product id, SKU and UPC, name, media, availability, the option name and value pairs that distinguish it, a sold counter, and its own money and stock: currency, price, MSRP, inventory cost, inventory count and taxability. Inventory and sold are plain writable numbers with no decrement logic behind them here. The same variant also exists as a JSON copy inside its product, and writing one does not update the other. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin or WriteVariant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] variantid (required):
  Future<Response> deleteCommerceVariantByVariantidWithHttpInfo(String variantid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/variant/{variantid}'
      .replaceAll('{variantid}', variantid);

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

  /// Delete a variant, keeping a recoverable copy
  ///
  /// A variant is one purchasable SKU of a product — its product id, SKU and UPC, name, media, availability, the option name and value pairs that distinguish it, a sold counter, and its own money and stock: currency, price, MSRP, inventory cost, inventory count and taxability. Inventory and sold are plain writable numbers with no decrement logic behind them here. The same variant also exists as a JSON copy inside its product, and writing one does not update the other. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin or WriteVariant.
  ///
  /// Parameters:
  ///
  /// * [String] variantid (required):
  Future<void> deleteCommerceVariantByVariantid(String variantid,) async {
    final response = await deleteCommerceVariantByVariantidWithHttpInfo(variantid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a wallet, keeping a recoverable copy
  ///
  /// A wallet is a container of custodial blockchain accounts, and its only field is that account list — each account carrying a name, an address, a chain type, and the ENCRYPTED private key with its salt. Creating a wallet through this table generates NO KEYS: key generation lives on the account routes, so a wallet made here is an empty shell and an account posted into one is stored exactly as sent, with no key generation and no validation behind it. Know what a read renders: the plaintext private key is never marshalled and never stored, but the encrypted blob and its salt ARE returned, so whoever can read a wallet can attack it offline down to the strength of the owner's passphrase. That is why this kind is admin-gated. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for wallet, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] walletid (required):
  Future<Response> deleteCommerceWalletByWalletidWithHttpInfo(String walletid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/wallet/{walletid}'
      .replaceAll('{walletid}', walletid);

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

  /// Delete a wallet, keeping a recoverable copy
  ///
  /// A wallet is a container of custodial blockchain accounts, and its only field is that account list — each account carrying a name, an address, a chain type, and the ENCRYPTED private key with its salt. Creating a wallet through this table generates NO KEYS: key generation lives on the account routes, so a wallet made here is an empty shell and an account posted into one is stored exactly as sent, with no key generation and no validation behind it. Know what a read renders: the plaintext private key is never marshalled and never stored, but the encrypted blob and its salt ARE returned, so whoever can read a wallet can attack it offline down to the strength of the owner's passphrase. That is why this kind is admin-gated. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for wallet, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] walletid (required):
  Future<void> deleteCommerceWalletByWalletid(String walletid,) async {
    final response = await deleteCommerceWalletByWalletidWithHttpInfo(walletid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a watchlist, keeping a recoverable copy
  ///
  /// A watchlist is a viewer's saved list of movies — a user id, an email, and the movies themselves. It stores WHOLE MOVIE SNAPSHOTS rather than movie ids, so a list goes stale the moment a film record changes and grows without bound as it fills. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. Any valid access token reaches it. The per-kind permission table has no entry for watchlist, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] watchlistid (required):
  Future<Response> deleteCommerceWatchlistByWatchlistidWithHttpInfo(String watchlistid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/watchlist/{watchlistid}'
      .replaceAll('{watchlistid}', watchlistid);

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

  /// Delete a watchlist, keeping a recoverable copy
  ///
  /// A watchlist is a viewer's saved list of movies — a user id, an email, and the movies themselves. It stores WHOLE MOVIE SNAPSHOTS rather than movie ids, so a list goes stale the moment a film record changes and grows without bound as it fills. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. Any valid access token reaches it. The per-kind permission table has no entry for watchlist, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] watchlistid (required):
  Future<void> deleteCommerceWatchlistByWatchlistid(String watchlistid,) async {
    final response = await deleteCommerceWatchlistByWatchlistidWithHttpInfo(watchlistid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a webhook, keeping a recoverable copy
  ///
  /// A webhook is a merchant-registered endpoint that receives commerce event callbacks — a name, a URL, live and all flags, a per-event map, an enabled flag, and the shared access token each delivery posts IN THE BODY. Two things to know before registering one: that token is a plainly readable field, so anyone who may read webhooks reads every endpoint's secret, and delivery consults only the all flag and the event map — it does NOT consult enabled or live, so setting enabled false does not stop delivery and deleting the row is the only thing that does. Delivery is a single POST with a twenty-second timeout and no retry. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for webhook, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] webhookid (required):
  Future<Response> deleteCommerceWebhookByWebhookidWithHttpInfo(String webhookid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/webhook/{webhookid}'
      .replaceAll('{webhookid}', webhookid);

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

  /// Delete a webhook, keeping a recoverable copy
  ///
  /// A webhook is a merchant-registered endpoint that receives commerce event callbacks — a name, a URL, live and all flags, a per-event map, an enabled flag, and the shared access token each delivery posts IN THE BODY. Two things to know before registering one: that token is a plainly readable field, so anyone who may read webhooks reads every endpoint's secret, and delivery consults only the all flag and the event map — it does NOT consult enabled or live, so setting enabled false does not stop delivery and deleting the row is the only thing that does. Delivery is a single POST with a twenty-second timeout and no retry. Removes the addressed row and answers 204 with no body. Before the live row goes it is written once more under a deleted tombstone kind, so a deletion leaves a recoverable copy rather than destroying the record outright — and a tombstone that cannot be written fails the call with 500 before anything is removed. The id is resolved inside the caller org's own namespace, so an absent or foreign id is 404. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for webhook, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] webhookid (required):
  Future<void> deleteCommerceWebhookByWebhookid(String webhookid,) async {
    final response = await deleteCommerceWebhookByWebhookidWithHttpInfo(webhookid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The catalog projection with cost and margin included
  ///
  /// Returns the brand-scoped catalog carrying the administrative economics the public projection withholds — upstream cost and margin percentage — for the margin surface the platform console administrates. The brand comes from the query and defaults to hanzo. PLATFORM admin only, enforced by the handler on top of the route's IAM gate: an ORG-level admin is refused 403 precisely so upstream cost and margin never reach a tenant.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceAdminCatalogWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/admin/catalog';

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

  /// The catalog projection with cost and margin included
  ///
  /// Returns the brand-scoped catalog carrying the administrative economics the public projection withholds — upstream cost and margin percentage — for the margin surface the platform console administrates. The brand comes from the query and defaults to hanzo. PLATFORM admin only, enforced by the handler on top of the route's IAM gate: an ORG-level admin is refused 403 precisely so upstream cost and margin never reach a tenant.
  Future<void> getCommerceAdminCatalog() async {
    final response = await getCommerceAdminCatalogWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The public product catalog projection for a brand
  ///
  /// Returns the brand's published catalog — the shared source docs, the console sidebar and the pricing pages all read — with the brand taken from the query and defaulting to hanzo. It is public and cacheable, and it is the projection that deliberately omits cost and margin; those live only on the platform-admin projection.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceCatalogWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/catalog';

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

  /// The public product catalog projection for a brand
  ///
  /// Returns the brand's published catalog — the shared source docs, the console sidebar and the pricing pages all read — with the brand taken from the query and defaulting to hanzo. It is public and cacheable, and it is the projection that deliberately omits cost and margin; those live only on the platform-admin projection.
  Future<void> getCommerceCatalog() async {
    final response = await getCommerceCatalogWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List your org's collections, as a page
  ///
  /// A collection is a merchandising group a storefront renders — a slug and name, copy and media, flat lists of the product and variant ids it holds, published, preorder and out-of-stock flags, and an availability window. Membership lives on the collection as those id lists rather than as a join, so putting a product into a collection is a write here and not on the product. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the slug and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin or the Collection list scope.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceCollectionWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/collection/';

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

  /// List your org's collections, as a page
  ///
  /// A collection is a merchandising group a storefront renders — a slug and name, copy and media, flat lists of the product and variant ids it holds, published, preorder and out-of-stock flags, and an availability window. Membership lives on the collection as those id lists rather than as a join, so putting a product into a collection is a write here and not on the product. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the slug and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin or the Collection list scope.
  Future<void> getCommerceCollection() async {
    final response = await getCommerceCollectionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch one collection
  ///
  /// A collection is a merchandising group a storefront renders — a slug and name, copy and media, flat lists of the product and variant ids it holds, published, preorder and out-of-stock flags, and an availability window. Membership lives on the collection as those id lists rather than as a join, so putting a product into a collection is a write here and not on the product. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin or ReadCollection.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionid (required):
  Future<Response> getCommerceCollectionByCollectionidWithHttpInfo(String collectionid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/collection/{collectionid}'
      .replaceAll('{collectionid}', collectionid);

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

  /// Fetch one collection
  ///
  /// A collection is a merchandising group a storefront renders — a slug and name, copy and media, flat lists of the product and variant ids it holds, published, preorder and out-of-stock flags, and an availability window. Membership lives on the collection as those id lists rather than as a join, so putting a product into a collection is a write here and not on the product. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin or ReadCollection.
  ///
  /// Parameters:
  ///
  /// * [String] collectionid (required):
  Future<void> getCommerceCollectionByCollectionid(String collectionid,) async {
    final response = await getCommerceCollectionByCollectionidWithHttpInfo(collectionid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The reference currency list the price and settings pickers render
  ///
  /// Returns every reference currency as one global list, so a store settings form or a product price picker binds real rows instead of a hardcoded array. It is a default-namespace read shared by every tenant rather than per-org data, and it is public and cacheable.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceCurrenciesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/currencies';

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

  /// The reference currency list the price and settings pickers render
  ///
  /// Returns every reference currency as one global list, so a store settings form or a product price picker binds real rows instead of a hardcoded array. It is a default-namespace read shared by every tenant rather than per-org data, and it is public and cacheable.
  Future<void> getCommerceCurrencies() async {
    final response = await getCommerceCurrenciesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List your org's disclosures, as a page
  ///
  /// A disclosure is a published-document record — a publication body, a content hash, a type and a named receiver. The hash LOOKS like a field you set and is in fact derived, but only on update: a freshly created disclosure keeps whatever hash the caller sent until the first replace or patch recomputes it, so a new row's hash attests to nothing. This kind lives in commerce's demo tree — a live writable resource in your tenant's real store that nothing else in commerce reads. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the last-updated time and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. Any valid access token reaches it. The per-kind permission table has no entry for disclosure, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceDisclosureWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/disclosure/';

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

  /// List your org's disclosures, as a page
  ///
  /// A disclosure is a published-document record — a publication body, a content hash, a type and a named receiver. The hash LOOKS like a field you set and is in fact derived, but only on update: a freshly created disclosure keeps whatever hash the caller sent until the first replace or patch recomputes it, so a new row's hash attests to nothing. This kind lives in commerce's demo tree — a live writable resource in your tenant's real store that nothing else in commerce reads. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the last-updated time and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. Any valid access token reaches it. The per-kind permission table has no entry for disclosure, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  Future<void> getCommerceDisclosure() async {
    final response = await getCommerceDisclosureWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch one disclosure
  ///
  /// A disclosure is a published-document record — a publication body, a content hash, a type and a named receiver. The hash LOOKS like a field you set and is in fact derived, but only on update: a freshly created disclosure keeps whatever hash the caller sent until the first replace or patch recomputes it, so a new row's hash attests to nothing. This kind lives in commerce's demo tree — a live writable resource in your tenant's real store that nothing else in commerce reads. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. Any valid access token reaches it. The per-kind permission table has no entry for disclosure, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] disclosureid (required):
  Future<Response> getCommerceDisclosureByDisclosureidWithHttpInfo(String disclosureid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/disclosure/{disclosureid}'
      .replaceAll('{disclosureid}', disclosureid);

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

  /// Fetch one disclosure
  ///
  /// A disclosure is a published-document record — a publication body, a content hash, a type and a named receiver. The hash LOOKS like a field you set and is in fact derived, but only on update: a freshly created disclosure keeps whatever hash the caller sent until the first replace or patch recomputes it, so a new row's hash attests to nothing. This kind lives in commerce's demo tree — a live writable resource in your tenant's real store that nothing else in commerce reads. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. Any valid access token reaches it. The per-kind permission table has no entry for disclosure, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] disclosureid (required):
  Future<void> getCommerceDisclosureByDisclosureid(String disclosureid,) async {
    final response = await getCommerceDisclosureByDisclosureidWithHttpInfo(disclosureid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List your org's discounts, as a page
  ///
  /// A discount is a price rule: a type (flat, percent, free-shipping, free-item or bulk), a window, a scope naming the store, collection, product or variant it applies to, a target, and rules pairing a trigger — a price or quantity threshold — with an action, an amount off or a percentage. It is ENABLED BY DEFAULT, so a bare create makes a live discount rather than a draft. The rule engine caches per replica for about thirty seconds, so a discount switched off here can keep applying briefly on other replicas. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the last-updated time and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for discount, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceDiscountWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/discount/';

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

  /// List your org's discounts, as a page
  ///
  /// A discount is a price rule: a type (flat, percent, free-shipping, free-item or bulk), a window, a scope naming the store, collection, product or variant it applies to, a target, and rules pairing a trigger — a price or quantity threshold — with an action, an amount off or a percentage. It is ENABLED BY DEFAULT, so a bare create makes a live discount rather than a draft. The rule engine caches per replica for about thirty seconds, so a discount switched off here can keep applying briefly on other replicas. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the last-updated time and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for discount, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  Future<void> getCommerceDiscount() async {
    final response = await getCommerceDiscountWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch one discount
  ///
  /// A discount is a price rule: a type (flat, percent, free-shipping, free-item or bulk), a window, a scope naming the store, collection, product or variant it applies to, a target, and rules pairing a trigger — a price or quantity threshold — with an action, an amount off or a percentage. It is ENABLED BY DEFAULT, so a bare create makes a live discount rather than a draft. The rule engine caches per replica for about thirty seconds, so a discount switched off here can keep applying briefly on other replicas. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for discount, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] discountid (required):
  Future<Response> getCommerceDiscountByDiscountidWithHttpInfo(String discountid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/discount/{discountid}'
      .replaceAll('{discountid}', discountid);

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

  /// Fetch one discount
  ///
  /// A discount is a price rule: a type (flat, percent, free-shipping, free-item or bulk), a window, a scope naming the store, collection, product or variant it applies to, a target, and rules pairing a trigger — a price or quantity threshold — with an action, an amount off or a percentage. It is ENABLED BY DEFAULT, so a bare create makes a live discount rather than a draft. The rule engine caches per replica for about thirty seconds, so a discount switched off here can keep applying briefly on other replicas. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for discount, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] discountid (required):
  Future<void> getCommerceDiscountByDiscountid(String discountid,) async {
    final response = await getCommerceDiscountByDiscountidWithHttpInfo(discountid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List your org's movies, as a page
  ///
  /// A movie is a film catalog record — a slug plus EIDR and IMDB ids, all three required, with title and synopsis copy, artwork, screenshots, trailers, cast and crew, and available and hidden flags. It carries NO price: the money for a film lives on the product that sells it. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the slug and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. Any valid access token reaches it. The per-kind permission table has no entry for movie, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceMovieWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/movie/';

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

  /// List your org's movies, as a page
  ///
  /// A movie is a film catalog record — a slug plus EIDR and IMDB ids, all three required, with title and synopsis copy, artwork, screenshots, trailers, cast and crew, and available and hidden flags. It carries NO price: the money for a film lives on the product that sells it. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the slug and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. Any valid access token reaches it. The per-kind permission table has no entry for movie, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  Future<void> getCommerceMovie() async {
    final response = await getCommerceMovieWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch one movie
  ///
  /// A movie is a film catalog record — a slug plus EIDR and IMDB ids, all three required, with title and synopsis copy, artwork, screenshots, trailers, cast and crew, and available and hidden flags. It carries NO price: the money for a film lives on the product that sells it. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. Any valid access token reaches it. The per-kind permission table has no entry for movie, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] movieid (required):
  Future<Response> getCommerceMovieByMovieidWithHttpInfo(String movieid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/movie/{movieid}'
      .replaceAll('{movieid}', movieid);

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

  /// Fetch one movie
  ///
  /// A movie is a film catalog record — a slug plus EIDR and IMDB ids, all three required, with title and synopsis copy, artwork, screenshots, trailers, cast and crew, and available and hidden flags. It carries NO price: the money for a film lives on the product that sells it. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. Any valid access token reaches it. The per-kind permission table has no entry for movie, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] movieid (required):
  Future<void> getCommerceMovieByMovieid(String movieid,) async {
    final response = await getCommerceMovieByMovieidWithHttpInfo(movieid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List your org's notes, as a page
  ///
  /// A note is a timestamped free-text log line — a caller-supplied time, a source, a message and an enabled flag. That time is the caller's own field and is distinct from the row's creation stamp; the note search filters on it, so a note written without one is a zero-time note the ops log will never surface. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the last-updated time and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. Any valid access token reaches it. The per-kind permission table has no entry for note, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceNoteWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/note/';

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

  /// List your org's notes, as a page
  ///
  /// A note is a timestamped free-text log line — a caller-supplied time, a source, a message and an enabled flag. That time is the caller's own field and is distinct from the row's creation stamp; the note search filters on it, so a note written without one is a zero-time note the ops log will never surface. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the last-updated time and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. Any valid access token reaches it. The per-kind permission table has no entry for note, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  Future<void> getCommerceNote() async {
    final response = await getCommerceNoteWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch one note
  ///
  /// A note is a timestamped free-text log line — a caller-supplied time, a source, a message and an enabled flag. That time is the caller's own field and is distinct from the row's creation stamp; the note search filters on it, so a note written without one is a zero-time note the ops log will never surface. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. Any valid access token reaches it. The per-kind permission table has no entry for note, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] noteid (required):
  Future<Response> getCommerceNoteByNoteidWithHttpInfo(String noteid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/note/{noteid}'
      .replaceAll('{noteid}', noteid);

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

  /// Fetch one note
  ///
  /// A note is a timestamped free-text log line — a caller-supplied time, a source, a message and an enabled flag. That time is the caller's own field and is distinct from the row's creation stamp; the note search filters on it, so a note written without one is a zero-time note the ops log will never surface. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. Any valid access token reaches it. The per-kind permission table has no entry for note, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] noteid (required):
  Future<void> getCommerceNoteByNoteid(String noteid,) async {
    final response = await getCommerceNoteByNoteidWithHttpInfo(noteid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The public org configuration a checkout page boots from
  ///
  /// Answers the branding, identity issuer and client id, identity-verification config, enabled payment providers, return-URL allowlist and public payment application config for the org the request HOST resolves to. It is genuinely public and unauthenticated — a checkout page calls it before anyone has signed in — and it carries the same public payment config the authenticated config read does, so the card iframe can never initialize against a different application than the one that will be charged. Only ENABLED providers are listed and no credential path is ever projected. An unresolvable host answers a constant 404 that does not echo the host, so the endpoint cannot be used to enumerate orgs; a successful answer is cacheable for a minute.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceOrgWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/org';

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

  /// The public org configuration a checkout page boots from
  ///
  /// Answers the branding, identity issuer and client id, identity-verification config, enabled payment providers, return-URL allowlist and public payment application config for the org the request HOST resolves to. It is genuinely public and unauthenticated — a checkout page calls it before anyone has signed in — and it carries the same public payment config the authenticated config read does, so the card iframe can never initialize against a different application than the one that will be charged. Only ENABLED providers are listed and no credential path is ever projected. An unresolvable host answers a constant 404 that does not echo the host, so the endpoint cannot be used to enumerate orgs; a successful answer is cacheable for a minute.
  Future<void> getCommerceOrg() async {
    final response = await getCommerceOrgWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List your org's products, as a page
  ///
  /// A product is a sellable catalog item: slug, SKU and UPC, name and copy, media, availability and preorder flags, a reservation block, and its money — currency, price, MSRP, list price and inventory cost in minor units, inventory count, taxability, and the subscription interval when it is subscribeable. Its variants and options are carried as a denormalized JSON snapshot inside the product, separate from the standalone variant rows, and nothing keeps the two in step for you. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the slug and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin or the Product list scope.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceProductWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/product/';

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

  /// List your org's products, as a page
  ///
  /// A product is a sellable catalog item: slug, SKU and UPC, name and copy, media, availability and preorder flags, a reservation block, and its money — currency, price, MSRP, list price and inventory cost in minor units, inventory count, taxability, and the subscription interval when it is subscribeable. Its variants and options are carried as a denormalized JSON snapshot inside the product, separate from the standalone variant rows, and nothing keeps the two in step for you. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the slug and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin or the Product list scope.
  Future<void> getCommerceProduct() async {
    final response = await getCommerceProductWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch one product
  ///
  /// A product is a sellable catalog item: slug, SKU and UPC, name and copy, media, availability and preorder flags, a reservation block, and its money — currency, price, MSRP, list price and inventory cost in minor units, inventory count, taxability, and the subscription interval when it is subscribeable. Its variants and options are carried as a denormalized JSON snapshot inside the product, separate from the standalone variant rows, and nothing keeps the two in step for you. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin or ReadProduct.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] productid (required):
  Future<Response> getCommerceProductByProductidWithHttpInfo(String productid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/product/{productid}'
      .replaceAll('{productid}', productid);

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

  /// Fetch one product
  ///
  /// A product is a sellable catalog item: slug, SKU and UPC, name and copy, media, availability and preorder flags, a reservation block, and its money — currency, price, MSRP, list price and inventory cost in minor units, inventory count, taxability, and the subscription interval when it is subscribeable. Its variants and options are carried as a denormalized JSON snapshot inside the product, separate from the standalone variant rows, and nothing keeps the two in step for you. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin or ReadProduct.
  ///
  /// Parameters:
  ///
  /// * [String] productid (required):
  Future<void> getCommerceProductByProductid(String productid,) async {
    final response = await getCommerceProductByProductidWithHttpInfo(productid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List your org's returns, as a page
  ///
  /// A return is an RMA — the store, user and order it belongs to, the line items coming back, a fulfillment block carrying its own type, status and pricing, a summary, and eight lifecycle timestamps from submitted through delivered and processed. Its status is a FREE STRING with no enumeration behind it, and there is no refund amount on the return itself: the money sits inside the line items and the fulfillment pricing. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the last-updated time and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. Any valid access token reaches it. The token must also carry Admin or the Return list scope.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceReturnWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/return/';

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

  /// List your org's returns, as a page
  ///
  /// A return is an RMA — the store, user and order it belongs to, the line items coming back, a fulfillment block carrying its own type, status and pricing, a summary, and eight lifecycle timestamps from submitted through delivered and processed. Its status is a FREE STRING with no enumeration behind it, and there is no refund amount on the return itself: the money sits inside the line items and the fulfillment pricing. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the last-updated time and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. Any valid access token reaches it. The token must also carry Admin or the Return list scope.
  Future<void> getCommerceReturn() async {
    final response = await getCommerceReturnWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch one return
  ///
  /// A return is an RMA — the store, user and order it belongs to, the line items coming back, a fulfillment block carrying its own type, status and pricing, a summary, and eight lifecycle timestamps from submitted through delivered and processed. Its status is a FREE STRING with no enumeration behind it, and there is no refund amount on the return itself: the money sits inside the line items and the fulfillment pricing. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. Any valid access token reaches it. The token must also carry Admin or ReadReturn.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] returnid (required):
  Future<Response> getCommerceReturnByReturnidWithHttpInfo(String returnid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/return/{returnid}'
      .replaceAll('{returnid}', returnid);

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

  /// Fetch one return
  ///
  /// A return is an RMA — the store, user and order it belongs to, the line items coming back, a fulfillment block carrying its own type, status and pricing, a summary, and eight lifecycle timestamps from submitted through delivered and processed. Its status is a FREE STRING with no enumeration behind it, and there is no refund amount on the return itself: the money sits inside the line items and the fulfillment pricing. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. Any valid access token reaches it. The token must also carry Admin or ReadReturn.
  ///
  /// Parameters:
  ///
  /// * [String] returnid (required):
  Future<void> getCommerceReturnByReturnid(String returnid,) async {
    final response = await getCommerceReturnByReturnidWithHttpInfo(returnid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List your org's sales channels, as a page
  ///
  /// A sales channel is a named selling surface — a name, a description, a disabled flag and metadata. The flag is NEGATIVE, so a channel created from an empty body is enabled. Nothing on this row links products, prices or stock to the channel; here it is a label other surfaces scope themselves by. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the last-updated time and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for saleschannel, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceSaleschannelWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/saleschannel/';

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

  /// List your org's sales channels, as a page
  ///
  /// A sales channel is a named selling surface — a name, a description, a disabled flag and metadata. The flag is NEGATIVE, so a channel created from an empty body is enabled. Nothing on this row links products, prices or stock to the channel; here it is a label other surfaces scope themselves by. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the last-updated time and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for saleschannel, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  Future<void> getCommerceSaleschannel() async {
    final response = await getCommerceSaleschannelWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch one sales channel
  ///
  /// A sales channel is a named selling surface — a name, a description, a disabled flag and metadata. The flag is NEGATIVE, so a channel created from an empty body is enabled. Nothing on this row links products, prices or stock to the channel; here it is a label other surfaces scope themselves by. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for saleschannel, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] saleschannelid (required):
  Future<Response> getCommerceSaleschannelBySaleschannelidWithHttpInfo(String saleschannelid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/saleschannel/{saleschannelid}'
      .replaceAll('{saleschannelid}', saleschannelid);

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

  /// Fetch one sales channel
  ///
  /// A sales channel is a named selling surface — a name, a description, a disabled flag and metadata. The flag is NEGATIVE, so a channel created from an empty body is enabled. Nothing on this row links products, prices or stock to the channel; here it is a label other surfaces scope themselves by. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for saleschannel, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] saleschannelid (required):
  Future<void> getCommerceSaleschannelBySaleschannelid(String saleschannelid,) async {
    final response = await getCommerceSaleschannelBySaleschannelidWithHttpInfo(saleschannelid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List your org's stock locations, as a page
  ///
  /// A stock location is a physical address inventory can be held at — a name, street lines, city, province, country, postal code and a phone. None of it is validated, there are no coordinates, and the row carries no enabled flag and no inventory link, so deleting it is the only way to retire one. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the last-updated time and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for stocklocation, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceStocklocationWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/stocklocation/';

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

  /// List your org's stock locations, as a page
  ///
  /// A stock location is a physical address inventory can be held at — a name, street lines, city, province, country, postal code and a phone. None of it is validated, there are no coordinates, and the row carries no enabled flag and no inventory link, so deleting it is the only way to retire one. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the last-updated time and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for stocklocation, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  Future<void> getCommerceStocklocation() async {
    final response = await getCommerceStocklocationWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch one stock location
  ///
  /// A stock location is a physical address inventory can be held at — a name, street lines, city, province, country, postal code and a phone. None of it is validated, there are no coordinates, and the row carries no enabled flag and no inventory link, so deleting it is the only way to retire one. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for stocklocation, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] stocklocationid (required):
  Future<Response> getCommerceStocklocationByStocklocationidWithHttpInfo(String stocklocationid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/stocklocation/{stocklocationid}'
      .replaceAll('{stocklocationid}', stocklocationid);

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

  /// Fetch one stock location
  ///
  /// A stock location is a physical address inventory can be held at — a name, street lines, city, province, country, postal code and a phone. None of it is validated, there are no coordinates, and the row carries no enabled flag and no inventory link, so deleting it is the only way to retire one. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for stocklocation, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] stocklocationid (required):
  Future<void> getCommerceStocklocationByStocklocationid(String stocklocationid,) async {
    final response = await getCommerceStocklocationByStocklocationidWithHttpInfo(stocklocationid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List your org's submissions, as a page
  ///
  /// A submission is one filled-in form from a site visitor — an email, an optional user id, the client details the server observed (user agent, referer, geography) and the form's own fields as free metadata. It carries no form id, so the link back to the form that produced it is not stored on the row. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the last-updated time and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. Any valid access token reaches it. The per-kind permission table has no entry for submission, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceSubmissionWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/submission/';

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

  /// List your org's submissions, as a page
  ///
  /// A submission is one filled-in form from a site visitor — an email, an optional user id, the client details the server observed (user agent, referer, geography) and the form's own fields as free metadata. It carries no form id, so the link back to the form that produced it is not stored on the row. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the last-updated time and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. Any valid access token reaches it. The per-kind permission table has no entry for submission, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  Future<void> getCommerceSubmission() async {
    final response = await getCommerceSubmissionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch one submission
  ///
  /// A submission is one filled-in form from a site visitor — an email, an optional user id, the client details the server observed (user agent, referer, geography) and the form's own fields as free metadata. It carries no form id, so the link back to the form that produced it is not stored on the row. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. Any valid access token reaches it. The per-kind permission table has no entry for submission, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] submissionid (required):
  Future<Response> getCommerceSubmissionBySubmissionidWithHttpInfo(String submissionid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/submission/{submissionid}'
      .replaceAll('{submissionid}', submissionid);

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

  /// Fetch one submission
  ///
  /// A submission is one filled-in form from a site visitor — an email, an optional user id, the client details the server observed (user agent, referer, geography) and the form's own fields as free metadata. It carries no form id, so the link back to the form that produced it is not stored on the row. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. Any valid access token reaches it. The per-kind permission table has no entry for submission, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] submissionid (required):
  Future<void> getCommerceSubmissionBySubmissionid(String submissionid,) async {
    final response = await getCommerceSubmissionBySubmissionidWithHttpInfo(submissionid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List your org's subscribers, as a page
  ///
  /// A subscriber is a mailing-list member — name, email, the form id that captured them, unsubscribed state and date, client details, tags and metadata. Writing one FIRES A WEBHOOK: subscriber.created on create and subscriber.updated on replace or patch, emitted BEFORE the write is known to have succeeded and carrying the row as sent, so the payload holds the raw email rather than the normalized one that gets stored. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the last-updated time and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. Any valid access token reaches it. The token must also carry Admin or the Subscriber list scope.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceSubscriberWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/subscriber/';

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

  /// List your org's subscribers, as a page
  ///
  /// A subscriber is a mailing-list member — name, email, the form id that captured them, unsubscribed state and date, client details, tags and metadata. Writing one FIRES A WEBHOOK: subscriber.created on create and subscriber.updated on replace or patch, emitted BEFORE the write is known to have succeeded and carrying the row as sent, so the payload holds the raw email rather than the normalized one that gets stored. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the last-updated time and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. Any valid access token reaches it. The token must also carry Admin or the Subscriber list scope.
  Future<void> getCommerceSubscriber() async {
    final response = await getCommerceSubscriberWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch one subscriber
  ///
  /// A subscriber is a mailing-list member — name, email, the form id that captured them, unsubscribed state and date, client details, tags and metadata. Writing one FIRES A WEBHOOK: subscriber.created on create and subscriber.updated on replace or patch, emitted BEFORE the write is known to have succeeded and carrying the row as sent, so the payload holds the raw email rather than the normalized one that gets stored. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. Any valid access token reaches it. The token must also carry Admin or ReadSubscriber.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] subscriberid (required):
  Future<Response> getCommerceSubscriberBySubscriberidWithHttpInfo(String subscriberid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/subscriber/{subscriberid}'
      .replaceAll('{subscriberid}', subscriberid);

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

  /// Fetch one subscriber
  ///
  /// A subscriber is a mailing-list member — name, email, the form id that captured them, unsubscribed state and date, client details, tags and metadata. Writing one FIRES A WEBHOOK: subscriber.created on create and subscriber.updated on replace or patch, emitted BEFORE the write is known to have succeeded and carrying the row as sent, so the payload holds the raw email rather than the normalized one that gets stored. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. Any valid access token reaches it. The token must also carry Admin or ReadSubscriber.
  ///
  /// Parameters:
  ///
  /// * [String] subscriberid (required):
  Future<void> getCommerceSubscriberBySubscriberid(String subscriberid,) async {
    final response = await getCommerceSubscriberBySubscriberidWithHttpInfo(subscriberid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List your org's token transactions, as a page
  ///
  /// A token transaction records a transfer between two identified parties — amount and fees, a timestamp, sending and receiving addresses, names, user ids, states and countries, a flag per side, a protocol name and a transaction hash. Nothing here touches a chain: the hash is an unvalidated string and the flags are plain writable booleans with no screening behind them. Amounts are floating-point rather than the exact minor units every real money field in commerce uses, and there is no currency field at all — this kind lives in commerce's demo tree, so it is a live writable resource in your tenant's store that nothing else in commerce reads, and it must never carry real money. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the last-updated time and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. Any valid access token reaches it. The per-kind permission table has no entry for tokentransaction, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceTokentransactionWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/tokentransaction/';

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

  /// List your org's token transactions, as a page
  ///
  /// A token transaction records a transfer between two identified parties — amount and fees, a timestamp, sending and receiving addresses, names, user ids, states and countries, a flag per side, a protocol name and a transaction hash. Nothing here touches a chain: the hash is an unvalidated string and the flags are plain writable booleans with no screening behind them. Amounts are floating-point rather than the exact minor units every real money field in commerce uses, and there is no currency field at all — this kind lives in commerce's demo tree, so it is a live writable resource in your tenant's store that nothing else in commerce reads, and it must never carry real money. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the last-updated time and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. Any valid access token reaches it. The per-kind permission table has no entry for tokentransaction, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  Future<void> getCommerceTokentransaction() async {
    final response = await getCommerceTokentransactionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch one token transaction
  ///
  /// A token transaction records a transfer between two identified parties — amount and fees, a timestamp, sending and receiving addresses, names, user ids, states and countries, a flag per side, a protocol name and a transaction hash. Nothing here touches a chain: the hash is an unvalidated string and the flags are plain writable booleans with no screening behind them. Amounts are floating-point rather than the exact minor units every real money field in commerce uses, and there is no currency field at all — this kind lives in commerce's demo tree, so it is a live writable resource in your tenant's store that nothing else in commerce reads, and it must never carry real money. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. Any valid access token reaches it. The per-kind permission table has no entry for tokentransaction, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tokentransactionid (required):
  Future<Response> getCommerceTokentransactionByTokentransactionidWithHttpInfo(String tokentransactionid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/tokentransaction/{tokentransactionid}'
      .replaceAll('{tokentransactionid}', tokentransactionid);

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

  /// Fetch one token transaction
  ///
  /// A token transaction records a transfer between two identified parties — amount and fees, a timestamp, sending and receiving addresses, names, user ids, states and countries, a flag per side, a protocol name and a transaction hash. Nothing here touches a chain: the hash is an unvalidated string and the flags are plain writable booleans with no screening behind them. Amounts are floating-point rather than the exact minor units every real money field in commerce uses, and there is no currency field at all — this kind lives in commerce's demo tree, so it is a live writable resource in your tenant's store that nothing else in commerce reads, and it must never carry real money. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. Any valid access token reaches it. The per-kind permission table has no entry for tokentransaction, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] tokentransactionid (required):
  Future<void> getCommerceTokentransactionByTokentransactionid(String tokentransactionid,) async {
    final response = await getCommerceTokentransactionByTokentransactionidWithHttpInfo(tokentransactionid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List your org's transfers, as a page
  ///
  /// A transfer records that a payable WAS PAID — the annotation a human writes after paying out of band. Commerce executes no payout: creating one moves no money, and it marks the referenced payable settled. It carries the payable and payee ids, the amount it settles and the amount actually sent (which may be a different asset), a type of eth, wire or other, the transaction hash or wire reference, when it was paid and who recorded it; amounts are exact decimal strings with an asset, not cents. It is admin-gated because writing one settles money we owe, and nothing enforces uniqueness on the reference — so posting the same transfer twice settles the payable twice. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the last-updated time and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for transfer, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceTransferWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/transfer/';

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

  /// List your org's transfers, as a page
  ///
  /// A transfer records that a payable WAS PAID — the annotation a human writes after paying out of band. Commerce executes no payout: creating one moves no money, and it marks the referenced payable settled. It carries the payable and payee ids, the amount it settles and the amount actually sent (which may be a different asset), a type of eth, wire or other, the transaction hash or wire reference, when it was paid and who recorded it; amounts are exact decimal strings with an asset, not cents. It is admin-gated because writing one settles money we owe, and nothing enforces uniqueness on the reference — so posting the same transfer twice settles the payable twice. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the last-updated time and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for transfer, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  Future<void> getCommerceTransfer() async {
    final response = await getCommerceTransferWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch one transfer
  ///
  /// A transfer records that a payable WAS PAID — the annotation a human writes after paying out of band. Commerce executes no payout: creating one moves no money, and it marks the referenced payable settled. It carries the payable and payee ids, the amount it settles and the amount actually sent (which may be a different asset), a type of eth, wire or other, the transaction hash or wire reference, when it was paid and who recorded it; amounts are exact decimal strings with an asset, not cents. It is admin-gated because writing one settles money we owe, and nothing enforces uniqueness on the reference — so posting the same transfer twice settles the payable twice. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for transfer, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] transferid (required):
  Future<Response> getCommerceTransferByTransferidWithHttpInfo(String transferid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/transfer/{transferid}'
      .replaceAll('{transferid}', transferid);

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

  /// Fetch one transfer
  ///
  /// A transfer records that a payable WAS PAID — the annotation a human writes after paying out of band. Commerce executes no payout: creating one moves no money, and it marks the referenced payable settled. It carries the payable and payee ids, the amount it settles and the amount actually sent (which may be a different asset), a type of eth, wire or other, the transaction hash or wire reference, when it was paid and who recorded it; amounts are exact decimal strings with an asset, not cents. It is admin-gated because writing one settles money we owe, and nothing enforces uniqueness on the reference — so posting the same transfer twice settles the payable twice. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for transfer, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] transferid (required):
  Future<void> getCommerceTransferByTransferid(String transferid,) async {
    final response = await getCommerceTransferByTransferidWithHttpInfo(transferid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List your org's variants, as a page
  ///
  /// A variant is one purchasable SKU of a product — its product id, SKU and UPC, name, media, availability, the option name and value pairs that distinguish it, a sold counter, and its own money and stock: currency, price, MSRP, inventory cost, inventory count and taxability. Inventory and sold are plain writable numbers with no decrement logic behind them here. The same variant also exists as a JSON copy inside its product, and writing one does not update the other. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the SKU and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin or the Variant list scope.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceVariantWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/variant/';

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

  /// List your org's variants, as a page
  ///
  /// A variant is one purchasable SKU of a product — its product id, SKU and UPC, name, media, availability, the option name and value pairs that distinguish it, a sold counter, and its own money and stock: currency, price, MSRP, inventory cost, inventory count and taxability. Inventory and sold are plain writable numbers with no decrement logic behind them here. The same variant also exists as a JSON copy inside its product, and writing one does not update the other. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the SKU and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin or the Variant list scope.
  Future<void> getCommerceVariant() async {
    final response = await getCommerceVariantWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch one variant
  ///
  /// A variant is one purchasable SKU of a product — its product id, SKU and UPC, name, media, availability, the option name and value pairs that distinguish it, a sold counter, and its own money and stock: currency, price, MSRP, inventory cost, inventory count and taxability. Inventory and sold are plain writable numbers with no decrement logic behind them here. The same variant also exists as a JSON copy inside its product, and writing one does not update the other. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin or ReadVariant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] variantid (required):
  Future<Response> getCommerceVariantByVariantidWithHttpInfo(String variantid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/variant/{variantid}'
      .replaceAll('{variantid}', variantid);

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

  /// Fetch one variant
  ///
  /// A variant is one purchasable SKU of a product — its product id, SKU and UPC, name, media, availability, the option name and value pairs that distinguish it, a sold counter, and its own money and stock: currency, price, MSRP, inventory cost, inventory count and taxability. Inventory and sold are plain writable numbers with no decrement logic behind them here. The same variant also exists as a JSON copy inside its product, and writing one does not update the other. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin or ReadVariant.
  ///
  /// Parameters:
  ///
  /// * [String] variantid (required):
  Future<void> getCommerceVariantByVariantid(String variantid,) async {
    final response = await getCommerceVariantByVariantidWithHttpInfo(variantid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List your org's wallets, as a page
  ///
  /// A wallet is a container of custodial blockchain accounts, and its only field is that account list — each account carrying a name, an address, a chain type, and the ENCRYPTED private key with its salt. Creating a wallet through this table generates NO KEYS: key generation lives on the account routes, so a wallet made here is an empty shell and an account posted into one is stored exactly as sent, with no key generation and no validation behind it. Know what a read renders: the plaintext private key is never marshalled and never stored, but the encrypted blob and its salt ARE returned, so whoever can read a wallet can attack it offline down to the strength of the owner's passphrase. That is why this kind is admin-gated. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the last-updated time and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for wallet, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceWalletWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/wallet/';

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

  /// List your org's wallets, as a page
  ///
  /// A wallet is a container of custodial blockchain accounts, and its only field is that account list — each account carrying a name, an address, a chain type, and the ENCRYPTED private key with its salt. Creating a wallet through this table generates NO KEYS: key generation lives on the account routes, so a wallet made here is an empty shell and an account posted into one is stored exactly as sent, with no key generation and no validation behind it. Know what a read renders: the plaintext private key is never marshalled and never stored, but the encrypted blob and its salt ARE returned, so whoever can read a wallet can attack it offline down to the strength of the owner's passphrase. That is why this kind is admin-gated. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the last-updated time and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for wallet, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  Future<void> getCommerceWallet() async {
    final response = await getCommerceWalletWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch one wallet
  ///
  /// A wallet is a container of custodial blockchain accounts, and its only field is that account list — each account carrying a name, an address, a chain type, and the ENCRYPTED private key with its salt. Creating a wallet through this table generates NO KEYS: key generation lives on the account routes, so a wallet made here is an empty shell and an account posted into one is stored exactly as sent, with no key generation and no validation behind it. Know what a read renders: the plaintext private key is never marshalled and never stored, but the encrypted blob and its salt ARE returned, so whoever can read a wallet can attack it offline down to the strength of the owner's passphrase. That is why this kind is admin-gated. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for wallet, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] walletid (required):
  Future<Response> getCommerceWalletByWalletidWithHttpInfo(String walletid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/wallet/{walletid}'
      .replaceAll('{walletid}', walletid);

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

  /// Fetch one wallet
  ///
  /// A wallet is a container of custodial blockchain accounts, and its only field is that account list — each account carrying a name, an address, a chain type, and the ENCRYPTED private key with its salt. Creating a wallet through this table generates NO KEYS: key generation lives on the account routes, so a wallet made here is an empty shell and an account posted into one is stored exactly as sent, with no key generation and no validation behind it. Know what a read renders: the plaintext private key is never marshalled and never stored, but the encrypted blob and its salt ARE returned, so whoever can read a wallet can attack it offline down to the strength of the owner's passphrase. That is why this kind is admin-gated. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for wallet, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] walletid (required):
  Future<void> getCommerceWalletByWalletid(String walletid,) async {
    final response = await getCommerceWalletByWalletidWithHttpInfo(walletid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List your org's watchlists, as a page
  ///
  /// A watchlist is a viewer's saved list of movies — a user id, an email, and the movies themselves. It stores WHOLE MOVIE SNAPSHOTS rather than movie ids, so a list goes stale the moment a film record changes and grows without bound as it fills. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the last-updated time and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. Any valid access token reaches it. The per-kind permission table has no entry for watchlist, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceWatchlistWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/watchlist/';

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

  /// List your org's watchlists, as a page
  ///
  /// A watchlist is a viewer's saved list of movies — a user id, an email, and the movies themselves. It stores WHOLE MOVIE SNAPSHOTS rather than movie ids, so a list goes stale the moment a film record changes and grows without bound as it fills. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the last-updated time and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. Any valid access token reaches it. The per-kind permission table has no entry for watchlist, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  Future<void> getCommerceWatchlist() async {
    final response = await getCommerceWatchlistWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch one watchlist
  ///
  /// A watchlist is a viewer's saved list of movies — a user id, an email, and the movies themselves. It stores WHOLE MOVIE SNAPSHOTS rather than movie ids, so a list goes stale the moment a film record changes and grows without bound as it fills. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. Any valid access token reaches it. The per-kind permission table has no entry for watchlist, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] watchlistid (required):
  Future<Response> getCommerceWatchlistByWatchlistidWithHttpInfo(String watchlistid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/watchlist/{watchlistid}'
      .replaceAll('{watchlistid}', watchlistid);

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

  /// Fetch one watchlist
  ///
  /// A watchlist is a viewer's saved list of movies — a user id, an email, and the movies themselves. It stores WHOLE MOVIE SNAPSHOTS rather than movie ids, so a list goes stale the moment a film record changes and grows without bound as it fills. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. Any valid access token reaches it. The per-kind permission table has no entry for watchlist, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] watchlistid (required):
  Future<void> getCommerceWatchlistByWatchlistid(String watchlistid,) async {
    final response = await getCommerceWatchlistByWatchlistidWithHttpInfo(watchlistid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List your org's webhooks, as a page
  ///
  /// A webhook is a merchant-registered endpoint that receives commerce event callbacks — a name, a URL, live and all flags, a per-event map, an enabled flag, and the shared access token each delivery posts IN THE BODY. Two things to know before registering one: that token is a plainly readable field, so anyone who may read webhooks reads every endpoint's secret, and delivery consults only the all flag and the event map — it does NOT consult enabled or live, so setting enabled false does not stop delivery and deleting the row is the only thing that does. Delivery is a single POST with a twenty-second timeout and no retry. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the last-updated time and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for webhook, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceWebhookWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/webhook/';

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

  /// List your org's webhooks, as a page
  ///
  /// A webhook is a merchant-registered endpoint that receives commerce event callbacks — a name, a URL, live and all flags, a per-event map, an enabled flag, and the shared access token each delivery posts IN THE BODY. Two things to know before registering one: that token is a plainly readable field, so anyone who may read webhooks reads every endpoint's secret, and delivery consults only the all flag and the event map — it does NOT consult enabled or live, so setting enabled false does not stop delivery and deleting the row is the only thing that does. Delivery is a single POST with a twenty-second timeout and no retry. Answers a pagination envelope — the page and display echoed back, the rows under models, a total count and a facets array — read from the caller org's own namespaced store, so one tenant can never list another's. Sorting defaults to the last-updated time and is overridable with sort. display is the page size and page applies only alongside it; either one that is not a positive integer is refused with 500 rather than silently ignored, and the limit query overrides the reported COUNT only, never the rows returned. No search backend is wired, so the datastore is the one and only list path and facets is always empty. A request resolving no org namespace is served an EMPTY page rather than an unscoped scan: the namespace IS the tenant filter, so without one there is nothing safe to return. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for webhook, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  Future<void> getCommerceWebhook() async {
    final response = await getCommerceWebhookWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch one webhook
  ///
  /// A webhook is a merchant-registered endpoint that receives commerce event callbacks — a name, a URL, live and all flags, a per-event map, an enabled flag, and the shared access token each delivery posts IN THE BODY. Two things to know before registering one: that token is a plainly readable field, so anyone who may read webhooks reads every endpoint's secret, and delivery consults only the all flag and the event map — it does NOT consult enabled or live, so setting enabled false does not stop delivery and deleting the row is the only thing that does. Delivery is a single POST with a twenty-second timeout and no retry. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for webhook, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] webhookid (required):
  Future<Response> getCommerceWebhookByWebhookidWithHttpInfo(String webhookid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/webhook/{webhookid}'
      .replaceAll('{webhookid}', webhookid);

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

  /// Fetch one webhook
  ///
  /// A webhook is a merchant-registered endpoint that receives commerce event callbacks — a name, a URL, live and all flags, a per-event map, an enabled flag, and the shared access token each delivery posts IN THE BODY. Two things to know before registering one: that token is a plainly readable field, so anyone who may read webhooks reads every endpoint's secret, and delivery consults only the all flag and the event map — it does NOT consult enabled or live, so setting enabled false does not stop delivery and deleting the row is the only thing that does. Delivery is a single POST with a twenty-second timeout and no retry. Reads the addressed row from the caller org's own namespaced store. An id that is not there is 404 — and another tenant's id is not there by construction, so it reads exactly like a typo instead of confirming the row exists somewhere else. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for webhook, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] webhookid (required):
  Future<void> getCommerceWebhookByWebhookid(String webhookid,) async {
    final response = await getCommerceWebhookByWebhookidWithHttpInfo(webhookid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Change part of a collection
  ///
  /// A collection is a merchandising group a storefront renders — a slug and name, copy and media, flat lists of the product and variant ids it holds, published, preorder and out-of-stock flags, and an availability window. Membership lives on the collection as those id lists rather than as a join, so putting a product into a collection is a write here and not on the product. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin, or ReadCollection and WriteCollection together.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionid (required):
  Future<Response> patchCommerceCollectionByCollectionidWithHttpInfo(String collectionid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/collection/{collectionid}'
      .replaceAll('{collectionid}', collectionid);

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

  /// Change part of a collection
  ///
  /// A collection is a merchandising group a storefront renders — a slug and name, copy and media, flat lists of the product and variant ids it holds, published, preorder and out-of-stock flags, and an availability window. Membership lives on the collection as those id lists rather than as a join, so putting a product into a collection is a write here and not on the product. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin, or ReadCollection and WriteCollection together.
  ///
  /// Parameters:
  ///
  /// * [String] collectionid (required):
  Future<void> patchCommerceCollectionByCollectionid(String collectionid,) async {
    final response = await patchCommerceCollectionByCollectionidWithHttpInfo(collectionid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Change part of a disclosure
  ///
  /// A disclosure is a published-document record — a publication body, a content hash, a type and a named receiver. The hash LOOKS like a field you set and is in fact derived, but only on update: a freshly created disclosure keeps whatever hash the caller sent until the first replace or patch recomputes it, so a new row's hash attests to nothing. This kind lives in commerce's demo tree — a live writable resource in your tenant's real store that nothing else in commerce reads. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. Any valid access token reaches it. The per-kind permission table has no entry for disclosure, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] disclosureid (required):
  Future<Response> patchCommerceDisclosureByDisclosureidWithHttpInfo(String disclosureid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/disclosure/{disclosureid}'
      .replaceAll('{disclosureid}', disclosureid);

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

  /// Change part of a disclosure
  ///
  /// A disclosure is a published-document record — a publication body, a content hash, a type and a named receiver. The hash LOOKS like a field you set and is in fact derived, but only on update: a freshly created disclosure keeps whatever hash the caller sent until the first replace or patch recomputes it, so a new row's hash attests to nothing. This kind lives in commerce's demo tree — a live writable resource in your tenant's real store that nothing else in commerce reads. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. Any valid access token reaches it. The per-kind permission table has no entry for disclosure, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] disclosureid (required):
  Future<void> patchCommerceDisclosureByDisclosureid(String disclosureid,) async {
    final response = await patchCommerceDisclosureByDisclosureidWithHttpInfo(disclosureid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Change part of a discount
  ///
  /// A discount is a price rule: a type (flat, percent, free-shipping, free-item or bulk), a window, a scope naming the store, collection, product or variant it applies to, a target, and rules pairing a trigger — a price or quantity threshold — with an action, an amount off or a percentage. It is ENABLED BY DEFAULT, so a bare create makes a live discount rather than a draft. The rule engine caches per replica for about thirty seconds, so a discount switched off here can keep applying briefly on other replicas. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for discount, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] discountid (required):
  Future<Response> patchCommerceDiscountByDiscountidWithHttpInfo(String discountid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/discount/{discountid}'
      .replaceAll('{discountid}', discountid);

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

  /// Change part of a discount
  ///
  /// A discount is a price rule: a type (flat, percent, free-shipping, free-item or bulk), a window, a scope naming the store, collection, product or variant it applies to, a target, and rules pairing a trigger — a price or quantity threshold — with an action, an amount off or a percentage. It is ENABLED BY DEFAULT, so a bare create makes a live discount rather than a draft. The rule engine caches per replica for about thirty seconds, so a discount switched off here can keep applying briefly on other replicas. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for discount, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] discountid (required):
  Future<void> patchCommerceDiscountByDiscountid(String discountid,) async {
    final response = await patchCommerceDiscountByDiscountidWithHttpInfo(discountid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Change part of a movie
  ///
  /// A movie is a film catalog record — a slug plus EIDR and IMDB ids, all three required, with title and synopsis copy, artwork, screenshots, trailers, cast and crew, and available and hidden flags. It carries NO price: the money for a film lives on the product that sells it. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. Any valid access token reaches it. The per-kind permission table has no entry for movie, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] movieid (required):
  Future<Response> patchCommerceMovieByMovieidWithHttpInfo(String movieid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/movie/{movieid}'
      .replaceAll('{movieid}', movieid);

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

  /// Change part of a movie
  ///
  /// A movie is a film catalog record — a slug plus EIDR and IMDB ids, all three required, with title and synopsis copy, artwork, screenshots, trailers, cast and crew, and available and hidden flags. It carries NO price: the money for a film lives on the product that sells it. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. Any valid access token reaches it. The per-kind permission table has no entry for movie, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] movieid (required):
  Future<void> patchCommerceMovieByMovieid(String movieid,) async {
    final response = await patchCommerceMovieByMovieidWithHttpInfo(movieid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Change part of a note
  ///
  /// A note is a timestamped free-text log line — a caller-supplied time, a source, a message and an enabled flag. That time is the caller's own field and is distinct from the row's creation stamp; the note search filters on it, so a note written without one is a zero-time note the ops log will never surface. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. Any valid access token reaches it. The per-kind permission table has no entry for note, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] noteid (required):
  Future<Response> patchCommerceNoteByNoteidWithHttpInfo(String noteid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/note/{noteid}'
      .replaceAll('{noteid}', noteid);

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

  /// Change part of a note
  ///
  /// A note is a timestamped free-text log line — a caller-supplied time, a source, a message and an enabled flag. That time is the caller's own field and is distinct from the row's creation stamp; the note search filters on it, so a note written without one is a zero-time note the ops log will never surface. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. Any valid access token reaches it. The per-kind permission table has no entry for note, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] noteid (required):
  Future<void> patchCommerceNoteByNoteid(String noteid,) async {
    final response = await patchCommerceNoteByNoteidWithHttpInfo(noteid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Change part of a product
  ///
  /// A product is a sellable catalog item: slug, SKU and UPC, name and copy, media, availability and preorder flags, a reservation block, and its money — currency, price, MSRP, list price and inventory cost in minor units, inventory count, taxability, and the subscription interval when it is subscribeable. Its variants and options are carried as a denormalized JSON snapshot inside the product, separate from the standalone variant rows, and nothing keeps the two in step for you. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin, or ReadProduct and WriteProduct together.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] productid (required):
  Future<Response> patchCommerceProductByProductidWithHttpInfo(String productid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/product/{productid}'
      .replaceAll('{productid}', productid);

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

  /// Change part of a product
  ///
  /// A product is a sellable catalog item: slug, SKU and UPC, name and copy, media, availability and preorder flags, a reservation block, and its money — currency, price, MSRP, list price and inventory cost in minor units, inventory count, taxability, and the subscription interval when it is subscribeable. Its variants and options are carried as a denormalized JSON snapshot inside the product, separate from the standalone variant rows, and nothing keeps the two in step for you. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin, or ReadProduct and WriteProduct together.
  ///
  /// Parameters:
  ///
  /// * [String] productid (required):
  Future<void> patchCommerceProductByProductid(String productid,) async {
    final response = await patchCommerceProductByProductidWithHttpInfo(productid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Change part of a return
  ///
  /// A return is an RMA — the store, user and order it belongs to, the line items coming back, a fulfillment block carrying its own type, status and pricing, a summary, and eight lifecycle timestamps from submitted through delivered and processed. Its status is a FREE STRING with no enumeration behind it, and there is no refund amount on the return itself: the money sits inside the line items and the fulfillment pricing. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. Any valid access token reaches it. The token must also carry Admin, or ReadReturn and WriteReturn together.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] returnid (required):
  Future<Response> patchCommerceReturnByReturnidWithHttpInfo(String returnid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/return/{returnid}'
      .replaceAll('{returnid}', returnid);

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

  /// Change part of a return
  ///
  /// A return is an RMA — the store, user and order it belongs to, the line items coming back, a fulfillment block carrying its own type, status and pricing, a summary, and eight lifecycle timestamps from submitted through delivered and processed. Its status is a FREE STRING with no enumeration behind it, and there is no refund amount on the return itself: the money sits inside the line items and the fulfillment pricing. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. Any valid access token reaches it. The token must also carry Admin, or ReadReturn and WriteReturn together.
  ///
  /// Parameters:
  ///
  /// * [String] returnid (required):
  Future<void> patchCommerceReturnByReturnid(String returnid,) async {
    final response = await patchCommerceReturnByReturnidWithHttpInfo(returnid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Change part of a sales channel
  ///
  /// A sales channel is a named selling surface — a name, a description, a disabled flag and metadata. The flag is NEGATIVE, so a channel created from an empty body is enabled. Nothing on this row links products, prices or stock to the channel; here it is a label other surfaces scope themselves by. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for saleschannel, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] saleschannelid (required):
  Future<Response> patchCommerceSaleschannelBySaleschannelidWithHttpInfo(String saleschannelid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/saleschannel/{saleschannelid}'
      .replaceAll('{saleschannelid}', saleschannelid);

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

  /// Change part of a sales channel
  ///
  /// A sales channel is a named selling surface — a name, a description, a disabled flag and metadata. The flag is NEGATIVE, so a channel created from an empty body is enabled. Nothing on this row links products, prices or stock to the channel; here it is a label other surfaces scope themselves by. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for saleschannel, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] saleschannelid (required):
  Future<void> patchCommerceSaleschannelBySaleschannelid(String saleschannelid,) async {
    final response = await patchCommerceSaleschannelBySaleschannelidWithHttpInfo(saleschannelid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Change part of a stock location
  ///
  /// A stock location is a physical address inventory can be held at — a name, street lines, city, province, country, postal code and a phone. None of it is validated, there are no coordinates, and the row carries no enabled flag and no inventory link, so deleting it is the only way to retire one. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for stocklocation, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] stocklocationid (required):
  Future<Response> patchCommerceStocklocationByStocklocationidWithHttpInfo(String stocklocationid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/stocklocation/{stocklocationid}'
      .replaceAll('{stocklocationid}', stocklocationid);

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

  /// Change part of a stock location
  ///
  /// A stock location is a physical address inventory can be held at — a name, street lines, city, province, country, postal code and a phone. None of it is validated, there are no coordinates, and the row carries no enabled flag and no inventory link, so deleting it is the only way to retire one. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for stocklocation, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] stocklocationid (required):
  Future<void> patchCommerceStocklocationByStocklocationid(String stocklocationid,) async {
    final response = await patchCommerceStocklocationByStocklocationidWithHttpInfo(stocklocationid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Change part of a submission
  ///
  /// A submission is one filled-in form from a site visitor — an email, an optional user id, the client details the server observed (user agent, referer, geography) and the form's own fields as free metadata. It carries no form id, so the link back to the form that produced it is not stored on the row. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. Any valid access token reaches it. The per-kind permission table has no entry for submission, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] submissionid (required):
  Future<Response> patchCommerceSubmissionBySubmissionidWithHttpInfo(String submissionid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/submission/{submissionid}'
      .replaceAll('{submissionid}', submissionid);

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

  /// Change part of a submission
  ///
  /// A submission is one filled-in form from a site visitor — an email, an optional user id, the client details the server observed (user agent, referer, geography) and the form's own fields as free metadata. It carries no form id, so the link back to the form that produced it is not stored on the row. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. Any valid access token reaches it. The per-kind permission table has no entry for submission, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] submissionid (required):
  Future<void> patchCommerceSubmissionBySubmissionid(String submissionid,) async {
    final response = await patchCommerceSubmissionBySubmissionidWithHttpInfo(submissionid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Change part of a subscriber
  ///
  /// A subscriber is a mailing-list member — name, email, the form id that captured them, unsubscribed state and date, client details, tags and metadata. Writing one FIRES A WEBHOOK: subscriber.created on create and subscriber.updated on replace or patch, emitted BEFORE the write is known to have succeeded and carrying the row as sent, so the payload holds the raw email rather than the normalized one that gets stored. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. Any valid access token reaches it. The token must also carry Admin, or ReadSubscriber and WriteSubscriber together.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] subscriberid (required):
  Future<Response> patchCommerceSubscriberBySubscriberidWithHttpInfo(String subscriberid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/subscriber/{subscriberid}'
      .replaceAll('{subscriberid}', subscriberid);

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

  /// Change part of a subscriber
  ///
  /// A subscriber is a mailing-list member — name, email, the form id that captured them, unsubscribed state and date, client details, tags and metadata. Writing one FIRES A WEBHOOK: subscriber.created on create and subscriber.updated on replace or patch, emitted BEFORE the write is known to have succeeded and carrying the row as sent, so the payload holds the raw email rather than the normalized one that gets stored. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. Any valid access token reaches it. The token must also carry Admin, or ReadSubscriber and WriteSubscriber together.
  ///
  /// Parameters:
  ///
  /// * [String] subscriberid (required):
  Future<void> patchCommerceSubscriberBySubscriberid(String subscriberid,) async {
    final response = await patchCommerceSubscriberBySubscriberidWithHttpInfo(subscriberid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Change part of a token transaction
  ///
  /// A token transaction records a transfer between two identified parties — amount and fees, a timestamp, sending and receiving addresses, names, user ids, states and countries, a flag per side, a protocol name and a transaction hash. Nothing here touches a chain: the hash is an unvalidated string and the flags are plain writable booleans with no screening behind them. Amounts are floating-point rather than the exact minor units every real money field in commerce uses, and there is no currency field at all — this kind lives in commerce's demo tree, so it is a live writable resource in your tenant's store that nothing else in commerce reads, and it must never carry real money. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. Any valid access token reaches it. The per-kind permission table has no entry for tokentransaction, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tokentransactionid (required):
  Future<Response> patchCommerceTokentransactionByTokentransactionidWithHttpInfo(String tokentransactionid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/tokentransaction/{tokentransactionid}'
      .replaceAll('{tokentransactionid}', tokentransactionid);

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

  /// Change part of a token transaction
  ///
  /// A token transaction records a transfer between two identified parties — amount and fees, a timestamp, sending and receiving addresses, names, user ids, states and countries, a flag per side, a protocol name and a transaction hash. Nothing here touches a chain: the hash is an unvalidated string and the flags are plain writable booleans with no screening behind them. Amounts are floating-point rather than the exact minor units every real money field in commerce uses, and there is no currency field at all — this kind lives in commerce's demo tree, so it is a live writable resource in your tenant's store that nothing else in commerce reads, and it must never carry real money. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. Any valid access token reaches it. The per-kind permission table has no entry for tokentransaction, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] tokentransactionid (required):
  Future<void> patchCommerceTokentransactionByTokentransactionid(String tokentransactionid,) async {
    final response = await patchCommerceTokentransactionByTokentransactionidWithHttpInfo(tokentransactionid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Change part of a transfer
  ///
  /// A transfer records that a payable WAS PAID — the annotation a human writes after paying out of band. Commerce executes no payout: creating one moves no money, and it marks the referenced payable settled. It carries the payable and payee ids, the amount it settles and the amount actually sent (which may be a different asset), a type of eth, wire or other, the transaction hash or wire reference, when it was paid and who recorded it; amounts are exact decimal strings with an asset, not cents. It is admin-gated because writing one settles money we owe, and nothing enforces uniqueness on the reference — so posting the same transfer twice settles the payable twice. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for transfer, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] transferid (required):
  Future<Response> patchCommerceTransferByTransferidWithHttpInfo(String transferid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/transfer/{transferid}'
      .replaceAll('{transferid}', transferid);

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

  /// Change part of a transfer
  ///
  /// A transfer records that a payable WAS PAID — the annotation a human writes after paying out of band. Commerce executes no payout: creating one moves no money, and it marks the referenced payable settled. It carries the payable and payee ids, the amount it settles and the amount actually sent (which may be a different asset), a type of eth, wire or other, the transaction hash or wire reference, when it was paid and who recorded it; amounts are exact decimal strings with an asset, not cents. It is admin-gated because writing one settles money we owe, and nothing enforces uniqueness on the reference — so posting the same transfer twice settles the payable twice. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for transfer, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] transferid (required):
  Future<void> patchCommerceTransferByTransferid(String transferid,) async {
    final response = await patchCommerceTransferByTransferidWithHttpInfo(transferid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Change part of a variant
  ///
  /// A variant is one purchasable SKU of a product — its product id, SKU and UPC, name, media, availability, the option name and value pairs that distinguish it, a sold counter, and its own money and stock: currency, price, MSRP, inventory cost, inventory count and taxability. Inventory and sold are plain writable numbers with no decrement logic behind them here. The same variant also exists as a JSON copy inside its product, and writing one does not update the other. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin, or ReadVariant and WriteVariant together.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] variantid (required):
  Future<Response> patchCommerceVariantByVariantidWithHttpInfo(String variantid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/variant/{variantid}'
      .replaceAll('{variantid}', variantid);

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

  /// Change part of a variant
  ///
  /// A variant is one purchasable SKU of a product — its product id, SKU and UPC, name, media, availability, the option name and value pairs that distinguish it, a sold counter, and its own money and stock: currency, price, MSRP, inventory cost, inventory count and taxability. Inventory and sold are plain writable numbers with no decrement logic behind them here. The same variant also exists as a JSON copy inside its product, and writing one does not update the other. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin, or ReadVariant and WriteVariant together.
  ///
  /// Parameters:
  ///
  /// * [String] variantid (required):
  Future<void> patchCommerceVariantByVariantid(String variantid,) async {
    final response = await patchCommerceVariantByVariantidWithHttpInfo(variantid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Change part of a wallet
  ///
  /// A wallet is a container of custodial blockchain accounts, and its only field is that account list — each account carrying a name, an address, a chain type, and the ENCRYPTED private key with its salt. Creating a wallet through this table generates NO KEYS: key generation lives on the account routes, so a wallet made here is an empty shell and an account posted into one is stored exactly as sent, with no key generation and no validation behind it. Know what a read renders: the plaintext private key is never marshalled and never stored, but the encrypted blob and its salt ARE returned, so whoever can read a wallet can attack it offline down to the strength of the owner's passphrase. That is why this kind is admin-gated. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for wallet, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] walletid (required):
  Future<Response> patchCommerceWalletByWalletidWithHttpInfo(String walletid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/wallet/{walletid}'
      .replaceAll('{walletid}', walletid);

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

  /// Change part of a wallet
  ///
  /// A wallet is a container of custodial blockchain accounts, and its only field is that account list — each account carrying a name, an address, a chain type, and the ENCRYPTED private key with its salt. Creating a wallet through this table generates NO KEYS: key generation lives on the account routes, so a wallet made here is an empty shell and an account posted into one is stored exactly as sent, with no key generation and no validation behind it. Know what a read renders: the plaintext private key is never marshalled and never stored, but the encrypted blob and its salt ARE returned, so whoever can read a wallet can attack it offline down to the strength of the owner's passphrase. That is why this kind is admin-gated. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for wallet, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] walletid (required):
  Future<void> patchCommerceWalletByWalletid(String walletid,) async {
    final response = await patchCommerceWalletByWalletidWithHttpInfo(walletid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Change part of a watchlist
  ///
  /// A watchlist is a viewer's saved list of movies — a user id, an email, and the movies themselves. It stores WHOLE MOVIE SNAPSHOTS rather than movie ids, so a list goes stale the moment a film record changes and grows without bound as it fills. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. Any valid access token reaches it. The per-kind permission table has no entry for watchlist, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] watchlistid (required):
  Future<Response> patchCommerceWatchlistByWatchlistidWithHttpInfo(String watchlistid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/watchlist/{watchlistid}'
      .replaceAll('{watchlistid}', watchlistid);

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

  /// Change part of a watchlist
  ///
  /// A watchlist is a viewer's saved list of movies — a user id, an email, and the movies themselves. It stores WHOLE MOVIE SNAPSHOTS rather than movie ids, so a list goes stale the moment a film record changes and grows without bound as it fills. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. Any valid access token reaches it. The per-kind permission table has no entry for watchlist, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] watchlistid (required):
  Future<void> patchCommerceWatchlistByWatchlistid(String watchlistid,) async {
    final response = await patchCommerceWatchlistByWatchlistidWithHttpInfo(watchlistid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Change part of a webhook
  ///
  /// A webhook is a merchant-registered endpoint that receives commerce event callbacks — a name, a URL, live and all flags, a per-event map, an enabled flag, and the shared access token each delivery posts IN THE BODY. Two things to know before registering one: that token is a plainly readable field, so anyone who may read webhooks reads every endpoint's secret, and delivery consults only the all flag and the event map — it does NOT consult enabled or live, so setting enabled false does not stop delivery and deleting the row is the only thing that does. Delivery is a single POST with a twenty-second timeout and no retry. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for webhook, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] webhookid (required):
  Future<Response> patchCommerceWebhookByWebhookidWithHttpInfo(String webhookid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/webhook/{webhookid}'
      .replaceAll('{webhookid}', webhookid);

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

  /// Change part of a webhook
  ///
  /// A webhook is a merchant-registered endpoint that receives commerce event callbacks — a name, a URL, live and all flags, a per-event map, an enabled flag, and the shared access token each delivery posts IN THE BODY. Two things to know before registering one: that token is a plainly readable field, so anyone who may read webhooks reads every endpoint's secret, and delivery consults only the all flag and the event map — it does NOT consult enabled or live, so setting enabled false does not stop delivery and deleting the row is the only thing that does. Delivery is a single POST with a twenty-second timeout and no retry. Loads the stored row and decodes the body OVER it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged row. An id absent from the caller org's namespace is 404 and a body that fails to decode is 400. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for webhook, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] webhookid (required):
  Future<void> patchCommerceWebhookByWebhookid(String webhookid,) async {
    final response = await patchCommerceWebhookByWebhookidWithHttpInfo(webhookid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a collection
  ///
  /// A collection is a merchandising group a storefront renders — a slug and name, copy and media, flat lists of the product and variant ids it holds, published, preorder and out-of-stock flags, and an availability window. Membership lives on the collection as those id lists rather than as a join, so putting a product into a collection is a write here and not on the product. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin or WriteCollection.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCommerceCollectionWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/collection/';

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

  /// Create a collection
  ///
  /// A collection is a merchandising group a storefront renders — a slug and name, copy and media, flat lists of the product and variant ids it holds, published, preorder and out-of-stock flags, and an availability window. Membership lives on the collection as those id lists rather than as a join, so putting a product into a collection is a write here and not on the product. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin or WriteCollection.
  Future<void> postCommerceCollection() async {
    final response = await postCommerceCollectionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Method-override tunnel for a collection — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A collection is a merchandising group a storefront renders — a slug and name, copy and media, flat lists of the product and variant ids it holds, published, preorder and out-of-stock flags, and an availability window. Membership lives on the collection as those id lists rather than as a join, so putting a product into a collection is a write here and not on the product. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionid (required):
  Future<Response> postCommerceCollectionByCollectionidWithHttpInfo(String collectionid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/collection/{collectionid}'
      .replaceAll('{collectionid}', collectionid);

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

  /// Method-override tunnel for a collection — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A collection is a merchandising group a storefront renders — a slug and name, copy and media, flat lists of the product and variant ids it holds, published, preorder and out-of-stock flags, and an availability window. Membership lives on the collection as those id lists rather than as a join, so putting a product into a collection is a write here and not on the product. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through.
  ///
  /// Parameters:
  ///
  /// * [String] collectionid (required):
  Future<void> postCommerceCollectionByCollectionid(String collectionid,) async {
    final response = await postCommerceCollectionByCollectionidWithHttpInfo(collectionid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a disclosure
  ///
  /// A disclosure is a published-document record — a publication body, a content hash, a type and a named receiver. The hash LOOKS like a field you set and is in fact derived, but only on update: a freshly created disclosure keeps whatever hash the caller sent until the first replace or patch recomputes it, so a new row's hash attests to nothing. This kind lives in commerce's demo tree — a live writable resource in your tenant's real store that nothing else in commerce reads. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. Any valid access token reaches it. The per-kind permission table has no entry for disclosure, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCommerceDisclosureWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/disclosure/';

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

  /// Create a disclosure
  ///
  /// A disclosure is a published-document record — a publication body, a content hash, a type and a named receiver. The hash LOOKS like a field you set and is in fact derived, but only on update: a freshly created disclosure keeps whatever hash the caller sent until the first replace or patch recomputes it, so a new row's hash attests to nothing. This kind lives in commerce's demo tree — a live writable resource in your tenant's real store that nothing else in commerce reads. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. Any valid access token reaches it. The per-kind permission table has no entry for disclosure, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  Future<void> postCommerceDisclosure() async {
    final response = await postCommerceDisclosureWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Method-override tunnel for a disclosure — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A disclosure is a published-document record — a publication body, a content hash, a type and a named receiver. The hash LOOKS like a field you set and is in fact derived, but only on update: a freshly created disclosure keeps whatever hash the caller sent until the first replace or patch recomputes it, so a new row's hash attests to nothing. This kind lives in commerce's demo tree — a live writable resource in your tenant's real store that nothing else in commerce reads. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. Any valid access token reaches it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] disclosureid (required):
  Future<Response> postCommerceDisclosureByDisclosureidWithHttpInfo(String disclosureid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/disclosure/{disclosureid}'
      .replaceAll('{disclosureid}', disclosureid);

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

  /// Method-override tunnel for a disclosure — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A disclosure is a published-document record — a publication body, a content hash, a type and a named receiver. The hash LOOKS like a field you set and is in fact derived, but only on update: a freshly created disclosure keeps whatever hash the caller sent until the first replace or patch recomputes it, so a new row's hash attests to nothing. This kind lives in commerce's demo tree — a live writable resource in your tenant's real store that nothing else in commerce reads. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. Any valid access token reaches it.
  ///
  /// Parameters:
  ///
  /// * [String] disclosureid (required):
  Future<void> postCommerceDisclosureByDisclosureid(String disclosureid,) async {
    final response = await postCommerceDisclosureByDisclosureidWithHttpInfo(disclosureid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a discount
  ///
  /// A discount is a price rule: a type (flat, percent, free-shipping, free-item or bulk), a window, a scope naming the store, collection, product or variant it applies to, a target, and rules pairing a trigger — a price or quantity threshold — with an action, an amount off or a percentage. It is ENABLED BY DEFAULT, so a bare create makes a live discount rather than a draft. The rule engine caches per replica for about thirty seconds, so a discount switched off here can keep applying briefly on other replicas. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for discount, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCommerceDiscountWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/discount/';

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

  /// Create a discount
  ///
  /// A discount is a price rule: a type (flat, percent, free-shipping, free-item or bulk), a window, a scope naming the store, collection, product or variant it applies to, a target, and rules pairing a trigger — a price or quantity threshold — with an action, an amount off or a percentage. It is ENABLED BY DEFAULT, so a bare create makes a live discount rather than a draft. The rule engine caches per replica for about thirty seconds, so a discount switched off here can keep applying briefly on other replicas. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for discount, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  Future<void> postCommerceDiscount() async {
    final response = await postCommerceDiscountWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Method-override tunnel for a discount — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A discount is a price rule: a type (flat, percent, free-shipping, free-item or bulk), a window, a scope naming the store, collection, product or variant it applies to, a target, and rules pairing a trigger — a price or quantity threshold — with an action, an amount off or a percentage. It is ENABLED BY DEFAULT, so a bare create makes a live discount rather than a draft. The rule engine caches per replica for about thirty seconds, so a discount switched off here can keep applying briefly on other replicas. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] discountid (required):
  Future<Response> postCommerceDiscountByDiscountidWithHttpInfo(String discountid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/discount/{discountid}'
      .replaceAll('{discountid}', discountid);

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

  /// Method-override tunnel for a discount — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A discount is a price rule: a type (flat, percent, free-shipping, free-item or bulk), a window, a scope naming the store, collection, product or variant it applies to, a target, and rules pairing a trigger — a price or quantity threshold — with an action, an amount off or a percentage. It is ENABLED BY DEFAULT, so a bare create makes a live discount rather than a draft. The rule engine caches per replica for about thirty seconds, so a discount switched off here can keep applying briefly on other replicas. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through.
  ///
  /// Parameters:
  ///
  /// * [String] discountid (required):
  Future<void> postCommerceDiscountByDiscountid(String discountid,) async {
    final response = await postCommerceDiscountByDiscountidWithHttpInfo(discountid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a movie
  ///
  /// A movie is a film catalog record — a slug plus EIDR and IMDB ids, all three required, with title and synopsis copy, artwork, screenshots, trailers, cast and crew, and available and hidden flags. It carries NO price: the money for a film lives on the product that sells it. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. Any valid access token reaches it. The per-kind permission table has no entry for movie, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCommerceMovieWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/movie/';

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

  /// Create a movie
  ///
  /// A movie is a film catalog record — a slug plus EIDR and IMDB ids, all three required, with title and synopsis copy, artwork, screenshots, trailers, cast and crew, and available and hidden flags. It carries NO price: the money for a film lives on the product that sells it. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. Any valid access token reaches it. The per-kind permission table has no entry for movie, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  Future<void> postCommerceMovie() async {
    final response = await postCommerceMovieWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Method-override tunnel for a movie — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A movie is a film catalog record — a slug plus EIDR and IMDB ids, all three required, with title and synopsis copy, artwork, screenshots, trailers, cast and crew, and available and hidden flags. It carries NO price: the money for a film lives on the product that sells it. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. Any valid access token reaches it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] movieid (required):
  Future<Response> postCommerceMovieByMovieidWithHttpInfo(String movieid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/movie/{movieid}'
      .replaceAll('{movieid}', movieid);

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

  /// Method-override tunnel for a movie — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A movie is a film catalog record — a slug plus EIDR and IMDB ids, all three required, with title and synopsis copy, artwork, screenshots, trailers, cast and crew, and available and hidden flags. It carries NO price: the money for a film lives on the product that sells it. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. Any valid access token reaches it.
  ///
  /// Parameters:
  ///
  /// * [String] movieid (required):
  Future<void> postCommerceMovieByMovieid(String movieid,) async {
    final response = await postCommerceMovieByMovieidWithHttpInfo(movieid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a note
  ///
  /// A note is a timestamped free-text log line — a caller-supplied time, a source, a message and an enabled flag. That time is the caller's own field and is distinct from the row's creation stamp; the note search filters on it, so a note written without one is a zero-time note the ops log will never surface. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. Any valid access token reaches it. The per-kind permission table has no entry for note, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCommerceNoteWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/note/';

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

  /// Create a note
  ///
  /// A note is a timestamped free-text log line — a caller-supplied time, a source, a message and an enabled flag. That time is the caller's own field and is distinct from the row's creation stamp; the note search filters on it, so a note written without one is a zero-time note the ops log will never surface. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. Any valid access token reaches it. The per-kind permission table has no entry for note, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  Future<void> postCommerceNote() async {
    final response = await postCommerceNoteWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Method-override tunnel for a note — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A note is a timestamped free-text log line — a caller-supplied time, a source, a message and an enabled flag. That time is the caller's own field and is distinct from the row's creation stamp; the note search filters on it, so a note written without one is a zero-time note the ops log will never surface. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. Any valid access token reaches it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] noteid (required):
  Future<Response> postCommerceNoteByNoteidWithHttpInfo(String noteid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/note/{noteid}'
      .replaceAll('{noteid}', noteid);

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

  /// Method-override tunnel for a note — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A note is a timestamped free-text log line — a caller-supplied time, a source, a message and an enabled flag. That time is the caller's own field and is distinct from the row's creation stamp; the note search filters on it, so a note written without one is a zero-time note the ops log will never surface. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. Any valid access token reaches it.
  ///
  /// Parameters:
  ///
  /// * [String] noteid (required):
  Future<void> postCommerceNoteByNoteid(String noteid,) async {
    final response = await postCommerceNoteByNoteidWithHttpInfo(noteid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a product
  ///
  /// A product is a sellable catalog item: slug, SKU and UPC, name and copy, media, availability and preorder flags, a reservation block, and its money — currency, price, MSRP, list price and inventory cost in minor units, inventory count, taxability, and the subscription interval when it is subscribeable. Its variants and options are carried as a denormalized JSON snapshot inside the product, separate from the standalone variant rows, and nothing keeps the two in step for you. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin or WriteProduct.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCommerceProductWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/product/';

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

  /// Create a product
  ///
  /// A product is a sellable catalog item: slug, SKU and UPC, name and copy, media, availability and preorder flags, a reservation block, and its money — currency, price, MSRP, list price and inventory cost in minor units, inventory count, taxability, and the subscription interval when it is subscribeable. Its variants and options are carried as a denormalized JSON snapshot inside the product, separate from the standalone variant rows, and nothing keeps the two in step for you. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin or WriteProduct.
  Future<void> postCommerceProduct() async {
    final response = await postCommerceProductWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Method-override tunnel for a product — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A product is a sellable catalog item: slug, SKU and UPC, name and copy, media, availability and preorder flags, a reservation block, and its money — currency, price, MSRP, list price and inventory cost in minor units, inventory count, taxability, and the subscription interval when it is subscribeable. Its variants and options are carried as a denormalized JSON snapshot inside the product, separate from the standalone variant rows, and nothing keeps the two in step for you. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] productid (required):
  Future<Response> postCommerceProductByProductidWithHttpInfo(String productid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/product/{productid}'
      .replaceAll('{productid}', productid);

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

  /// Method-override tunnel for a product — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A product is a sellable catalog item: slug, SKU and UPC, name and copy, media, availability and preorder flags, a reservation block, and its money — currency, price, MSRP, list price and inventory cost in minor units, inventory count, taxability, and the subscription interval when it is subscribeable. Its variants and options are carried as a denormalized JSON snapshot inside the product, separate from the standalone variant rows, and nothing keeps the two in step for you. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through.
  ///
  /// Parameters:
  ///
  /// * [String] productid (required):
  Future<void> postCommerceProductByProductid(String productid,) async {
    final response = await postCommerceProductByProductidWithHttpInfo(productid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a return
  ///
  /// A return is an RMA — the store, user and order it belongs to, the line items coming back, a fulfillment block carrying its own type, status and pricing, a summary, and eight lifecycle timestamps from submitted through delivered and processed. Its status is a FREE STRING with no enumeration behind it, and there is no refund amount on the return itself: the money sits inside the line items and the fulfillment pricing. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. Any valid access token reaches it. The token must also carry Admin or WriteReturn.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCommerceReturnWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/return/';

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

  /// Create a return
  ///
  /// A return is an RMA — the store, user and order it belongs to, the line items coming back, a fulfillment block carrying its own type, status and pricing, a summary, and eight lifecycle timestamps from submitted through delivered and processed. Its status is a FREE STRING with no enumeration behind it, and there is no refund amount on the return itself: the money sits inside the line items and the fulfillment pricing. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. Any valid access token reaches it. The token must also carry Admin or WriteReturn.
  Future<void> postCommerceReturn() async {
    final response = await postCommerceReturnWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Method-override tunnel for a return — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A return is an RMA — the store, user and order it belongs to, the line items coming back, a fulfillment block carrying its own type, status and pricing, a summary, and eight lifecycle timestamps from submitted through delivered and processed. Its status is a FREE STRING with no enumeration behind it, and there is no refund amount on the return itself: the money sits inside the line items and the fulfillment pricing. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. Any valid access token reaches it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] returnid (required):
  Future<Response> postCommerceReturnByReturnidWithHttpInfo(String returnid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/return/{returnid}'
      .replaceAll('{returnid}', returnid);

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

  /// Method-override tunnel for a return — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A return is an RMA — the store, user and order it belongs to, the line items coming back, a fulfillment block carrying its own type, status and pricing, a summary, and eight lifecycle timestamps from submitted through delivered and processed. Its status is a FREE STRING with no enumeration behind it, and there is no refund amount on the return itself: the money sits inside the line items and the fulfillment pricing. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. Any valid access token reaches it.
  ///
  /// Parameters:
  ///
  /// * [String] returnid (required):
  Future<void> postCommerceReturnByReturnid(String returnid,) async {
    final response = await postCommerceReturnByReturnidWithHttpInfo(returnid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a sales channel
  ///
  /// A sales channel is a named selling surface — a name, a description, a disabled flag and metadata. The flag is NEGATIVE, so a channel created from an empty body is enabled. Nothing on this row links products, prices or stock to the channel; here it is a label other surfaces scope themselves by. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for saleschannel, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCommerceSaleschannelWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/saleschannel/';

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

  /// Create a sales channel
  ///
  /// A sales channel is a named selling surface — a name, a description, a disabled flag and metadata. The flag is NEGATIVE, so a channel created from an empty body is enabled. Nothing on this row links products, prices or stock to the channel; here it is a label other surfaces scope themselves by. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for saleschannel, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  Future<void> postCommerceSaleschannel() async {
    final response = await postCommerceSaleschannelWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Method-override tunnel for a sales channel — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A sales channel is a named selling surface — a name, a description, a disabled flag and metadata. The flag is NEGATIVE, so a channel created from an empty body is enabled. Nothing on this row links products, prices or stock to the channel; here it is a label other surfaces scope themselves by. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] saleschannelid (required):
  Future<Response> postCommerceSaleschannelBySaleschannelidWithHttpInfo(String saleschannelid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/saleschannel/{saleschannelid}'
      .replaceAll('{saleschannelid}', saleschannelid);

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

  /// Method-override tunnel for a sales channel — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A sales channel is a named selling surface — a name, a description, a disabled flag and metadata. The flag is NEGATIVE, so a channel created from an empty body is enabled. Nothing on this row links products, prices or stock to the channel; here it is a label other surfaces scope themselves by. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through.
  ///
  /// Parameters:
  ///
  /// * [String] saleschannelid (required):
  Future<void> postCommerceSaleschannelBySaleschannelid(String saleschannelid,) async {
    final response = await postCommerceSaleschannelBySaleschannelidWithHttpInfo(saleschannelid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a stock location
  ///
  /// A stock location is a physical address inventory can be held at — a name, street lines, city, province, country, postal code and a phone. None of it is validated, there are no coordinates, and the row carries no enabled flag and no inventory link, so deleting it is the only way to retire one. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for stocklocation, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCommerceStocklocationWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/stocklocation/';

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

  /// Create a stock location
  ///
  /// A stock location is a physical address inventory can be held at — a name, street lines, city, province, country, postal code and a phone. None of it is validated, there are no coordinates, and the row carries no enabled flag and no inventory link, so deleting it is the only way to retire one. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for stocklocation, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  Future<void> postCommerceStocklocation() async {
    final response = await postCommerceStocklocationWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Method-override tunnel for a stock location — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A stock location is a physical address inventory can be held at — a name, street lines, city, province, country, postal code and a phone. None of it is validated, there are no coordinates, and the row carries no enabled flag and no inventory link, so deleting it is the only way to retire one. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] stocklocationid (required):
  Future<Response> postCommerceStocklocationByStocklocationidWithHttpInfo(String stocklocationid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/stocklocation/{stocklocationid}'
      .replaceAll('{stocklocationid}', stocklocationid);

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

  /// Method-override tunnel for a stock location — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A stock location is a physical address inventory can be held at — a name, street lines, city, province, country, postal code and a phone. None of it is validated, there are no coordinates, and the row carries no enabled flag and no inventory link, so deleting it is the only way to retire one. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through.
  ///
  /// Parameters:
  ///
  /// * [String] stocklocationid (required):
  Future<void> postCommerceStocklocationByStocklocationid(String stocklocationid,) async {
    final response = await postCommerceStocklocationByStocklocationidWithHttpInfo(stocklocationid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a submission
  ///
  /// A submission is one filled-in form from a site visitor — an email, an optional user id, the client details the server observed (user agent, referer, geography) and the form's own fields as free metadata. It carries no form id, so the link back to the form that produced it is not stored on the row. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. Any valid access token reaches it. The per-kind permission table has no entry for submission, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCommerceSubmissionWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/submission/';

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

  /// Create a submission
  ///
  /// A submission is one filled-in form from a site visitor — an email, an optional user id, the client details the server observed (user agent, referer, geography) and the form's own fields as free metadata. It carries no form id, so the link back to the form that produced it is not stored on the row. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. Any valid access token reaches it. The per-kind permission table has no entry for submission, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  Future<void> postCommerceSubmission() async {
    final response = await postCommerceSubmissionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Method-override tunnel for a submission — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A submission is one filled-in form from a site visitor — an email, an optional user id, the client details the server observed (user agent, referer, geography) and the form's own fields as free metadata. It carries no form id, so the link back to the form that produced it is not stored on the row. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. Any valid access token reaches it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] submissionid (required):
  Future<Response> postCommerceSubmissionBySubmissionidWithHttpInfo(String submissionid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/submission/{submissionid}'
      .replaceAll('{submissionid}', submissionid);

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

  /// Method-override tunnel for a submission — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A submission is one filled-in form from a site visitor — an email, an optional user id, the client details the server observed (user agent, referer, geography) and the form's own fields as free metadata. It carries no form id, so the link back to the form that produced it is not stored on the row. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. Any valid access token reaches it.
  ///
  /// Parameters:
  ///
  /// * [String] submissionid (required):
  Future<void> postCommerceSubmissionBySubmissionid(String submissionid,) async {
    final response = await postCommerceSubmissionBySubmissionidWithHttpInfo(submissionid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a subscriber
  ///
  /// A subscriber is a mailing-list member — name, email, the form id that captured them, unsubscribed state and date, client details, tags and metadata. Writing one FIRES A WEBHOOK: subscriber.created on create and subscriber.updated on replace or patch, emitted BEFORE the write is known to have succeeded and carrying the row as sent, so the payload holds the raw email rather than the normalized one that gets stored. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. Any valid access token reaches it. The token must also carry Admin or WriteSubscriber.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCommerceSubscriberWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/subscriber/';

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

  /// Create a subscriber
  ///
  /// A subscriber is a mailing-list member — name, email, the form id that captured them, unsubscribed state and date, client details, tags and metadata. Writing one FIRES A WEBHOOK: subscriber.created on create and subscriber.updated on replace or patch, emitted BEFORE the write is known to have succeeded and carrying the row as sent, so the payload holds the raw email rather than the normalized one that gets stored. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. Any valid access token reaches it. The token must also carry Admin or WriteSubscriber.
  Future<void> postCommerceSubscriber() async {
    final response = await postCommerceSubscriberWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Method-override tunnel for a subscriber — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A subscriber is a mailing-list member — name, email, the form id that captured them, unsubscribed state and date, client details, tags and metadata. Writing one FIRES A WEBHOOK: subscriber.created on create and subscriber.updated on replace or patch, emitted BEFORE the write is known to have succeeded and carrying the row as sent, so the payload holds the raw email rather than the normalized one that gets stored. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. Any valid access token reaches it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] subscriberid (required):
  Future<Response> postCommerceSubscriberBySubscriberidWithHttpInfo(String subscriberid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/subscriber/{subscriberid}'
      .replaceAll('{subscriberid}', subscriberid);

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

  /// Method-override tunnel for a subscriber — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A subscriber is a mailing-list member — name, email, the form id that captured them, unsubscribed state and date, client details, tags and metadata. Writing one FIRES A WEBHOOK: subscriber.created on create and subscriber.updated on replace or patch, emitted BEFORE the write is known to have succeeded and carrying the row as sent, so the payload holds the raw email rather than the normalized one that gets stored. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. Any valid access token reaches it.
  ///
  /// Parameters:
  ///
  /// * [String] subscriberid (required):
  Future<void> postCommerceSubscriberBySubscriberid(String subscriberid,) async {
    final response = await postCommerceSubscriberBySubscriberidWithHttpInfo(subscriberid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a token transaction
  ///
  /// A token transaction records a transfer between two identified parties — amount and fees, a timestamp, sending and receiving addresses, names, user ids, states and countries, a flag per side, a protocol name and a transaction hash. Nothing here touches a chain: the hash is an unvalidated string and the flags are plain writable booleans with no screening behind them. Amounts are floating-point rather than the exact minor units every real money field in commerce uses, and there is no currency field at all — this kind lives in commerce's demo tree, so it is a live writable resource in your tenant's store that nothing else in commerce reads, and it must never carry real money. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. Any valid access token reaches it. The per-kind permission table has no entry for tokentransaction, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCommerceTokentransactionWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/tokentransaction/';

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

  /// Create a token transaction
  ///
  /// A token transaction records a transfer between two identified parties — amount and fees, a timestamp, sending and receiving addresses, names, user ids, states and countries, a flag per side, a protocol name and a transaction hash. Nothing here touches a chain: the hash is an unvalidated string and the flags are plain writable booleans with no screening behind them. Amounts are floating-point rather than the exact minor units every real money field in commerce uses, and there is no currency field at all — this kind lives in commerce's demo tree, so it is a live writable resource in your tenant's store that nothing else in commerce reads, and it must never carry real money. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. Any valid access token reaches it. The per-kind permission table has no entry for tokentransaction, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  Future<void> postCommerceTokentransaction() async {
    final response = await postCommerceTokentransactionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Method-override tunnel for a token transaction — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A token transaction records a transfer between two identified parties — amount and fees, a timestamp, sending and receiving addresses, names, user ids, states and countries, a flag per side, a protocol name and a transaction hash. Nothing here touches a chain: the hash is an unvalidated string and the flags are plain writable booleans with no screening behind them. Amounts are floating-point rather than the exact minor units every real money field in commerce uses, and there is no currency field at all — this kind lives in commerce's demo tree, so it is a live writable resource in your tenant's store that nothing else in commerce reads, and it must never carry real money. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. Any valid access token reaches it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tokentransactionid (required):
  Future<Response> postCommerceTokentransactionByTokentransactionidWithHttpInfo(String tokentransactionid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/tokentransaction/{tokentransactionid}'
      .replaceAll('{tokentransactionid}', tokentransactionid);

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

  /// Method-override tunnel for a token transaction — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A token transaction records a transfer between two identified parties — amount and fees, a timestamp, sending and receiving addresses, names, user ids, states and countries, a flag per side, a protocol name and a transaction hash. Nothing here touches a chain: the hash is an unvalidated string and the flags are plain writable booleans with no screening behind them. Amounts are floating-point rather than the exact minor units every real money field in commerce uses, and there is no currency field at all — this kind lives in commerce's demo tree, so it is a live writable resource in your tenant's store that nothing else in commerce reads, and it must never carry real money. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. Any valid access token reaches it.
  ///
  /// Parameters:
  ///
  /// * [String] tokentransactionid (required):
  Future<void> postCommerceTokentransactionByTokentransactionid(String tokentransactionid,) async {
    final response = await postCommerceTokentransactionByTokentransactionidWithHttpInfo(tokentransactionid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a transfer
  ///
  /// A transfer records that a payable WAS PAID — the annotation a human writes after paying out of band. Commerce executes no payout: creating one moves no money, and it marks the referenced payable settled. It carries the payable and payee ids, the amount it settles and the amount actually sent (which may be a different asset), a type of eth, wire or other, the transaction hash or wire reference, when it was paid and who recorded it; amounts are exact decimal strings with an asset, not cents. It is admin-gated because writing one settles money we owe, and nothing enforces uniqueness on the reference — so posting the same transfer twice settles the payable twice. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for transfer, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCommerceTransferWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/transfer/';

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

  /// Create a transfer
  ///
  /// A transfer records that a payable WAS PAID — the annotation a human writes after paying out of band. Commerce executes no payout: creating one moves no money, and it marks the referenced payable settled. It carries the payable and payee ids, the amount it settles and the amount actually sent (which may be a different asset), a type of eth, wire or other, the transaction hash or wire reference, when it was paid and who recorded it; amounts are exact decimal strings with an asset, not cents. It is admin-gated because writing one settles money we owe, and nothing enforces uniqueness on the reference — so posting the same transfer twice settles the payable twice. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for transfer, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  Future<void> postCommerceTransfer() async {
    final response = await postCommerceTransferWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Method-override tunnel for a transfer — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A transfer records that a payable WAS PAID — the annotation a human writes after paying out of band. Commerce executes no payout: creating one moves no money, and it marks the referenced payable settled. It carries the payable and payee ids, the amount it settles and the amount actually sent (which may be a different asset), a type of eth, wire or other, the transaction hash or wire reference, when it was paid and who recorded it; amounts are exact decimal strings with an asset, not cents. It is admin-gated because writing one settles money we owe, and nothing enforces uniqueness on the reference — so posting the same transfer twice settles the payable twice. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. The token must carry the ADMIN permission; an ordinary access token is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] transferid (required):
  Future<Response> postCommerceTransferByTransferidWithHttpInfo(String transferid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/transfer/{transferid}'
      .replaceAll('{transferid}', transferid);

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

  /// Method-override tunnel for a transfer — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A transfer records that a payable WAS PAID — the annotation a human writes after paying out of band. Commerce executes no payout: creating one moves no money, and it marks the referenced payable settled. It carries the payable and payee ids, the amount it settles and the amount actually sent (which may be a different asset), a type of eth, wire or other, the transaction hash or wire reference, when it was paid and who recorded it; amounts are exact decimal strings with an asset, not cents. It is admin-gated because writing one settles money we owe, and nothing enforces uniqueness on the reference — so posting the same transfer twice settles the payable twice. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. The token must carry the ADMIN permission; an ordinary access token is refused.
  ///
  /// Parameters:
  ///
  /// * [String] transferid (required):
  Future<void> postCommerceTransferByTransferid(String transferid,) async {
    final response = await postCommerceTransferByTransferidWithHttpInfo(transferid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a variant
  ///
  /// A variant is one purchasable SKU of a product — its product id, SKU and UPC, name, media, availability, the option name and value pairs that distinguish it, a sold counter, and its own money and stock: currency, price, MSRP, inventory cost, inventory count and taxability. Inventory and sold are plain writable numbers with no decrement logic behind them here. The same variant also exists as a JSON copy inside its product, and writing one does not update the other. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin or WriteVariant.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCommerceVariantWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/variant/';

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

  /// Create a variant
  ///
  /// A variant is one purchasable SKU of a product — its product id, SKU and UPC, name, media, availability, the option name and value pairs that distinguish it, a sold counter, and its own money and stock: currency, price, MSRP, inventory cost, inventory count and taxability. Inventory and sold are plain writable numbers with no decrement logic behind them here. The same variant also exists as a JSON copy inside its product, and writing one does not update the other. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin or WriteVariant.
  Future<void> postCommerceVariant() async {
    final response = await postCommerceVariantWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Method-override tunnel for a variant — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A variant is one purchasable SKU of a product — its product id, SKU and UPC, name, media, availability, the option name and value pairs that distinguish it, a sold counter, and its own money and stock: currency, price, MSRP, inventory cost, inventory count and taxability. Inventory and sold are plain writable numbers with no decrement logic behind them here. The same variant also exists as a JSON copy inside its product, and writing one does not update the other. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] variantid (required):
  Future<Response> postCommerceVariantByVariantidWithHttpInfo(String variantid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/variant/{variantid}'
      .replaceAll('{variantid}', variantid);

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

  /// Method-override tunnel for a variant — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A variant is one purchasable SKU of a product — its product id, SKU and UPC, name, media, availability, the option name and value pairs that distinguish it, a sold counter, and its own money and stock: currency, price, MSRP, inventory cost, inventory count and taxability. Inventory and sold are plain writable numbers with no decrement logic behind them here. The same variant also exists as a JSON copy inside its product, and writing one does not update the other. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through.
  ///
  /// Parameters:
  ///
  /// * [String] variantid (required):
  Future<void> postCommerceVariantByVariantid(String variantid,) async {
    final response = await postCommerceVariantByVariantidWithHttpInfo(variantid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a wallet
  ///
  /// A wallet is a container of custodial blockchain accounts, and its only field is that account list — each account carrying a name, an address, a chain type, and the ENCRYPTED private key with its salt. Creating a wallet through this table generates NO KEYS: key generation lives on the account routes, so a wallet made here is an empty shell and an account posted into one is stored exactly as sent, with no key generation and no validation behind it. Know what a read renders: the plaintext private key is never marshalled and never stored, but the encrypted blob and its salt ARE returned, so whoever can read a wallet can attack it offline down to the strength of the owner's passphrase. That is why this kind is admin-gated. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for wallet, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCommerceWalletWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/wallet/';

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

  /// Create a wallet
  ///
  /// A wallet is a container of custodial blockchain accounts, and its only field is that account list — each account carrying a name, an address, a chain type, and the ENCRYPTED private key with its salt. Creating a wallet through this table generates NO KEYS: key generation lives on the account routes, so a wallet made here is an empty shell and an account posted into one is stored exactly as sent, with no key generation and no validation behind it. Know what a read renders: the plaintext private key is never marshalled and never stored, but the encrypted blob and its salt ARE returned, so whoever can read a wallet can attack it offline down to the strength of the owner's passphrase. That is why this kind is admin-gated. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for wallet, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  Future<void> postCommerceWallet() async {
    final response = await postCommerceWalletWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Method-override tunnel for a wallet — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A wallet is a container of custodial blockchain accounts, and its only field is that account list — each account carrying a name, an address, a chain type, and the ENCRYPTED private key with its salt. Creating a wallet through this table generates NO KEYS: key generation lives on the account routes, so a wallet made here is an empty shell and an account posted into one is stored exactly as sent, with no key generation and no validation behind it. Know what a read renders: the plaintext private key is never marshalled and never stored, but the encrypted blob and its salt ARE returned, so whoever can read a wallet can attack it offline down to the strength of the owner's passphrase. That is why this kind is admin-gated. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. The token must carry the ADMIN permission; an ordinary access token is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] walletid (required):
  Future<Response> postCommerceWalletByWalletidWithHttpInfo(String walletid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/wallet/{walletid}'
      .replaceAll('{walletid}', walletid);

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

  /// Method-override tunnel for a wallet — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A wallet is a container of custodial blockchain accounts, and its only field is that account list — each account carrying a name, an address, a chain type, and the ENCRYPTED private key with its salt. Creating a wallet through this table generates NO KEYS: key generation lives on the account routes, so a wallet made here is an empty shell and an account posted into one is stored exactly as sent, with no key generation and no validation behind it. Know what a read renders: the plaintext private key is never marshalled and never stored, but the encrypted blob and its salt ARE returned, so whoever can read a wallet can attack it offline down to the strength of the owner's passphrase. That is why this kind is admin-gated. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. The token must carry the ADMIN permission; an ordinary access token is refused.
  ///
  /// Parameters:
  ///
  /// * [String] walletid (required):
  Future<void> postCommerceWalletByWalletid(String walletid,) async {
    final response = await postCommerceWalletByWalletidWithHttpInfo(walletid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a watchlist
  ///
  /// A watchlist is a viewer's saved list of movies — a user id, an email, and the movies themselves. It stores WHOLE MOVIE SNAPSHOTS rather than movie ids, so a list goes stale the moment a film record changes and grows without bound as it fills. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. Any valid access token reaches it. The per-kind permission table has no entry for watchlist, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCommerceWatchlistWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/watchlist/';

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

  /// Create a watchlist
  ///
  /// A watchlist is a viewer's saved list of movies — a user id, an email, and the movies themselves. It stores WHOLE MOVIE SNAPSHOTS rather than movie ids, so a list goes stale the moment a film record changes and grows without bound as it fills. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. Any valid access token reaches it. The per-kind permission table has no entry for watchlist, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  Future<void> postCommerceWatchlist() async {
    final response = await postCommerceWatchlistWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Method-override tunnel for a watchlist — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A watchlist is a viewer's saved list of movies — a user id, an email, and the movies themselves. It stores WHOLE MOVIE SNAPSHOTS rather than movie ids, so a list goes stale the moment a film record changes and grows without bound as it fills. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. Any valid access token reaches it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] watchlistid (required):
  Future<Response> postCommerceWatchlistByWatchlistidWithHttpInfo(String watchlistid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/watchlist/{watchlistid}'
      .replaceAll('{watchlistid}', watchlistid);

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

  /// Method-override tunnel for a watchlist — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A watchlist is a viewer's saved list of movies — a user id, an email, and the movies themselves. It stores WHOLE MOVIE SNAPSHOTS rather than movie ids, so a list goes stale the moment a film record changes and grows without bound as it fills. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. Any valid access token reaches it.
  ///
  /// Parameters:
  ///
  /// * [String] watchlistid (required):
  Future<void> postCommerceWatchlistByWatchlistid(String watchlistid,) async {
    final response = await postCommerceWatchlistByWatchlistidWithHttpInfo(watchlistid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a webhook
  ///
  /// A webhook is a merchant-registered endpoint that receives commerce event callbacks — a name, a URL, live and all flags, a per-event map, an enabled flag, and the shared access token each delivery posts IN THE BODY. Two things to know before registering one: that token is a plainly readable field, so anyone who may read webhooks reads every endpoint's secret, and delivery consults only the all flag and the event map — it does NOT consult enabled or live, so setting enabled false does not stop delivery and deleting the row is the only thing that does. Delivery is a single POST with a twenty-second timeout and no retry. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for webhook, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCommerceWebhookWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/webhook/';

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

  /// Create a webhook
  ///
  /// A webhook is a merchant-registered endpoint that receives commerce event callbacks — a name, a URL, live and all flags, a per-event map, an enabled flag, and the shared access token each delivery posts IN THE BODY. Two things to know before registering one: that token is a plainly readable field, so anyone who may read webhooks reads every endpoint's secret, and delivery consults only the all flag and the event map — it does NOT consult enabled or live, so setting enabled false does not stop delivery and deleting the row is the only thing that does. Delivery is a single POST with a twenty-second timeout and no retry. Decodes the body into a new row in the caller org's own namespaced store — isolated to that tenant from its first write — and answers the stored row at 201 with a Location header naming its id. The id is assigned by the store, not taken from the body. A body that fails to decode is 400 and a store that refuses the write is 500. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for webhook, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  Future<void> postCommerceWebhook() async {
    final response = await postCommerceWebhookWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Method-override tunnel for a webhook — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A webhook is a merchant-registered endpoint that receives commerce event callbacks — a name, a URL, live and all flags, a per-event map, an enabled flag, and the shared access token each delivery posts IN THE BODY. Two things to know before registering one: that token is a plainly readable field, so anyone who may read webhooks reads every endpoint's secret, and delivery consults only the all flag and the event map — it does NOT consult enabled or live, so setting enabled false does not stop delivery and deleting the row is the only thing that does. Delivery is a single POST with a twenty-second timeout and no retry. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. The token must carry the ADMIN permission; an ordinary access token is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] webhookid (required):
  Future<Response> postCommerceWebhookByWebhookidWithHttpInfo(String webhookid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/webhook/{webhookid}'
      .replaceAll('{webhookid}', webhookid);

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

  /// Method-override tunnel for a webhook — for clients that cannot send PUT, PATCH or DELETE
  ///
  /// A webhook is a merchant-registered endpoint that receives commerce event callbacks — a name, a URL, live and all flags, a per-event map, an enabled flag, and the shared access token each delivery posts IN THE BODY. Two things to know before registering one: that token is a plainly readable field, so anyone who may read webhooks reads every endpoint's secret, and delivery consults only the all flag and the event map — it does NOT consult enabled or live, so setting enabled false does not stop delivery and deleting the row is the only thing that does. Delivery is a single POST with a twenty-second timeout and no retry. Re-dispatches the request into the handler the intended verb would have reached, taking that verb from a _method form value or query parameter and then from the X-HTTP-Method-Override header. PUT replaces the row, PATCH changes part of it, DELETE removes it, and anything else is 405. The trap is the DEFAULT: naming no override at all leaves the method POST, which this tunnel maps to the PARTIAL UPDATE — it is never a create, and creating is the collection root's job. Behaviour and authorization are the underlying operation's, since the real handler runs. The token must carry the ADMIN permission; an ordinary access token is refused.
  ///
  /// Parameters:
  ///
  /// * [String] webhookid (required):
  Future<void> postCommerceWebhookByWebhookid(String webhookid,) async {
    final response = await postCommerceWebhookByWebhookidWithHttpInfo(webhookid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a collection outright
  ///
  /// A collection is a merchandising group a storefront renders — a slug and name, copy and media, flat lists of the product and variant ids it holds, published, preorder and out-of-stock flags, and an availability window. Membership lives on the collection as those id lists rather than as a join, so putting a product into a collection is a write here and not on the product. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin, or ReadCollection and WriteCollection together.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionid (required):
  Future<Response> putCommerceCollectionByCollectionidWithHttpInfo(String collectionid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/collection/{collectionid}'
      .replaceAll('{collectionid}', collectionid);

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

  /// Replace a collection outright
  ///
  /// A collection is a merchandising group a storefront renders — a slug and name, copy and media, flat lists of the product and variant ids it holds, published, preorder and out-of-stock flags, and an availability window. Membership lives on the collection as those id lists rather than as a join, so putting a product into a collection is a write here and not on the product. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin, or ReadCollection and WriteCollection together.
  ///
  /// Parameters:
  ///
  /// * [String] collectionid (required):
  Future<void> putCommerceCollectionByCollectionid(String collectionid,) async {
    final response = await putCommerceCollectionByCollectionidWithHttpInfo(collectionid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a disclosure outright
  ///
  /// A disclosure is a published-document record — a publication body, a content hash, a type and a named receiver. The hash LOOKS like a field you set and is in fact derived, but only on update: a freshly created disclosure keeps whatever hash the caller sent until the first replace or patch recomputes it, so a new row's hash attests to nothing. This kind lives in commerce's demo tree — a live writable resource in your tenant's real store that nothing else in commerce reads. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. Any valid access token reaches it. The per-kind permission table has no entry for disclosure, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] disclosureid (required):
  Future<Response> putCommerceDisclosureByDisclosureidWithHttpInfo(String disclosureid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/disclosure/{disclosureid}'
      .replaceAll('{disclosureid}', disclosureid);

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

  /// Replace a disclosure outright
  ///
  /// A disclosure is a published-document record — a publication body, a content hash, a type and a named receiver. The hash LOOKS like a field you set and is in fact derived, but only on update: a freshly created disclosure keeps whatever hash the caller sent until the first replace or patch recomputes it, so a new row's hash attests to nothing. This kind lives in commerce's demo tree — a live writable resource in your tenant's real store that nothing else in commerce reads. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. Any valid access token reaches it. The per-kind permission table has no entry for disclosure, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] disclosureid (required):
  Future<void> putCommerceDisclosureByDisclosureid(String disclosureid,) async {
    final response = await putCommerceDisclosureByDisclosureidWithHttpInfo(disclosureid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a discount outright
  ///
  /// A discount is a price rule: a type (flat, percent, free-shipping, free-item or bulk), a window, a scope naming the store, collection, product or variant it applies to, a target, and rules pairing a trigger — a price or quantity threshold — with an action, an amount off or a percentage. It is ENABLED BY DEFAULT, so a bare create makes a live discount rather than a draft. The rule engine caches per replica for about thirty seconds, so a discount switched off here can keep applying briefly on other replicas. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for discount, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] discountid (required):
  Future<Response> putCommerceDiscountByDiscountidWithHttpInfo(String discountid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/discount/{discountid}'
      .replaceAll('{discountid}', discountid);

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

  /// Replace a discount outright
  ///
  /// A discount is a price rule: a type (flat, percent, free-shipping, free-item or bulk), a window, a scope naming the store, collection, product or variant it applies to, a target, and rules pairing a trigger — a price or quantity threshold — with an action, an amount off or a percentage. It is ENABLED BY DEFAULT, so a bare create makes a live discount rather than a draft. The rule engine caches per replica for about thirty seconds, so a discount switched off here can keep applying briefly on other replicas. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for discount, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] discountid (required):
  Future<void> putCommerceDiscountByDiscountid(String discountid,) async {
    final response = await putCommerceDiscountByDiscountidWithHttpInfo(discountid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a movie outright
  ///
  /// A movie is a film catalog record — a slug plus EIDR and IMDB ids, all three required, with title and synopsis copy, artwork, screenshots, trailers, cast and crew, and available and hidden flags. It carries NO price: the money for a film lives on the product that sells it. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. Any valid access token reaches it. The per-kind permission table has no entry for movie, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] movieid (required):
  Future<Response> putCommerceMovieByMovieidWithHttpInfo(String movieid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/movie/{movieid}'
      .replaceAll('{movieid}', movieid);

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

  /// Replace a movie outright
  ///
  /// A movie is a film catalog record — a slug plus EIDR and IMDB ids, all three required, with title and synopsis copy, artwork, screenshots, trailers, cast and crew, and available and hidden flags. It carries NO price: the money for a film lives on the product that sells it. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. Any valid access token reaches it. The per-kind permission table has no entry for movie, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] movieid (required):
  Future<void> putCommerceMovieByMovieid(String movieid,) async {
    final response = await putCommerceMovieByMovieidWithHttpInfo(movieid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a note outright
  ///
  /// A note is a timestamped free-text log line — a caller-supplied time, a source, a message and an enabled flag. That time is the caller's own field and is distinct from the row's creation stamp; the note search filters on it, so a note written without one is a zero-time note the ops log will never surface. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. Any valid access token reaches it. The per-kind permission table has no entry for note, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] noteid (required):
  Future<Response> putCommerceNoteByNoteidWithHttpInfo(String noteid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/note/{noteid}'
      .replaceAll('{noteid}', noteid);

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

  /// Replace a note outright
  ///
  /// A note is a timestamped free-text log line — a caller-supplied time, a source, a message and an enabled flag. That time is the caller's own field and is distinct from the row's creation stamp; the note search filters on it, so a note written without one is a zero-time note the ops log will never surface. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. Any valid access token reaches it. The per-kind permission table has no entry for note, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] noteid (required):
  Future<void> putCommerceNoteByNoteid(String noteid,) async {
    final response = await putCommerceNoteByNoteidWithHttpInfo(noteid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a product outright
  ///
  /// A product is a sellable catalog item: slug, SKU and UPC, name and copy, media, availability and preorder flags, a reservation block, and its money — currency, price, MSRP, list price and inventory cost in minor units, inventory count, taxability, and the subscription interval when it is subscribeable. Its variants and options are carried as a denormalized JSON snapshot inside the product, separate from the standalone variant rows, and nothing keeps the two in step for you. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin, or ReadProduct and WriteProduct together.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] productid (required):
  Future<Response> putCommerceProductByProductidWithHttpInfo(String productid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/product/{productid}'
      .replaceAll('{productid}', productid);

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

  /// Replace a product outright
  ///
  /// A product is a sellable catalog item: slug, SKU and UPC, name and copy, media, availability and preorder flags, a reservation block, and its money — currency, price, MSRP, list price and inventory cost in minor units, inventory count, taxability, and the subscription interval when it is subscribeable. Its variants and options are carried as a denormalized JSON snapshot inside the product, separate from the standalone variant rows, and nothing keeps the two in step for you. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin, or ReadProduct and WriteProduct together.
  ///
  /// Parameters:
  ///
  /// * [String] productid (required):
  Future<void> putCommerceProductByProductid(String productid,) async {
    final response = await putCommerceProductByProductidWithHttpInfo(productid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a return outright
  ///
  /// A return is an RMA — the store, user and order it belongs to, the line items coming back, a fulfillment block carrying its own type, status and pricing, a summary, and eight lifecycle timestamps from submitted through delivered and processed. Its status is a FREE STRING with no enumeration behind it, and there is no refund amount on the return itself: the money sits inside the line items and the fulfillment pricing. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. Any valid access token reaches it. The token must also carry Admin, or ReadReturn and WriteReturn together.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] returnid (required):
  Future<Response> putCommerceReturnByReturnidWithHttpInfo(String returnid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/return/{returnid}'
      .replaceAll('{returnid}', returnid);

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

  /// Replace a return outright
  ///
  /// A return is an RMA — the store, user and order it belongs to, the line items coming back, a fulfillment block carrying its own type, status and pricing, a summary, and eight lifecycle timestamps from submitted through delivered and processed. Its status is a FREE STRING with no enumeration behind it, and there is no refund amount on the return itself: the money sits inside the line items and the fulfillment pricing. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. Any valid access token reaches it. The token must also carry Admin, or ReadReturn and WriteReturn together.
  ///
  /// Parameters:
  ///
  /// * [String] returnid (required):
  Future<void> putCommerceReturnByReturnid(String returnid,) async {
    final response = await putCommerceReturnByReturnidWithHttpInfo(returnid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a sales channel outright
  ///
  /// A sales channel is a named selling surface — a name, a description, a disabled flag and metadata. The flag is NEGATIVE, so a channel created from an empty body is enabled. Nothing on this row links products, prices or stock to the channel; here it is a label other surfaces scope themselves by. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for saleschannel, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] saleschannelid (required):
  Future<Response> putCommerceSaleschannelBySaleschannelidWithHttpInfo(String saleschannelid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/saleschannel/{saleschannelid}'
      .replaceAll('{saleschannelid}', saleschannelid);

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

  /// Replace a sales channel outright
  ///
  /// A sales channel is a named selling surface — a name, a description, a disabled flag and metadata. The flag is NEGATIVE, so a channel created from an empty body is enabled. Nothing on this row links products, prices or stock to the channel; here it is a label other surfaces scope themselves by. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for saleschannel, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] saleschannelid (required):
  Future<void> putCommerceSaleschannelBySaleschannelid(String saleschannelid,) async {
    final response = await putCommerceSaleschannelBySaleschannelidWithHttpInfo(saleschannelid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a stock location outright
  ///
  /// A stock location is a physical address inventory can be held at — a name, street lines, city, province, country, postal code and a phone. None of it is validated, there are no coordinates, and the row carries no enabled flag and no inventory link, so deleting it is the only way to retire one. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for stocklocation, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] stocklocationid (required):
  Future<Response> putCommerceStocklocationByStocklocationidWithHttpInfo(String stocklocationid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/stocklocation/{stocklocationid}'
      .replaceAll('{stocklocationid}', stocklocationid);

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

  /// Replace a stock location outright
  ///
  /// A stock location is a physical address inventory can be held at — a name, street lines, city, province, country, postal code and a phone. None of it is validated, there are no coordinates, and the row carries no enabled flag and no inventory link, so deleting it is the only way to retire one. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The per-kind permission table has no entry for stocklocation, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] stocklocationid (required):
  Future<void> putCommerceStocklocationByStocklocationid(String stocklocationid,) async {
    final response = await putCommerceStocklocationByStocklocationidWithHttpInfo(stocklocationid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a submission outright
  ///
  /// A submission is one filled-in form from a site visitor — an email, an optional user id, the client details the server observed (user agent, referer, geography) and the form's own fields as free metadata. It carries no form id, so the link back to the form that produced it is not stored on the row. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. Any valid access token reaches it. The per-kind permission table has no entry for submission, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] submissionid (required):
  Future<Response> putCommerceSubmissionBySubmissionidWithHttpInfo(String submissionid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/submission/{submissionid}'
      .replaceAll('{submissionid}', submissionid);

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

  /// Replace a submission outright
  ///
  /// A submission is one filled-in form from a site visitor — an email, an optional user id, the client details the server observed (user agent, referer, geography) and the form's own fields as free metadata. It carries no form id, so the link back to the form that produced it is not stored on the row. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. Any valid access token reaches it. The per-kind permission table has no entry for submission, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] submissionid (required):
  Future<void> putCommerceSubmissionBySubmissionid(String submissionid,) async {
    final response = await putCommerceSubmissionBySubmissionidWithHttpInfo(submissionid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a subscriber outright
  ///
  /// A subscriber is a mailing-list member — name, email, the form id that captured them, unsubscribed state and date, client details, tags and metadata. Writing one FIRES A WEBHOOK: subscriber.created on create and subscriber.updated on replace or patch, emitted BEFORE the write is known to have succeeded and carrying the row as sent, so the payload holds the raw email rather than the normalized one that gets stored. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. Any valid access token reaches it. The token must also carry Admin, or ReadSubscriber and WriteSubscriber together.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] subscriberid (required):
  Future<Response> putCommerceSubscriberBySubscriberidWithHttpInfo(String subscriberid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/subscriber/{subscriberid}'
      .replaceAll('{subscriberid}', subscriberid);

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

  /// Replace a subscriber outright
  ///
  /// A subscriber is a mailing-list member — name, email, the form id that captured them, unsubscribed state and date, client details, tags and metadata. Writing one FIRES A WEBHOOK: subscriber.created on create and subscriber.updated on replace or patch, emitted BEFORE the write is known to have succeeded and carrying the row as sent, so the payload holds the raw email rather than the normalized one that gets stored. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. Any valid access token reaches it. The token must also carry Admin, or ReadSubscriber and WriteSubscriber together.
  ///
  /// Parameters:
  ///
  /// * [String] subscriberid (required):
  Future<void> putCommerceSubscriberBySubscriberid(String subscriberid,) async {
    final response = await putCommerceSubscriberBySubscriberidWithHttpInfo(subscriberid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a token transaction outright
  ///
  /// A token transaction records a transfer between two identified parties — amount and fees, a timestamp, sending and receiving addresses, names, user ids, states and countries, a flag per side, a protocol name and a transaction hash. Nothing here touches a chain: the hash is an unvalidated string and the flags are plain writable booleans with no screening behind them. Amounts are floating-point rather than the exact minor units every real money field in commerce uses, and there is no currency field at all — this kind lives in commerce's demo tree, so it is a live writable resource in your tenant's store that nothing else in commerce reads, and it must never carry real money. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. Any valid access token reaches it. The per-kind permission table has no entry for tokentransaction, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tokentransactionid (required):
  Future<Response> putCommerceTokentransactionByTokentransactionidWithHttpInfo(String tokentransactionid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/tokentransaction/{tokentransactionid}'
      .replaceAll('{tokentransactionid}', tokentransactionid);

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

  /// Replace a token transaction outright
  ///
  /// A token transaction records a transfer between two identified parties — amount and fees, a timestamp, sending and receiving addresses, names, user ids, states and countries, a flag per side, a protocol name and a transaction hash. Nothing here touches a chain: the hash is an unvalidated string and the flags are plain writable booleans with no screening behind them. Amounts are floating-point rather than the exact minor units every real money field in commerce uses, and there is no currency field at all — this kind lives in commerce's demo tree, so it is a live writable resource in your tenant's store that nothing else in commerce reads, and it must never carry real money. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. Any valid access token reaches it. The per-kind permission table has no entry for tokentransaction, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] tokentransactionid (required):
  Future<void> putCommerceTokentransactionByTokentransactionid(String tokentransactionid,) async {
    final response = await putCommerceTokentransactionByTokentransactionidWithHttpInfo(tokentransactionid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a transfer outright
  ///
  /// A transfer records that a payable WAS PAID — the annotation a human writes after paying out of band. Commerce executes no payout: creating one moves no money, and it marks the referenced payable settled. It carries the payable and payee ids, the amount it settles and the amount actually sent (which may be a different asset), a type of eth, wire or other, the transaction hash or wire reference, when it was paid and who recorded it; amounts are exact decimal strings with an asset, not cents. It is admin-gated because writing one settles money we owe, and nothing enforces uniqueness on the reference — so posting the same transfer twice settles the payable twice. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for transfer, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] transferid (required):
  Future<Response> putCommerceTransferByTransferidWithHttpInfo(String transferid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/transfer/{transferid}'
      .replaceAll('{transferid}', transferid);

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

  /// Replace a transfer outright
  ///
  /// A transfer records that a payable WAS PAID — the annotation a human writes after paying out of band. Commerce executes no payout: creating one moves no money, and it marks the referenced payable settled. It carries the payable and payee ids, the amount it settles and the amount actually sent (which may be a different asset), a type of eth, wire or other, the transaction hash or wire reference, when it was paid and who recorded it; amounts are exact decimal strings with an asset, not cents. It is admin-gated because writing one settles money we owe, and nothing enforces uniqueness on the reference — so posting the same transfer twice settles the payable twice. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for transfer, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] transferid (required):
  Future<void> putCommerceTransferByTransferid(String transferid,) async {
    final response = await putCommerceTransferByTransferidWithHttpInfo(transferid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a variant outright
  ///
  /// A variant is one purchasable SKU of a product — its product id, SKU and UPC, name, media, availability, the option name and value pairs that distinguish it, a sold counter, and its own money and stock: currency, price, MSRP, inventory cost, inventory count and taxability. Inventory and sold are plain writable numbers with no decrement logic behind them here. The same variant also exists as a JSON copy inside its product, and writing one does not update the other. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin, or ReadVariant and WriteVariant together.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] variantid (required):
  Future<Response> putCommerceVariantByVariantidWithHttpInfo(String variantid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/variant/{variantid}'
      .replaceAll('{variantid}', variantid);

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

  /// Replace a variant outright
  ///
  /// A variant is one purchasable SKU of a product — its product id, SKU and UPC, name, media, availability, the option name and value pairs that distinguish it, a sold counter, and its own money and stock: currency, price, MSRP, inventory cost, inventory count and taxability. Inventory and sold are plain writable numbers with no decrement logic behind them here. The same variant also exists as a JSON copy inside its product, and writing one does not update the other. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. Any valid access token reaches it. The org must also be entitled to the commerce admin: the paywall answers 402 subscription_required unless the org holds an active or trialing pro subscription, a live trial credit or a redeemed invite, and 503 when that entitlement cannot be read rather than admitting on an unknown. The internal service token and a platform superadmin pass straight through. The token must also carry Admin, or ReadVariant and WriteVariant together.
  ///
  /// Parameters:
  ///
  /// * [String] variantid (required):
  Future<void> putCommerceVariantByVariantid(String variantid,) async {
    final response = await putCommerceVariantByVariantidWithHttpInfo(variantid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a wallet outright
  ///
  /// A wallet is a container of custodial blockchain accounts, and its only field is that account list — each account carrying a name, an address, a chain type, and the ENCRYPTED private key with its salt. Creating a wallet through this table generates NO KEYS: key generation lives on the account routes, so a wallet made here is an empty shell and an account posted into one is stored exactly as sent, with no key generation and no validation behind it. Know what a read renders: the plaintext private key is never marshalled and never stored, but the encrypted blob and its salt ARE returned, so whoever can read a wallet can attack it offline down to the strength of the owner's passphrase. That is why this kind is admin-gated. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for wallet, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] walletid (required):
  Future<Response> putCommerceWalletByWalletidWithHttpInfo(String walletid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/wallet/{walletid}'
      .replaceAll('{walletid}', walletid);

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

  /// Replace a wallet outright
  ///
  /// A wallet is a container of custodial blockchain accounts, and its only field is that account list — each account carrying a name, an address, a chain type, and the ENCRYPTED private key with its salt. Creating a wallet through this table generates NO KEYS: key generation lives on the account routes, so a wallet made here is an empty shell and an account posted into one is stored exactly as sent, with no key generation and no validation behind it. Know what a read renders: the plaintext private key is never marshalled and never stored, but the encrypted blob and its salt ARE returned, so whoever can read a wallet can attack it offline down to the strength of the owner's passphrase. That is why this kind is admin-gated. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for wallet, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] walletid (required):
  Future<void> putCommerceWalletByWalletid(String walletid,) async {
    final response = await putCommerceWalletByWalletidWithHttpInfo(walletid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a watchlist outright
  ///
  /// A watchlist is a viewer's saved list of movies — a user id, an email, and the movies themselves. It stores WHOLE MOVIE SNAPSHOTS rather than movie ids, so a list goes stale the moment a film record changes and grows without bound as it fills. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. Any valid access token reaches it. The per-kind permission table has no entry for watchlist, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] watchlistid (required):
  Future<Response> putCommerceWatchlistByWatchlistidWithHttpInfo(String watchlistid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/watchlist/{watchlistid}'
      .replaceAll('{watchlistid}', watchlistid);

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

  /// Replace a watchlist outright
  ///
  /// A watchlist is a viewer's saved list of movies — a user id, an email, and the movies themselves. It stores WHOLE MOVIE SNAPSHOTS rather than movie ids, so a list goes stale the moment a film record changes and grows without bound as it fills. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. Any valid access token reaches it. The per-kind permission table has no entry for watchlist, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] watchlistid (required):
  Future<void> putCommerceWatchlistByWatchlistid(String watchlistid,) async {
    final response = await putCommerceWatchlistByWatchlistidWithHttpInfo(watchlistid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replace a webhook outright
  ///
  /// A webhook is a merchant-registered endpoint that receives commerce event callbacks — a name, a URL, live and all flags, a per-event map, an enabled flag, and the shared access token each delivery posts IN THE BODY. Two things to know before registering one: that token is a plainly readable field, so anyone who may read webhooks reads every endpoint's secret, and delivery consults only the all flag and the event map — it does NOT consult enabled or live, so setting enabled false does not stop delivery and deleting the row is the only thing that does. Delivery is a single POST with a twenty-second timeout and no retry. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for webhook, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] webhookid (required):
  Future<Response> putCommerceWebhookByWebhookidWithHttpInfo(String webhookid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/webhook/{webhookid}'
      .replaceAll('{webhookid}', webhookid);

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

  /// Replace a webhook outright
  ///
  /// A webhook is a merchant-registered endpoint that receives commerce event callbacks — a name, a URL, live and all flags, a per-event map, an enabled flag, and the shared access token each delivery posts IN THE BODY. Two things to know before registering one: that token is a plainly readable field, so anyone who may read webhooks reads every endpoint's secret, and delivery consults only the all flag and the event map — it does NOT consult enabled or live, so setting enabled false does not stop delivery and deleting the row is the only thing that does. Delivery is a single POST with a twenty-second timeout and no retry. This is a true REPLACEMENT, not a merge: the stored row's key is preserved, but the body is decoded onto a FRESH entity, so every field the body omits is written back as its ZERO value. Patch is the verb for changing part of a row. The id is resolved inside the caller org's own namespace and an absent one is 404 before anything is written; a body that fails to decode is 400. Answers the stored result. The token must carry the ADMIN permission; an ordinary access token is refused. The per-kind permission table has no entry for webhook, so the scaffold skips that second check with a warning and the gate above is the whole authorization story.
  ///
  /// Parameters:
  ///
  /// * [String] webhookid (required):
  Future<void> putCommerceWebhookByWebhookid(String webhookid,) async {
    final response = await putCommerceWebhookByWebhookidWithHttpInfo(webhookid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
