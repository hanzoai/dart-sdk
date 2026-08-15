//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LevelSplit {
  /// Returns a new [LevelSplit] instance.
  LevelSplit({
    this.l1Cents,
    this.l2Cents,
    this.l3Cents,
  });

  /// L1Cents is lifetime commission accrued to DIRECT referrers, in cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? l1Cents;

  /// L2Cents is lifetime commission accrued one step above the direct referrer, in cents, at the platform-wide level-2 rate.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? l2Cents;

  /// L3Cents is lifetime commission accrued two steps above, in cents. Nothing accrues past level 3, so l1+l2+l3 is the whole accrual.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? l3Cents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LevelSplit &&
    other.l1Cents == l1Cents &&
    other.l2Cents == l2Cents &&
    other.l3Cents == l3Cents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (l1Cents == null ? 0 : l1Cents!.hashCode) +
    (l2Cents == null ? 0 : l2Cents!.hashCode) +
    (l3Cents == null ? 0 : l3Cents!.hashCode);

  @override
  String toString() => 'LevelSplit[l1Cents=$l1Cents, l2Cents=$l2Cents, l3Cents=$l3Cents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.l1Cents != null) {
      json[r'l1Cents'] = this.l1Cents;
    } else {
      json[r'l1Cents'] = null;
    }
    if (this.l2Cents != null) {
      json[r'l2Cents'] = this.l2Cents;
    } else {
      json[r'l2Cents'] = null;
    }
    if (this.l3Cents != null) {
      json[r'l3Cents'] = this.l3Cents;
    } else {
      json[r'l3Cents'] = null;
    }
    return json;
  }

  /// Returns a new [LevelSplit] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LevelSplit? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LevelSplit[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LevelSplit[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LevelSplit(
        l1Cents: mapValueOfType<int>(json, r'l1Cents'),
        l2Cents: mapValueOfType<int>(json, r'l2Cents'),
        l3Cents: mapValueOfType<int>(json, r'l3Cents'),
      );
    }
    return null;
  }

  static List<LevelSplit> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LevelSplit>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LevelSplit.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LevelSplit> mapFromJson(dynamic json) {
    final map = <String, LevelSplit>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LevelSplit.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LevelSplit-objects as value to a dart map
  static Map<String, List<LevelSplit>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LevelSplit>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LevelSplit.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

