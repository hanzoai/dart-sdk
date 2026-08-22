//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yEventUser {
  /// Returns a new [O11yO11yEventUser] instance.
  O11yO11yEventUser({
    this.email,
    this.id,
    this.ipAddress,
    this.username,
  });
  /// Email is that user's email.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// ID identifies the affected end user.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// IP is that user's address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ipAddress;

  /// Username is that user's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yEventUser &&
    other.email == email &&
    other.id == id &&
    other.ipAddress == ipAddress &&
    other.username == username;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email == null ? 0 : email!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (ipAddress == null ? 0 : ipAddress!.hashCode) +
    (username == null ? 0 : username!.hashCode);

  @override
  String toString() => 'O11yO11yEventUser[email=$email, id=$id, ipAddress=$ipAddress, username=$username]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.ipAddress != null) {
      json[r'ipAddress'] = this.ipAddress;
    } else {
      json[r'ipAddress'] = null;
    }
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yEventUser] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yEventUser? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yEventUser[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yEventUser[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yEventUser(
        email: mapValueOfType<String>(json, r'email'),
        id: mapValueOfType<String>(json, r'id'),
        ipAddress: mapValueOfType<String>(json, r'ipAddress'),
        username: mapValueOfType<String>(json, r'username'),
      );
    }
    return null;
  }

  static List<O11yO11yEventUser> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yEventUser>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yEventUser.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yEventUser> mapFromJson(dynamic json) {
    final map = <String, O11yO11yEventUser>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yEventUser.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yEventUser-objects as value to a dart map
  static Map<String, List<O11yO11yEventUser>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yEventUser>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yEventUser.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

