//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yAWSIntegrationConfig {
  /// Returns a new [O11yAWSIntegrationConfig] instance.
  O11yAWSIntegrationConfig({
    this.enabledRegions = const [],
    this.telemetryCollectionStrategy,
  });
  List<String> enabledRegions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yAWSTelemetryCollectionStrategy? telemetryCollectionStrategy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yAWSIntegrationConfig &&
    _deepEquality.equals(other.enabledRegions, enabledRegions) &&
    other.telemetryCollectionStrategy == telemetryCollectionStrategy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabledRegions.hashCode) +
    (telemetryCollectionStrategy == null ? 0 : telemetryCollectionStrategy!.hashCode);

  @override
  String toString() => 'O11yAWSIntegrationConfig[enabledRegions=$enabledRegions, telemetryCollectionStrategy=$telemetryCollectionStrategy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'enabledRegions'] = this.enabledRegions;
    if (this.telemetryCollectionStrategy != null) {
      json[r'telemetryCollectionStrategy'] = this.telemetryCollectionStrategy;
    } else {
      json[r'telemetryCollectionStrategy'] = null;
    }
    return json;
  }

  /// Returns a new [O11yAWSIntegrationConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yAWSIntegrationConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yAWSIntegrationConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yAWSIntegrationConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yAWSIntegrationConfig(
        enabledRegions: json[r'enabledRegions'] is Iterable
            ? (json[r'enabledRegions'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        telemetryCollectionStrategy: O11yAWSTelemetryCollectionStrategy.fromJson(json[r'telemetryCollectionStrategy']),
      );
    }
    return null;
  }

  static List<O11yAWSIntegrationConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yAWSIntegrationConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yAWSIntegrationConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yAWSIntegrationConfig> mapFromJson(dynamic json) {
    final map = <String, O11yAWSIntegrationConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yAWSIntegrationConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yAWSIntegrationConfig-objects as value to a dart map
  static Map<String, List<O11yAWSIntegrationConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yAWSIntegrationConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yAWSIntegrationConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

