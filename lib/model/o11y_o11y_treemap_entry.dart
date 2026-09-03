//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yTreemapEntry {
  /// Returns a new [O11yO11yTreemapEntry] instance.
  O11yO11yTreemapEntry({
    this.metricName,
    this.percentage,
    this.totalValue,
  });
  /// MetricName is the metric's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? metricName;

  /// Percentage is the metric's share, in percent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? percentage;

  /// TotalValue is the metric's absolute count.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalValue;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yTreemapEntry &&
    other.metricName == metricName &&
    other.percentage == percentage &&
    other.totalValue == totalValue;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (metricName == null ? 0 : metricName!.hashCode) +
    (percentage == null ? 0 : percentage!.hashCode) +
    (totalValue == null ? 0 : totalValue!.hashCode);

  @override
  String toString() => 'O11yO11yTreemapEntry[metricName=$metricName, percentage=$percentage, totalValue=$totalValue]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.metricName != null) {
      json[r'metricName'] = this.metricName;
    } else {
      json[r'metricName'] = null;
    }
    if (this.percentage != null) {
      json[r'percentage'] = this.percentage;
    } else {
      json[r'percentage'] = null;
    }
    if (this.totalValue != null) {
      json[r'totalValue'] = this.totalValue;
    } else {
      json[r'totalValue'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yTreemapEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yTreemapEntry? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yTreemapEntry[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yTreemapEntry[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yTreemapEntry(
        metricName: mapValueOfType<String>(json, r'metricName'),
        percentage: mapValueOfType<double>(json, r'percentage'),
        totalValue: mapValueOfType<int>(json, r'totalValue'),
      );
    }
    return null;
  }

  static List<O11yO11yTreemapEntry> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yTreemapEntry>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yTreemapEntry.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yTreemapEntry> mapFromJson(dynamic json) {
    final map = <String, O11yO11yTreemapEntry>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yTreemapEntry.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yTreemapEntry-objects as value to a dart map
  static Map<String, List<O11yO11yTreemapEntry>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yTreemapEntry>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yTreemapEntry.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

