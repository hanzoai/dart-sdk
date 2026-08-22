//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IndexEnqueued {
  /// Returns a new [IndexEnqueued] instance.
  IndexEnqueued({
    this.enqueuedAt,
    this.indexUid,
    this.status,
    this.taskUid,
    this.type,
  });
  /// EnqueuedAt is when the task was recorded, RFC 3339 — which is also when it completed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? enqueuedAt;

  /// IndexUID names the index the write landed in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? indexUid;

  /// Status is always `enqueued`, for dialect compatibility. The work is already done.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// TaskUID identifies the task for a client that polls it. Polling resolves immediately.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? taskUid;

  /// Type is the dialect's name for the kind of write: indexCreation, indexDeletion, settingsUpdate, documentAdditionOrUpdate, documentDeletion.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IndexEnqueued &&
    other.enqueuedAt == enqueuedAt &&
    other.indexUid == indexUid &&
    other.status == status &&
    other.taskUid == taskUid &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enqueuedAt == null ? 0 : enqueuedAt!.hashCode) +
    (indexUid == null ? 0 : indexUid!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (taskUid == null ? 0 : taskUid!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'IndexEnqueued[enqueuedAt=$enqueuedAt, indexUid=$indexUid, status=$status, taskUid=$taskUid, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.enqueuedAt != null) {
      json[r'enqueuedAt'] = this.enqueuedAt;
    } else {
      json[r'enqueuedAt'] = null;
    }
    if (this.indexUid != null) {
      json[r'indexUid'] = this.indexUid;
    } else {
      json[r'indexUid'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.taskUid != null) {
      json[r'taskUid'] = this.taskUid;
    } else {
      json[r'taskUid'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [IndexEnqueued] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndexEnqueued? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IndexEnqueued[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IndexEnqueued[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndexEnqueued(
        enqueuedAt: mapValueOfType<String>(json, r'enqueuedAt'),
        indexUid: mapValueOfType<String>(json, r'indexUid'),
        status: mapValueOfType<String>(json, r'status'),
        taskUid: mapValueOfType<int>(json, r'taskUid'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<IndexEnqueued> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IndexEnqueued>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndexEnqueued.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndexEnqueued> mapFromJson(dynamic json) {
    final map = <String, IndexEnqueued>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndexEnqueued.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndexEnqueued-objects as value to a dart map
  static Map<String, List<IndexEnqueued>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IndexEnqueued>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndexEnqueued.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

