//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ControlDrain {
  /// Returns a new [ControlDrain] instance.
  ControlDrain({
    this.commands = const [],
    this.cursor,
  });
  /// Commands is the session's control commands newer than the cursor, oldest first.
  List<ControlCommandView> commands;

  /// Cursor is the seq to send as `after` on the next poll — the highest seq in this page, or the cursor sent in when the page is empty.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cursor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ControlDrain &&
    _deepEquality.equals(other.commands, commands) &&
    other.cursor == cursor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (commands.hashCode) +
    (cursor == null ? 0 : cursor!.hashCode);

  @override
  String toString() => 'ControlDrain[commands=$commands, cursor=$cursor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'commands'] = this.commands;
    if (this.cursor != null) {
      json[r'cursor'] = this.cursor;
    } else {
      json[r'cursor'] = null;
    }
    return json;
  }

  /// Returns a new [ControlDrain] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ControlDrain? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ControlDrain[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ControlDrain[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ControlDrain(
        commands: ControlCommandView.listFromJson(json[r'commands']),
        cursor: mapValueOfType<int>(json, r'cursor'),
      );
    }
    return null;
  }

  static List<ControlDrain> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ControlDrain>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ControlDrain.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ControlDrain> mapFromJson(dynamic json) {
    final map = <String, ControlDrain>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ControlDrain.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ControlDrain-objects as value to a dart map
  static Map<String, List<ControlDrain>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ControlDrain>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ControlDrain.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

