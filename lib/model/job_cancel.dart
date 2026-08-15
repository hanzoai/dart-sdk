//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class JobCancel {
  /// Returns a new [JobCancel] instance.
  JobCancel({
    this.id,
    this.reason,
    this.run,
  });

  /// ID is the job (activity) id, from the URL path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Reason is recorded on the cancellation; empty records \"canceled from console\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  /// Run is the run id; empty defaults to the job id, which is what the dispatcher sets (runId == activityId == prompt_id), so the common case sends no body.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? run;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JobCancel &&
    other.id == id &&
    other.reason == reason &&
    other.run == run;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (run == null ? 0 : run!.hashCode);

  @override
  String toString() => 'JobCancel[id=$id, reason=$reason, run=$run]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.run != null) {
      json[r'run'] = this.run;
    } else {
      json[r'run'] = null;
    }
    return json;
  }

  /// Returns a new [JobCancel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JobCancel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JobCancel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JobCancel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JobCancel(
        id: mapValueOfType<String>(json, r'id'),
        reason: mapValueOfType<String>(json, r'reason'),
        run: mapValueOfType<String>(json, r'run'),
      );
    }
    return null;
  }

  static List<JobCancel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JobCancel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JobCancel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JobCancel> mapFromJson(dynamic json) {
    final map = <String, JobCancel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JobCancel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JobCancel-objects as value to a dart map
  static Map<String, List<JobCancel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JobCancel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JobCancel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

