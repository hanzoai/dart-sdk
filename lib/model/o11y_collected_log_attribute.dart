//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yCollectedLogAttribute {
  /// Returns a new [O11yCollectedLogAttribute] instance.
  O11yCollectedLogAttribute({
    this.name,
    this.path,
    this.type,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yCollectedLogAttribute &&
    other.name == name &&
    other.path == path &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (path == null ? 0 : path!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'O11yCollectedLogAttribute[name=$name, path=$path, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [O11yCollectedLogAttribute] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yCollectedLogAttribute? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yCollectedLogAttribute[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yCollectedLogAttribute[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yCollectedLogAttribute(
        name: mapValueOfType<String>(json, r'name'),
        path: mapValueOfType<String>(json, r'path'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<O11yCollectedLogAttribute> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yCollectedLogAttribute>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yCollectedLogAttribute.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yCollectedLogAttribute> mapFromJson(dynamic json) {
    final map = <String, O11yCollectedLogAttribute>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yCollectedLogAttribute.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yCollectedLogAttribute-objects as value to a dart map
  static Map<String, List<O11yCollectedLogAttribute>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yCollectedLogAttribute>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yCollectedLogAttribute.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

