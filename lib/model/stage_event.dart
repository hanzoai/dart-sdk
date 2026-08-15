//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class StageEvent {
  /// Returns a new [StageEvent] instance.
  StageEvent({
    this.at,
    this.by,
    this.from,
    this.note,
    this.to,
  });

  /// At is the unix second of the move.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? at;

  /// By is who moved it: \"system\" for intake and the AI auto-advance, else the validated staff user id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? by;

  /// From is the stage moved out of; empty on the intake event that opens the log.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? from;

  /// Note is the free-text comment recorded with the move. Absent when none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? note;

  /// To is the stage moved into.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? to;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StageEvent &&
    other.at == at &&
    other.by == by &&
    other.from == from &&
    other.note == note &&
    other.to == to;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (at == null ? 0 : at!.hashCode) +
    (by == null ? 0 : by!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (note == null ? 0 : note!.hashCode) +
    (to == null ? 0 : to!.hashCode);

  @override
  String toString() => 'StageEvent[at=$at, by=$by, from=$from, note=$note, to=$to]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.at != null) {
      json[r'at'] = this.at;
    } else {
      json[r'at'] = null;
    }
    if (this.by != null) {
      json[r'by'] = this.by;
    } else {
      json[r'by'] = null;
    }
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    if (this.note != null) {
      json[r'note'] = this.note;
    } else {
      json[r'note'] = null;
    }
    if (this.to != null) {
      json[r'to'] = this.to;
    } else {
      json[r'to'] = null;
    }
    return json;
  }

  /// Returns a new [StageEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StageEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StageEvent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StageEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StageEvent(
        at: mapValueOfType<int>(json, r'at'),
        by: mapValueOfType<String>(json, r'by'),
        from: mapValueOfType<String>(json, r'from'),
        note: mapValueOfType<String>(json, r'note'),
        to: mapValueOfType<String>(json, r'to'),
      );
    }
    return null;
  }

  static List<StageEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StageEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StageEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StageEvent> mapFromJson(dynamic json) {
    final map = <String, StageEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StageEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StageEvent-objects as value to a dart map
  static Map<String, List<StageEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StageEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StageEvent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

