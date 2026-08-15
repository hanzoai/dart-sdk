//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CartItemSet {
  /// Returns a new [CartItemSet] instance.
  CartItemSet({
    this.id,
    this.product,
    this.quantity,
    this.variant,
  });

  /// ID is the cart to amend, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Product names the catalog product to set, by its id or its URL slug. Give this or Variant, never both; a request naming neither is refused.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? product;

  /// Quantity is how many of that item the cart should hold AFTER this call — it is the resulting count, not a delta, so sending 3 twice leaves 3 and not 6. ZERO REMOVES the line, which is the only way to take an item out.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? quantity;

  /// Variant names the specific sellable variant to set, by its id or its SKU. Prefer it over Product for anything sold in sizes, colours or tiers — the price and the stock are the variant's, not the product's.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? variant;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CartItemSet &&
    other.id == id &&
    other.product == product &&
    other.quantity == quantity &&
    other.variant == variant;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (product == null ? 0 : product!.hashCode) +
    (quantity == null ? 0 : quantity!.hashCode) +
    (variant == null ? 0 : variant!.hashCode);

  @override
  String toString() => 'CartItemSet[id=$id, product=$product, quantity=$quantity, variant=$variant]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.product != null) {
      json[r'product'] = this.product;
    } else {
      json[r'product'] = null;
    }
    if (this.quantity != null) {
      json[r'quantity'] = this.quantity;
    } else {
      json[r'quantity'] = null;
    }
    if (this.variant != null) {
      json[r'variant'] = this.variant;
    } else {
      json[r'variant'] = null;
    }
    return json;
  }

  /// Returns a new [CartItemSet] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CartItemSet? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CartItemSet[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CartItemSet[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CartItemSet(
        id: mapValueOfType<String>(json, r'id'),
        product: mapValueOfType<String>(json, r'product'),
        quantity: mapValueOfType<int>(json, r'quantity'),
        variant: mapValueOfType<String>(json, r'variant'),
      );
    }
    return null;
  }

  static List<CartItemSet> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CartItemSet>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CartItemSet.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CartItemSet> mapFromJson(dynamic json) {
    final map = <String, CartItemSet>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CartItemSet.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CartItemSet-objects as value to a dart map
  static Map<String, List<CartItemSet>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CartItemSet>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CartItemSet.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

