//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yMetricSeries {
  /// Returns a new [O11yO11yMetricSeries] instance.
  O11yO11yMetricSeries({
    this.labels = const [],
    this.values = const [],
  });

  /// Labels identify the series.
  List<O11yO11yMetricLabel> labels;

  /// Values are the series' points, in time order.
  List<O11yO11yMetricPoint> values;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yMetricSeries &&
    _deepEquality.equals(other.labels, labels) &&
    _deepEquality.equals(other.values, values);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (labels.hashCode) +
    (values.hashCode);

  @override
  String toString() => 'O11yO11yMetricSeries[labels=$labels, values=$values]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'labels'] = this.labels;
      json[r'values'] = this.values;
    return json;
  }

  /// Returns a new [O11yO11yMetricSeries] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yMetricSeries? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yMetricSeries[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yMetricSeries[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yMetricSeries(
        labels: O11yO11yMetricLabel.listFromJson(json[r'labels']),
        values: O11yO11yMetricPoint.listFromJson(json[r'values']),
      );
    }
    return null;
  }

  static List<O11yO11yMetricSeries> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yMetricSeries>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yMetricSeries.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yMetricSeries> mapFromJson(dynamic json) {
    final map = <String, O11yO11yMetricSeries>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yMetricSeries.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yMetricSeries-objects as value to a dart map
  static Map<String, List<O11yO11yMetricSeries>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yMetricSeries>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yMetricSeries.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

