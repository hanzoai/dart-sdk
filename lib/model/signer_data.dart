//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SignerData {
  /// Returns a new [SignerData] instance.
  SignerData({
    this.boundAnchorSigner,
    this.chainId,
    this.org,
  });

  /// BoundAnchorSigner is the EVM address now signing anchors. Fund it for gas.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? boundAnchorSigner;

  /// ChainID is the EVM chain the signer is bound for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? chainId;

  /// Org is the org whose treasury wallet was resolved.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SignerData &&
    other.boundAnchorSigner == boundAnchorSigner &&
    other.chainId == chainId &&
    other.org == org;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (boundAnchorSigner == null ? 0 : boundAnchorSigner!.hashCode) +
    (chainId == null ? 0 : chainId!.hashCode) +
    (org == null ? 0 : org!.hashCode);

  @override
  String toString() => 'SignerData[boundAnchorSigner=$boundAnchorSigner, chainId=$chainId, org=$org]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.boundAnchorSigner != null) {
      json[r'boundAnchorSigner'] = this.boundAnchorSigner;
    } else {
      json[r'boundAnchorSigner'] = null;
    }
    if (this.chainId != null) {
      json[r'chainId'] = this.chainId;
    } else {
      json[r'chainId'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    return json;
  }

  /// Returns a new [SignerData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SignerData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SignerData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SignerData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SignerData(
        boundAnchorSigner: mapValueOfType<String>(json, r'boundAnchorSigner'),
        chainId: mapValueOfType<int>(json, r'chainId'),
        org: mapValueOfType<String>(json, r'org'),
      );
    }
    return null;
  }

  static List<SignerData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SignerData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SignerData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SignerData> mapFromJson(dynamic json) {
    final map = <String, SignerData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SignerData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SignerData-objects as value to a dart map
  static Map<String, List<SignerData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SignerData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SignerData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

