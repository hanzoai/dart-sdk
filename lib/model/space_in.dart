//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SpaceIn {
  /// Returns a new [SpaceIn] instance.
  SpaceIn({
    this.name,
  });
  /// Name is the space's name, matching ^[a-z0-9]([a-z0-9-]{0,38}[a-z0-9])?$ — the shape a drive name takes too, so a caller learns one rule. It is validated AS GIVEN and never lower-cased for you: a client that creates \"Photos\" and then lists \"photos\" would be reading a space it did not make, so mixed case is a clean 400.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpaceIn &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'SpaceIn[name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [SpaceIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpaceIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SpaceIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SpaceIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SpaceIn(
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<SpaceIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpaceIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpaceIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpaceIn> mapFromJson(dynamic json) {
    final map = <String, SpaceIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpaceIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpaceIn-objects as value to a dart map
  static Map<String, List<SpaceIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SpaceIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpaceIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

