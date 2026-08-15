//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DataroomRoomDetailOne {
  /// Returns a new [DataroomRoomDetailOne] instance.
  DataroomRoomDetailOne({
    this.dataroom,
  });

  /// Dataroom is the room and its contents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DataroomRoomDetail? dataroom;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DataroomRoomDetailOne &&
    other.dataroom == dataroom;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dataroom == null ? 0 : dataroom!.hashCode);

  @override
  String toString() => 'DataroomRoomDetailOne[dataroom=$dataroom]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.dataroom != null) {
      json[r'dataroom'] = this.dataroom;
    } else {
      json[r'dataroom'] = null;
    }
    return json;
  }

  /// Returns a new [DataroomRoomDetailOne] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DataroomRoomDetailOne? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DataroomRoomDetailOne[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DataroomRoomDetailOne[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DataroomRoomDetailOne(
        dataroom: DataroomRoomDetail.fromJson(json[r'dataroom']),
      );
    }
    return null;
  }

  static List<DataroomRoomDetailOne> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DataroomRoomDetailOne>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DataroomRoomDetailOne.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DataroomRoomDetailOne> mapFromJson(dynamic json) {
    final map = <String, DataroomRoomDetailOne>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DataroomRoomDetailOne.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DataroomRoomDetailOne-objects as value to a dart map
  static Map<String, List<DataroomRoomDetailOne>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DataroomRoomDetailOne>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DataroomRoomDetailOne.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

