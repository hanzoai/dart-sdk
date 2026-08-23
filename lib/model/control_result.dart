//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ControlResult {
  /// Returns a new [ControlResult] instance.
  ControlResult({
    this.command,
    this.event,
    this.forwarded,
  });
  /// Command is the verb that was recorded: pause, resume, stop or message.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? command;

  /// Event is the durable control event the command became. The intent is recorded whether or not it reached an engine, which is what makes a stream-consuming surface able to act on it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EventView? event;

  /// Forwarded is whether the command also reached the durable-execution engine. FALSE IS NOT A FAILURE: a session with no workflow link, or a deployment with no tasks backend, is record-only by design. A forward that was attempted and failed is a 502, never a false here.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? forwarded;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ControlResult &&
    other.command == command &&
    other.event == event &&
    other.forwarded == forwarded;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (command == null ? 0 : command!.hashCode) +
    (event == null ? 0 : event!.hashCode) +
    (forwarded == null ? 0 : forwarded!.hashCode);

  @override
  String toString() => 'ControlResult[command=$command, event=$event, forwarded=$forwarded]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.command != null) {
      json[r'command'] = this.command;
    } else {
      json[r'command'] = null;
    }
    if (this.event != null) {
      json[r'event'] = this.event;
    } else {
      json[r'event'] = null;
    }
    if (this.forwarded != null) {
      json[r'forwarded'] = this.forwarded;
    } else {
      json[r'forwarded'] = null;
    }
    return json;
  }

  /// Returns a new [ControlResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ControlResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ControlResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ControlResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ControlResult(
        command: mapValueOfType<String>(json, r'command'),
        event: EventView.fromJson(json[r'event']),
        forwarded: mapValueOfType<bool>(json, r'forwarded'),
      );
    }
    return null;
  }

  static List<ControlResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ControlResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ControlResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ControlResult> mapFromJson(dynamic json) {
    final map = <String, ControlResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ControlResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ControlResult-objects as value to a dart map
  static Map<String, List<ControlResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ControlResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ControlResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

