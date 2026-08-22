//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yIntegrationConnectionStatus {
  /// Returns a new [O11yIntegrationConnectionStatus] instance.
  O11yIntegrationConnectionStatus({
    this.logs,
    this.metrics,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11ySignalConnectionStatus? logs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11ySignalConnectionStatus? metrics;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yIntegrationConnectionStatus &&
    other.logs == logs &&
    other.metrics == metrics;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (logs == null ? 0 : logs!.hashCode) +
    (metrics == null ? 0 : metrics!.hashCode);

  @override
  String toString() => 'O11yIntegrationConnectionStatus[logs=$logs, metrics=$metrics]';

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
    return json;
  }

  /// Returns a new [O11yIntegrationConnectionStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yIntegrationConnectionStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yIntegrationConnectionStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yIntegrationConnectionStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yIntegrationConnectionStatus(
        logs: O11ySignalConnectionStatus.fromJson(json[r'logs']),
        metrics: O11ySignalConnectionStatus.fromJson(json[r'metrics']),
      );
    }
    return null;
  }

  static List<O11yIntegrationConnectionStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yIntegrationConnectionStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yIntegrationConnectionStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yIntegrationConnectionStatus> mapFromJson(dynamic json) {
    final map = <String, O11yIntegrationConnectionStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yIntegrationConnectionStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yIntegrationConnectionStatus-objects as value to a dart map
  static Map<String, List<O11yIntegrationConnectionStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yIntegrationConnectionStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yIntegrationConnectionStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

