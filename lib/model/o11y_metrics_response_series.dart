//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yMetricsResponseSeries {
  /// Returns a new [O11yMetricsResponseSeries] instance.
  O11yMetricsResponseSeries({
    this.errors = const [],
    this.latencyP50Ms = const [],
    this.latencyP95Ms = const [],
    this.requests = const [],
  });

  List<O11yPoint> errors;

  List<O11yPoint> latencyP50Ms;

  List<O11yPoint> latencyP95Ms;

  List<O11yPoint> requests;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yMetricsResponseSeries &&
    _deepEquality.equals(other.errors, errors) &&
    _deepEquality.equals(other.latencyP50Ms, latencyP50Ms) &&
    _deepEquality.equals(other.latencyP95Ms, latencyP95Ms) &&
    _deepEquality.equals(other.requests, requests);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (errors.hashCode) +
    (latencyP50Ms.hashCode) +
    (latencyP95Ms.hashCode) +
    (requests.hashCode);

  @override
  String toString() => 'O11yMetricsResponseSeries[errors=$errors, latencyP50Ms=$latencyP50Ms, latencyP95Ms=$latencyP95Ms, requests=$requests]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'errors'] = this.errors;
      json[r'latencyP50Ms'] = this.latencyP50Ms;
      json[r'latencyP95Ms'] = this.latencyP95Ms;
      json[r'requests'] = this.requests;
    return json;
  }

  /// Returns a new [O11yMetricsResponseSeries] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yMetricsResponseSeries? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yMetricsResponseSeries[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yMetricsResponseSeries[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yMetricsResponseSeries(
        errors: O11yPoint.listFromJson(json[r'errors']),
        latencyP50Ms: O11yPoint.listFromJson(json[r'latencyP50Ms']),
        latencyP95Ms: O11yPoint.listFromJson(json[r'latencyP95Ms']),
        requests: O11yPoint.listFromJson(json[r'requests']),
      );
    }
    return null;
  }

  static List<O11yMetricsResponseSeries> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yMetricsResponseSeries>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yMetricsResponseSeries.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yMetricsResponseSeries> mapFromJson(dynamic json) {
    final map = <String, O11yMetricsResponseSeries>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yMetricsResponseSeries.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yMetricsResponseSeries-objects as value to a dart map
  static Map<String, List<O11yMetricsResponseSeries>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yMetricsResponseSeries>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yMetricsResponseSeries.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

