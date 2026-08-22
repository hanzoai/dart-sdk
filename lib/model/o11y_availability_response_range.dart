//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yAvailabilityResponseRange {
  /// Returns a new [O11yAvailabilityResponseRange] instance.
  O11yAvailabilityResponseRange({
    this.sinceSec,
    this.stepSec,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sinceSec;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? stepSec;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yAvailabilityResponseRange &&
    other.sinceSec == sinceSec &&
    other.stepSec == stepSec;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sinceSec == null ? 0 : sinceSec!.hashCode) +
    (stepSec == null ? 0 : stepSec!.hashCode);

  @override
  String toString() => 'O11yAvailabilityResponseRange[sinceSec=$sinceSec, stepSec=$stepSec]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.sinceSec != null) {
      json[r'sinceSec'] = this.sinceSec;
    } else {
      json[r'sinceSec'] = null;
    }
    if (this.stepSec != null) {
      json[r'stepSec'] = this.stepSec;
    } else {
      json[r'stepSec'] = null;
    }
    return json;
  }

  /// Returns a new [O11yAvailabilityResponseRange] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yAvailabilityResponseRange? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yAvailabilityResponseRange[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yAvailabilityResponseRange[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yAvailabilityResponseRange(
        sinceSec: mapValueOfType<int>(json, r'sinceSec'),
        stepSec: mapValueOfType<int>(json, r'stepSec'),
      );
    }
    return null;
  }

  static List<O11yAvailabilityResponseRange> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yAvailabilityResponseRange>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yAvailabilityResponseRange.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yAvailabilityResponseRange> mapFromJson(dynamic json) {
    final map = <String, O11yAvailabilityResponseRange>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yAvailabilityResponseRange.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yAvailabilityResponseRange-objects as value to a dart map
  static Map<String, List<O11yAvailabilityResponseRange>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yAvailabilityResponseRange>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yAvailabilityResponseRange.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

