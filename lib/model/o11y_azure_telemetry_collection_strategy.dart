//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yAzureTelemetryCollectionStrategy {
  /// Returns a new [O11yAzureTelemetryCollectionStrategy] instance.
  O11yAzureTelemetryCollectionStrategy({
    this.logs,
    this.metrics,
    this.resourceProvider,
    this.resourceType,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yAzureLogsCollectionStrategy? logs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? metrics;

  /// https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/resource-providers-and-types
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? resourceProvider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? resourceType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yAzureTelemetryCollectionStrategy &&
    other.logs == logs &&
    other.metrics == metrics &&
    other.resourceProvider == resourceProvider &&
    other.resourceType == resourceType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (logs == null ? 0 : logs!.hashCode) +
    (metrics == null ? 0 : metrics!.hashCode) +
    (resourceProvider == null ? 0 : resourceProvider!.hashCode) +
    (resourceType == null ? 0 : resourceType!.hashCode);

  @override
  String toString() => 'O11yAzureTelemetryCollectionStrategy[logs=$logs, metrics=$metrics, resourceProvider=$resourceProvider, resourceType=$resourceType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.logs != null) {
      json[r'logs'] = this.logs;
    } else {
      json[r'logs'] = null;
    }
    if (this.metrics != null) {
      json[r'metrics'] = this.metrics;
    } else {
      json[r'metrics'] = null;
    }
    if (this.resourceProvider != null) {
      json[r'resourceProvider'] = this.resourceProvider;
    } else {
      json[r'resourceProvider'] = null;
    }
    if (this.resourceType != null) {
      json[r'resourceType'] = this.resourceType;
    } else {
      json[r'resourceType'] = null;
    }
    return json;
  }

  /// Returns a new [O11yAzureTelemetryCollectionStrategy] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yAzureTelemetryCollectionStrategy? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yAzureTelemetryCollectionStrategy[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yAzureTelemetryCollectionStrategy[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yAzureTelemetryCollectionStrategy(
        logs: O11yAzureLogsCollectionStrategy.fromJson(json[r'logs']),
        metrics: mapValueOfType<Object>(json, r'metrics'),
        resourceProvider: mapValueOfType<String>(json, r'resourceProvider'),
        resourceType: mapValueOfType<String>(json, r'resourceType'),
      );
    }
    return null;
  }

  static List<O11yAzureTelemetryCollectionStrategy> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yAzureTelemetryCollectionStrategy>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yAzureTelemetryCollectionStrategy.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yAzureTelemetryCollectionStrategy> mapFromJson(dynamic json) {
    final map = <String, O11yAzureTelemetryCollectionStrategy>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yAzureTelemetryCollectionStrategy.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yAzureTelemetryCollectionStrategy-objects as value to a dart map
  static Map<String, List<O11yAzureTelemetryCollectionStrategy>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yAzureTelemetryCollectionStrategy>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yAzureTelemetryCollectionStrategy.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

