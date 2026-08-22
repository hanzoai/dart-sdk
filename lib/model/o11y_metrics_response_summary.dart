//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yMetricsResponseSummary {
  /// Returns a new [O11yMetricsResponseSummary] instance.
  O11yMetricsResponseSummary({
    this.errorRate,
    this.errors,
    this.p95Ms,
    this.requests,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? errorRate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? errors;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? p95Ms;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? requests;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yMetricsResponseSummary &&
    other.errorRate == errorRate &&
    other.errors == errors &&
    other.p95Ms == p95Ms &&
    other.requests == requests;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (errorRate == null ? 0 : errorRate!.hashCode) +
    (errors == null ? 0 : errors!.hashCode) +
    (p95Ms == null ? 0 : p95Ms!.hashCode) +
    (requests == null ? 0 : requests!.hashCode);

  @override
  String toString() => 'O11yMetricsResponseSummary[errorRate=$errorRate, errors=$errors, p95Ms=$p95Ms, requests=$requests]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.errorRate != null) {
      json[r'errorRate'] = this.errorRate;
    } else {
      json[r'errorRate'] = null;
    }
    if (this.errors != null) {
      json[r'errors'] = this.errors;
    } else {
      json[r'errors'] = null;
    }
    if (this.p95Ms != null) {
      json[r'p95Ms'] = this.p95Ms;
    } else {
      json[r'p95Ms'] = null;
    }
    if (this.requests != null) {
      json[r'requests'] = this.requests;
    } else {
      json[r'requests'] = null;
    }
    return json;
  }

  /// Returns a new [O11yMetricsResponseSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yMetricsResponseSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yMetricsResponseSummary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yMetricsResponseSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yMetricsResponseSummary(
        errorRate: num.parse('${json[r'errorRate']}'),
        errors: mapValueOfType<int>(json, r'errors'),
        p95Ms: num.parse('${json[r'p95Ms']}'),
        requests: mapValueOfType<int>(json, r'requests'),
      );
    }
    return null;
  }

  static List<O11yMetricsResponseSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yMetricsResponseSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yMetricsResponseSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yMetricsResponseSummary> mapFromJson(dynamic json) {
    final map = <String, O11yMetricsResponseSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yMetricsResponseSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yMetricsResponseSummary-objects as value to a dart map
  static Map<String, List<O11yMetricsResponseSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yMetricsResponseSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yMetricsResponseSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

