//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yBasicAuth {
  /// Returns a new [O11yBasicAuth] instance.
  O11yBasicAuth({
    this.password,
    this.passwordFile,
    this.passwordRef,
    this.username,
    this.usernameFile,
    this.usernameRef,
  });
  Object? password;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? passwordFile;

  /// PasswordRef is the name of the secret within the secret manager to use as the password.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? passwordRef;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? usernameFile;

  /// UsernameRef is the name of the secret within the secret manager to use as the username.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? usernameRef;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yBasicAuth &&
    other.password == password &&
    other.passwordFile == passwordFile &&
    other.passwordRef == passwordRef &&
    other.username == username &&
    other.usernameFile == usernameFile &&
    other.usernameRef == usernameRef;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (password == null ? 0 : password!.hashCode) +
    (passwordFile == null ? 0 : passwordFile!.hashCode) +
    (passwordRef == null ? 0 : passwordRef!.hashCode) +
    (username == null ? 0 : username!.hashCode) +
    (usernameFile == null ? 0 : usernameFile!.hashCode) +
    (usernameRef == null ? 0 : usernameRef!.hashCode);

  @override
  String toString() => 'O11yBasicAuth[password=$password, passwordFile=$passwordFile, passwordRef=$passwordRef, username=$username, usernameFile=$usernameFile, usernameRef=$usernameRef]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.password != null) {
      json[r'password'] = this.password;
    } else {
      json[r'password'] = null;
    }
    if (this.passwordFile != null) {
      json[r'password_file'] = this.passwordFile;
    } else {
      json[r'password_file'] = null;
    }
    if (this.passwordRef != null) {
      json[r'password_ref'] = this.passwordRef;
    } else {
      json[r'password_ref'] = null;
    }
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
    if (this.usernameFile != null) {
      json[r'username_file'] = this.usernameFile;
    } else {
      json[r'username_file'] = null;
    }
    if (this.usernameRef != null) {
      json[r'username_ref'] = this.usernameRef;
    } else {
      json[r'username_ref'] = null;
    }
    return json;
  }

  /// Returns a new [O11yBasicAuth] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yBasicAuth? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yBasicAuth[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yBasicAuth[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yBasicAuth(
        password: mapValueOfType<Object>(json, r'password'),
        passwordFile: mapValueOfType<String>(json, r'password_file'),
        passwordRef: mapValueOfType<String>(json, r'password_ref'),
        username: mapValueOfType<String>(json, r'username'),
        usernameFile: mapValueOfType<String>(json, r'username_file'),
        usernameRef: mapValueOfType<String>(json, r'username_ref'),
      );
    }
    return null;
  }

  static List<O11yBasicAuth> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yBasicAuth>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yBasicAuth.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yBasicAuth> mapFromJson(dynamic json) {
    final map = <String, O11yBasicAuth>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yBasicAuth.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yBasicAuth-objects as value to a dart map
  static Map<String, List<O11yBasicAuth>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yBasicAuth>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yBasicAuth.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

