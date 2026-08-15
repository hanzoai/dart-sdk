//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class StatusCounts {
  /// Returns a new [StatusCounts] instance.
  StatusCounts({
    this.qualified,
    this.signup,
    this.total,
  });

  /// Qualified is how many referees have made metered spend.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? qualified;

  /// Signup is how many referees have signed up but not yet spent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? signup;

  /// Total is every referral this org has made.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StatusCounts &&
    other.qualified == qualified &&
    other.signup == signup &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (qualified == null ? 0 : qualified!.hashCode) +
    (signup == null ? 0 : signup!.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'StatusCounts[qualified=$qualified, signup=$signup, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.qualified != null) {
      json[r'qualified'] = this.qualified;
    } else {
      json[r'qualified'] = null;
    }
    if (this.signup != null) {
      json[r'signup'] = this.signup;
    } else {
      json[r'signup'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [StatusCounts] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StatusCounts? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StatusCounts[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StatusCounts[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StatusCounts(
        qualified: mapValueOfType<int>(json, r'qualified'),
        signup: mapValueOfType<int>(json, r'signup'),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<StatusCounts> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StatusCounts>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StatusCounts.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StatusCounts> mapFromJson(dynamic json) {
    final map = <String, StatusCounts>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StatusCounts.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StatusCounts-objects as value to a dart map
  static Map<String, List<StatusCounts>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StatusCounts>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StatusCounts.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

