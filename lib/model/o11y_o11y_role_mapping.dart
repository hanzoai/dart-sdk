//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yRoleMapping {
  /// Returns a new [O11yO11yRoleMapping] instance.
  O11yO11yRoleMapping({
    this.defaultRole,
    this.groupMappings = const {},
    this.useRoleAttribute,
  });

  /// DefaultRole is the role when no group mapping applies.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? defaultRole;

  /// GroupMappings maps a provider group name to a role name.
  Map<String, String> groupMappings;

  /// UseRoleAttribute reads the role straight from the provider's role claim instead of the group mappings.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? useRoleAttribute;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yRoleMapping &&
    other.defaultRole == defaultRole &&
    _deepEquality.equals(other.groupMappings, groupMappings) &&
    other.useRoleAttribute == useRoleAttribute;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (defaultRole == null ? 0 : defaultRole!.hashCode) +
    (groupMappings.hashCode) +
    (useRoleAttribute == null ? 0 : useRoleAttribute!.hashCode);

  @override
  String toString() => 'O11yO11yRoleMapping[defaultRole=$defaultRole, groupMappings=$groupMappings, useRoleAttribute=$useRoleAttribute]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.defaultRole != null) {
      json[r'defaultRole'] = this.defaultRole;
    } else {
      json[r'defaultRole'] = null;
    }
      json[r'groupMappings'] = this.groupMappings;
    if (this.useRoleAttribute != null) {
      json[r'useRoleAttribute'] = this.useRoleAttribute;
    } else {
      json[r'useRoleAttribute'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yRoleMapping] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yRoleMapping? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yRoleMapping[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yRoleMapping[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yRoleMapping(
        defaultRole: mapValueOfType<String>(json, r'defaultRole'),
        groupMappings: mapCastOfType<String, String>(json, r'groupMappings') ?? const {},
        useRoleAttribute: mapValueOfType<bool>(json, r'useRoleAttribute'),
      );
    }
    return null;
  }

  static List<O11yO11yRoleMapping> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yRoleMapping>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yRoleMapping.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yRoleMapping> mapFromJson(dynamic json) {
    final map = <String, O11yO11yRoleMapping>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yRoleMapping.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yRoleMapping-objects as value to a dart map
  static Map<String, List<O11yO11yRoleMapping>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yRoleMapping>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yRoleMapping.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

