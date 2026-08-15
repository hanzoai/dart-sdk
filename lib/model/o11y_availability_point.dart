//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yAvailabilityPoint {
  /// Returns a new [O11yAvailabilityPoint] instance.
  O11yAvailabilityPoint({
    this.t,
    this.total,
    this.up,
  });

  /// T is the bucket start, RFC3339 in UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? t;

  /// Total is how many services reported at all inside the bucket. It can be lower than the current total: a target added last week reported nothing the week before, and saying so is the point.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  /// Up is how many services were up at the end of the bucket.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? up;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yAvailabilityPoint &&
    other.t == t &&
    other.total == total &&
    other.up == up;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (t == null ? 0 : t!.hashCode) +
    (total == null ? 0 : total!.hashCode) +
    (up == null ? 0 : up!.hashCode);

  @override
  String toString() => 'O11yAvailabilityPoint[t=$t, total=$total, up=$up]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.t != null) {
      json[r't'] = this.t;
    } else {
      json[r't'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    if (this.up != null) {
      json[r'up'] = this.up;
    } else {
      json[r'up'] = null;
    }
    return json;
  }

  /// Returns a new [O11yAvailabilityPoint] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yAvailabilityPoint? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yAvailabilityPoint[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yAvailabilityPoint[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yAvailabilityPoint(
        t: mapValueOfType<String>(json, r't'),
        total: mapValueOfType<int>(json, r'total'),
        up: mapValueOfType<int>(json, r'up'),
      );
    }
    return null;
  }

  static List<O11yAvailabilityPoint> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yAvailabilityPoint>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yAvailabilityPoint.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yAvailabilityPoint> mapFromJson(dynamic json) {
    final map = <String, O11yAvailabilityPoint>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yAvailabilityPoint.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yAvailabilityPoint-objects as value to a dart map
  static Map<String, List<O11yAvailabilityPoint>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yAvailabilityPoint>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yAvailabilityPoint.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

