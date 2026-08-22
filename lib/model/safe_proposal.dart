//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SafeProposal {
  /// Returns a new [SafeProposal] instance.
  SafeProposal({
    this.r,
    this.s,
    this.safeAddress,
    this.safeTxHash,
    this.walletId,
  });
  /// R is the r component of the MPC threshold signature over the Safe-tx hash.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? r;

  /// S is the s component of that signature.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? s;

  /// SafeAddress is the Safe contract this transaction is for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? safeAddress;

  /// SafeTxHash is the EIP-712 Safe transaction hash, bound to the Safe contract and the chain id — the value the owner approval signs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? safeTxHash;

  /// WalletID is the wallet whose Safe this is.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? walletId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SafeProposal &&
    other.r == r &&
    other.s == s &&
    other.safeAddress == safeAddress &&
    other.safeTxHash == safeTxHash &&
    other.walletId == walletId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (r == null ? 0 : r!.hashCode) +
    (s == null ? 0 : s!.hashCode) +
    (safeAddress == null ? 0 : safeAddress!.hashCode) +
    (safeTxHash == null ? 0 : safeTxHash!.hashCode) +
    (walletId == null ? 0 : walletId!.hashCode);

  @override
  String toString() => 'SafeProposal[r=$r, s=$s, safeAddress=$safeAddress, safeTxHash=$safeTxHash, walletId=$walletId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.r != null) {
      json[r'r'] = this.r;
    } else {
      json[r'r'] = null;
    }
    if (this.s != null) {
      json[r's'] = this.s;
    } else {
      json[r's'] = null;
    }
    if (this.safeAddress != null) {
      json[r'safeAddress'] = this.safeAddress;
    } else {
      json[r'safeAddress'] = null;
    }
    if (this.safeTxHash != null) {
      json[r'safeTxHash'] = this.safeTxHash;
    } else {
      json[r'safeTxHash'] = null;
    }
    if (this.walletId != null) {
      json[r'walletId'] = this.walletId;
    } else {
      json[r'walletId'] = null;
    }
    return json;
  }

  /// Returns a new [SafeProposal] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SafeProposal? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SafeProposal[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SafeProposal[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SafeProposal(
        r: mapValueOfType<String>(json, r'r'),
        s: mapValueOfType<String>(json, r's'),
        safeAddress: mapValueOfType<String>(json, r'safeAddress'),
        safeTxHash: mapValueOfType<String>(json, r'safeTxHash'),
        walletId: mapValueOfType<String>(json, r'walletId'),
      );
    }
    return null;
  }

  static List<SafeProposal> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SafeProposal>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SafeProposal.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SafeProposal> mapFromJson(dynamic json) {
    final map = <String, SafeProposal>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SafeProposal.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SafeProposal-objects as value to a dart map
  static Map<String, List<SafeProposal>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SafeProposal>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SafeProposal.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

