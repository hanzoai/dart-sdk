//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yIntegrationConnectionTests {
  /// Returns a new [O11yIntegrationConnectionTests] instance.
  O11yIntegrationConnectionTests({
    this.logs,
    this.metrics = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yLogsConnectionTest? logs;

  /// Metric names expected to have been received for the integration.
  List<String> metrics;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yIntegrationConnectionTests &&
    other.logs == logs &&
    _deepEquality.equals(other.metrics, metrics);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (logs == null ? 0 : logs!.hashCode) +
    (metrics.hashCode);

  @override
  String toString() => 'O11yIntegrationConnectionTests[logs=$logs, metrics=$metrics]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.logs != null) {
      json[r'logs'] = this.logs;
    } else {
      json[r'logs'] = null;
    }
      json[r'metrics'] = this.metrics;
    return json;
  }

  /// Returns a new [O11yIntegrationConnectionTests] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yIntegrationConnectionTests? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yIntegrationConnectionTests[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yIntegrationConnectionTests[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yIntegrationConnectionTests(
        logs: O11yLogsConnectionTest.fromJson(json[r'logs']),
        metrics: json[r'metrics'] is Iterable
            ? (json[r'metrics'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<O11yIntegrationConnectionTests> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yIntegrationConnectionTests>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yIntegrationConnectionTests.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yIntegrationConnectionTests> mapFromJson(dynamic json) {
    final map = <String, O11yIntegrationConnectionTests>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yIntegrationConnectionTests.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yIntegrationConnectionTests-objects as value to a dart map
  static Map<String, List<O11yIntegrationConnectionTests>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yIntegrationConnectionTests>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yIntegrationConnectionTests.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

