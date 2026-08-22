//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11ySessionOrg {
  /// Returns a new [O11yO11ySessionOrg] instance.
  O11yO11ySessionOrg({
    this.authNSupport,
    this.id,
    this.name,
    this.warning,
  });
  /// AuthNSupport lists the org's open sign-in routes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yAuthNSupport? authNSupport;

  /// ID is the org id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Name is the org's display name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Warning reports an org whose SSO is configured but not currently usable, in the platform's error shape.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yErrorDetail? warning;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11ySessionOrg &&
    other.authNSupport == authNSupport &&
    other.id == id &&
    other.name == name &&
    other.warning == warning;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (authNSupport == null ? 0 : authNSupport!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (warning == null ? 0 : warning!.hashCode);

  @override
  String toString() => 'O11yO11ySessionOrg[authNSupport=$authNSupport, id=$id, name=$name, warning=$warning]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.authNSupport != null) {
      json[r'authNSupport'] = this.authNSupport;
    } else {
      json[r'authNSupport'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.warning != null) {
      json[r'warning'] = this.warning;
    } else {
      json[r'warning'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11ySessionOrg] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11ySessionOrg? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11ySessionOrg[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11ySessionOrg[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11ySessionOrg(
        authNSupport: O11yO11yAuthNSupport.fromJson(json[r'authNSupport']),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        warning: O11yO11yErrorDetail.fromJson(json[r'warning']),
      );
    }
    return null;
  }

  static List<O11yO11ySessionOrg> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11ySessionOrg>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11ySessionOrg.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11ySessionOrg> mapFromJson(dynamic json) {
    final map = <String, O11yO11ySessionOrg>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11ySessionOrg.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11ySessionOrg-objects as value to a dart map
  static Map<String, List<O11yO11ySessionOrg>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11ySessionOrg>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11ySessionOrg.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

