//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GitOpsOperation {
  /// Returns a new [GitOpsOperation] instance.
  GitOpsOperation({
    this.finishedAt,
    this.message,
    this.phase,
    this.revision,
    this.startedAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? finishedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phase;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? revision;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? startedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GitOpsOperation &&
    other.finishedAt == finishedAt &&
    other.message == message &&
    other.phase == phase &&
    other.revision == revision &&
    other.startedAt == startedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (finishedAt == null ? 0 : finishedAt!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (phase == null ? 0 : phase!.hashCode) +
    (revision == null ? 0 : revision!.hashCode) +
    (startedAt == null ? 0 : startedAt!.hashCode);

  @override
  String toString() => 'GitOpsOperation[finishedAt=$finishedAt, message=$message, phase=$phase, revision=$revision, startedAt=$startedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.finishedAt != null) {
      json[r'finishedAt'] = this.finishedAt;
    } else {
      json[r'finishedAt'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.phase != null) {
      json[r'phase'] = this.phase;
    } else {
      json[r'phase'] = null;
    }
    if (this.revision != null) {
      json[r'revision'] = this.revision;
    } else {
      json[r'revision'] = null;
    }
    if (this.startedAt != null) {
      json[r'startedAt'] = this.startedAt;
    } else {
      json[r'startedAt'] = null;
    }
    return json;
  }

  /// Returns a new [GitOpsOperation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GitOpsOperation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GitOpsOperation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GitOpsOperation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GitOpsOperation(
        finishedAt: mapValueOfType<String>(json, r'finishedAt'),
        message: mapValueOfType<String>(json, r'message'),
        phase: mapValueOfType<String>(json, r'phase'),
        revision: mapValueOfType<String>(json, r'revision'),
        startedAt: mapValueOfType<String>(json, r'startedAt'),
      );
    }
    return null;
  }

  static List<GitOpsOperation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GitOpsOperation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GitOpsOperation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GitOpsOperation> mapFromJson(dynamic json) {
    final map = <String, GitOpsOperation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GitOpsOperation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GitOpsOperation-objects as value to a dart map
  static Map<String, List<GitOpsOperation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GitOpsOperation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GitOpsOperation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

