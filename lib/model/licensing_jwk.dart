//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LicensingJWK {
  /// Returns a new [LicensingJWK] instance.
  LicensingJWK({
    this.crv,
    this.kty,
    this.use,
    this.x,
  });
  /// Crv is always \"Ed25519\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? crv;

  /// Kty is always \"OKP\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kty;

  /// Use is always \"sig\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? use;

  /// X is the public key, base64url (the JWK convention).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? x;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicensingJWK &&
    other.crv == crv &&
    other.kty == kty &&
    other.use == use &&
    other.x == x;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (crv == null ? 0 : crv!.hashCode) +
    (kty == null ? 0 : kty!.hashCode) +
    (use == null ? 0 : use!.hashCode) +
    (x == null ? 0 : x!.hashCode);

  @override
  String toString() => 'LicensingJWK[crv=$crv, kty=$kty, use=$use, x=$x]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.crv != null) {
      json[r'crv'] = this.crv;
    } else {
      json[r'crv'] = null;
    }
    if (this.kty != null) {
      json[r'kty'] = this.kty;
    } else {
      json[r'kty'] = null;
    }
    if (this.use != null) {
      json[r'use'] = this.use;
    } else {
      json[r'use'] = null;
    }
    if (this.x != null) {
      json[r'x'] = this.x;
    } else {
      json[r'x'] = null;
    }
    return json;
  }

  /// Returns a new [LicensingJWK] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicensingJWK? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LicensingJWK[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LicensingJWK[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LicensingJWK(
        crv: mapValueOfType<String>(json, r'crv'),
        kty: mapValueOfType<String>(json, r'kty'),
        use: mapValueOfType<String>(json, r'use'),
        x: mapValueOfType<String>(json, r'x'),
      );
    }
    return null;
  }

  static List<LicensingJWK> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicensingJWK>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicensingJWK.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicensingJWK> mapFromJson(dynamic json) {
    final map = <String, LicensingJWK>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicensingJWK.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicensingJWK-objects as value to a dart map
  static Map<String, List<LicensingJWK>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicensingJWK>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicensingJWK.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

