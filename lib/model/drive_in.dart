//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DriveIn {
  /// Returns a new [DriveIn] instance.
  DriveIn({
    this.name,
    this.space,
  });
  /// Name is the drive's name, matching the same shape a space name does. It becomes the FIRST SEGMENT of every key the drive holds, which is why it may carry no \"/\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Space is the space to create the drive in, from the path. It carries NO `url:\"-\"`, unlike the field below it, and the difference is the whole reason both tags are written out: zip's binder skips a field tagged \"-\" for EVERY URL source, path params included, so a path-borne value that carried it would arrive empty and the create would refuse a perfectly good address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? space;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DriveIn &&
    other.name == name &&
    other.space == space;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (space == null ? 0 : space!.hashCode);

  @override
  String toString() => 'DriveIn[name=$name, space=$space]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.space != null) {
      json[r'space'] = this.space;
    } else {
      json[r'space'] = null;
    }
    return json;
  }

  /// Returns a new [DriveIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DriveIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DriveIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DriveIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DriveIn(
        name: mapValueOfType<String>(json, r'name'),
        space: mapValueOfType<String>(json, r'space'),
      );
    }
    return null;
  }

  static List<DriveIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DriveIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DriveIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DriveIn> mapFromJson(dynamic json) {
    final map = <String, DriveIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DriveIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DriveIn-objects as value to a dart map
  static Map<String, List<DriveIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DriveIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DriveIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

