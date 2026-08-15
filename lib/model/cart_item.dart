//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CartItem {
  /// Returns a new [CartItem] instance.
  CartItem({
    this.free,
    this.id,
    this.kind,
    this.name,
    this.priceCents,
    this.quantity,
    this.sku,
  });

  /// Free reports a line that costs nothing because a coupon or a promotion made it so, rather than because its price is zero.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? free;

  /// ID is the line's identity — the variant id when the line is a variant, otherwise the product id. It is what a subsequent set call addresses.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Kind is \"variant\" when this line is a specific sellable variant and \"product\" when it is the product itself.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Name is the item's display name, cached onto the line when it was added so a cart renders without a second read.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// PriceCents is the unit price in whole cents, cached at the moment the line was added. The line's contribution to the cart is this times Quantity.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? priceCents;

  /// Quantity is how many units of this item the cart holds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? quantity;

  /// SKU is the line's stock-keeping unit — the variant's when it has one, otherwise the product's. Empty when neither carries one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sku;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CartItem &&
    other.free == free &&
    other.id == id &&
    other.kind == kind &&
    other.name == name &&
    other.priceCents == priceCents &&
    other.quantity == quantity &&
    other.sku == sku;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (free == null ? 0 : free!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (priceCents == null ? 0 : priceCents!.hashCode) +
    (quantity == null ? 0 : quantity!.hashCode) +
    (sku == null ? 0 : sku!.hashCode);

  @override
  String toString() => 'CartItem[free=$free, id=$id, kind=$kind, name=$name, priceCents=$priceCents, quantity=$quantity, sku=$sku]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.free != null) {
      json[r'free'] = this.free;
    } else {
      json[r'free'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.priceCents != null) {
      json[r'priceCents'] = this.priceCents;
    } else {
      json[r'priceCents'] = null;
    }
    if (this.quantity != null) {
      json[r'quantity'] = this.quantity;
    } else {
      json[r'quantity'] = null;
    }
    if (this.sku != null) {
      json[r'sku'] = this.sku;
    } else {
      json[r'sku'] = null;
    }
    return json;
  }

  /// Returns a new [CartItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CartItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CartItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CartItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CartItem(
        free: mapValueOfType<bool>(json, r'free'),
        id: mapValueOfType<String>(json, r'id'),
        kind: mapValueOfType<String>(json, r'kind'),
        name: mapValueOfType<String>(json, r'name'),
        priceCents: mapValueOfType<int>(json, r'priceCents'),
        quantity: mapValueOfType<int>(json, r'quantity'),
        sku: mapValueOfType<String>(json, r'sku'),
      );
    }
    return null;
  }

  static List<CartItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CartItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CartItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CartItem> mapFromJson(dynamic json) {
    final map = <String, CartItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CartItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CartItem-objects as value to a dart map
  static Map<String, List<CartItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CartItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CartItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

