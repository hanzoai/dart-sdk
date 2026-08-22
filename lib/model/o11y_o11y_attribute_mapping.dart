//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yAttributeMapping {
  /// Returns a new [O11yO11yAttributeMapping] instance.
  O11yO11yAttributeMapping({
    this.email,
    this.groups,
    this.name,
    this.role,
  });
  /// Email is the key carrying the email; defaults to \"email\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// Groups is the key carrying the group list; defaults to \"groups\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? groups;

  /// Name is the key carrying the display name; defaults to \"name\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Role is the key carrying the role; defaults to \"role\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? role;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yAttributeMapping &&
    other.email == email &&
    other.groups == groups &&
    other.name == name &&
    other.role == role;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email == null ? 0 : email!.hashCode) +
    (groups == null ? 0 : groups!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (role == null ? 0 : role!.hashCode);

  @override
  String toString() => 'O11yO11yAttributeMapping[email=$email, groups=$groups, name=$name, role=$role]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.groups != null) {
      json[r'groups'] = this.groups;
    } else {
      json[r'groups'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.role != null) {
      json[r'role'] = this.role;
    } else {
      json[r'role'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yAttributeMapping] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yAttributeMapping? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yAttributeMapping[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yAttributeMapping[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yAttributeMapping(
        email: mapValueOfType<String>(json, r'email'),
        groups: mapValueOfType<String>(json, r'groups'),
        name: mapValueOfType<String>(json, r'name'),
        role: mapValueOfType<String>(json, r'role'),
      );
    }
    return null;
  }

  static List<O11yO11yAttributeMapping> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yAttributeMapping>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yAttributeMapping.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yAttributeMapping> mapFromJson(dynamic json) {
    final map = <String, O11yO11yAttributeMapping>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yAttributeMapping.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yAttributeMapping-objects as value to a dart map
  static Map<String, List<O11yO11yAttributeMapping>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yAttributeMapping>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yAttributeMapping.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

