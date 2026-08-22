//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class StepInput {
  /// Returns a new [StepInput] instance.
  StepInput({
    this.body,
    this.delaySeconds,
    this.id,
    this.subject,
  });
  /// Body is the message text. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? body;

  /// DelaySeconds is how long after the previous step this one sends (after enrollment, for the first step). Must be >= 0.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? delaySeconds;

  /// SequenceID is the sequence id from the path (the route's :id).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Subject is the email subject line, capped at 1024 bytes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StepInput &&
    other.body == body &&
    other.delaySeconds == delaySeconds &&
    other.id == id &&
    other.subject == subject;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (body == null ? 0 : body!.hashCode) +
    (delaySeconds == null ? 0 : delaySeconds!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (subject == null ? 0 : subject!.hashCode);

  @override
  String toString() => 'StepInput[body=$body, delaySeconds=$delaySeconds, id=$id, subject=$subject]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.body != null) {
      json[r'body'] = this.body;
    } else {
      json[r'body'] = null;
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
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    return json;
  }

  /// Returns a new [StepInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StepInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StepInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StepInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StepInput(
        body: mapValueOfType<String>(json, r'body'),
        delaySeconds: mapValueOfType<int>(json, r'delaySeconds'),
        id: mapValueOfType<String>(json, r'id'),
        subject: mapValueOfType<String>(json, r'subject'),
      );
    }
    return null;
  }

  static List<StepInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StepInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StepInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StepInput> mapFromJson(dynamic json) {
    final map = <String, StepInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StepInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StepInput-objects as value to a dart map
  static Map<String, List<StepInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StepInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StepInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

