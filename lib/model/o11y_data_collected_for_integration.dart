//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yDataCollectedForIntegration {
  /// Returns a new [O11yDataCollectedForIntegration] instance.
  O11yDataCollectedForIntegration({
    this.logs = const [],
    this.metrics = const [],
  });
  List<O11yIntegrationsCollectedLogAttribute> logs;

  List<O11yIntegrationsCollectedMetric> metrics;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yDataCollectedForIntegration &&
    _deepEquality.equals(other.logs, logs) &&
    _deepEquality.equals(other.metrics, metrics);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (logs.hashCode) +
    (metrics.hashCode);

  @override
  String toString() => 'O11yDataCollectedForIntegration[logs=$logs, metrics=$metrics]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'logs'] = this.logs;
      json[r'metrics'] = this.metrics;
    return json;
  }

  /// Returns a new [O11yDataCollectedForIntegration] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yDataCollectedForIntegration? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yDataCollectedForIntegration[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yDataCollectedForIntegration[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yDataCollectedForIntegration(
        logs: O11yIntegrationsCollectedLogAttribute.listFromJson(json[r'logs']),
        metrics: O11yIntegrationsCollectedMetric.listFromJson(json[r'metrics']),
      );
    }
    return null;
  }

  static List<O11yDataCollectedForIntegration> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yDataCollectedForIntegration>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yDataCollectedForIntegration.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yDataCollectedForIntegration> mapFromJson(dynamic json) {
    final map = <String, O11yDataCollectedForIntegration>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yDataCollectedForIntegration.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yDataCollectedForIntegration-objects as value to a dart map
  static Map<String, List<O11yDataCollectedForIntegration>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yDataCollectedForIntegration>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yDataCollectedForIntegration.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

