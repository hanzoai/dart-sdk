//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CryptoAsset {
  /// Returns a new [CryptoAsset] instance.
  CryptoAsset({
    this.amountCents,
    this.chain,
    this.token,
  });
  /// AmountCents is what the payer intends to send, for the record. Optional — the credit is what actually arrives, never what was announced.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amountCents;

  /// Chain is the network to receive on. Empty takes the rail's default.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? chain;

  /// Token is the asset on that chain. Empty takes the chain's native one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CryptoAsset &&
    other.amountCents == amountCents &&
    other.chain == chain &&
    other.token == token;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amountCents == null ? 0 : amountCents!.hashCode) +
    (chain == null ? 0 : chain!.hashCode) +
    (token == null ? 0 : token!.hashCode);

  @override
  String toString() => 'CryptoAsset[amountCents=$amountCents, chain=$chain, token=$token]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amountCents != null) {
      json[r'amountCents'] = this.amountCents;
    } else {
      json[r'amountCents'] = null;
    }
    if (this.chain != null) {
      json[r'chain'] = this.chain;
    } else {
      json[r'chain'] = null;
    }
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
    return json;
  }

  /// Returns a new [CryptoAsset] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CryptoAsset? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CryptoAsset[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CryptoAsset[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CryptoAsset(
        amountCents: mapValueOfType<int>(json, r'amountCents'),
        chain: mapValueOfType<String>(json, r'chain'),
        token: mapValueOfType<String>(json, r'token'),
      );
    }
    return null;
  }

  static List<CryptoAsset> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CryptoAsset>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CryptoAsset.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CryptoAsset> mapFromJson(dynamic json) {
    final map = <String, CryptoAsset>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CryptoAsset.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CryptoAsset-objects as value to a dart map
  static Map<String, List<CryptoAsset>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CryptoAsset>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CryptoAsset.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

