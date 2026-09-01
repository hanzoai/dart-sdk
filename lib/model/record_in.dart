//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RecordIn {
  /// Returns a new [RecordIn] instance.
  RecordIn({
    required this.room,
  });
  /// Room is the LiveKit room, named the way the office client names one (`<space>_<name>_<id>`). Its leading segment is what binds the room to a tenant, and it is the segment the caller's membership is checked against.
  String room;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RecordIn &&
    other.room == room;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (room.hashCode);

  @override
  String toString() => 'RecordIn[room=$room]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'room'] = this.room;
    return json;
  }

  /// Returns a new [RecordIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RecordIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RecordIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RecordIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RecordIn(
        room: mapValueOfType<String>(json, r'room')!,
      );
    }
    return null;
  }

  static List<RecordIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RecordIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RecordIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RecordIn> mapFromJson(dynamic json) {
    final map = <String, RecordIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RecordIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RecordIn-objects as value to a dart map
  static Map<String, List<RecordIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RecordIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RecordIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'room',
  };
}

