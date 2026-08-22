//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yDeprecatedUserUpdate {
  /// Returns a new [O11yO11yDeprecatedUserUpdate] instance.
  O11yO11yDeprecatedUserUpdate({
    this.displayName,
    this.role,
  });
  /// DisplayName is the new display name; empty leaves it unchanged.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  /// Role is the legacy role to move to — ADMIN, EDITOR or VIEWER; empty leaves it unchanged.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? role;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yDeprecatedUserUpdate &&
    other.displayName == displayName &&
    other.role == role;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (displayName == null ? 0 : displayName!.hashCode) +
    (role == null ? 0 : role!.hashCode);

  @override
  String toString() => 'O11yO11yDeprecatedUserUpdate[displayName=$displayName, role=$role]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.role != null) {
      json[r'role'] = this.role;
    } else {
      json[r'role'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yDeprecatedUserUpdate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yDeprecatedUserUpdate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yDeprecatedUserUpdate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yDeprecatedUserUpdate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yDeprecatedUserUpdate(
        displayName: mapValueOfType<String>(json, r'displayName'),
        role: mapValueOfType<String>(json, r'role'),
      );
    }
    return null;
  }

  static List<O11yO11yDeprecatedUserUpdate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yDeprecatedUserUpdate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yDeprecatedUserUpdate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yDeprecatedUserUpdate> mapFromJson(dynamic json) {
    final map = <String, O11yO11yDeprecatedUserUpdate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yDeprecatedUserUpdate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yDeprecatedUserUpdate-objects as value to a dart map
  static Map<String, List<O11yO11yDeprecatedUserUpdate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yDeprecatedUserUpdate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yDeprecatedUserUpdate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

