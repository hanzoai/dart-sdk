//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yAnnItemView {
  /// Returns a new [O11yAnnItemView] instance.
  O11yAnnItemView({
    this.assignee,
    this.completedAt,
    this.createdAt,
    this.id,
    this.objectId,
    this.objectType,
    this.observationId,
    this.queueId,
    this.sessionId,
    this.status,
    this.traceId,
    this.updatedAt,
  });

  /// Assignee is the reviewer it is for, omitted when unassigned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? assignee;

  /// CompletedAt is when it was reviewed, omitted while pending.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? completedAt;

  /// CreatedAt is when it was enqueued, RFC3339 in UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// ID is the item's id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// ObjectID is the referenced object's id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? objectId;

  /// ObjectType is what it references: TRACE, OBSERVATION or SESSION.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? objectType;

  /// ObservationID echoes objectId when objectType is OBSERVATION.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? observationId;

  /// QueueID is the queue it belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? queueId;

  /// SessionID echoes objectId when objectType is SESSION.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sessionId;

  /// Status is PENDING or COMPLETED.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// TraceID echoes objectId when objectType is TRACE.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? traceId;

  /// UpdatedAt is when it last changed, RFC3339 in UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yAnnItemView &&
    other.assignee == assignee &&
    other.completedAt == completedAt &&
    other.createdAt == createdAt &&
    other.id == id &&
    other.objectId == objectId &&
    other.objectType == objectType &&
    other.observationId == observationId &&
    other.queueId == queueId &&
    other.sessionId == sessionId &&
    other.status == status &&
    other.traceId == traceId &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assignee == null ? 0 : assignee!.hashCode) +
    (completedAt == null ? 0 : completedAt!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (objectId == null ? 0 : objectId!.hashCode) +
    (objectType == null ? 0 : objectType!.hashCode) +
    (observationId == null ? 0 : observationId!.hashCode) +
    (queueId == null ? 0 : queueId!.hashCode) +
    (sessionId == null ? 0 : sessionId!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (traceId == null ? 0 : traceId!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'O11yAnnItemView[assignee=$assignee, completedAt=$completedAt, createdAt=$createdAt, id=$id, objectId=$objectId, objectType=$objectType, observationId=$observationId, queueId=$queueId, sessionId=$sessionId, status=$status, traceId=$traceId, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.assignee != null) {
      json[r'assignee'] = this.assignee;
    } else {
      json[r'assignee'] = null;
    }
    if (this.completedAt != null) {
      json[r'completedAt'] = this.completedAt;
    } else {
      json[r'completedAt'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.objectId != null) {
      json[r'objectId'] = this.objectId;
    } else {
      json[r'objectId'] = null;
    }
    if (this.objectType != null) {
      json[r'objectType'] = this.objectType;
    } else {
      json[r'objectType'] = null;
    }
    if (this.observationId != null) {
      json[r'observationId'] = this.observationId;
    } else {
      json[r'observationId'] = null;
    }
    if (this.queueId != null) {
      json[r'queueId'] = this.queueId;
    } else {
      json[r'queueId'] = null;
    }
    if (this.sessionId != null) {
      json[r'sessionId'] = this.sessionId;
    } else {
      json[r'sessionId'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.traceId != null) {
      json[r'traceId'] = this.traceId;
    } else {
      json[r'traceId'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [O11yAnnItemView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yAnnItemView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yAnnItemView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yAnnItemView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yAnnItemView(
        assignee: mapValueOfType<String>(json, r'assignee'),
        completedAt: mapValueOfType<String>(json, r'completedAt'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        id: mapValueOfType<String>(json, r'id'),
        objectId: mapValueOfType<String>(json, r'objectId'),
        objectType: mapValueOfType<String>(json, r'objectType'),
        observationId: mapValueOfType<String>(json, r'observationId'),
        queueId: mapValueOfType<String>(json, r'queueId'),
        sessionId: mapValueOfType<String>(json, r'sessionId'),
        status: mapValueOfType<String>(json, r'status'),
        traceId: mapValueOfType<String>(json, r'traceId'),
        updatedAt: mapValueOfType<String>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<O11yAnnItemView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yAnnItemView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yAnnItemView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yAnnItemView> mapFromJson(dynamic json) {
    final map = <String, O11yAnnItemView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yAnnItemView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yAnnItemView-objects as value to a dart map
  static Map<String, List<O11yAnnItemView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yAnnItemView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yAnnItemView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

