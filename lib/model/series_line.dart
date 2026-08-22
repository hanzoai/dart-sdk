//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SeriesLine {
  /// Returns a new [SeriesLine] instance.
  SeriesLine({
    this.key,
    this.points = const [],
  });
  /// agent name
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  /// Points is one bucket per interval across the whole window, in time order and never sparse: a bucket with no runs is present with v 0, so two lines drawn from two agents share an x-axis without the client aligning anything. The window decides the count — 24 hourly for 24H, 7 daily, 30 daily.
  List<SeriesPoint> points;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SeriesLine &&
    other.key == key &&
    _deepEquality.equals(other.points, points);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (key == null ? 0 : key!.hashCode) +
    (points.hashCode);

  @override
  String toString() => 'SeriesLine[key=$key, points=$points]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
      json[r'points'] = this.points;
    return json;
  }

  /// Returns a new [SeriesLine] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SeriesLine? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SeriesLine[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SeriesLine[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SeriesLine(
        key: mapValueOfType<String>(json, r'key'),
        points: SeriesPoint.listFromJson(json[r'points']),
      );
    }
    return null;
  }

  static List<SeriesLine> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SeriesLine>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SeriesLine.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SeriesLine> mapFromJson(dynamic json) {
    final map = <String, SeriesLine>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SeriesLine.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SeriesLine-objects as value to a dart map
  static Map<String, List<SeriesLine>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SeriesLine>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SeriesLine.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

