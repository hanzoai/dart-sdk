//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Signature {
  /// Returns a new [Signature] instance.
  Signature({
    this.address,
    this.digest,
    this.signature,
    this.walletId,
  });

  /// Address is the wallet's on-chain address, the one this signature recovers to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? address;

  /// Digest is the 32-byte digest that was signed, hex with an 0x prefix.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? digest;

  /// Signature is the 65-byte secp256k1 signature, hex with an 0x prefix.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? signature;

  /// WalletID is the wallet that signed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? walletId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Signature &&
    other.address == address &&
    other.digest == digest &&
    other.signature == signature &&
    other.walletId == walletId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (address == null ? 0 : address!.hashCode) +
    (digest == null ? 0 : digest!.hashCode) +
    (signature == null ? 0 : signature!.hashCode) +
    (walletId == null ? 0 : walletId!.hashCode);

  @override
  String toString() => 'Signature[address=$address, digest=$digest, signature=$signature, walletId=$walletId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.digest != null) {
      json[r'digest'] = this.digest;
    } else {
      json[r'digest'] = null;
    }
    if (this.signature != null) {
      json[r'signature'] = this.signature;
    } else {
      json[r'signature'] = null;
    }
    if (this.walletId != null) {
      json[r'walletId'] = this.walletId;
    } else {
      json[r'walletId'] = null;
    }
    return json;
  }

  /// Returns a new [Signature] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Signature? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Signature[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Signature[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Signature(
        address: mapValueOfType<String>(json, r'address'),
        digest: mapValueOfType<String>(json, r'digest'),
        signature: mapValueOfType<String>(json, r'signature'),
        walletId: mapValueOfType<String>(json, r'walletId'),
      );
    }
    return null;
  }

  static List<Signature> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Signature>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Signature.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Signature> mapFromJson(dynamic json) {
    final map = <String, Signature>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Signature.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Signature-objects as value to a dart map
  static Map<String, List<Signature>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Signature>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Signature.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

