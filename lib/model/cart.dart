//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Cart {
  /// Returns a new [Cart] instance.
  Cart({
    this.createdAt,
    this.currency,
    this.discountCents,
    this.email,
    this.id,
    this.items = const [],
    this.lineTotalCents,
    this.order,
    this.shippingCents,
    this.status,
    this.store,
    this.subtotalCents,
    this.taxCents,
    this.totalCents,
    this.updatedAt,
    this.user,
  });

  /// CreatedAt is when the cart was opened, RFC3339.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// Currency is the ISO 4217 code every amount below is denominated in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  /// DiscountCents is what coupons and promotions took off, in whole cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? discountCents;

  /// Email is the shopper's address, when the cart carries one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// ID is the cart's id — what every other cart op addresses it by, and what a storefront persists against the browser session.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Items are the cart's lines, in the order they were added.
  List<CartItem> items;

  /// LineTotalCents is the sum of the lines before any discount, in whole cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lineTotalCents;

  /// Order is the order this cart became, once checkout completed it. Empty until then, and its presence is what makes a cart final.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? order;

  /// ShippingCents is the shipping charge, in whole cents. It stays zero until a shipping option is priced at checkout.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? shippingCents;

  /// Status is \"active\" for a cart still being filled, \"ordered\" once checkout turned it into an order, and \"discarded\" when the shopper abandoned it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Store is the storefront the cart is being filled on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? store;

  /// SubtotalCents is LineTotalCents less DiscountCents, in whole cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? subtotalCents;

  /// TaxCents is the sales tax, in whole cents. It stays zero until checkout resolves the shopper's tax region.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? taxCents;

  /// TotalCents is what the shopper pays: subtotal plus shipping plus tax, in whole cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalCents;

  /// UpdatedAt is when the cart was last amended, RFC3339.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  /// User is the signed-in shopper this cart belongs to, empty for a guest cart.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Cart &&
    other.createdAt == createdAt &&
    other.currency == currency &&
    other.discountCents == discountCents &&
    other.email == email &&
    other.id == id &&
    _deepEquality.equals(other.items, items) &&
    other.lineTotalCents == lineTotalCents &&
    other.order == order &&
    other.shippingCents == shippingCents &&
    other.status == status &&
    other.store == store &&
    other.subtotalCents == subtotalCents &&
    other.taxCents == taxCents &&
    other.totalCents == totalCents &&
    other.updatedAt == updatedAt &&
    other.user == user;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (discountCents == null ? 0 : discountCents!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (items.hashCode) +
    (lineTotalCents == null ? 0 : lineTotalCents!.hashCode) +
    (order == null ? 0 : order!.hashCode) +
    (shippingCents == null ? 0 : shippingCents!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (store == null ? 0 : store!.hashCode) +
    (subtotalCents == null ? 0 : subtotalCents!.hashCode) +
    (taxCents == null ? 0 : taxCents!.hashCode) +
    (totalCents == null ? 0 : totalCents!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (user == null ? 0 : user!.hashCode);

  @override
  String toString() => 'Cart[createdAt=$createdAt, currency=$currency, discountCents=$discountCents, email=$email, id=$id, items=$items, lineTotalCents=$lineTotalCents, order=$order, shippingCents=$shippingCents, status=$status, store=$store, subtotalCents=$subtotalCents, taxCents=$taxCents, totalCents=$totalCents, updatedAt=$updatedAt, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.discountCents != null) {
      json[r'discountCents'] = this.discountCents;
    } else {
      json[r'discountCents'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'items'] = this.items;
    if (this.lineTotalCents != null) {
      json[r'lineTotalCents'] = this.lineTotalCents;
    } else {
      json[r'lineTotalCents'] = null;
    }
    if (this.order != null) {
      json[r'order'] = this.order;
    } else {
      json[r'order'] = null;
    }
    if (this.shippingCents != null) {
      json[r'shippingCents'] = this.shippingCents;
    } else {
      json[r'shippingCents'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.store != null) {
      json[r'store'] = this.store;
    } else {
      json[r'store'] = null;
    }
    if (this.subtotalCents != null) {
      json[r'subtotalCents'] = this.subtotalCents;
    } else {
      json[r'subtotalCents'] = null;
    }
    if (this.taxCents != null) {
      json[r'taxCents'] = this.taxCents;
    } else {
      json[r'taxCents'] = null;
    }
    if (this.totalCents != null) {
      json[r'totalCents'] = this.totalCents;
    } else {
      json[r'totalCents'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    return json;
  }

  /// Returns a new [Cart] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Cart? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Cart[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Cart[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Cart(
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        currency: mapValueOfType<String>(json, r'currency'),
        discountCents: mapValueOfType<int>(json, r'discountCents'),
        email: mapValueOfType<String>(json, r'email'),
        id: mapValueOfType<String>(json, r'id'),
        items: CartItem.listFromJson(json[r'items']),
        lineTotalCents: mapValueOfType<int>(json, r'lineTotalCents'),
        order: mapValueOfType<String>(json, r'order'),
        shippingCents: mapValueOfType<int>(json, r'shippingCents'),
        status: mapValueOfType<String>(json, r'status'),
        store: mapValueOfType<String>(json, r'store'),
        subtotalCents: mapValueOfType<int>(json, r'subtotalCents'),
        taxCents: mapValueOfType<int>(json, r'taxCents'),
        totalCents: mapValueOfType<int>(json, r'totalCents'),
        updatedAt: mapValueOfType<String>(json, r'updatedAt'),
        user: mapValueOfType<String>(json, r'user'),
      );
    }
    return null;
  }

  static List<Cart> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Cart>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Cart.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Cart> mapFromJson(dynamic json) {
    final map = <String, Cart>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Cart.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Cart-objects as value to a dart map
  static Map<String, List<Cart>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Cart>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Cart.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

