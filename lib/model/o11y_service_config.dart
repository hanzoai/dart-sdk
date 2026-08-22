//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yServiceConfig {
  /// Returns a new [O11yServiceConfig] instance.
  O11yServiceConfig({
    this.aws,
    this.azure,
    this.gcp,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yAWSServiceConfig? aws;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yAzureServiceConfig? azure;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yGCPServiceConfig? gcp;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yServiceConfig &&
    other.aws == aws &&
    other.azure == azure &&
    other.gcp == gcp;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (aws == null ? 0 : aws!.hashCode) +
    (azure == null ? 0 : azure!.hashCode) +
    (gcp == null ? 0 : gcp!.hashCode);

  @override
  String toString() => 'O11yServiceConfig[aws=$aws, azure=$azure, gcp=$gcp]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.aws != null) {
      json[r'aws'] = this.aws;
    } else {
      json[r'aws'] = null;
    }
    if (this.azure != null) {
      json[r'azure'] = this.azure;
    } else {
      json[r'azure'] = null;
    }
    if (this.gcp != null) {
      json[r'gcp'] = this.gcp;
    } else {
      json[r'gcp'] = null;
    }
    return json;
  }

  /// Returns a new [O11yServiceConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yServiceConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yServiceConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yServiceConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yServiceConfig(
        aws: O11yAWSServiceConfig.fromJson(json[r'aws']),
        azure: O11yAzureServiceConfig.fromJson(json[r'azure']),
        gcp: O11yGCPServiceConfig.fromJson(json[r'gcp']),
      );
    }
    return null;
  }

  static List<O11yServiceConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yServiceConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yServiceConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yServiceConfig> mapFromJson(dynamic json) {
    final map = <String, O11yServiceConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yServiceConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yServiceConfig-objects as value to a dart map
  static Map<String, List<O11yServiceConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yServiceConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yServiceConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

