//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EnrollResult {
  /// Returns a new [EnrollResult] instance.
  EnrollResult({
    this.alreadyEnrolled,
    this.enrolled,
    this.enrollmentId,
    this.resolved,
  });
  /// AlreadyEnrolled is how many this sequence had already taken and were left alone.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? alreadyEnrolled;

  /// Enrolled is how many started a walk on this call.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? enrolled;

  /// EnrollmentID names the walk, and is present ONLY for a single-address enroll — a fan-out has many, and reporting one of them would be a lie.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? enrollmentId;

  /// Resolved is how many addresses the request named — 1 for an address, the audience's deliverable count for an audience.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? resolved;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EnrollResult &&
    other.alreadyEnrolled == alreadyEnrolled &&
    other.enrolled == enrolled &&
    other.enrollmentId == enrollmentId &&
    other.resolved == resolved;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (alreadyEnrolled == null ? 0 : alreadyEnrolled!.hashCode) +
    (enrolled == null ? 0 : enrolled!.hashCode) +
    (enrollmentId == null ? 0 : enrollmentId!.hashCode) +
    (resolved == null ? 0 : resolved!.hashCode);

  @override
  String toString() => 'EnrollResult[alreadyEnrolled=$alreadyEnrolled, enrolled=$enrolled, enrollmentId=$enrollmentId, resolved=$resolved]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.alreadyEnrolled != null) {
      json[r'alreadyEnrolled'] = this.alreadyEnrolled;
    } else {
      json[r'alreadyEnrolled'] = null;
    }
    if (this.enrolled != null) {
      json[r'enrolled'] = this.enrolled;
    } else {
      json[r'enrolled'] = null;
    }
    if (this.enrollmentId != null) {
      json[r'enrollmentId'] = this.enrollmentId;
    } else {
      json[r'enrollmentId'] = null;
    }
    if (this.resolved != null) {
      json[r'resolved'] = this.resolved;
    } else {
      json[r'resolved'] = null;
    }
    return json;
  }

  /// Returns a new [EnrollResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EnrollResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EnrollResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EnrollResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EnrollResult(
        alreadyEnrolled: mapValueOfType<int>(json, r'alreadyEnrolled'),
        enrolled: mapValueOfType<int>(json, r'enrolled'),
        enrollmentId: mapValueOfType<String>(json, r'enrollmentId'),
        resolved: mapValueOfType<int>(json, r'resolved'),
      );
    }
    return null;
  }

  static List<EnrollResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EnrollResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EnrollResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EnrollResult> mapFromJson(dynamic json) {
    final map = <String, EnrollResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EnrollResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EnrollResult-objects as value to a dart map
  static Map<String, List<EnrollResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EnrollResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EnrollResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

