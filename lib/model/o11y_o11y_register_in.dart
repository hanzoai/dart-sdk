//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yRegisterIn {
  /// Returns a new [O11yO11yRegisterIn] instance.
  O11yO11yRegisterIn({
    required this.email,
    this.name,
    this.orgDisplayName,
    this.orgName,
    this.password,
  });

  /// Email is the admin's email. Required.
  String email;

  /// Name is the admin's display name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// OrgDisplayName is the organization's display name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orgDisplayName;

  /// OrgName is the organization's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orgName;

  /// Password is the admin's password.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yRegisterIn &&
    other.email == email &&
    other.name == name &&
    other.orgDisplayName == orgDisplayName &&
    other.orgName == orgName &&
    other.password == password;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (orgDisplayName == null ? 0 : orgDisplayName!.hashCode) +
    (orgName == null ? 0 : orgName!.hashCode) +
    (password == null ? 0 : password!.hashCode);

  @override
  String toString() => 'O11yO11yRegisterIn[email=$email, name=$name, orgDisplayName=$orgDisplayName, orgName=$orgName, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'email'] = this.email;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.orgDisplayName != null) {
      json[r'orgDisplayName'] = this.orgDisplayName;
    } else {
      json[r'orgDisplayName'] = null;
    }
    if (this.orgName != null) {
      json[r'orgName'] = this.orgName;
    } else {
      json[r'orgName'] = null;
    }
    if (this.password != null) {
      json[r'password'] = this.password;
    } else {
      json[r'password'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yRegisterIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yRegisterIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yRegisterIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yRegisterIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yRegisterIn(
        email: mapValueOfType<String>(json, r'email')!,
        name: mapValueOfType<String>(json, r'name'),
        orgDisplayName: mapValueOfType<String>(json, r'orgDisplayName'),
        orgName: mapValueOfType<String>(json, r'orgName'),
        password: mapValueOfType<String>(json, r'password'),
      );
    }
    return null;
  }

  static List<O11yO11yRegisterIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yRegisterIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yRegisterIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yRegisterIn> mapFromJson(dynamic json) {
    final map = <String, O11yO11yRegisterIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yRegisterIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yRegisterIn-objects as value to a dart map
  static Map<String, List<O11yO11yRegisterIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yRegisterIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yRegisterIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'email',
  };
}

