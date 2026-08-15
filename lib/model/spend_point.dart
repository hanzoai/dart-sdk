//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SpendPoint {
  /// Returns a new [SpendPoint] instance.
  SpendPoint({
    this.cents,
    this.t,
  });

  /// Cents is the consumption recorded in that bucket, in US cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cents;

  /// T is the bucket's start instant, RFC3339 UTC. Buckets are gap-filled, so a window with no spend still has its points.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? t;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpendPoint &&
    other.cents == cents &&
    other.t == t;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cents == null ? 0 : cents!.hashCode) +
    (t == null ? 0 : t!.hashCode);

  @override
  String toString() => 'SpendPoint[cents=$cents, t=$t]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cents != null) {
      json[r'cents'] = this.cents;
    } else {
      json[r'cents'] = null;
    }
    if (this.t != null) {
      json[r't'] = this.t;
    } else {
      json[r't'] = null;
    }
    return json;
  }

  /// Returns a new [SpendPoint] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpendPoint? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SpendPoint[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SpendPoint[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SpendPoint(
        cents: mapValueOfType<int>(json, r'cents'),
        t: mapValueOfType<String>(json, r't'),
      );
    }
    return null;
  }

  static List<SpendPoint> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpendPoint>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpendPoint.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpendPoint> mapFromJson(dynamic json) {
    final map = <String, SpendPoint>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpendPoint.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpendPoint-objects as value to a dart map
  static Map<String, List<SpendPoint>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SpendPoint>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpendPoint.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

