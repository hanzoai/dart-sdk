//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ValidatorClaim {
  /// Returns a new [ValidatorClaim] instance.
  ValidatorClaim({
    this.nonce,
    this.signature,
    this.tokenId,
  });
  /// Nonce is the value GET /v1/validator/challenge issued for this slot.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nonce;

  /// Signature is the wallet's personal_sign over the challenge message, hex with a 0x prefix.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? signature;

  /// TokenID is the Validator-tier GenesisNFT token id being claimed. It IS the validator slot.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tokenId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValidatorClaim &&
    other.nonce == nonce &&
    other.signature == signature &&
    other.tokenId == tokenId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (nonce == null ? 0 : nonce!.hashCode) +
    (signature == null ? 0 : signature!.hashCode) +
    (tokenId == null ? 0 : tokenId!.hashCode);

  @override
  String toString() => 'ValidatorClaim[nonce=$nonce, signature=$signature, tokenId=$tokenId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.nonce != null) {
      json[r'nonce'] = this.nonce;
    } else {
      json[r'nonce'] = null;
    }
    if (this.signature != null) {
      json[r'signature'] = this.signature;
    } else {
      json[r'signature'] = null;
    }
    if (this.tokenId != null) {
      json[r'tokenId'] = this.tokenId;
    } else {
      json[r'tokenId'] = null;
    }
    return json;
  }

  /// Returns a new [ValidatorClaim] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ValidatorClaim? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ValidatorClaim[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ValidatorClaim[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ValidatorClaim(
        nonce: mapValueOfType<String>(json, r'nonce'),
        signature: mapValueOfType<String>(json, r'signature'),
        tokenId: mapValueOfType<int>(json, r'tokenId'),
      );
    }
    return null;
  }

  static List<ValidatorClaim> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidatorClaim>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidatorClaim.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ValidatorClaim> mapFromJson(dynamic json) {
    final map = <String, ValidatorClaim>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ValidatorClaim.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ValidatorClaim-objects as value to a dart map
  static Map<String, List<ValidatorClaim>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ValidatorClaim>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ValidatorClaim.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

