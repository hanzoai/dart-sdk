//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class CartApi {
  CartApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

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
    final path = r'/v1/cart/{id}/discard'
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
    final path = r'/v1/cart/{id}'
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
    final path = r'/v1/cart';

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
    final path = r'/v1/cart/{id}/item'
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
}
