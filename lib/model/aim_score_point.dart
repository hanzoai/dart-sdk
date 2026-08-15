//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AimScorePoint {
  /// Returns a new [AimScorePoint] instance.
  AimScorePoint({
    this.avgValue,
    this.count,
    this.ts,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? avgValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AimScorePoint &&
    other.avgValue == avgValue &&
    other.count == count &&
    other.ts == ts;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (avgValue == null ? 0 : avgValue!.hashCode) +
    (count == null ? 0 : count!.hashCode) +
    (ts == null ? 0 : ts!.hashCode);

  @override
  String toString() => 'AimScorePoint[avgValue=$avgValue, count=$count, ts=$ts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.avgValue != null) {
      json[r'avgValue'] = this.avgValue;
    } else {
      json[r'avgValue'] = null;
    }
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.ts != null) {
      json[r'ts'] = this.ts;
    } else {
      json[r'ts'] = null;
    }
    return json;
  }

  /// Returns a new [AimScorePoint] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AimScorePoint? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AimScorePoint[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AimScorePoint[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AimScorePoint(
        avgValue: num.parse('${json[r'avgValue']}'),
        count: mapValueOfType<int>(json, r'count'),
        ts: mapValueOfType<String>(json, r'ts'),
      );
    }
    return null;
  }

  static List<AimScorePoint> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AimScorePoint>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AimScorePoint.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AimScorePoint> mapFromJson(dynamic json) {
    final map = <String, AimScorePoint>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AimScorePoint.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AimScorePoint-objects as value to a dart map
  static Map<String, List<AimScorePoint>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AimScorePoint>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AimScorePoint.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

