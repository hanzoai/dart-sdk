//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Balances {
  /// Returns a new [Balances] instance.
  Balances({
    this.address,
    this.chain,
    this.native_,
  });

  /// Address is the account they belong to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? address;

  /// Chain is the chain the balances were read from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? chain;

  /// Native is the chain's own currency, as a 0x-quantity — the RPC's own encoding, not a float, because a wei value does not survive float64.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? native_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Balances &&
    other.address == address &&
    other.chain == chain &&
    other.native_ == native_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (address == null ? 0 : address!.hashCode) +
    (chain == null ? 0 : chain!.hashCode) +
    (native_ == null ? 0 : native_!.hashCode);

  @override
  String toString() => 'Balances[address=$address, chain=$chain, native_=$native_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.chain != null) {
      json[r'chain'] = this.chain;
    } else {
      json[r'chain'] = null;
    }
    if (this.native_ != null) {
      json[r'native'] = this.native_;
    } else {
      json[r'native'] = null;
    }
    return json;
  }

  /// Returns a new [Balances] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Balances? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Balances[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Balances[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Balances(
        address: mapValueOfType<String>(json, r'address'),
        chain: mapValueOfType<String>(json, r'chain'),
        native_: mapValueOfType<String>(json, r'native'),
      );
    }
    return null;
  }

  static List<Balances> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Balances>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Balances.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Balances> mapFromJson(dynamic json) {
    final map = <String, Balances>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Balances.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Balances-objects as value to a dart map
  static Map<String, List<Balances>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Balances>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Balances.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

