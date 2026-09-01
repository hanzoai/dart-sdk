//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DriveList {
  /// Returns a new [DriveList] instance.
  DriveList({
    this.drives = const [],
    this.space,
    this.total,
  });
  /// Drives are the drives at the space's root.
  List<DriveItem> drives;

  /// Space is the space that was listed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? space;

  /// Total is how many drives came back. The listing is BOUNDED, so it is what came back and not a count of what the space holds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DriveList &&
    _deepEquality.equals(other.drives, drives) &&
    other.space == space &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (drives.hashCode) +
    (space == null ? 0 : space!.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'DriveList[drives=$drives, space=$space, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'drives'] = this.drives;
    if (this.space != null) {
      json[r'space'] = this.space;
    } else {
      json[r'space'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [DriveList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DriveList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DriveList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DriveList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DriveList(
        drives: DriveItem.listFromJson(json[r'drives']),
        space: mapValueOfType<String>(json, r'space'),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<DriveList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DriveList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DriveList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DriveList> mapFromJson(dynamic json) {
    final map = <String, DriveList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DriveList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DriveList-objects as value to a dart map
  static Map<String, List<DriveList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DriveList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DriveList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

