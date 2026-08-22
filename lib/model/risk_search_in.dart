//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskSearchIn {
  /// Returns a new [RiskSearchIn] instance.
  RiskSearchIn({
    this.days,
  });
  /// Days is how much of the organisation's own history to replay, 1 to 400. Zero takes thirty.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? days;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskSearchIn &&
    other.days == days;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (days == null ? 0 : days!.hashCode);

  @override
  String toString() => 'RiskSearchIn[days=$days]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.days != null) {
      json[r'days'] = this.days;
    } else {
      json[r'days'] = null;
    }
    return json;
  }

  /// Returns a new [RiskSearchIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskSearchIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskSearchIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskSearchIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskSearchIn(
        days: mapValueOfType<int>(json, r'days'),
      );
    }
    return null;
  }

  static List<RiskSearchIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskSearchIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskSearchIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskSearchIn> mapFromJson(dynamic json) {
    final map = <String, RiskSearchIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskSearchIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskSearchIn-objects as value to a dart map
  static Map<String, List<RiskSearchIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskSearchIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskSearchIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

