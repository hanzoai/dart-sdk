//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RoomWork {
  /// Returns a new [RoomWork] instance.
  RoomWork({
    this.open,
    this.room,
    this.status = const {},
    this.total,
    this.updated,
  });
  /// Open is how many items are still work: everything whose status does not end it. It is the number a channel header shows.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? open;

  /// Room is the room these counts are for, echoed back as it was resolved.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? room;

  /// Status is the count per board column, carrying EVERY column this surface knows — an empty column reads 0 rather than being absent, so a caller can render the board without inventing the vocabulary. The keys are the same closed set every other operation here validates against.
  Map<String, int> status;

  /// Total is every item bound to this room, settled ones included, so Total minus Open is what the room has finished.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  /// Updated is when anything in this room's work last moved, in unix seconds. ABSENT when the room has no work at all: zero would read as the epoch, and a room nobody has filed anything in has no last activity rather than an infinitely old one. Total is 0 in exactly that case.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RoomWork &&
    other.open == open &&
    other.room == room &&
    _deepEquality.equals(other.status, status) &&
    other.total == total &&
    other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (open == null ? 0 : open!.hashCode) +
    (room == null ? 0 : room!.hashCode) +
    (status.hashCode) +
    (total == null ? 0 : total!.hashCode) +
    (updated == null ? 0 : updated!.hashCode);

  @override
  String toString() => 'RoomWork[open=$open, room=$room, status=$status, total=$total, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.open != null) {
      json[r'open'] = this.open;
    } else {
      json[r'open'] = null;
    }
    if (this.room != null) {
      json[r'room'] = this.room;
    } else {
      json[r'room'] = null;
    }
      json[r'status'] = this.status;
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    return json;
  }

  /// Returns a new [RoomWork] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RoomWork? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RoomWork[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RoomWork[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RoomWork(
        open: mapValueOfType<int>(json, r'open'),
        room: mapValueOfType<String>(json, r'room'),
        status: mapCastOfType<String, int>(json, r'status') ?? const {},
        total: mapValueOfType<int>(json, r'total'),
        updated: mapValueOfType<int>(json, r'updated'),
      );
    }
    return null;
  }

  static List<RoomWork> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RoomWork>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RoomWork.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RoomWork> mapFromJson(dynamic json) {
    final map = <String, RoomWork>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RoomWork.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RoomWork-objects as value to a dart map
  static Map<String, List<RoomWork>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RoomWork>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RoomWork.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

