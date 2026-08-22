//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yIntegrationAssets {
  /// Returns a new [O11yIntegrationAssets] instance.
  O11yIntegrationAssets({
    this.alerts = const [],
    this.dashboards = const [],
    this.logs,
  });
  List<Object> alerts;

  List<Map<String, Object>> dashboards;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yLogsAssets? logs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yIntegrationAssets &&
    _deepEquality.equals(other.alerts, alerts) &&
    _deepEquality.equals(other.dashboards, dashboards) &&
    other.logs == logs;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (alerts.hashCode) +
    (dashboards.hashCode) +
    (logs == null ? 0 : logs!.hashCode);

  @override
  String toString() => 'O11yIntegrationAssets[alerts=$alerts, dashboards=$dashboards, logs=$logs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'alerts'] = this.alerts;
      json[r'dashboards'] = this.dashboards;
    if (this.logs != null) {
      json[r'logs'] = this.logs;
    } else {
      json[r'logs'] = null;
    }
    return json;
  }

  /// Returns a new [O11yIntegrationAssets] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yIntegrationAssets? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yIntegrationAssets[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yIntegrationAssets[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yIntegrationAssets(
        alerts: json[r'alerts'] is Iterable
            ? (json[r'alerts'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        dashboards: json[r'dashboards'] is Iterable
            ? (json[r'dashboards'] as Iterable).map((e) => (e as Map).cast<String, Object>()).toList(growable: false)
            : const [],
        logs: O11yLogsAssets.fromJson(json[r'logs']),
      );
    }
    return null;
  }

  static List<O11yIntegrationAssets> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yIntegrationAssets>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yIntegrationAssets.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yIntegrationAssets> mapFromJson(dynamic json) {
    final map = <String, O11yIntegrationAssets>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yIntegrationAssets.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yIntegrationAssets-objects as value to a dart map
  static Map<String, List<O11yIntegrationAssets>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yIntegrationAssets>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yIntegrationAssets.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

