//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SweepResult {
  /// Returns a new [SweepResult] instance.
  SweepResult({
    this.qualified,
    this.swept,
  });

  /// Qualified is how many of those referrals qualified on this pass.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? qualified;

  /// Swept is how many pending referrals were checked.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? swept;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SweepResult &&
    other.qualified == qualified &&
    other.swept == swept;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (qualified == null ? 0 : qualified!.hashCode) +
    (swept == null ? 0 : swept!.hashCode);

  @override
  String toString() => 'SweepResult[qualified=$qualified, swept=$swept]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.qualified != null) {
      json[r'qualified'] = this.qualified;
    } else {
      json[r'qualified'] = null;
    }
    if (this.swept != null) {
      json[r'swept'] = this.swept;
    } else {
      json[r'swept'] = null;
    }
    return json;
  }

  /// Returns a new [SweepResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SweepResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SweepResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SweepResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SweepResult(
        qualified: mapValueOfType<int>(json, r'qualified'),
        swept: mapValueOfType<int>(json, r'swept'),
      );
    }
    return null;
  }

  static List<SweepResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SweepResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SweepResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SweepResult> mapFromJson(dynamic json) {
    final map = <String, SweepResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SweepResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SweepResult-objects as value to a dart map
  static Map<String, List<SweepResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SweepResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SweepResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

