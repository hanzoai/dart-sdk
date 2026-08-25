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

  /// Remove a plan from the authority
  ///
  /// Deletes the addressed plan and answers 204. It removes the plan from the catalog buyers choose from; it does not touch subscriptions already sold against it, which keep their stored plan id. PLATFORM admin only — an org-level admin is refused 403 — and an unknown slug is 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  Future<Response> deleteCommercePlansEntriesBySlugWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/plans/entries/{slug}'
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
  Future<void> deleteCommercePlansEntriesBySlug(String slug,) async {
    final response = await deleteCommercePlansEntriesBySlugWithHttpInfo(slug,);
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

  /// Remove a rate outright
  ///
  /// Deletes the row. ARCHIVING is usually what is wanted instead — a deleted rate cannot price a historical charge, so a past invoice that has to re-resolve its rate finds nothing to read. Reach for status=archived unless the rate never priced anything. SuperAdmin only.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] product (required):
  ///
  /// * [String] meter (required):
  Future<Response> deleteCommerceRatesEntriesByProductByMeterWithHttpInfo(String product, String meter,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/rates/entries/{product}/{meter}'
      .replaceAll('{product}', product)
      .replaceAll('{meter}', meter);

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

  /// Remove a rate outright
  ///
  /// Deletes the row. ARCHIVING is usually what is wanted instead — a deleted rate cannot price a historical charge, so a past invoice that has to re-resolve its rate finds nothing to read. Reach for status=archived unless the rate never priced anything. SuperAdmin only.
  ///
  /// Parameters:
  ///
  /// * [String] product (required):
  ///
  /// * [String] meter (required):
  Future<void> deleteCommerceRatesEntriesByProductByMeter(String product, String meter,) async {
    final response = await deleteCommerceRatesEntriesByProductByMeterWithHttpInfo(product, meter,);
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

  /// Delete a storefront, keeping a recoverable copy
  ///
  /// Removes the addressed store and answers 204 with no body. Before the live row goes, the entity is written once more under a tombstone kind, so the deletion leaves a recoverable copy rather than destroying the record outright; the store's listing overrides live inside that row and go with it. The id is resolved inside the caller org's own namespace, so an unknown or foreign id is 404. Requires an admin or store-write token.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<Response> deleteCommerceStoreByStoreidWithHttpInfo(String storeid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}'
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
  Future<void> deleteCommerceStoreByStoreid(String storeid,) async {
    final response = await deleteCommerceStoreByStoreidWithHttpInfo(storeid,);
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
  Future<Response> deleteCommerceStoreByStoreidListingByKeyWithHttpInfo(String storeid, String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}/listing/{key}'
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
  Future<void> deleteCommerceStoreByStoreidListingByKey(String storeid, String key,) async {
    final response = await deleteCommerceStoreByStoreidListingByKeyWithHttpInfo(storeid, key,);
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

  /// Discard a cart the shopper abandoned
  ///
  /// Discards a cart the shopper abandoned, and answers it in its final state.  A discarded cart is CLOSED, not deleted: the row stays, so abandoned-basket reporting and any follow-up that keys on it still have something to read. It stops being a cart anything will check out, which is the point — it is how a storefront says \"this basket is over\" without destroying the evidence that it existed.  Discarding is idempotent: a cart already discarded answers its stored state rather than failing, so a retry is safe.  The cart is resolved inside the caller's own org namespace, so another tenant's id answers 404.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the cart's id, as the open call answered it.
  Future<Response> discardCartWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/cart/{id}/discard'
      .replaceAll('{id}', id);

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

  /// Discard a cart the shopper abandoned
  ///
  /// Discards a cart the shopper abandoned, and answers it in its final state.  A discarded cart is CLOSED, not deleted: the row stays, so abandoned-basket reporting and any follow-up that keys on it still have something to read. It stops being a cart anything will check out, which is the point — it is how a storefront says \"this basket is over\" without destroying the evidence that it existed.  Discarding is idempotent: a cart already discarded answers its stored state rather than failing, so a retry is safe.  The cart is resolved inside the caller's own org namespace, so another tenant's id answers 404.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the cart's id, as the open call answered it.
  Future<Cart?> discardCart(String id,) async {
    final response = await discardCartWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Cart',) as Cart;
    
    }
    return null;
  }

  /// Read one cart with its lines and totals
  ///
  /// Reads one cart: its lines, its status and what it comes to.  This is what a storefront calls to render the basket, and what a support agent calls to see what a shopper is looking at. The totals are the cart's STORED tally — shipping and tax stay zero until checkout resolves a shipping option and a tax region, so a cart total before checkout is the merchandise total and is meant to be.  The org scopes the read by construction: the store is namespaced to it, so a cart id belonging to another tenant is simply not found rather than found and then filtered, and answers 404 rather than 403 so the id space cannot be probed.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the cart's id, as the open call answered it.
  Future<Response> getCartWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/cart/{id}'
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

  /// Read one cart with its lines and totals
  ///
  /// Reads one cart: its lines, its status and what it comes to.  This is what a storefront calls to render the basket, and what a support agent calls to see what a shopper is looking at. The totals are the cart's STORED tally — shipping and tax stay zero until checkout resolves a shipping option and a tax region, so a cart total before checkout is the merchandise total and is meant to be.  The org scopes the read by construction: the store is namespaced to it, so a cart id belonging to another tenant is simply not found rather than found and then filtered, and answers 404 rather than 403 so the id space cannot be probed.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the cart's id, as the open call answered it.
  Future<Cart?> getCart(String id,) async {
    final response = await getCartWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Cart',) as Cart;
    
    }
    return null;
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

  /// The raw catalog entries, including the unpublished ones
  ///
  /// Returns every catalog row as stored — the admin view, which unlike the public projection includes entries that are not published. It is cross-tenant platform data, so the gate is a PLATFORM admin: an org-level admin is refused 403 no matter how privileged they are inside their own org, enforced by the handler itself and not only by the route's token middleware.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceCatalogEntriesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/catalog/entries';

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

  /// The raw catalog entries, including the unpublished ones
  ///
  /// Returns every catalog row as stored — the admin view, which unlike the public projection includes entries that are not published. It is cross-tenant platform data, so the gate is a PLATFORM admin: an org-level admin is refused 403 no matter how privileged they are inside their own org, enforced by the handler itself and not only by the route's token middleware.
  Future<void> getCommerceCatalogEntries() async {
    final response = await getCommerceCatalogEntriesWithHttpInfo();
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

  /// Read the crypto deposit watcher's runtime state, asset by asset
  ///
  /// Reports whether the deposit watcher is running, its poll interval, and one row per armed asset: chain, token, contract, pooled address and the last block that asset's cursor reached. That last block is the only way to see a watcher that is up but no longer advancing, which is what a stalled deposit rail looks like from outside. SuperAdmin only — the reserved admin org's owner claim; an authenticated caller without it is refused 403 and an anonymous one 401. It is READ-ONLY by design: arming an asset stays a CRYPTO_DEPOSIT_* deployment act and is deliberately not a button here, so there is nothing on this surface that can start crediting a customer's balance. The asset's RPC endpoint is reduced to scheme://host before it is returned, because a managed node URL carries its API key in the path or query and echoing it verbatim would publish that credential to every reader of this status.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceDepositsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/deposits';

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

  /// Read the crypto deposit watcher's runtime state, asset by asset
  ///
  /// Reports whether the deposit watcher is running, its poll interval, and one row per armed asset: chain, token, contract, pooled address and the last block that asset's cursor reached. That last block is the only way to see a watcher that is up but no longer advancing, which is what a stalled deposit rail looks like from outside. SuperAdmin only — the reserved admin org's owner claim; an authenticated caller without it is refused 403 and an anonymous one 401. It is READ-ONLY by design: arming an asset stays a CRYPTO_DEPOSIT_* deployment act and is deliberately not a button here, so there is nothing on this surface that can start crediting a customer's balance. The asset's RPC endpoint is reduced to scheme://host before it is returned, because a managed node URL carries its API key in the path or query and echoing it verbatim would publish that credential to every reader of this status.
  Future<void> getCommerceDeposits() async {
    final response = await getCommerceDepositsWithHttpInfo();
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

  /// Answers ok whenever the commerce subsystem is mounted.
  ///
  /// Answers ok whenever the commerce subsystem is mounted. It is registered before the module embed boots, so it keeps answering even when the embed failed and every business route serves the fail-closed 503 — which is the point: it reports that the process is reachable, never that the money plane is healthy. Unauthenticated: a probe that needs a credential is a probe that reports the credential.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/health';

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

  /// Answers ok whenever the commerce subsystem is mounted.
  ///
  /// Answers ok whenever the commerce subsystem is mounted. It is registered before the module embed boots, so it keeps answering even when the embed failed and every business route serves the fail-closed 503 — which is the point: it reports that the process is reachable, never that the money plane is healthy. Unauthenticated: a probe that needs a credential is a probe that reports the credential.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  Future<Liveness?> getCommerceHealth() async {
    final response = await getCommerceHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Liveness',) as Liveness;
    
    }
    return null;
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

  /// The raw plan authority rows
  ///
  /// Returns every plan row as stored — the administrative view behind the public plan catalog. The plan authority is cross-tenant pricing data, so the gate is a PLATFORM admin enforced by the handler itself: an org-level admin is refused 403 no matter what they may do inside their own org.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommercePlansEntriesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/plans/entries';

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
  Future<void> getCommercePlansEntries() async {
    final response = await getCommercePlansEntriesWithHttpInfo();
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

  /// List what one unit of each metered thing costs
  ///
  /// Returns the rate authority's rows — the prices every metered charge resolves against. Narrow with ?product= to show one surface at a time rather than every rate at once. SuperAdmin only: a rate is cross-tenant money, so the handler asks for the reserved admin org's owner claim itself rather than trusting the bundle's token gate.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceRatesEntriesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/rates/entries';

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

  /// List what one unit of each metered thing costs
  ///
  /// Returns the rate authority's rows — the prices every metered charge resolves against. Narrow with ?product= to show one surface at a time rather than every rate at once. SuperAdmin only: a rate is cross-tenant money, so the handler asks for the reserved admin org's owner claim itself rather than trusting the bundle's token gate.
  Future<void> getCommerceRatesEntries() async {
    final response = await getCommerceRatesEntriesWithHttpInfo();
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

  /// List your org's storefronts as a page
  ///
  /// Answers a pagination envelope — page, display, the rows, and a total count — read from the caller org's OWN namespaced database, so one tenant can never list another's stores. Sorting defaults to the store slug and is overridable with sort; display is the page size and page applies only alongside it, and either one that is not a positive integer is refused rather than silently ignored. The limit query overrides the reported COUNT only and never the rows returned. A request that resolves no org namespace is served an empty page, never an unscoped scan. Readable with an admin token, a store-scoped token, or the anonymous published storefront key.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceStoreWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/';

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
  Future<void> getCommerceStore() async {
    final response = await getCommerceStoreWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Whether a store is entitled to trade, and why
  ///
  /// Answers allowed, the store id, and a status of trial, active, payment_required, store_required or unavailable — the entitlement check a merchant surface gates on. The rule that surprises people is that entitlement is PER STORE, not per org: the store needs its own current subscription on the entry plan, either trialing with a trial end still ahead or active with a period end still ahead, so an org-wide balance or a sibling store's plan unlocks nothing here. The store comes from the X-Store-Id header and otherwise falls back to the org's first store; neither resolving is store_required with allowed false, and a backing-store failure is 503 with status unavailable — a retry signal, not a denial.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceStoreAccessWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/access';

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
  Future<void> getCommerceStoreAccess() async {
    final response = await getCommerceStoreAccessWithHttpInfo();
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
  Future<Response> getCommerceStoreByStoreidWithHttpInfo(String storeid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}'
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
  Future<void> getCommerceStoreByStoreid(String storeid,) async {
    final response = await getCommerceStoreByStoreidWithHttpInfo(storeid,);
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
  Future<Response> getCommerceStoreByStoreidBundleByKeyWithHttpInfo(String storeid, String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}/bundle/{key}'
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
  Future<void> getCommerceStoreByStoreidBundleByKey(String storeid, String key,) async {
    final response = await getCommerceStoreByStoreidBundleByKeyWithHttpInfo(storeid, key,);
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
  Future<Response> getCommerceStoreByStoreidListingWithHttpInfo(String storeid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}/listing'
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
  Future<void> getCommerceStoreByStoreidListing(String storeid,) async {
    final response = await getCommerceStoreByStoreidListingWithHttpInfo(storeid,);
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
  Future<Response> getCommerceStoreByStoreidListingByKeyWithHttpInfo(String storeid, String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}/listing/{key}'
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
  Future<void> getCommerceStoreByStoreidListingByKey(String storeid, String key,) async {
    final response = await getCommerceStoreByStoreidListingByKeyWithHttpInfo(storeid, key,);
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
  Future<Response> getCommerceStoreByStoreidProductByKeyWithHttpInfo(String storeid, String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}/product/{key}'
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
  Future<void> getCommerceStoreByStoreidProductByKey(String storeid, String key,) async {
    final response = await getCommerceStoreByStoreidProductByKeyWithHttpInfo(storeid, key,);
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
  Future<Response> getCommerceStoreByStoreidVariantByKeyWithHttpInfo(String storeid, String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}/variant/{key}'
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
  Future<void> getCommerceStoreByStoreidVariantByKey(String storeid, String key,) async {
    final response = await getCommerceStoreByStoreidVariantByKeyWithHttpInfo(storeid, key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Resolve your org's active storefront without naming an id
  ///
  /// Returns the caller org's store resolved FROM THE AUTHENTICATED ORG rather than from a path id — which is how an admin dashboard or a storefront edge learns the store id it should then read and write against. An X-Store-Id header selects a specific store, resolved only inside the caller's own namespace, so a foreign id cannot cross the tenant boundary and answers 404 instead. With no header the org's first store is returned, and an org that has none yet has its canonical default provisioned lazily and idempotently, carrying no payment credentials. Only when there is no org in context, or provisioning fails, does it fall back to a placeholder store literally named default, which a storefront edge should treat as unconfigured.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCommerceStoreCurrentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/current';

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
  Future<void> getCommerceStoreCurrent() async {
    final response = await getCommerceStoreCurrentWithHttpInfo();
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

  /// Read one settled payment by its id
  ///
  /// Reads one settled payment out of the caller's org ledger.  The org scopes the read by construction — the ledger is namespaced to it — so an id belonging to another tenant is simply not found rather than found and then filtered. A ledger row that is not a payment is likewise not found, so this cannot be used to walk the org's usage debits.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the ledger transaction id a payment returned.
  Future<Response> getPaymentWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/payments/{id}'
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

  /// Read one settled payment by its id
  ///
  /// Reads one settled payment out of the caller's org ledger.  The org scopes the read by construction — the ledger is namespaced to it — so an id belonging to another tenant is simply not found rather than found and then filtered. A ledger row that is not a payment is likewise not found, so this cannot be used to walk the org's usage debits.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the ledger transaction id a payment returned.
  Future<PaymentRecord?> getPayment(String id,) async {
    final response = await getPaymentWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaymentRecord',) as PaymentRecord;
    
    }
    return null;
  }

  /// Open a cart for a shopper to fill
  ///
  /// Opens an empty cart for a shopper to fill, and answers it with its new id.  This is the first step of a sale: hold the id, add items to it with setCartItem, then hand it to checkout. Every field of the request is optional — an empty body opens a perfectly good anonymous cart — and the fields exist only to pre-fill what is already known about the shopper.  The STORE defaults to the org's own default storefront, so a merchant selling through one storefront never has to name it. The CURRENCY defaults to usd; note that checkout overrides it with the store's own currency when the sale is authorized, so a currency set here is a hint rather than a commitment.  The cart is created in the CALLER'S OWN org namespace, taken from the validated principal and never from the body, so a cart can never be opened on another tenant's books.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CartOpen] cartOpen (required):
  Future<Response> openCartWithHttpInfo(CartOpen cartOpen,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/cart';

    // ignore: prefer_final_locals
    Object? postBody = cartOpen;

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

  /// Open a cart for a shopper to fill
  ///
  /// Opens an empty cart for a shopper to fill, and answers it with its new id.  This is the first step of a sale: hold the id, add items to it with setCartItem, then hand it to checkout. Every field of the request is optional — an empty body opens a perfectly good anonymous cart — and the fields exist only to pre-fill what is already known about the shopper.  The STORE defaults to the org's own default storefront, so a merchant selling through one storefront never has to name it. The CURRENCY defaults to usd; note that checkout overrides it with the store's own currency when the sale is authorized, so a currency set here is a hint rather than a commitment.  The cart is created in the CALLER'S OWN org namespace, taken from the validated principal and never from the body, so a cart can never be opened on another tenant's books.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Parameters:
  ///
  /// * [CartOpen] cartOpen (required):
  Future<Cart?> openCart(CartOpen cartOpen,) async {
    final response = await openCartWithHttpInfo(cartOpen,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Cart',) as Cart;
    
    }
    return null;
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

  /// Change part of a storefront
  ///
  /// Loads the stored store and decodes the body over it, so only the fields the body names change and everything else keeps its stored value — the difference from the full replace, which clears what it is not told. Answers the merged entity. The id is resolved inside the caller org's own namespace, so an unknown or foreign id is 404. Requires an admin token, or one holding both store read and store write.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<Response> patchCommerceStoreByStoreidWithHttpInfo(String storeid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}'
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
  Future<void> patchCommerceStoreByStoreid(String storeid,) async {
    final response = await patchCommerceStoreByStoreidWithHttpInfo(storeid,);
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
  Future<Response> patchCommerceStoreByStoreidListingByKeyWithHttpInfo(String storeid, String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}/listing/{key}'
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
  Future<void> patchCommerceStoreByStoreidListingByKey(String storeid, String key,) async {
    final response = await patchCommerceStoreByStoreidListingByKeyWithHttpInfo(storeid, key,);
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

  /// Add a catalog entry
  ///
  /// Creates a catalog row from the body and answers it at 201. The slug is required and is the globally-unique catalog key, so a second entry claiming a slug already in use is refused 409 rather than shadowing the first. PLATFORM admin only — this is cross-tenant pricing and packaging data, and an org-level admin is refused 403.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCommerceCatalogEntriesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/catalog/entries';

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

  /// Add a catalog entry
  ///
  /// Creates a catalog row from the body and answers it at 201. The slug is required and is the globally-unique catalog key, so a second entry claiming a slug already in use is refused 409 rather than shadowing the first. PLATFORM admin only — this is cross-tenant pricing and packaging data, and an org-level admin is refused 403.
  Future<void> postCommerceCatalogEntries() async {
    final response = await postCommerceCatalogEntriesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Land a syncer's view of the model catalog: upstream costs and machine facts
  ///
  /// Takes a batch of model rows and upserts each one's upstream COST and machine-observable facts, answering what was created and changed. It deliberately touches nothing a human owns — not the retail price, not the markup, not the entitlement tier — so a sync can never overwrite an administrator's pricing decision. The gate is a PLATFORM principal rather than a platform ADMIN, because the caller is normally a scheduled job holding the internal service token, which carries platform scope but no admin claim.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCommerceCatalogModelsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/catalog/models';

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

  /// Land a syncer's view of the model catalog: upstream costs and machine facts
  ///
  /// Takes a batch of model rows and upserts each one's upstream COST and machine-observable facts, answering what was created and changed. It deliberately touches nothing a human owns — not the retail price, not the markup, not the entitlement tier — so a sync can never overwrite an administrator's pricing decision. The gate is a PLATFORM principal rather than a platform ADMIN, because the caller is normally a scheduled job holding the internal service token, which carries platform scope but no admin claim.
  Future<void> postCommerceCatalogModels() async {
    final response = await postCommerceCatalogModelsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Refresh the model catalog by reading the upstream provider
  ///
  /// Pulls the upstream model list and lands it through the same upsert the push endpoint uses, so the rule that a sync owns cost and an administrator owns price holds no matter which endpoint a row came through. It takes no body — the upstream is READ rather than told. If that upstream cannot be read the call answers 502 and writes NOTHING: a sync that cannot see its source must never conclude the source is empty, because that conclusion would withdraw every model on sale. The gate is a PLATFORM principal so the scheduled job's service token qualifies.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCommerceCatalogModelsRefreshWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/catalog/models/refresh';

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

  /// Refresh the model catalog by reading the upstream provider
  ///
  /// Pulls the upstream model list and lands it through the same upsert the push endpoint uses, so the rule that a sync owns cost and an administrator owns price holds no matter which endpoint a row came through. It takes no body — the upstream is READ rather than told. If that upstream cannot be read the call answers 502 and writes NOTHING: a sync that cannot see its source must never conclude the source is empty, because that conclusion would withdraw every model on sale. The gate is a PLATFORM principal so the scheduled job's service token qualifies.
  Future<void> postCommerceCatalogModelsRefresh() async {
    final response = await postCommerceCatalogModelsRefreshWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Seed the embedded catalog, without disturbing edits already made
  ///
  /// Upserts the shipped catalog seed and answers how many entries it created. It is idempotent and non-destructive — an entry an administrator has since edited is left alone — so it is safe to run against a live catalog to fill in what is missing. PLATFORM admin only; an org-level admin is refused 403.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCommerceCatalogSeedWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/catalog/seed';

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

  /// Seed the embedded catalog, without disturbing edits already made
  ///
  /// Upserts the shipped catalog seed and answers how many entries it created. It is idempotent and non-destructive — an entry an administrator has since edited is left alone — so it is safe to run against a live catalog to fill in what is missing. PLATFORM admin only; an org-level admin is refused 403.
  Future<void> postCommerceCatalogSeed() async {
    final response = await postCommerceCatalogSeedWithHttpInfo();
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

  /// Add a subscription plan
  ///
  /// Creates a plan from the body and answers it at 201. The slug is required and globally unique — a duplicate is 409 — and the row is marked authoritative on creation, so the corrective seed will leave it alone. Price, annual price and the contact-sales flag are stored exactly as sent, never coerced, so the difference between a free plan and a quote-only plan survives. PLATFORM admin only.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCommercePlansEntriesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/plans/entries';

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
  Future<void> postCommercePlansEntries() async {
    final response = await postCommercePlansEntriesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Seed the embedded plan catalog, without overwriting administrative edits
  ///
  /// Upserts the shipped plan rows and answers how many were created and how many corrected. It is idempotent and non-destructive — a row an administrator authored or edited is left as it stands — so it is safe against a live authority and fills only what is missing or has drifted. PLATFORM admin only, and a deployment with no seed source wired answers 500 rather than quietly seeding nothing.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCommercePlansSeedWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/plans/seed';

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
  Future<void> postCommercePlansSeed() async {
    final response = await postCommercePlansSeedWithHttpInfo();
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

  /// Add a rate
  ///
  /// Creates one rate. Product AND meter are both required, because together they are the identity: a rate keyed on the metered thing alone would let one product's price overwrite another's under the same name. A slug that already exists is refused rather than silently replaced. SuperAdmin only.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCommerceRatesEntriesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/rates/entries';

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

  /// Add a rate
  ///
  /// Creates one rate. Product AND meter are both required, because together they are the identity: a rate keyed on the metered thing alone would let one product's price overwrite another's under the same name. A slug that already exists is refused rather than silently replaced. SuperAdmin only.
  Future<void> postCommerceRatesEntries() async {
    final response = await postCommerceRatesEntriesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Load the published price document, reconciling rather than replacing
  ///
  /// Takes an array of rates and seeds the authority from it — the same reconcile the boot catalog runs, driven from admin instead. It RECONCILES: a row that matches is left alone, a row that has drifted is corrected, and a row an operator edited is skipped — so importing the same document twice is a no-op and importing a corrected one moves exactly the rows that changed. Answers what it received, created, corrected and left unchanged, so an import that changes nothing reads as nothing to do rather than as a failure. An empty array is refused 400. SuperAdmin only.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCommerceRatesImportWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/rates/import';

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

  /// Load the published price document, reconciling rather than replacing
  ///
  /// Takes an array of rates and seeds the authority from it — the same reconcile the boot catalog runs, driven from admin instead. It RECONCILES: a row that matches is left alone, a row that has drifted is corrected, and a row an operator edited is skipped — so importing the same document twice is a no-op and importing a corrected one moves exactly the rows that changed. Answers what it received, created, corrected and left unchanged, so an import that changes nothing reads as nothing to do rather than as a failure. An empty array is refused 400. SuperAdmin only.
  Future<void> postCommerceRatesImport() async {
    final response = await postCommerceRatesImportWithHttpInfo();
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

  /// Create a storefront
  ///
  /// Creates a store from the body inside the caller org's own namespaced database, so the row is physically isolated to that tenant from its first write, and answers it at 201 with a Location header naming its id. Requires an admin or store-write token: the anonymous published storefront key may READ stores but never create one. A body that fails to decode is 400.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCommerceStoreWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/';

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
  Future<void> postCommerceStore() async {
    final response = await postCommerceStoreWithHttpInfo();
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
  Future<Response> postCommerceStoreByStoreidWithHttpInfo(String storeid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}'
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
  Future<void> postCommerceStoreByStoreid(String storeid,) async {
    final response = await postCommerceStoreByStoreidWithHttpInfo(storeid,);
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
  Future<Response> postCommerceStoreByStoreidAuthorizeWithHttpInfo(String storeid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}/authorize'
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
  Future<void> postCommerceStoreByStoreidAuthorize(String storeid,) async {
    final response = await postCommerceStoreByStoreidAuthorizeWithHttpInfo(storeid,);
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
  Future<Response> postCommerceStoreByStoreidAuthorizeByOrderidWithHttpInfo(String storeid, String orderid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}/authorize/{orderid}'
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
  Future<void> postCommerceStoreByStoreidAuthorizeByOrderid(String storeid, String orderid,) async {
    final response = await postCommerceStoreByStoreidAuthorizeByOrderidWithHttpInfo(storeid, orderid,);
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
  Future<Response> postCommerceStoreByStoreidCaptureByOrderidWithHttpInfo(String storeid, String orderid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}/capture/{orderid}'
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
  Future<void> postCommerceStoreByStoreidCaptureByOrderid(String storeid, String orderid,) async {
    final response = await postCommerceStoreByStoreidCaptureByOrderidWithHttpInfo(storeid, orderid,);
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
  Future<Response> postCommerceStoreByStoreidChargeWithHttpInfo(String storeid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}/charge'
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
  Future<void> postCommerceStoreByStoreidCharge(String storeid,) async {
    final response = await postCommerceStoreByStoreidChargeWithHttpInfo(storeid,);
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
  Future<Response> postCommerceStoreByStoreidCheckoutAuthorizeWithHttpInfo(String storeid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}/checkout/authorize'
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
  Future<void> postCommerceStoreByStoreidCheckoutAuthorize(String storeid,) async {
    final response = await postCommerceStoreByStoreidCheckoutAuthorizeWithHttpInfo(storeid,);
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
  Future<Response> postCommerceStoreByStoreidCheckoutAuthorizeByOrderidWithHttpInfo(String storeid, String orderid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}/checkout/authorize/{orderid}'
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
  Future<void> postCommerceStoreByStoreidCheckoutAuthorizeByOrderid(String storeid, String orderid,) async {
    final response = await postCommerceStoreByStoreidCheckoutAuthorizeByOrderidWithHttpInfo(storeid, orderid,);
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
  Future<Response> postCommerceStoreByStoreidCheckoutCaptureByOrderidWithHttpInfo(String storeid, String orderid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}/checkout/capture/{orderid}'
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
  Future<void> postCommerceStoreByStoreidCheckoutCaptureByOrderid(String storeid, String orderid,) async {
    final response = await postCommerceStoreByStoreidCheckoutCaptureByOrderidWithHttpInfo(storeid, orderid,);
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
  Future<Response> postCommerceStoreByStoreidCheckoutChargeWithHttpInfo(String storeid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}/checkout/charge'
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
  Future<void> postCommerceStoreByStoreidCheckoutCharge(String storeid,) async {
    final response = await postCommerceStoreByStoreidCheckoutChargeWithHttpInfo(storeid,);
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
  Future<Response> postCommerceStoreByStoreidCheckoutPaypalCancelByPaykeyWithHttpInfo(String storeid, String payKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}/checkout/paypal/cancel/{payKey}'
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
  Future<void> postCommerceStoreByStoreidCheckoutPaypalCancelByPaykey(String storeid, String payKey,) async {
    final response = await postCommerceStoreByStoreidCheckoutPaypalCancelByPaykeyWithHttpInfo(storeid, payKey,);
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
  Future<Response> postCommerceStoreByStoreidCheckoutPaypalConfirmByPaykeyWithHttpInfo(String storeid, String payKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}/checkout/paypal/confirm/{payKey}'
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
  Future<void> postCommerceStoreByStoreidCheckoutPaypalConfirmByPaykey(String storeid, String payKey,) async {
    final response = await postCommerceStoreByStoreidCheckoutPaypalConfirmByPaykeyWithHttpInfo(storeid, payKey,);
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
  Future<Response> postCommerceStoreByStoreidCheckoutPaypalPayWithHttpInfo(String storeid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}/checkout/paypal/pay'
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
  Future<void> postCommerceStoreByStoreidCheckoutPaypalPay(String storeid,) async {
    final response = await postCommerceStoreByStoreidCheckoutPaypalPayWithHttpInfo(storeid,);
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
  Future<Response> postCommerceStoreByStoreidListingByKeyWithHttpInfo(String storeid, String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}/listing/{key}'
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
  Future<void> postCommerceStoreByStoreidListingByKey(String storeid, String key,) async {
    final response = await postCommerceStoreByStoreidListingByKeyWithHttpInfo(storeid, key,);
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
  Future<Response> postCommerceStoreByStoreidPaypalCancelByPaykeyWithHttpInfo(String storeid, String payKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}/paypal/cancel/{payKey}'
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
  Future<void> postCommerceStoreByStoreidPaypalCancelByPaykey(String storeid, String payKey,) async {
    final response = await postCommerceStoreByStoreidPaypalCancelByPaykeyWithHttpInfo(storeid, payKey,);
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
  Future<Response> postCommerceStoreByStoreidPaypalConfirmByPaykeyWithHttpInfo(String storeid, String payKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}/paypal/confirm/{payKey}'
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
  Future<void> postCommerceStoreByStoreidPaypalConfirmByPaykey(String storeid, String payKey,) async {
    final response = await postCommerceStoreByStoreidPaypalConfirmByPaykeyWithHttpInfo(storeid, payKey,);
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
  Future<Response> postCommerceStoreByStoreidPaypalPayWithHttpInfo(String storeid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}/paypal/pay'
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
  Future<void> postCommerceStoreByStoreidPaypalPay(String storeid,) async {
    final response = await postCommerceStoreByStoreidPaypalPayWithHttpInfo(storeid,);
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
  Future<Response> postCommerceStoreByStoreidTrialWithHttpInfo(String storeid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}/trial'
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
  Future<void> postCommerceStoreByStoreidTrial(String storeid,) async {
    final response = await postCommerceStoreByStoreidTrialWithHttpInfo(storeid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Mint your org's least-privilege storefront read key
  ///
  /// Answers a freshly minted token carrying ONLY the published-read permission — enough for a logged-out shopper's storefront to read your published catalog and nothing more, with no write and no admin scope. It is org-bound, signed with the org's own secret and subject to the org id, so unlike a shared service token it can never act on another tenant. Minting ROTATES rather than accumulates: the previous storefront token is dropped first and is invalid immediately, so re-minting is how you revoke. Admin is enforced by the handler as well as the route, because the route's token gate does not apply on the identity path and a plain member must not be able to mint their org's key.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postCommerceStoreTokenWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/token';

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
  Future<void> postCommerceStoreToken() async {
    final response = await postCommerceStoreTokenWithHttpInfo();
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

  /// Payment-provider webhook intake for settlement and subscription lifecycle events
  ///
  /// Accepts a payment provider's event, verifies it, records it for audit, and applies subscription lifecycle changes to the matching local row. There is no bearer here and there cannot be: the provider's SIGNATURE over the body IS the authentication, so a request with no recognized signature header is 400 and one whose signature does not verify is 401. The provider path segment is only a hint for dashboard configuration — verification picks the processor regardless of what the URL says. Redelivery is safe: an event id already recorded is acknowledged as a duplicate without re-applying any side effect, which matters because providers retry for days until they see a 2xx.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  Future<Response> postCommerceWebhooksByProviderWithHttpInfo(String provider,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/webhooks/{provider}'
      .replaceAll('{provider}', provider);

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

  /// Payment-provider webhook intake for settlement and subscription lifecycle events
  ///
  /// Accepts a payment provider's event, verifies it, records it for audit, and applies subscription lifecycle changes to the matching local row. There is no bearer here and there cannot be: the provider's SIGNATURE over the body IS the authentication, so a request with no recognized signature header is 400 and one whose signature does not verify is 401. The provider path segment is only a hint for dashboard configuration — verification picks the processor regardless of what the URL says. Redelivery is safe: an event id already recorded is acknowledged as a duplicate without re-applying any side effect, which matters because providers retry for days until they see a 2xx.
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  Future<void> postCommerceWebhooksByProvider(String provider,) async {
    final response = await postCommerceWebhooksByProviderWithHttpInfo(provider,);
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

  /// Edit a plan, leaving the fields you omit alone
  ///
  /// Loads the addressed plan, applies the body over it and answers the stored result, so a partial edit never silently zeroes a price or the contact-sales flag. The slug is IMMUTABLE: a body naming a different slug is rejected outright before anything is written, because a rename would orphan every subscription that stored the old id — deprecate and create instead. An admin edit marks the row authoritative so the seed stops correcting it. PLATFORM admin only; an unknown slug is 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  Future<Response> putCommercePlansEntriesBySlugWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/plans/entries/{slug}'
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
  Future<void> putCommercePlansEntriesBySlug(String slug,) async {
    final response = await putCommercePlansEntriesBySlugWithHttpInfo(slug,);
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

  /// Edit a rate, and mark it as operator-set
  ///
  /// Edits one rate and MARKS it edited, which is the whole contract with the importer: an operator's price outranks the document it came from, so a later import leaves this row alone. Without that mark a price set here would apply, work, and silently revert on the next import. Only the editable fields move; identity and bookkeeping are not writable from the body. SuperAdmin only.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] product (required):
  ///
  /// * [String] meter (required):
  Future<Response> putCommerceRatesEntriesByProductByMeterWithHttpInfo(String product, String meter,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/rates/entries/{product}/{meter}'
      .replaceAll('{product}', product)
      .replaceAll('{meter}', meter);

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

  /// Edit a rate, and mark it as operator-set
  ///
  /// Edits one rate and MARKS it edited, which is the whole contract with the importer: an operator's price outranks the document it came from, so a later import leaves this row alone. Without that mark a price set here would apply, work, and silently revert on the next import. Only the editable fields move; identity and bookkeeping are not writable from the body. SuperAdmin only.
  ///
  /// Parameters:
  ///
  /// * [String] product (required):
  ///
  /// * [String] meter (required):
  Future<void> putCommerceRatesEntriesByProductByMeter(String product, String meter,) async {
    final response = await putCommerceRatesEntriesByProductByMeterWithHttpInfo(product, meter,);
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

  /// Replace a storefront outright
  ///
  /// This is a true REPLACEMENT, not a merge: the stored key is preserved but the body is decoded onto a fresh entity, so every field the body omits is written back as its zero value. Use the partial update when you mean to change part of a store. The id is resolved inside the caller org's own namespace, so an unknown or foreign id is a 404 before anything is written. Requires an admin token, or one holding both store read and store write.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeid (required):
  Future<Response> putCommerceStoreByStoreidWithHttpInfo(String storeid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}'
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
  Future<void> putCommerceStoreByStoreid(String storeid,) async {
    final response = await putCommerceStoreByStoreidWithHttpInfo(storeid,);
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
  Future<Response> putCommerceStoreByStoreidListingByKeyWithHttpInfo(String storeid, String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/store/{storeid}/listing/{key}'
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
  Future<void> putCommerceStoreByStoreidListingByKey(String storeid, String key,) async {
    final response = await putCommerceStoreByStoreidListingByKeyWithHttpInfo(storeid, key,);
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

  /// Set one item's quantity in a cart; zero removes it
  ///
  /// Sets how many of one item a cart holds, and answers the whole updated cart.  This is the ONE way a cart's contents change. The quantity is the RESULT, not a delta: sending 3 leaves 3 however many were there before, so a retry is safe and a double-submit cannot double an order. ZERO REMOVES the line — there is deliberately no separate delete, because removal is the same act at the boundary value and a second spelling would be a second set of edge cases.  Name the item with EITHER product OR variant, never both. Prefer variant for anything sold in sizes, colours or tiers: the price and the stock belong to the variant, so a product-level line on a varianted product prices the wrong thing. Either may be given as an id or as the human key — a product's URL slug, a variant's SKU — which is what lets a storefront add to cart straight from a product page URL without a lookup first.  The item's price and name are CACHED onto the line as it is added, so the cart keeps the price the shopper was shown even if the catalog moves underneath it.  An item that resolves to nothing in the catalog is refused 400 and the cart is left exactly as it was; nothing is partially applied.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the cart to amend, from the path.
  ///
  /// * [CartItemSet] cartItemSet (required):
  Future<Response> setCartItemWithHttpInfo(String id, CartItemSet cartItemSet,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/cart/{id}/item'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = cartItemSet;

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

  /// Set one item's quantity in a cart; zero removes it
  ///
  /// Sets how many of one item a cart holds, and answers the whole updated cart.  This is the ONE way a cart's contents change. The quantity is the RESULT, not a delta: sending 3 leaves 3 however many were there before, so a retry is safe and a double-submit cannot double an order. ZERO REMOVES the line — there is deliberately no separate delete, because removal is the same act at the boundary value and a second spelling would be a second set of edge cases.  Name the item with EITHER product OR variant, never both. Prefer variant for anything sold in sizes, colours or tiers: the price and the stock belong to the variant, so a product-level line on a varianted product prices the wrong thing. Either may be given as an id or as the human key — a product's URL slug, a variant's SKU — which is what lets a storefront add to cart straight from a product page URL without a lookup first.  The item's price and name are CACHED onto the line as it is added, so the cart keeps the price the shopper was shown even if the catalog moves underneath it.  An item that resolves to nothing in the catalog is refused 400 and the cart is left exactly as it was; nothing is partially applied.  A named handler, not a closure, so zipdoc can lift this prose into the registry.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the cart to amend, from the path.
  ///
  /// * [CartItemSet] cartItemSet (required):
  Future<Cart?> setCartItem(String id, CartItemSet cartItemSet,) async {
    final response = await setCartItemWithHttpInfo(id, cartItemSet,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Cart',) as Cart;
    
    }
    return null;
  }

  /// Take a card payment and credit the org's balance
  ///
  /// Takes a payment: charges a single-use card token and credits the caller's org balance, exactly once.  This is the operation behind \"collect money from a customer\". It runs the SAME core the console's card top-up runs (commerce billing.TakePayment), so the server-side amount bounds, the idempotency guard and the ledger credit are shared rather than reimplemented — a second charge path would eventually double-charge somebody.  The ORG is the caller's, taken from the validated principal and never from the input, so a payment can only ever credit the account of whoever made the call.  A payment is RISK-SCREENED before the card is charged, so this can be refused without any money moving: 403 means the screen did not authorise it, and 503 means the screen could not reach a decision — that one is worth retrying, and no charge was attempted either way.  Send an idempotencyKey. An agent retries by construction, and the key is what turns a retry into a replay of the first receipt instead of a second charge.  The answer states whether it settled in SANDBOX or live mode (`test`), and carries the processor's own reference (`processorRef`) so the charge can be reconciled against the processor rather than taken on trust.  A named builder, not a closure, so zipdoc can lift this prose into the registry.  It BUILDS the handler rather than being it, because the screen has to sit inside the value every projection of this op dispatches to — see exposePayments. `charge` is the money move, `take` is the screened entry point onto it, and the only registrable one is the second.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PaymentIn] paymentIn (required):
  Future<Response> takePaymentWithHttpInfo(PaymentIn paymentIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/commerce/payments';

    // ignore: prefer_final_locals
    Object? postBody = paymentIn;

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

  /// Take a card payment and credit the org's balance
  ///
  /// Takes a payment: charges a single-use card token and credits the caller's org balance, exactly once.  This is the operation behind \"collect money from a customer\". It runs the SAME core the console's card top-up runs (commerce billing.TakePayment), so the server-side amount bounds, the idempotency guard and the ledger credit are shared rather than reimplemented — a second charge path would eventually double-charge somebody.  The ORG is the caller's, taken from the validated principal and never from the input, so a payment can only ever credit the account of whoever made the call.  A payment is RISK-SCREENED before the card is charged, so this can be refused without any money moving: 403 means the screen did not authorise it, and 503 means the screen could not reach a decision — that one is worth retrying, and no charge was attempted either way.  Send an idempotencyKey. An agent retries by construction, and the key is what turns a retry into a replay of the first receipt instead of a second charge.  The answer states whether it settled in SANDBOX or live mode (`test`), and carries the processor's own reference (`processorRef`) so the charge can be reconciled against the processor rather than taken on trust.  A named builder, not a closure, so zipdoc can lift this prose into the registry.  It BUILDS the handler rather than being it, because the screen has to sit inside the value every projection of this op dispatches to — see exposePayments. `charge` is the money move, `take` is the screened entry point onto it, and the only registrable one is the second.
  ///
  /// Parameters:
  ///
  /// * [PaymentIn] paymentIn (required):
  Future<PaymentOut?> takePayment(PaymentIn paymentIn,) async {
    final response = await takePaymentWithHttpInfo(paymentIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaymentOut',) as PaymentOut;
    
    }
    return null;
  }
}
