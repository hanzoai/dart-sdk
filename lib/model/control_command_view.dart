//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ControlCommandView {
  /// Returns a new [ControlCommandView] instance.
  ControlCommandView({
    this.command,
    this.message,
    this.payload,
    this.seq,
  });
  /// Command is what was asked, from a closed four: pause, resume, stop, message. It is an INTENT — the poller decides what to do about it, and the session's status changes only when the poller reports back that it did.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? command;

  /// Message is the text that came with the command: what to say into the run for `message`, and the cancellation reason for `stop`. Up to 16 KiB. Empty on a bare pause or resume.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  Object? payload;

  /// Seq is this command's position in the session's log — the same monotonic number every other turn is ordered by, so a command sits in the transcript where it was issued. Send the highest one you applied back as `after` and it is never redelivered.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? seq;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ControlCommandView &&
    other.command == command &&
    other.message == message &&
    other.payload == payload &&
    other.seq == seq;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (command == null ? 0 : command!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (payload == null ? 0 : payload!.hashCode) +
    (seq == null ? 0 : seq!.hashCode);

  @override
  String toString() => 'ControlCommandView[command=$command, message=$message, payload=$payload, seq=$seq]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.command != null) {
      json[r'command'] = this.command;
    } else {
      json[r'command'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.payload != null) {
      json[r'payload'] = this.payload;
    } else {
      json[r'payload'] = null;
    }
    if (this.seq != null) {
      json[r'seq'] = this.seq;
    } else {
      json[r'seq'] = null;
    }
    return json;
  }

  /// Returns a new [ControlCommandView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ControlCommandView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ControlCommandView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ControlCommandView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ControlCommandView(
        command: mapValueOfType<String>(json, r'command'),
        message: mapValueOfType<String>(json, r'message'),
        payload: mapValueOfType<Object>(json, r'payload'),
        seq: mapValueOfType<int>(json, r'seq'),
      );
    }
    return null;
  }

  static List<ControlCommandView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ControlCommandView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ControlCommandView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ControlCommandView> mapFromJson(dynamic json) {
    final map = <String, ControlCommandView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ControlCommandView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ControlCommandView-objects as value to a dart map
  static Map<String, List<ControlCommandView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ControlCommandView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ControlCommandView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

