//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yAzureIntegrationConfig {
  /// Returns a new [O11yAzureIntegrationConfig] instance.
  O11yAzureIntegrationConfig({
    this.deploymentRegion,
    this.resourceGroups = const [],
    this.telemetryCollectionStrategy = const [],
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deploymentRegion;

  List<String> resourceGroups;

  List<O11yAzureTelemetryCollectionStrategy> telemetryCollectionStrategy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yAzureIntegrationConfig &&
    other.deploymentRegion == deploymentRegion &&
    _deepEquality.equals(other.resourceGroups, resourceGroups) &&
    _deepEquality.equals(other.telemetryCollectionStrategy, telemetryCollectionStrategy);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (deploymentRegion == null ? 0 : deploymentRegion!.hashCode) +
    (resourceGroups.hashCode) +
    (telemetryCollectionStrategy.hashCode);

  @override
  String toString() => 'O11yAzureIntegrationConfig[deploymentRegion=$deploymentRegion, resourceGroups=$resourceGroups, telemetryCollectionStrategy=$telemetryCollectionStrategy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.deploymentRegion != null) {
      json[r'deploymentRegion'] = this.deploymentRegion;
    } else {
      json[r'deploymentRegion'] = null;
    }
      json[r'resourceGroups'] = this.resourceGroups;
      json[r'telemetryCollectionStrategy'] = this.telemetryCollectionStrategy;
    return json;
  }

  /// Returns a new [O11yAzureIntegrationConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yAzureIntegrationConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yAzureIntegrationConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yAzureIntegrationConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yAzureIntegrationConfig(
        deploymentRegion: mapValueOfType<String>(json, r'deploymentRegion'),
        resourceGroups: json[r'resourceGroups'] is Iterable
            ? (json[r'resourceGroups'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        telemetryCollectionStrategy: O11yAzureTelemetryCollectionStrategy.listFromJson(json[r'telemetryCollectionStrategy']),
      );
    }
    return null;
  }

  static List<O11yAzureIntegrationConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yAzureIntegrationConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yAzureIntegrationConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yAzureIntegrationConfig> mapFromJson(dynamic json) {
    final map = <String, O11yAzureIntegrationConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yAzureIntegrationConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yAzureIntegrationConfig-objects as value to a dart map
  static Map<String, List<O11yAzureIntegrationConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yAzureIntegrationConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yAzureIntegrationConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

