//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CartOpen {
  /// Returns a new [CartOpen] instance.
  CartOpen({
    this.currency,
    this.email,
    this.store,
    this.user,
  });
  /// Currency is the ISO 4217 code the cart is priced in, lower-cased. Empty means usd.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  /// Email is the shopper's address, for a cart that belongs to someone who has not signed in. It is what a guest checkout and an abandoned-cart follow-up key on. Empty is fine.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// Store is the storefront this cart is being filled on. Empty uses the org's default store, which is what a single-storefront merchant always wants.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? store;

  /// User is the id of the signed-in shopper this cart belongs to, when there is one. Empty means a guest cart identified only by its own id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CartOpen &&
    other.currency == currency &&
    other.email == email &&
    other.store == store &&
    other.user == user;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (currency == null ? 0 : currency!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (store == null ? 0 : store!.hashCode) +
    (user == null ? 0 : user!.hashCode);

  @override
  String toString() => 'CartOpen[currency=$currency, email=$email, store=$store, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.store != null) {
      json[r'store'] = this.store;
    } else {
      json[r'store'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    return json;
  }

  /// Returns a new [CartOpen] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CartOpen? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CartOpen[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CartOpen[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CartOpen(
        currency: mapValueOfType<String>(json, r'currency'),
        email: mapValueOfType<String>(json, r'email'),
        store: mapValueOfType<String>(json, r'store'),
        user: mapValueOfType<String>(json, r'user'),
      );
    }
    return null;
  }

  static List<CartOpen> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CartOpen>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CartOpen.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CartOpen> mapFromJson(dynamic json) {
    final map = <String, CartOpen>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CartOpen.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CartOpen-objects as value to a dart map
  static Map<String, List<CartOpen>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CartOpen>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CartOpen.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

