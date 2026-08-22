//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamAccountBody {
  /// Returns a new [IamAccountBody] instance.
  IamAccountBody({
    this.avatar,
    this.bio,
    this.displayName,
    this.homepage,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? avatar;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bio;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? homepage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamAccountBody &&
    other.avatar == avatar &&
    other.bio == bio &&
    other.displayName == displayName &&
    other.homepage == homepage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (avatar == null ? 0 : avatar!.hashCode) +
    (bio == null ? 0 : bio!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (homepage == null ? 0 : homepage!.hashCode);

  @override
  String toString() => 'IamAccountBody[avatar=$avatar, bio=$bio, displayName=$displayName, homepage=$homepage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.avatar != null) {
      json[r'avatar'] = this.avatar;
    } else {
      json[r'avatar'] = null;
    }
    if (this.bio != null) {
      json[r'bio'] = this.bio;
    } else {
      json[r'bio'] = null;
    }
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.homepage != null) {
      json[r'homepage'] = this.homepage;
    } else {
      json[r'homepage'] = null;
    }
    return json;
  }

  /// Returns a new [IamAccountBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamAccountBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamAccountBody[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamAccountBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamAccountBody(
        avatar: mapValueOfType<String>(json, r'avatar'),
        bio: mapValueOfType<String>(json, r'bio'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        homepage: mapValueOfType<String>(json, r'homepage'),
      );
    }
    return null;
  }

  static List<IamAccountBody> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamAccountBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamAccountBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamAccountBody> mapFromJson(dynamic json) {
    final map = <String, IamAccountBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamAccountBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamAccountBody-objects as value to a dart map
  static Map<String, List<IamAccountBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamAccountBody>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamAccountBody.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

