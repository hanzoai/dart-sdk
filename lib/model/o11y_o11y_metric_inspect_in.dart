//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yMetricInspectIn {
  /// Returns a new [O11yO11yMetricInspectIn] instance.
  O11yO11yMetricInspectIn({
    required this.end,
    this.filter,
    required this.metricName,
    required this.start,
  });

  /// End is the end of the window as a Unix timestamp in milliseconds, at most thirty minutes after start. Required.
  int end;

  /// Filter narrows the series returned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yMetricFilter? filter;

  /// MetricName is the metric to inspect. Required.
  String metricName;

  /// Start is the start of the window as a Unix timestamp in milliseconds. Required.
  int start;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yMetricInspectIn &&
    other.end == end &&
    other.filter == filter &&
    other.metricName == metricName &&
    other.start == start;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (end.hashCode) +
    (filter == null ? 0 : filter!.hashCode) +
    (metricName.hashCode) +
    (start.hashCode);

  @override
  String toString() => 'O11yO11yMetricInspectIn[end=$end, filter=$filter, metricName=$metricName, start=$start]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'end'] = this.end;
    if (this.filter != null) {
      json[r'filter'] = this.filter;
    } else {
      json[r'filter'] = null;
    }
      json[r'metricName'] = this.metricName;
      json[r'start'] = this.start;
    return json;
  }

  /// Returns a new [O11yO11yMetricInspectIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yMetricInspectIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yMetricInspectIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yMetricInspectIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yMetricInspectIn(
        end: mapValueOfType<int>(json, r'end')!,
        filter: O11yO11yMetricFilter.fromJson(json[r'filter']),
        metricName: mapValueOfType<String>(json, r'metricName')!,
        start: mapValueOfType<int>(json, r'start')!,
      );
    }
    return null;
  }

  static List<O11yO11yMetricInspectIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yMetricInspectIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yMetricInspectIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yMetricInspectIn> mapFromJson(dynamic json) {
    final map = <String, O11yO11yMetricInspectIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yMetricInspectIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yMetricInspectIn-objects as value to a dart map
  static Map<String, List<O11yO11yMetricInspectIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yMetricInspectIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yMetricInspectIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'end',
    'metricName',
    'start',
  };
}

