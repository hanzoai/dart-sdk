//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PagesDeploymentConfig {
  /// Returns a new [PagesDeploymentConfig] instance.
  PagesDeploymentConfig({
    this.compatibilityDate,
    this.compatibilityFlags = const [],
    this.d1Databases = const {},
    this.envVars = const {},
    this.kvNamespaces = const {},
    this.r2Buckets = const {},
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? compatibilityDate;

  List<String> compatibilityFlags;

  Map<String, PagesD1Binding> d1Databases;

  Map<String, PagesEnvVar> envVars;

  Map<String, PagesKVBinding> kvNamespaces;

  Map<String, PagesR2Binding> r2Buckets;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PagesDeploymentConfig &&
    other.compatibilityDate == compatibilityDate &&
    _deepEquality.equals(other.compatibilityFlags, compatibilityFlags) &&
    _deepEquality.equals(other.d1Databases, d1Databases) &&
    _deepEquality.equals(other.envVars, envVars) &&
    _deepEquality.equals(other.kvNamespaces, kvNamespaces) &&
    _deepEquality.equals(other.r2Buckets, r2Buckets);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (compatibilityDate == null ? 0 : compatibilityDate!.hashCode) +
    (compatibilityFlags.hashCode) +
    (d1Databases.hashCode) +
    (envVars.hashCode) +
    (kvNamespaces.hashCode) +
    (r2Buckets.hashCode);

  @override
  String toString() => 'PagesDeploymentConfig[compatibilityDate=$compatibilityDate, compatibilityFlags=$compatibilityFlags, d1Databases=$d1Databases, envVars=$envVars, kvNamespaces=$kvNamespaces, r2Buckets=$r2Buckets]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.compatibilityDate != null) {
      json[r'compatibility_date'] = this.compatibilityDate;
    } else {
      json[r'compatibility_date'] = null;
    }
      json[r'compatibility_flags'] = this.compatibilityFlags;
      json[r'd1_databases'] = this.d1Databases;
      json[r'env_vars'] = this.envVars;
      json[r'kv_namespaces'] = this.kvNamespaces;
      json[r'r2_buckets'] = this.r2Buckets;
    return json;
  }

  /// Returns a new [PagesDeploymentConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PagesDeploymentConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PagesDeploymentConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PagesDeploymentConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PagesDeploymentConfig(
        compatibilityDate: mapValueOfType<String>(json, r'compatibility_date'),
        compatibilityFlags: json[r'compatibility_flags'] is Iterable
            ? (json[r'compatibility_flags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        d1Databases: PagesD1Binding.mapFromJson(json[r'd1_databases']),
        envVars: PagesEnvVar.mapFromJson(json[r'env_vars']),
        kvNamespaces: PagesKVBinding.mapFromJson(json[r'kv_namespaces']),
        r2Buckets: PagesR2Binding.mapFromJson(json[r'r2_buckets']),
      );
    }
    return null;
  }

  static List<PagesDeploymentConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PagesDeploymentConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PagesDeploymentConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PagesDeploymentConfig> mapFromJson(dynamic json) {
    final map = <String, PagesDeploymentConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PagesDeploymentConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PagesDeploymentConfig-objects as value to a dart map
  static Map<String, List<PagesDeploymentConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PagesDeploymentConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PagesDeploymentConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

