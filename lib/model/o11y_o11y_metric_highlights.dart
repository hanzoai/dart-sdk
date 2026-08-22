//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yMetricHighlights {
  /// Returns a new [O11yO11yMetricHighlights] instance.
  O11yO11yMetricHighlights({
    this.activeTimeSeries,
    this.dataPoints,
    this.lastReceived,
    this.totalTimeSeries,
  });
  /// ActiveTimeSeries is how many of them are active.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? activeTimeSeries;

  /// DataPoints is how many data points the metric has.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dataPoints;

  /// LastReceived is when the metric last arrived, as a Unix timestamp in milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lastReceived;

  /// TotalTimeSeries is how many time series the metric has ever had.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalTimeSeries;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yMetricHighlights &&
    other.activeTimeSeries == activeTimeSeries &&
    other.dataPoints == dataPoints &&
    other.lastReceived == lastReceived &&
    other.totalTimeSeries == totalTimeSeries;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (activeTimeSeries == null ? 0 : activeTimeSeries!.hashCode) +
    (dataPoints == null ? 0 : dataPoints!.hashCode) +
    (lastReceived == null ? 0 : lastReceived!.hashCode) +
    (totalTimeSeries == null ? 0 : totalTimeSeries!.hashCode);

  @override
  String toString() => 'O11yO11yMetricHighlights[activeTimeSeries=$activeTimeSeries, dataPoints=$dataPoints, lastReceived=$lastReceived, totalTimeSeries=$totalTimeSeries]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.activeTimeSeries != null) {
      json[r'activeTimeSeries'] = this.activeTimeSeries;
    } else {
      json[r'activeTimeSeries'] = null;
    }
    if (this.dataPoints != null) {
      json[r'dataPoints'] = this.dataPoints;
    } else {
      json[r'dataPoints'] = null;
    }
    if (this.lastReceived != null) {
      json[r'lastReceived'] = this.lastReceived;
    } else {
      json[r'lastReceived'] = null;
    }
    if (this.totalTimeSeries != null) {
      json[r'totalTimeSeries'] = this.totalTimeSeries;
    } else {
      json[r'totalTimeSeries'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yMetricHighlights] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yMetricHighlights? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yMetricHighlights[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yMetricHighlights[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yMetricHighlights(
        activeTimeSeries: mapValueOfType<int>(json, r'activeTimeSeries'),
        dataPoints: mapValueOfType<int>(json, r'dataPoints'),
        lastReceived: mapValueOfType<int>(json, r'lastReceived'),
        totalTimeSeries: mapValueOfType<int>(json, r'totalTimeSeries'),
      );
    }
    return null;
  }

  static List<O11yO11yMetricHighlights> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yMetricHighlights>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yMetricHighlights.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yMetricHighlights> mapFromJson(dynamic json) {
    final map = <String, O11yO11yMetricHighlights>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yMetricHighlights.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yMetricHighlights-objects as value to a dart map
  static Map<String, List<O11yO11yMetricHighlights>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yMetricHighlights>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yMetricHighlights.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

