//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IndexTask {
  /// Returns a new [IndexTask] instance.
  IndexTask({
    this.enqueuedAt,
    this.finishedAt,
    this.startedAt,
    this.status,
    this.type,
    this.uid,
  });
  /// EnqueuedAt, StartedAt and FinishedAt are the same instant: the write was applied before its task id was minted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? enqueuedAt;

  /// FinishedAt is when the write completed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? finishedAt;

  /// StartedAt is when the write began.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? startedAt;

  /// Status is always `succeeded`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Type names the kind of write, for a client that inspects it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// UID echoes the task id that was asked about.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? uid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IndexTask &&
    other.enqueuedAt == enqueuedAt &&
    other.finishedAt == finishedAt &&
    other.startedAt == startedAt &&
    other.status == status &&
    other.type == type &&
    other.uid == uid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enqueuedAt == null ? 0 : enqueuedAt!.hashCode) +
    (finishedAt == null ? 0 : finishedAt!.hashCode) +
    (startedAt == null ? 0 : startedAt!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (uid == null ? 0 : uid!.hashCode);

  @override
  String toString() => 'IndexTask[enqueuedAt=$enqueuedAt, finishedAt=$finishedAt, startedAt=$startedAt, status=$status, type=$type, uid=$uid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.enqueuedAt != null) {
      json[r'enqueuedAt'] = this.enqueuedAt;
    } else {
      json[r'enqueuedAt'] = null;
    }
    if (this.finishedAt != null) {
      json[r'finishedAt'] = this.finishedAt;
    } else {
      json[r'finishedAt'] = null;
    }
    if (this.startedAt != null) {
      json[r'startedAt'] = this.startedAt;
    } else {
      json[r'startedAt'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.uid != null) {
      json[r'uid'] = this.uid;
    } else {
      json[r'uid'] = null;
    }
    return json;
  }

  /// Returns a new [IndexTask] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndexTask? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IndexTask[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IndexTask[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndexTask(
        enqueuedAt: mapValueOfType<String>(json, r'enqueuedAt'),
        finishedAt: mapValueOfType<String>(json, r'finishedAt'),
        startedAt: mapValueOfType<String>(json, r'startedAt'),
        status: mapValueOfType<String>(json, r'status'),
        type: mapValueOfType<String>(json, r'type'),
        uid: mapValueOfType<int>(json, r'uid'),
      );
    }
    return null;
  }

  static List<IndexTask> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IndexTask>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndexTask.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndexTask> mapFromJson(dynamic json) {
    final map = <String, IndexTask>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndexTask.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndexTask-objects as value to a dart map
  static Map<String, List<IndexTask>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IndexTask>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndexTask.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

