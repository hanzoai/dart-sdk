//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CostLine {
  /// Returns a new [CostLine] instance.
  CostLine({
    this.key,
    this.points = const [],
  });
  /// the function the line is about
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  /// one point per bucket, oldest first
  List<PointView> points;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CostLine &&
    other.key == key &&
    _deepEquality.equals(other.points, points);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (key == null ? 0 : key!.hashCode) +
    (points.hashCode);

  @override
  String toString() => 'CostLine[key=$key, points=$points]';

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

  /// Returns a new [CostLine] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CostLine? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CostLine[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CostLine[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CostLine(
        key: mapValueOfType<String>(json, r'key'),
        points: PointView.listFromJson(json[r'points']),
      );
    }
    return null;
  }

  static List<CostLine> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CostLine>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CostLine.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CostLine> mapFromJson(dynamic json) {
    final map = <String, CostLine>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CostLine.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CostLine-objects as value to a dart map
  static Map<String, List<CostLine>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CostLine>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CostLine.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

