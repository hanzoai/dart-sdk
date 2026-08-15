//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yMattermostPriority {
  /// Returns a new [O11yMattermostPriority] instance.
  O11yMattermostPriority({
    this.persistentNotifications,
    this.priority,
    this.requestedAck,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? persistentNotifications;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? priority;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? requestedAck;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yMattermostPriority &&
    other.persistentNotifications == persistentNotifications &&
    other.priority == priority &&
    other.requestedAck == requestedAck;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (persistentNotifications == null ? 0 : persistentNotifications!.hashCode) +
    (priority == null ? 0 : priority!.hashCode) +
    (requestedAck == null ? 0 : requestedAck!.hashCode);

  @override
  String toString() => 'O11yMattermostPriority[persistentNotifications=$persistentNotifications, priority=$priority, requestedAck=$requestedAck]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.persistentNotifications != null) {
      json[r'persistent_notifications'] = this.persistentNotifications;
    } else {
      json[r'persistent_notifications'] = null;
    }
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
    if (this.requestedAck != null) {
      json[r'requested_ack'] = this.requestedAck;
    } else {
      json[r'requested_ack'] = null;
    }
    return json;
  }

  /// Returns a new [O11yMattermostPriority] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yMattermostPriority? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yMattermostPriority[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yMattermostPriority[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yMattermostPriority(
        persistentNotifications: mapValueOfType<bool>(json, r'persistent_notifications'),
        priority: mapValueOfType<String>(json, r'priority'),
        requestedAck: mapValueOfType<bool>(json, r'requested_ack'),
      );
    }
    return null;
  }

  static List<O11yMattermostPriority> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yMattermostPriority>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yMattermostPriority.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yMattermostPriority> mapFromJson(dynamic json) {
    final map = <String, O11yMattermostPriority>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yMattermostPriority.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yMattermostPriority-objects as value to a dart map
  static Map<String, List<O11yMattermostPriority>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yMattermostPriority>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yMattermostPriority.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

