//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yPostableUser {
  /// Returns a new [O11yO11yPostableUser] instance.
  O11yO11yPostableUser({
    this.displayName,
    this.email,
    this.frontendBaseUrl,
    this.userRoles = const [],
  });
  /// DisplayName is the new member's display name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  /// Email is the new member's address. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// FrontendBaseUrl is the console origin the invite link is built on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? frontendBaseUrl;

  /// UserRoles are the roles the member starts with, each by id.
  List<O11yO11yRoleID> userRoles;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yPostableUser &&
    other.displayName == displayName &&
    other.email == email &&
    other.frontendBaseUrl == frontendBaseUrl &&
    _deepEquality.equals(other.userRoles, userRoles);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (displayName == null ? 0 : displayName!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (frontendBaseUrl == null ? 0 : frontendBaseUrl!.hashCode) +
    (userRoles.hashCode);

  @override
  String toString() => 'O11yO11yPostableUser[displayName=$displayName, email=$email, frontendBaseUrl=$frontendBaseUrl, userRoles=$userRoles]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.frontendBaseUrl != null) {
      json[r'frontendBaseUrl'] = this.frontendBaseUrl;
    } else {
      json[r'frontendBaseUrl'] = null;
    }
      json[r'userRoles'] = this.userRoles;
    return json;
  }

  /// Returns a new [O11yO11yPostableUser] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yPostableUser? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yPostableUser[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yPostableUser[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yPostableUser(
        displayName: mapValueOfType<String>(json, r'displayName'),
        email: mapValueOfType<String>(json, r'email'),
        frontendBaseUrl: mapValueOfType<String>(json, r'frontendBaseUrl'),
        userRoles: O11yO11yRoleID.listFromJson(json[r'userRoles']),
      );
    }
    return null;
  }

  static List<O11yO11yPostableUser> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yPostableUser>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yPostableUser.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yPostableUser> mapFromJson(dynamic json) {
    final map = <String, O11yO11yPostableUser>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yPostableUser.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yPostableUser-objects as value to a dart map
  static Map<String, List<O11yO11yPostableUser>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yPostableUser>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yPostableUser.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

