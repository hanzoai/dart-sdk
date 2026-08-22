//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yPodCountsByPhase {
  /// Returns a new [O11yPodCountsByPhase] instance.
  O11yPodCountsByPhase({
    this.failed,
    this.pending,
    this.running,
    this.succeeded,
    this.unknown,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? failed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pending;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? running;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? succeeded;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? unknown;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yPodCountsByPhase &&
    other.failed == failed &&
    other.pending == pending &&
    other.running == running &&
    other.succeeded == succeeded &&
    other.unknown == unknown;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (failed == null ? 0 : failed!.hashCode) +
    (pending == null ? 0 : pending!.hashCode) +
    (running == null ? 0 : running!.hashCode) +
    (succeeded == null ? 0 : succeeded!.hashCode) +
    (unknown == null ? 0 : unknown!.hashCode);

  @override
  String toString() => 'O11yPodCountsByPhase[failed=$failed, pending=$pending, running=$running, succeeded=$succeeded, unknown=$unknown]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.failed != null) {
      json[r'failed'] = this.failed;
    } else {
      json[r'failed'] = null;
    }
    if (this.pending != null) {
      json[r'pending'] = this.pending;
    } else {
      json[r'pending'] = null;
    }
    if (this.running != null) {
      json[r'running'] = this.running;
    } else {
      json[r'running'] = null;
    }
    if (this.succeeded != null) {
      json[r'succeeded'] = this.succeeded;
    } else {
      json[r'succeeded'] = null;
    }
    if (this.unknown != null) {
      json[r'unknown'] = this.unknown;
    } else {
      json[r'unknown'] = null;
    }
    return json;
  }

  /// Returns a new [O11yPodCountsByPhase] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yPodCountsByPhase? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yPodCountsByPhase[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yPodCountsByPhase[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yPodCountsByPhase(
        failed: mapValueOfType<int>(json, r'failed'),
        pending: mapValueOfType<int>(json, r'pending'),
        running: mapValueOfType<int>(json, r'running'),
        succeeded: mapValueOfType<int>(json, r'succeeded'),
        unknown: mapValueOfType<int>(json, r'unknown'),
      );
    }
    return null;
  }

  static List<O11yPodCountsByPhase> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yPodCountsByPhase>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yPodCountsByPhase.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yPodCountsByPhase> mapFromJson(dynamic json) {
    final map = <String, O11yPodCountsByPhase>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yPodCountsByPhase.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yPodCountsByPhase-objects as value to a dart map
  static Map<String, List<O11yPodCountsByPhase>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yPodCountsByPhase>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yPodCountsByPhase.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

