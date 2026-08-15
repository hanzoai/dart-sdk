//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RetentionGrid {
  /// Returns a new [RetentionGrid] instance.
  RetentionGrid({
    this.cohorts = const [],
    this.interval,
    this.periods,
  });

  List<RetentionCohort> cohorts;

  /// \"month\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? interval;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? periods;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetentionGrid &&
    _deepEquality.equals(other.cohorts, cohorts) &&
    other.interval == interval &&
    other.periods == periods;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cohorts.hashCode) +
    (interval == null ? 0 : interval!.hashCode) +
    (periods == null ? 0 : periods!.hashCode);

  @override
  String toString() => 'RetentionGrid[cohorts=$cohorts, interval=$interval, periods=$periods]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'cohorts'] = this.cohorts;
    if (this.interval != null) {
      json[r'interval'] = this.interval;
    } else {
      json[r'interval'] = null;
    }
    if (this.periods != null) {
      json[r'periods'] = this.periods;
    } else {
      json[r'periods'] = null;
    }
    return json;
  }

  /// Returns a new [RetentionGrid] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RetentionGrid? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RetentionGrid[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RetentionGrid[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RetentionGrid(
        cohorts: RetentionCohort.listFromJson(json[r'cohorts']),
        interval: mapValueOfType<String>(json, r'interval'),
        periods: mapValueOfType<int>(json, r'periods'),
      );
    }
    return null;
  }

  static List<RetentionGrid> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RetentionGrid>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RetentionGrid.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RetentionGrid> mapFromJson(dynamic json) {
    final map = <String, RetentionGrid>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RetentionGrid.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RetentionGrid-objects as value to a dart map
  static Map<String, List<RetentionGrid>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RetentionGrid>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RetentionGrid.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

