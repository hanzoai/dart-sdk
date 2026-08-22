//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Step {
  /// Returns a new [Step] instance.
  Step({
    this.body,
    this.createdAt,
    this.delaySeconds,
    this.id,
    this.idx,
    this.sequenceId,
    this.subject,
  });
  /// Body is the message text. Required. The signed one-click unsubscribe link is appended to it at send time.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? body;

  /// CreatedAt is unix seconds, server-assigned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// DelaySeconds is how long after the previous step this one sends (after enrollment, for step 0).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? delaySeconds;

  /// ID is the server-assigned step id (\"step_\" + 128 random bits).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Idx is the step's 0-based position, assigned by appending: a new step always lands after the last one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? idx;

  /// SequenceID is the sequence this step belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sequenceId;

  /// Subject is the email subject line, capped at 1024 bytes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Step &&
    other.body == body &&
    other.createdAt == createdAt &&
    other.delaySeconds == delaySeconds &&
    other.id == id &&
    other.idx == idx &&
    other.sequenceId == sequenceId &&
    other.subject == subject;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (body == null ? 0 : body!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (delaySeconds == null ? 0 : delaySeconds!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (idx == null ? 0 : idx!.hashCode) +
    (sequenceId == null ? 0 : sequenceId!.hashCode) +
    (subject == null ? 0 : subject!.hashCode);

  @override
  String toString() => 'Step[body=$body, createdAt=$createdAt, delaySeconds=$delaySeconds, id=$id, idx=$idx, sequenceId=$sequenceId, subject=$subject]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.body != null) {
      json[r'body'] = this.body;
    } else {
      json[r'body'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.delaySeconds != null) {
      json[r'delaySeconds'] = this.delaySeconds;
    } else {
      json[r'delaySeconds'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.idx != null) {
      json[r'idx'] = this.idx;
    } else {
      json[r'idx'] = null;
    }
    if (this.sequenceId != null) {
      json[r'sequenceId'] = this.sequenceId;
    } else {
      json[r'sequenceId'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    return json;
  }

  /// Returns a new [Step] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Step? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Step[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Step[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Step(
        body: mapValueOfType<String>(json, r'body'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        delaySeconds: mapValueOfType<int>(json, r'delaySeconds'),
        id: mapValueOfType<String>(json, r'id'),
        idx: mapValueOfType<int>(json, r'idx'),
        sequenceId: mapValueOfType<String>(json, r'sequenceId'),
        subject: mapValueOfType<String>(json, r'subject'),
      );
    }
    return null;
  }

  static List<Step> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Step>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Step.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Step> mapFromJson(dynamic json) {
    final map = <String, Step>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Step.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Step-objects as value to a dart map
  static Map<String, List<Step>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Step>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Step.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

