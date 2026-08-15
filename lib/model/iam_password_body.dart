//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamPasswordBody {
  /// Returns a new [IamPasswordBody] instance.
  IamPasswordBody({
    this.code,
    this.oldPassword,
    this.organization,
    this.password,
    this.username,
  });

  /// Code is the one-time code delivered to the account's own address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  /// OldPassword is the credential being replaced, the proof a signed-in caller gives instead of a code.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? oldPassword;

  /// The account being recovered, for a caller who cannot be signed in. Read on the CODE arm only — a signed-in caller is resolved from its own session or token, never from these.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? organization;

  /// Password is the new credential. It must satisfy the platform floor and the organization's own complexity options.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? password;

  /// email, username OR phone
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamPasswordBody &&
    other.code == code &&
    other.oldPassword == oldPassword &&
    other.organization == organization &&
    other.password == password &&
    other.username == username;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code == null ? 0 : code!.hashCode) +
    (oldPassword == null ? 0 : oldPassword!.hashCode) +
    (organization == null ? 0 : organization!.hashCode) +
    (password == null ? 0 : password!.hashCode) +
    (username == null ? 0 : username!.hashCode);

  @override
  String toString() => 'IamPasswordBody[code=$code, oldPassword=$oldPassword, organization=$organization, password=$password, username=$username]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.oldPassword != null) {
      json[r'oldPassword'] = this.oldPassword;
    } else {
      json[r'oldPassword'] = null;
    }
    if (this.organization != null) {
      json[r'organization'] = this.organization;
    } else {
      json[r'organization'] = null;
    }
    if (this.password != null) {
      json[r'password'] = this.password;
    } else {
      json[r'password'] = null;
    }
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
    return json;
  }

  /// Returns a new [IamPasswordBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamPasswordBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamPasswordBody[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamPasswordBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamPasswordBody(
        code: mapValueOfType<String>(json, r'code'),
        oldPassword: mapValueOfType<String>(json, r'oldPassword'),
        organization: mapValueOfType<String>(json, r'organization'),
        password: mapValueOfType<String>(json, r'password'),
        username: mapValueOfType<String>(json, r'username'),
      );
    }
    return null;
  }

  static List<IamPasswordBody> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamPasswordBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamPasswordBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamPasswordBody> mapFromJson(dynamic json) {
    final map = <String, IamPasswordBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamPasswordBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamPasswordBody-objects as value to a dart map
  static Map<String, List<IamPasswordBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamPasswordBody>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamPasswordBody.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

