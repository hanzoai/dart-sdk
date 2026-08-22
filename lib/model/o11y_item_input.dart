//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yItemInput {
  /// Returns a new [O11yItemInput] instance.
  O11yItemInput({
    this.assignee,
    this.objectId,
    this.objectType,
    this.observationId,
    this.sessionId,
    this.traceId,
  });
  /// Assignee is the reviewer this item is for, up to 512 characters.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? assignee;

  /// ObjectID is the referenced object's id, paired with objectType.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? objectId;

  /// ObjectType is TRACE, OBSERVATION or SESSION — the generic form, paired with objectId.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? objectType;

  /// ObservationID references an observation — the console-friendly form of objectType=OBSERVATION.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? observationId;

  /// SessionID references a session — the console-friendly form of objectType=SESSION.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sessionId;

  /// TraceID references a trace — the console-friendly form of objectType=TRACE.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? traceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yItemInput &&
    other.assignee == assignee &&
    other.objectId == objectId &&
    other.objectType == objectType &&
    other.observationId == observationId &&
    other.sessionId == sessionId &&
    other.traceId == traceId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assignee == null ? 0 : assignee!.hashCode) +
    (objectId == null ? 0 : objectId!.hashCode) +
    (objectType == null ? 0 : objectType!.hashCode) +
    (observationId == null ? 0 : observationId!.hashCode) +
    (sessionId == null ? 0 : sessionId!.hashCode) +
    (traceId == null ? 0 : traceId!.hashCode);

  @override
  String toString() => 'O11yItemInput[assignee=$assignee, objectId=$objectId, objectType=$objectType, observationId=$observationId, sessionId=$sessionId, traceId=$traceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.assignee != null) {
      json[r'assignee'] = this.assignee;
    } else {
      json[r'assignee'] = null;
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
    if (this.sessionId != null) {
      json[r'sessionId'] = this.sessionId;
    } else {
      json[r'sessionId'] = null;
    }
    if (this.traceId != null) {
      json[r'traceId'] = this.traceId;
    } else {
      json[r'traceId'] = null;
    }
    return json;
  }

  /// Returns a new [O11yItemInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yItemInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yItemInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yItemInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yItemInput(
        assignee: mapValueOfType<String>(json, r'assignee'),
        objectId: mapValueOfType<String>(json, r'objectId'),
        objectType: mapValueOfType<String>(json, r'objectType'),
        observationId: mapValueOfType<String>(json, r'observationId'),
        sessionId: mapValueOfType<String>(json, r'sessionId'),
        traceId: mapValueOfType<String>(json, r'traceId'),
      );
    }
    return null;
  }

  static List<O11yItemInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yItemInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yItemInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yItemInput> mapFromJson(dynamic json) {
    final map = <String, O11yItemInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yItemInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yItemInput-objects as value to a dart map
  static Map<String, List<O11yItemInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yItemInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yItemInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

