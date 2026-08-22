//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yMetricPoint {
  /// Returns a new [O11yO11yMetricPoint] instance.
  O11yO11yMetricPoint({
    this.partial,
    this.timestamp,
    this.value,
    this.values = const [],
  });
  /// Partial marks a point whose bucket the window only partly covers.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? partial;

  /// Timestamp is the point's time as a Unix timestamp in milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timestamp;

  /// Value is the point's value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? value;

  /// Values carries the bucket values of a heatmap point.
  List<num> values;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yMetricPoint &&
    other.partial == partial &&
    other.timestamp == timestamp &&
    other.value == value &&
    _deepEquality.equals(other.values, values);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (partial == null ? 0 : partial!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (values.hashCode);

  @override
  String toString() => 'O11yO11yMetricPoint[partial=$partial, timestamp=$timestamp, value=$value, values=$values]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.partial != null) {
      json[r'partial'] = this.partial;
    } else {
      json[r'partial'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp;
    } else {
      json[r'timestamp'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
      json[r'values'] = this.values;
    return json;
  }

  /// Returns a new [O11yO11yMetricPoint] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yMetricPoint? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yMetricPoint[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yMetricPoint[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yMetricPoint(
        partial: mapValueOfType<bool>(json, r'partial'),
        timestamp: mapValueOfType<int>(json, r'timestamp'),
        value: num.parse('${json[r'value']}'),
        values: json[r'values'] is Iterable
            ? (json[r'values'] as Iterable).cast<num>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<O11yO11yMetricPoint> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yMetricPoint>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yMetricPoint.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yMetricPoint> mapFromJson(dynamic json) {
    final map = <String, O11yO11yMetricPoint>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yMetricPoint.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yMetricPoint-objects as value to a dart map
  static Map<String, List<O11yO11yMetricPoint>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yMetricPoint>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yMetricPoint.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

