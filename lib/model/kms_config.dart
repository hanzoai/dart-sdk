//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class KmsConfig {
  /// Returns a new [KmsConfig] instance.
  KmsConfig({
    this.apiBase,
    this.brand,
    this.issuer,
    this.loginPath,
  });
  /// APIBase is this subsystem's own prefix, `/v1/kms`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? apiBase;

  /// Brand is the deployment's brand, so the console renders as the right product.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? brand;

  /// Issuer is the OIDC issuer the console authenticates against.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? issuer;

  /// LoginPath is the credential exchange's address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? loginPath;

  @override
  bool operator ==(Object other) => identical(this, other) || other is KmsConfig &&
    other.apiBase == apiBase &&
    other.brand == brand &&
    other.issuer == issuer &&
    other.loginPath == loginPath;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (apiBase == null ? 0 : apiBase!.hashCode) +
    (brand == null ? 0 : brand!.hashCode) +
    (issuer == null ? 0 : issuer!.hashCode) +
    (loginPath == null ? 0 : loginPath!.hashCode);

  @override
  String toString() => 'KmsConfig[apiBase=$apiBase, brand=$brand, issuer=$issuer, loginPath=$loginPath]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.apiBase != null) {
      json[r'apiBase'] = this.apiBase;
    } else {
      json[r'apiBase'] = null;
    }
    if (this.brand != null) {
      json[r'brand'] = this.brand;
    } else {
      json[r'brand'] = null;
    }
    if (this.issuer != null) {
      json[r'issuer'] = this.issuer;
    } else {
      json[r'issuer'] = null;
    }
    if (this.loginPath != null) {
      json[r'loginPath'] = this.loginPath;
    } else {
      json[r'loginPath'] = null;
    }
    return json;
  }

  /// Returns a new [KmsConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static KmsConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "KmsConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "KmsConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return KmsConfig(
        apiBase: mapValueOfType<String>(json, r'apiBase'),
        brand: mapValueOfType<String>(json, r'brand'),
        issuer: mapValueOfType<String>(json, r'issuer'),
        loginPath: mapValueOfType<String>(json, r'loginPath'),
      );
    }
    return null;
  }

  static List<KmsConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <KmsConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KmsConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, KmsConfig> mapFromJson(dynamic json) {
    final map = <String, KmsConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = KmsConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of KmsConfig-objects as value to a dart map
  static Map<String, List<KmsConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<KmsConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = KmsConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

