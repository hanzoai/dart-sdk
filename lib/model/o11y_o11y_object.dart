//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yObject {
  /// Returns a new [O11yO11yObject] instance.
  O11yO11yObject({
    this.resource,
    this.selector,
  });
  /// Resource is the resource's type and kind.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yResourceRef? resource;

  /// Selector picks the instance — an FGA object string, wildcard allowed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? selector;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yObject &&
    other.resource == resource &&
    other.selector == selector;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (resource == null ? 0 : resource!.hashCode) +
    (selector == null ? 0 : selector!.hashCode);

  @override
  String toString() => 'O11yO11yObject[resource=$resource, selector=$selector]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.resource != null) {
      json[r'resource'] = this.resource;
    } else {
      json[r'resource'] = null;
    }
    if (this.selector != null) {
      json[r'selector'] = this.selector;
    } else {
      json[r'selector'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yObject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yObject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yObject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yObject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yObject(
        resource: O11yO11yResourceRef.fromJson(json[r'resource']),
        selector: mapValueOfType<String>(json, r'selector'),
      );
    }
    return null;
  }

  static List<O11yO11yObject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yObject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yObject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yObject> mapFromJson(dynamic json) {
    final map = <String, O11yO11yObject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yObject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yObject-objects as value to a dart map
  static Map<String, List<O11yO11yObject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yObject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yObject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

