//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yEmailPasswordSessionIn {
  /// Returns a new [O11yO11yEmailPasswordSessionIn] instance.
  O11yO11yEmailPasswordSessionIn({
    this.email,
    this.orgId,
    this.password,
  });

  /// Email is the account's address. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// OrgID picks the org to sign into when the address belongs to several.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orgId;

  /// Password is the account's password. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yEmailPasswordSessionIn &&
    other.email == email &&
    other.orgId == orgId &&
    other.password == password;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email == null ? 0 : email!.hashCode) +
    (orgId == null ? 0 : orgId!.hashCode) +
    (password == null ? 0 : password!.hashCode);

  @override
  String toString() => 'O11yO11yEmailPasswordSessionIn[email=$email, orgId=$orgId, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.orgId != null) {
      json[r'orgId'] = this.orgId;
    } else {
      json[r'orgId'] = null;
    }
    if (this.password != null) {
      json[r'password'] = this.password;
    } else {
      json[r'password'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yEmailPasswordSessionIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yEmailPasswordSessionIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yEmailPasswordSessionIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yEmailPasswordSessionIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yEmailPasswordSessionIn(
        email: mapValueOfType<String>(json, r'email'),
        orgId: mapValueOfType<String>(json, r'orgId'),
        password: mapValueOfType<String>(json, r'password'),
      );
    }
    return null;
  }

  static List<O11yO11yEmailPasswordSessionIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yEmailPasswordSessionIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yEmailPasswordSessionIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yEmailPasswordSessionIn> mapFromJson(dynamic json) {
    final map = <String, O11yO11yEmailPasswordSessionIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yEmailPasswordSessionIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yEmailPasswordSessionIn-objects as value to a dart map
  static Map<String, List<O11yO11yEmailPasswordSessionIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yEmailPasswordSessionIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yEmailPasswordSessionIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

