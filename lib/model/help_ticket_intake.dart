//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class HelpTicketIntake {
  /// Returns a new [HelpTicketIntake] instance.
  HelpTicketIntake({
    this.description,
    this.email,
    this.priority,
    this.subject,
  });
  /// Description is the customer's message. Optional; it becomes the ticket's description AND the opening entry of its conversation thread. Clipped at 16 KiB.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Email is how the support team replies. Required; clipped at 320 characters (the RFC 5321 maximum). It is recorded as the ticket's customer, and it is not verified.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// Priority is Low, Medium, High or Urgent, case-insensitively. Anything else — including omitting it — is recorded as Medium rather than refused.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? priority;

  /// Subject is the one-line summary of the problem. Required; longer than 300 characters is clipped rather than refused.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HelpTicketIntake &&
    other.description == description &&
    other.email == email &&
    other.priority == priority &&
    other.subject == subject;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (description == null ? 0 : description!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (priority == null ? 0 : priority!.hashCode) +
    (subject == null ? 0 : subject!.hashCode);

  @override
  String toString() => 'HelpTicketIntake[description=$description, email=$email, priority=$priority, subject=$subject]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    return json;
  }

  /// Returns a new [HelpTicketIntake] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HelpTicketIntake? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HelpTicketIntake[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HelpTicketIntake[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HelpTicketIntake(
        description: mapValueOfType<String>(json, r'description'),
        email: mapValueOfType<String>(json, r'email'),
        priority: mapValueOfType<String>(json, r'priority'),
        subject: mapValueOfType<String>(json, r'subject'),
      );
    }
    return null;
  }

  static List<HelpTicketIntake> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HelpTicketIntake>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HelpTicketIntake.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HelpTicketIntake> mapFromJson(dynamic json) {
    final map = <String, HelpTicketIntake>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HelpTicketIntake.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HelpTicketIntake-objects as value to a dart map
  static Map<String, List<HelpTicketIntake>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HelpTicketIntake>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HelpTicketIntake.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

