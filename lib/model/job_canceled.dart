//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class JobCanceled {
  /// Returns a new [JobCanceled] instance.
  JobCanceled({
    this.canceled,
    this.run,
  });
  /// Canceled is the job id that was canceled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? canceled;

  /// Run is the run id the cancel was applied to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? run;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JobCanceled &&
    other.canceled == canceled &&
    other.run == run;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (canceled == null ? 0 : canceled!.hashCode) +
    (run == null ? 0 : run!.hashCode);

  @override
  String toString() => 'JobCanceled[canceled=$canceled, run=$run]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.canceled != null) {
      json[r'canceled'] = this.canceled;
    } else {
      json[r'canceled'] = null;
    }
    if (this.run != null) {
      json[r'run'] = this.run;
    } else {
      json[r'run'] = null;
    }
    return json;
  }

  /// Returns a new [JobCanceled] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JobCanceled? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JobCanceled[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JobCanceled[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JobCanceled(
        canceled: mapValueOfType<String>(json, r'canceled'),
        run: mapValueOfType<String>(json, r'run'),
      );
    }
    return null;
  }

  static List<JobCanceled> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JobCanceled>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JobCanceled.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JobCanceled> mapFromJson(dynamic json) {
    final map = <String, JobCanceled>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JobCanceled.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JobCanceled-objects as value to a dart map
  static Map<String, List<JobCanceled>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JobCanceled>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JobCanceled.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

